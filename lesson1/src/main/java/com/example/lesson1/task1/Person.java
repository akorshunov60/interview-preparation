package com.example.lesson1.task1;

public class Person {

    private String firstName;
    private String lastName;
    private String middleName;
    private String country;
    private String address;
    private String phone;
    private int age;
    private String gender;

    private Person() {}

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getCountry() {
        return country;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public int getAge() {
        return age;
    }

    public String getGender() {
        return gender;
    }

    public static Builder newBuilder() {
        return new Person().new Builder();
    }

    public class Builder {

        private Builder() {}

        public Builder setFirstName(String firstName) {

            Person.this.firstName = firstName;
            return this;
        }

        public Builder setLastName(String lastName) {

            Person.this.lastName = lastName;
            return this;
        }

        public Builder setMiddleName(String middleName) {

            Person.this.middleName = middleName;
            return this;
        }

        public Builder setCountry(String country) {

            Person.this.country = country;
            return this;
        }

        public Builder setAddress(String address) {

            Person.this.address = address;
            return this;
        }

        public Builder setPhone(String phone) {

            Person.this.phone = phone;
            return this;
        }

        public Builder setAge(int age) {

            Person.this.age = age;
            return this;
        }

        public Builder setGender(String gender) {

            Person.this.gender = gender;
            return this;
        }

        /*
        Метод build возвращает один и тот же объект и если, после его вызова,
        продолжить выставлять поля через методы Builder-а,
        поля уже созданного объекта будут меняться.
        Это легко исправить, если создавать каждый раз новый экземпляр объекта:

        public Person build() {
            Person person = new Person();
            person.firstName = Person.this.firstName;
            ...
            ...
            person.gender = Person.this.gender;

            return person;
        }
        */
        public Person build() {

            return Person.this;
        }
        /*
        Объект, получаемый из такого Builder, не является потокобезопасным из-за того,
        что поля в нем не объявлены как final. Если в вашем приложении важен этот момент,
        лучше использовать классический Builder.
        */
    }

    Person person = Person.newBuilder()
            .setFirstName("Alexander")
            .setLastName("Korshunov")
            .setPhone("915-174-44-01")
            .setAge(61)
            .setGender("M")
            .build();
}
