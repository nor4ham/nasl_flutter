class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("NEW"),
    Filter("UPCOMING"),
  ];
}