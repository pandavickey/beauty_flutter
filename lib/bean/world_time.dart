class WorldTime {
  String cityName;
  int interval;

  WorldTime(this.cityName, this.interval);
}

class WorldTimeUtil {
  static List<WorldTime> getWorldTimes() {
    List<WorldTime> list = <WorldTime>[];
    list.add(WorldTime('温哥华', -54000));
    list.add(WorldTime('华盛顿', -43200));
    list.add(WorldTime('纽约', -43200));
    list.add(WorldTime('伦敦', -25200));
    list.add(WorldTime('巴黎', -21600));
    list.add(WorldTime('柏林', -21600));
    list.add(WorldTime('莫斯科', -18000));
    list.add(WorldTime('东京', 3600));
    list.add(WorldTime('首尔', 3600));
    list.add(WorldTime('悉尼', 7200));
    return list;
  }
}
