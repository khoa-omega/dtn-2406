public class Student {
    int id;
    String name;

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (!(obj instanceof Student)) return false;
        Student that = (Student) obj;
        return id == that.id && name.equals(that.name);
    }

    @Override
    public int hashCode() {
        return id + name.hashCode();
    }
}
