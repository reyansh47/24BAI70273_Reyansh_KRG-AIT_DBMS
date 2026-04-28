CREATE OR REPLACE FUNCTION prevent_order_date_update()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.order_date <> OLD.order_date THEN
        RAISE EXCEPTION 'Cannot modify order_date';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_prevent_order_date
BEFORE UPDATE ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION prevent_order_date_update();
