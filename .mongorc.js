var prompt = function () {
  var dbname = db.getName();
  var master = db.isMaster().ismaster;
  var dblabel = master ? dbname : "(" + dbname + ")";
  var time = ISODate().toLocaleTimeString();
  return dblabel + "/" + time + ">";
};
