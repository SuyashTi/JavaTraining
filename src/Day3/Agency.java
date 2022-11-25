package Day3;

public class Agency {

        double price;
        String item;
        int quantity;

        public String getItem() {
            return item;
        }

        public void setItem(String item) {
            this.item = item;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }

        public double getPrice() {
            return price;
        }


        public void setPrice() {
            if(item.equalsIgnoreCase("InductionHeater") && (quantity>50)) {
                this.price = (quantity * 850);
            }
            if(item.equalsIgnoreCase("InductionHeater") && ((quantity<50) && (quantity>30)) ) {
                this.price = (quantity * 900);
            }
            if(item.equalsIgnoreCase("InductionHeater") && (quantity<30)) {
                this.price = (quantity * 950);
            }
            if(item.equalsIgnoreCase("ElectricKettle") && (quantity>50)) {
                this.price = (quantity * 700);
            }
            if(item.equalsIgnoreCase("ElectricKettle") && ((quantity<50) && (quantity>30)) ){
                this.price = (quantity * 800);
            }
            if(item.equalsIgnoreCase("ElectricKettle") && (quantity<30)) {
                this.price = (quantity * 900);
            }


        }
    }

