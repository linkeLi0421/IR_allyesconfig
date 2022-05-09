; ModuleID = '/llk/IR_all_yes/scripts/genksyms/genksyms.c_pt.bc'
source_filename = "../scripts/genksyms/genksyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.anon = type { i32, ptr }
%struct.symbol = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.string_list = type { ptr, i32, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@cur_line = dso_local local_unnamed_addr global i32 1, align 4
@symtab = internal unnamed_addr global [4096 x ptr] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"export undefined symbol %s\00", align 1
@flag_dump_defs = internal unnamed_addr global i1 false, align 4
@debugfile = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Export %s == <\00", align 1
@expansion_trail = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"%s: %s: modversion changed because of changes in \00", align 1
@flag_preserve = internal unnamed_addr global i1 false, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" (became defined)\00", align 1
@errors = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@flag_rel_crcs = internal unnamed_addr global i1 false, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"__crc_%s = 0x%08lx;\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"SECTIONS { .rodata : ALIGN(4) { __crc_%s = .; LONG(0x%08lx); } }\0A\00", align 1
@flag_warnings = internal unnamed_addr global i1 false, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"dump-types\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"relative-crc\00", align 1
@__const.main.long_opts = private unnamed_addr constant [11 x %struct.option] [%struct.option { ptr @.str.12, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.13, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.14, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.15, i32 0, ptr null, i32 68 }, %struct.option { ptr @.str.16, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.17, i32 1, ptr null, i32 84 }, %struct.option { ptr @.str.18, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.19, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.21, i32 0, ptr null, i32 82 }, %struct.option zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"s:dwqVDr:T:phR\00", align 1
@flag_debug = internal unnamed_addr global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"genksyms version 2.5.60\0A\00", align 1
@flag_reference = internal unnamed_addr global i1 false, align 4
@optarg = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@flag_dump_types = internal unnamed_addr global i1 false, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@yydebug = external local_unnamed_addr global i32, align 4
@yy_flex_debug = external local_unnamed_addr global i32, align 4
@visited_symbols = internal global ptr null, align 8
@.str.26 = private unnamed_addr constant [10 x i8] c"override \00", align 1
@symbol_types = internal unnamed_addr constant [6 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon { i32 116, ptr @.str.54 }, %struct.anon { i32 101, ptr @.str.55 }, %struct.anon { i32 115, ptr @.str.56 }, %struct.anon { i32 117, ptr @.str.57 }, %struct.anon { i32 69, ptr @.str.58 }], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Hash table occupancy %d/%d = %g\0A\00", align 1
@nsyms = internal unnamed_addr global i32 0, align 4
@cur_filename = dso_local local_unnamed_addr global ptr null, align 8
@in_source_file = dso_local local_unnamed_addr global i32 0, align 4
@crctab32 = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@__add_symbol.enum_counter = internal unnamed_addr global i32 0, align 4
@__add_symbol.last_enum_expr = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c" modversion is unchanged\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"ignoring \00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c" modversion change\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"redefinition of %s\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Defn for %s %s == <\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Defn for type%d %s == <\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"expand undefined %s %s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@expand_and_crc_sym.end = internal unnamed_addr global ptr @visited_symbols, align 8
@.str.45 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.49 = private unnamed_addr constant [652 x i8] c"Usage:\0Agenksyms [-adDTwqhVR] > /path/to/.tmp_obj.ver\0A\0A  -s, --symbol-prefix   Select symbol prefix\0A  -d, --debug           Increment the debug level (repeatable)\0A  -D, --dump            Dump expanded symbol defs (for debugging only)\0A  -r, --reference file  Read reference symbols from a file\0A  -T, --dump-types file Dump expanded types into file\0A  -p, --preserve        Preserve reference modversions or fail\0A  -w, --warnings        Enable warnings\0A  -q, --quiet           Disable warnings (default)\0A  -h, --help            Print this message\0A  -V, --version         Print the release version\0A  -R, --relative-crc    Emit section relative symbol CRCs\0A\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"Token too long\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Unknown type %c\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"enum constant\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@switch.table.expand_and_crc_sym.64 = private unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 3, i32 3, i32 3, i32 0], align 4

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @find_symbol(ptr nocapture noundef readonly %name, i32 noundef %ns, i32 noundef %exact) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %name, align 1, !tbaa !5
  %tobool.not3.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not3.i.i, label %crc32.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %entry
  %1 = phi i8 [ %3, %while.body.i.i ], [ %0, %entry ]
  %crc.addr.05.i.i = phi i64 [ %xor2.i.i.i, %while.body.i.i ], [ 4294967295, %entry ]
  %s.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i ], [ %name, %entry ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %s.addr.04.i.i, i64 1
  %conv.i.i.i = zext i8 %1 to i64
  %crc.masked.i.i.i = and i64 %crc.addr.05.i.i, 255
  %and.i.i.i = xor i64 %crc.masked.i.i.i, %conv.i.i.i
  %arrayidx.i.i.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i.i
  %2 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !8
  %conv1.i.i.i = zext i32 %2 to i64
  %shr.i.i.i = lshr i64 %crc.addr.05.i.i, 8
  %xor2.i.i.i = xor i64 %shr.i.i.i, %conv1.i.i.i
  %3 = load i8, ptr %incdec.ptr.i.i, align 1, !tbaa !5
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %partial_crc32.exit.loopexit.i, label %while.body.i.i

partial_crc32.exit.loopexit.i:                    ; preds = %while.body.i.i
  %phi.bo.i = and i64 %xor2.i.i.i, 4095
  %phi.bo = xor i64 %phi.bo.i, 4095
  br label %crc32.exit

crc32.exit:                                       ; preds = %partial_crc32.exit.loopexit.i, %entry
  %crc.addr.0.lcssa.i.i = phi i64 [ 0, %entry ], [ %phi.bo, %partial_crc32.exit.loopexit.i ]
  %arrayidx = getelementptr inbounds [4096 x ptr], ptr @symtab, i64 0, i64 %crc.addr.0.lcssa.i.i
  %sym.035 = load ptr, ptr %arrayidx, align 8, !tbaa !10
  %tobool36.not = icmp eq ptr %sym.035, null
  br i1 %tobool36.not, label %if.end15, label %for.body.preheader

for.body.preheader:                               ; preds = %crc32.exit
  %4 = icmp ult i32 %ns, 6
  %5 = sext i32 %ns to i64
  %switch.gep46 = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %sym.037 = phi ptr [ %sym.0, %for.inc ], [ %sym.035, %for.body.preheader ]
  %type = getelementptr inbounds %struct.symbol, ptr %sym.037, i64 0, i32 2
  %6 = load i32, ptr %type, align 8, !tbaa !12
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %switch.lookup, label %map_to_ns.exit

switch.lookup:                                    ; preds = %for.body
  %8 = sext i32 %6 to i64
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %8
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_to_ns.exit

map_to_ns.exit:                                   ; preds = %switch.lookup, %for.body
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ %6, %for.body ]
  br i1 %4, label %switch.lookup45, label %map_to_ns.exit29

switch.lookup45:                                  ; preds = %map_to_ns.exit
  %switch.load47 = load i32, ptr %switch.gep46, align 4
  br label %map_to_ns.exit29

map_to_ns.exit29:                                 ; preds = %switch.lookup45, %map_to_ns.exit
  %retval.0.i28 = phi i32 [ %switch.load47, %switch.lookup45 ], [ %ns, %map_to_ns.exit ]
  %cmp = icmp eq i32 %retval.0.i, %retval.0.i28
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %map_to_ns.exit29
  %name3 = getelementptr inbounds %struct.symbol, ptr %sym.037, i64 0, i32 1
  %9 = load ptr, ptr %name3, align 8, !tbaa !14
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %9) #18
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true6, label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %is_declared = getelementptr inbounds %struct.symbol, ptr %sym.037, i64 0, i32 7
  %10 = load i32, ptr %is_declared, align 4, !tbaa !15
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.lhs.true6, %land.lhs.true, %map_to_ns.exit29
  %sym.0 = load ptr, ptr %sym.037, align 8, !tbaa !10
  %tobool.not = icmp eq ptr %sym.0, null
  br i1 %tobool.not, label %if.end15, label %for.body

for.end:                                          ; preds = %land.lhs.true6
  %tobool8.not = icmp eq i32 %exact, 0
  %cmp13.not = icmp eq i32 %6, %ns
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %if.end15, label %cleanup

if.end15:                                         ; preds = %for.end, %for.inc, %crc32.exit
  %sym.034 = phi ptr [ %sym.037, %for.end ], [ null, %crc32.exit ], [ null, %for.inc ]
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.end
  %retval.0 = phi ptr [ %sym.034, %if.end15 ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @add_symbol(ptr noundef %name, i32 noundef %type, ptr noundef %defn, i32 noundef %is_extern) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc ptr @__add_symbol(ptr noundef %name, i32 noundef %type, ptr noundef %defn, i32 noundef %is_extern, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @__add_symbol(ptr noundef %name, i32 noundef %type, ptr noundef %defn, i32 noundef %is_extern, i32 noundef %is_reference) unnamed_addr #3 {
entry:
  %buf = alloca [20 x i8], align 16
  switch i32 %type, label %if.end23 [
    i32 5, label %if.then
    i32 2, label %if.then18
  ]

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %defn, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %0 = load ptr, ptr @__add_symbol.last_enum_expr, align 8, !tbaa !10
  %cmp.not4.i = icmp eq ptr %0, null
  br i1 %cmp.not4.i, label %if.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %if.then1
  %s.addr.05.i = phi ptr [ %1, %while.body.i ], [ %0, %if.then1 ]
  %1 = load ptr, ptr %s.addr.05.i, align 8, !tbaa !16
  %string.i.i = getelementptr inbounds %struct.string_list, ptr %s.addr.05.i, i64 0, i32 3
  %2 = load ptr, ptr %string.i.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %2) #19
  tail call void @free(ptr noundef nonnull %s.addr.05.i) #19
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i

if.end.i:                                         ; preds = %while.body.i, %if.then1
  %call.i = tail call ptr @copy_node(ptr noundef nonnull %defn) #19
  %start.addr.016.i = load ptr, ptr %defn, align 8, !tbaa !16
  %cmp1.not17.i = icmp eq ptr %start.addr.016.i, null
  br i1 %cmp1.not17.i, label %copy_list_range.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end.i
  %start.addr.019.i = phi ptr [ %start.addr.0.i, %for.body.i ], [ %start.addr.016.i, %if.end.i ]
  %n.018.i = phi ptr [ %call2.i, %for.body.i ], [ %call.i, %if.end.i ]
  %call2.i = tail call ptr @copy_node(ptr noundef nonnull %start.addr.019.i) #19
  store ptr %call2.i, ptr %n.018.i, align 8, !tbaa !16
  %start.addr.0.i = load ptr, ptr %start.addr.019.i, align 8, !tbaa !16
  %cmp1.not.i = icmp eq ptr %start.addr.0.i, null
  br i1 %cmp1.not.i, label %copy_list_range.exit, label %for.body.i

copy_list_range.exit:                             ; preds = %for.body.i, %if.end.i
  %n.0.lcssa.i = phi ptr [ %call.i, %if.end.i ], [ %call2.i, %for.body.i ]
  store ptr null, ptr %n.0.lcssa.i, align 8, !tbaa !16
  store ptr %call.i, ptr @__add_symbol.last_enum_expr, align 8, !tbaa !10
  store i32 1, ptr @__add_symbol.enum_counter, align 4, !tbaa !8
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #19
  %3 = load i32, ptr @__add_symbol.enum_counter, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @__add_symbol.enum_counter, align 4, !tbaa !8
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %buf, i64 noundef 20, ptr noundef nonnull @.str.29, i32 noundef %3) #19
  %4 = load ptr, ptr @__add_symbol.last_enum_expr, align 8, !tbaa !10
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.else12, label %if.end.i190

if.end.i190:                                      ; preds = %if.else
  %call.i187 = tail call ptr @copy_node(ptr noundef nonnull %4) #19
  %start.addr.016.i188 = load ptr, ptr %4, align 8, !tbaa !16
  %cmp1.not17.i189 = icmp eq ptr %start.addr.016.i188, null
  br i1 %cmp1.not17.i189, label %copy_list_range.exit200, label %for.body.i196

for.body.i196:                                    ; preds = %for.body.i196, %if.end.i190
  %start.addr.019.i191 = phi ptr [ %start.addr.0.i194, %for.body.i196 ], [ %start.addr.016.i188, %if.end.i190 ]
  %n.018.i192 = phi ptr [ %call2.i193, %for.body.i196 ], [ %call.i187, %if.end.i190 ]
  %call2.i193 = tail call ptr @copy_node(ptr noundef nonnull %start.addr.019.i191) #19
  store ptr %call2.i193, ptr %n.018.i192, align 8, !tbaa !16
  %start.addr.0.i194 = load ptr, ptr %start.addr.019.i191, align 8, !tbaa !16
  %cmp1.not.i195 = icmp eq ptr %start.addr.0.i194, null
  br i1 %cmp1.not.i195, label %copy_list_range.exit200, label %for.body.i196

copy_list_range.exit200:                          ; preds = %for.body.i196, %if.end.i190
  %n.0.lcssa.i197 = phi ptr [ %call.i187, %if.end.i190 ], [ %call2.i193, %for.body.i196 ]
  store ptr null, ptr %n.0.lcssa.i197, align 8, !tbaa !16
  %call6 = tail call fastcc ptr @mk_node(ptr noundef nonnull @.str.30)
  %call7 = tail call fastcc ptr @mk_node(ptr noundef nonnull @.str.31)
  %call8 = tail call fastcc ptr @mk_node(ptr noundef nonnull @.str.32)
  %call10 = call fastcc ptr @mk_node(ptr noundef nonnull %buf)
  %call11 = tail call ptr (ptr, ...) @concat_list(ptr noundef %call6, ptr noundef %call.i187, ptr noundef %call7, ptr noundef %call8, ptr noundef %call10, ptr noundef null)
  br label %if.end

if.else12:                                        ; preds = %if.else
  %call14 = call fastcc ptr @mk_node(ptr noundef nonnull %buf)
  br label %if.end

if.end:                                           ; preds = %if.else12, %copy_list_range.exit200
  %defn.addr.0 = phi ptr [ %call11, %copy_list_range.exit200 ], [ %call14, %if.else12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #19
  br label %if.end23

if.then18:                                        ; preds = %entry
  %5 = load ptr, ptr @__add_symbol.last_enum_expr, align 8, !tbaa !10
  %cmp.not4.i201 = icmp eq ptr %5, null
  br i1 %cmp.not4.i201, label %free_list.exit206, label %while.body.i205

while.body.i205:                                  ; preds = %while.body.i205, %if.then18
  %s.addr.05.i202 = phi ptr [ %6, %while.body.i205 ], [ %5, %if.then18 ]
  %6 = load ptr, ptr %s.addr.05.i202, align 8, !tbaa !16
  %string.i.i203 = getelementptr inbounds %struct.string_list, ptr %s.addr.05.i202, i64 0, i32 3
  %7 = load ptr, ptr %string.i.i203, align 8, !tbaa !18
  tail call void @free(ptr noundef %7) #19
  tail call void @free(ptr noundef nonnull %s.addr.05.i202) #19
  %cmp.not.i204 = icmp eq ptr %6, null
  br i1 %cmp.not.i204, label %free_list.exit206, label %while.body.i205

free_list.exit206:                                ; preds = %while.body.i205, %if.then18
  store ptr null, ptr @__add_symbol.last_enum_expr, align 8, !tbaa !10
  store i32 0, ptr @__add_symbol.enum_counter, align 4, !tbaa !8
  %tobool19.not = icmp eq ptr %name, null
  br i1 %tobool19.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %free_list.exit206, %if.end, %copy_list_range.exit, %entry
  %defn.addr.1 = phi ptr [ %defn, %copy_list_range.exit ], [ %defn.addr.0, %if.end ], [ %defn, %free_list.exit206 ], [ %defn, %entry ]
  %8 = load i8, ptr %name, align 1, !tbaa !5
  %tobool.not3.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not3.i.i, label %crc32.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end23
  %9 = phi i8 [ %11, %while.body.i.i ], [ %8, %if.end23 ]
  %crc.addr.05.i.i = phi i64 [ %xor2.i.i.i, %while.body.i.i ], [ 4294967295, %if.end23 ]
  %s.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i ], [ %name, %if.end23 ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %s.addr.04.i.i, i64 1
  %conv.i.i.i = zext i8 %9 to i64
  %crc.masked.i.i.i = and i64 %crc.addr.05.i.i, 255
  %and.i.i.i = xor i64 %crc.masked.i.i.i, %conv.i.i.i
  %arrayidx.i.i.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i.i
  %10 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !8
  %conv1.i.i.i = zext i32 %10 to i64
  %shr.i.i.i = lshr i64 %crc.addr.05.i.i, 8
  %xor2.i.i.i = xor i64 %shr.i.i.i, %conv1.i.i.i
  %11 = load i8, ptr %incdec.ptr.i.i, align 1, !tbaa !5
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %partial_crc32.exit.loopexit.i, label %while.body.i.i

partial_crc32.exit.loopexit.i:                    ; preds = %while.body.i.i
  %phi.bo.i = xor i64 %xor2.i.i.i, 4294967295
  br label %crc32.exit

crc32.exit:                                       ; preds = %partial_crc32.exit.loopexit.i, %if.end23
  %crc.addr.0.lcssa.i.i = phi i64 [ 0, %if.end23 ], [ %phi.bo.i, %partial_crc32.exit.loopexit.i ]
  %rem = and i64 %crc.addr.0.lcssa.i.i, 4095
  %arrayidx = getelementptr inbounds [4096 x ptr], ptr @symtab, i64 0, i64 %rem
  %sym.0230 = load ptr, ptr %arrayidx, align 8, !tbaa !10
  %tobool25.not231 = icmp eq ptr %sym.0230, null
  br i1 %tobool25.not231, label %if.end85, label %for.body.preheader

for.body.preheader:                               ; preds = %crc32.exit
  %12 = icmp ult i32 %type, 6
  %13 = sext i32 %type to i64
  %switch.gep248 = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %13
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %sym.0232 = phi ptr [ %sym.0, %for.inc ], [ %sym.0230, %for.body.preheader ]
  %type26 = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 2
  %14 = load i32, ptr %type26, align 8, !tbaa !12
  %15 = icmp ult i32 %14, 6
  br i1 %15, label %switch.lookup, label %map_to_ns.exit

switch.lookup:                                    ; preds = %for.body
  %16 = sext i32 %14 to i64
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %16
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_to_ns.exit

map_to_ns.exit:                                   ; preds = %switch.lookup, %for.body
  %retval.0.i207 = phi i32 [ %switch.load, %switch.lookup ], [ %14, %for.body ]
  br i1 %12, label %switch.lookup247, label %map_to_ns.exit211

switch.lookup247:                                 ; preds = %map_to_ns.exit
  %switch.load249 = load i32, ptr %switch.gep248, align 4
  br label %map_to_ns.exit211

map_to_ns.exit211:                                ; preds = %switch.lookup247, %map_to_ns.exit
  %retval.0.i210 = phi i32 [ %switch.load249, %switch.lookup247 ], [ %type, %map_to_ns.exit ]
  %cmp29 = icmp eq i32 %retval.0.i207, %retval.0.i210
  br i1 %cmp29, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %map_to_ns.exit211
  %name30 = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 1
  %17 = load ptr, ptr %name30, align 8, !tbaa !14
  %call31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %17) #18
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %for.inc

if.then33:                                        ; preds = %land.lhs.true
  %tobool34.not = icmp eq i32 %is_reference, 0
  br i1 %tobool34.not, label %if.else36, label %for.body77.lr.ph

if.else36:                                        ; preds = %if.then33
  %cmp38 = icmp eq i32 %14, %type
  br i1 %cmp38, label %land.lhs.true39, label %if.else51

land.lhs.true39:                                  ; preds = %if.else36
  %defn40 = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 3
  %18 = load ptr, ptr %defn40, align 8, !tbaa !19
  %tobool20.i = icmp ne ptr %18, null
  %tobool121.i = icmp ne ptr %defn.addr.1, null
  %19 = and i1 %tobool121.i, %tobool20.i
  br i1 %19, label %while.body.i213, label %equal_list.exit

while.body.i213:                                  ; preds = %if.end.i215, %land.lhs.true39
  %b.addr.023.i = phi ptr [ %25, %if.end.i215 ], [ %defn.addr.1, %land.lhs.true39 ]
  %a.addr.022.i = phi ptr [ %24, %if.end.i215 ], [ %18, %land.lhs.true39 ]
  %tag.i = getelementptr inbounds %struct.string_list, ptr %a.addr.022.i, i64 0, i32 1
  %20 = load i32, ptr %tag.i, align 8, !tbaa !20
  %tag2.i = getelementptr inbounds %struct.string_list, ptr %b.addr.023.i, i64 0, i32 1
  %21 = load i32, ptr %tag2.i, align 8, !tbaa !20
  %cmp.not.i212 = icmp eq i32 %20, %21
  br i1 %cmp.not.i212, label %lor.lhs.false.i, label %if.else51

lor.lhs.false.i:                                  ; preds = %while.body.i213
  %string.i = getelementptr inbounds %struct.string_list, ptr %a.addr.022.i, i64 0, i32 3
  %22 = load ptr, ptr %string.i, align 8, !tbaa !18
  %string3.i = getelementptr inbounds %struct.string_list, ptr %b.addr.023.i, i64 0, i32 3
  %23 = load ptr, ptr %string3.i, align 8, !tbaa !18
  %call.i214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %23) #18
  %tobool4.not.i = icmp eq i32 %call.i214, 0
  br i1 %tobool4.not.i, label %if.end.i215, label %if.else51

if.end.i215:                                      ; preds = %lor.lhs.false.i
  %24 = load ptr, ptr %a.addr.022.i, align 8, !tbaa !16
  %25 = load ptr, ptr %b.addr.023.i, align 8, !tbaa !16
  %tobool.i = icmp ne ptr %24, null
  %tobool1.i = icmp ne ptr %25, null
  %26 = select i1 %tobool.i, i1 %tobool1.i, i1 false
  br i1 %26, label %while.body.i213, label %equal_list.exit

equal_list.exit:                                  ; preds = %if.end.i215, %land.lhs.true39
  %tobool.lcssa.i = phi i1 [ %tobool20.i, %land.lhs.true39 ], [ %tobool.i, %if.end.i215 ]
  %tobool1.lcssa.i = phi i1 [ %tobool121.i, %land.lhs.true39 ], [ %tobool1.i, %if.end.i215 ]
  %27 = select i1 %tobool.lcssa.i, i1 true, i1 %tobool1.lcssa.i
  br i1 %27, label %if.else51, label %if.then43

if.then43:                                        ; preds = %equal_list.exit
  %is_declared = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 7
  %28 = load i32, ptr %is_declared, align 4, !tbaa !15
  %tobool44.not = icmp eq i32 %28, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %if.then43
  %is_override = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 9
  %29 = load i32, ptr %is_override, align 4, !tbaa !21
  %tobool46.not = icmp eq i32 %29, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %land.lhs.true45
  tail call fastcc void @print_location()
  tail call fastcc void @print_type_name(i32 noundef %type, ptr noundef nonnull %name)
  %30 = load ptr, ptr @stderr, align 8, !tbaa !10
  %31 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 25, i64 1, ptr %30) #20
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true45, %if.then43
  store i32 1, ptr %is_declared, align 4, !tbaa !15
  br label %cleanup

if.else51:                                        ; preds = %equal_list.exit, %lor.lhs.false.i, %while.body.i213, %if.else36
  %is_declared52 = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 7
  %32 = load i32, ptr %is_declared52, align 4, !tbaa !15
  %tobool53.not = icmp eq i32 %32, 0
  br i1 %tobool53.not, label %if.then54, label %if.else67

if.then54:                                        ; preds = %if.else51
  %is_override55 = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 9
  %33 = load i32, ptr %is_override55, align 4, !tbaa !21
  %tobool56 = icmp ne i32 %33, 0
  %.b = load i1, ptr @flag_preserve, align 4
  %or.cond = select i1 %tobool56, i1 %.b, i1 false
  br i1 %or.cond, label %if.then59, label %if.else63

if.then59:                                        ; preds = %if.then54
  tail call fastcc void @print_location()
  %34 = load ptr, ptr @stderr, align 8, !tbaa !10
  %35 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 9, i64 1, ptr %34) #20
  tail call fastcc void @print_type_name(i32 noundef %type, ptr noundef nonnull %name)
  %36 = load ptr, ptr @stderr, align 8, !tbaa !10
  %37 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 19, i64 1, ptr %36) #20
  store i32 1, ptr %is_declared52, align 4, !tbaa !15
  br label %cleanup

if.else63:                                        ; preds = %if.then54
  %.off.i = add i32 %14, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.lhs.true.i, label %is_unknown_symbol.exit.thread

land.lhs.true.i:                                  ; preds = %if.else63
  %defn6.i = getelementptr inbounds %struct.symbol, ptr %sym.0232, i64 0, i32 3
  %38 = load ptr, ptr %defn6.i, align 8, !tbaa !19
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %is_unknown_symbol.exit.thread, label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %tag.i217 = getelementptr inbounds %struct.string_list, ptr %38, i64 0, i32 1
  %39 = load i32, ptr %tag.i217, align 8, !tbaa !20
  %cmp8.i = icmp eq i32 %39, 0
  br i1 %cmp8.i, label %land.lhs.true9.i, label %is_unknown_symbol.exit.thread

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %string.i218 = getelementptr inbounds %struct.string_list, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %string.i218, align 8, !tbaa !18
  %call.i219 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(2) @.str.39) #18
  %cmp10.i = icmp eq i32 %call.i219, 0
  br i1 %cmp10.i, label %land.lhs.true11.i, label %is_unknown_symbol.exit.thread

land.lhs.true11.i:                                ; preds = %land.lhs.true9.i
  %41 = load ptr, ptr %38, align 8, !tbaa !16
  %tobool12.not.i = icmp eq ptr %41, null
  br i1 %tobool12.not.i, label %is_unknown_symbol.exit.thread, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true11.i
  %tag14.i = getelementptr inbounds %struct.string_list, ptr %41, i64 0, i32 1
  %42 = load i32, ptr %tag14.i, align 8, !tbaa !20
  %cmp15.i = icmp eq i32 %42, 0
  br i1 %cmp15.i, label %land.lhs.true16.i, label %is_unknown_symbol.exit.thread

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %string17.i = getelementptr inbounds %struct.string_list, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %string17.i, align 8, !tbaa !18
  %call18.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(8) @.str.40) #18
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %land.lhs.true20.i, label %is_unknown_symbol.exit.thread

land.lhs.true20.i:                                ; preds = %land.lhs.true16.i
  %44 = load ptr, ptr %41, align 8, !tbaa !16
  %tobool22.not.i = icmp eq ptr %44, null
  br i1 %tobool22.not.i, label %is_unknown_symbol.exit.thread, label %land.lhs.true23.i

land.lhs.true23.i:                                ; preds = %land.lhs.true20.i
  %tag24.i = getelementptr inbounds %struct.string_list, ptr %44, i64 0, i32 1
  %45 = load i32, ptr %tag24.i, align 8, !tbaa !20
  %cmp25.i = icmp eq i32 %45, 0
  br i1 %cmp25.i, label %is_unknown_symbol.exit, label %is_unknown_symbol.exit.thread

is_unknown_symbol.exit:                           ; preds = %land.lhs.true23.i
  %string26.i = getelementptr inbounds %struct.string_list, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %string26.i, align 8, !tbaa !18
  %call27.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.41) #18
  %cmp28.i.not = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i.not, label %for.body77.lr.ph, label %is_unknown_symbol.exit.thread

is_unknown_symbol.exit.thread:                    ; preds = %is_unknown_symbol.exit, %land.lhs.true23.i, %land.lhs.true20.i, %land.lhs.true16.i, %land.lhs.true13.i, %land.lhs.true11.i, %land.lhs.true9.i, %land.lhs.true7.i, %land.lhs.true.i, %if.else63
  br label %for.body77.lr.ph

if.else67:                                        ; preds = %if.else51
  tail call void (ptr, ...) @error_with_pos(ptr noundef nonnull @.str.36, ptr noundef nonnull %name)
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true, %map_to_ns.exit211
  %sym.0 = load ptr, ptr %sym.0232, align 8, !tbaa !10
  %tobool25.not = icmp eq ptr %sym.0, null
  br i1 %tobool25.not, label %if.end85, label %for.body

for.body77.lr.ph:                                 ; preds = %is_unknown_symbol.exit.thread, %is_unknown_symbol.exit, %if.then33
  %status.0 = phi i32 [ 0, %if.then33 ], [ 2, %is_unknown_symbol.exit.thread ], [ 1, %is_unknown_symbol.exit ]
  br label %for.body77

for.body77:                                       ; preds = %for.body77.for.cond75_crit_edge, %for.body77.lr.ph
  %psym.0246 = phi ptr [ %arrayidx, %for.body77.lr.ph ], [ %47, %for.body77.for.cond75_crit_edge ]
  %47 = phi ptr [ %sym.0230, %for.body77.lr.ph ], [ %.pre, %for.body77.for.cond75_crit_edge ]
  %cmp78 = icmp eq ptr %47, %sym.0232
  br i1 %cmp78, label %if.then79, label %for.body77.for.cond75_crit_edge

for.body77.for.cond75_crit_edge:                  ; preds = %for.body77
  %.pre = load ptr, ptr %47, align 8, !tbaa !10
  %tobool76.not = icmp eq ptr %.pre, null
  br i1 %tobool76.not, label %for.end84, label %for.body77

if.then79:                                        ; preds = %for.body77
  %48 = load ptr, ptr %sym.0232, align 8, !tbaa !22
  store ptr %48, ptr %psym.0246, align 8, !tbaa !10
  br label %for.end84

for.end84:                                        ; preds = %if.then79, %for.body77.for.cond75_crit_edge
  %49 = load i32, ptr @nsyms, align 4, !tbaa !8
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr @nsyms, align 4, !tbaa !8
  br label %if.end85

if.end85:                                         ; preds = %for.end84, %for.inc, %crc32.exit
  %status.0224 = phi i32 [ %status.0, %for.end84 ], [ 0, %crc32.exit ], [ 0, %for.inc ]
  %call86 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %50 = load ptr, ptr @stderr, align 8, !tbaa !10
  %51 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %50) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

if.end90:                                         ; preds = %if.end85
  %name91 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 1
  store ptr %name, ptr %name91, align 8, !tbaa !14
  %type92 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 2
  store i32 %type, ptr %type92, align 8, !tbaa !12
  %defn93 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 3
  store ptr %defn.addr.1, ptr %defn93, align 8, !tbaa !19
  %expansion_trail = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 4
  %is_extern94 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %expansion_trail, i8 0, i64 16, i1 false)
  store i32 %is_extern, ptr %is_extern94, align 8, !tbaa !23
  %52 = load ptr, ptr %arrayidx, align 8, !tbaa !10
  store ptr %52, ptr %call86, align 8, !tbaa !22
  store ptr %call86, ptr %arrayidx, align 8, !tbaa !10
  %tobool98.not = icmp eq i32 %is_reference, 0
  %lnot.ext = zext i1 %tobool98.not to i32
  %is_declared99 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 7
  store i32 %lnot.ext, ptr %is_declared99, align 4, !tbaa !15
  %status100 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 8
  store i32 %status.0224, ptr %status100, align 8, !tbaa !24
  %is_override101 = getelementptr inbounds %struct.symbol, ptr %call86, i64 0, i32 9
  store i32 0, ptr %is_override101, align 4, !tbaa !21
  %53 = load i32, ptr @flag_debug, align 4, !tbaa !8
  %tobool102.not = icmp eq i32 %53, 0
  br i1 %tobool102.not, label %if.end120, label %if.then103

if.then103:                                       ; preds = %if.end90
  %tobool106.not = icmp eq i32 %type, 0
  br i1 %tobool106.not, label %if.else112, label %if.then107

if.then107:                                       ; preds = %if.then103
  %idxprom = zext i32 %type to i64
  %name105 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom, i32 1
  %54 = load ptr, ptr %name105, align 8, !tbaa !25
  %55 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %call111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.37, ptr noundef %54, ptr noundef nonnull %name)
  br label %if.end114

if.else112:                                       ; preds = %if.then103
  %56 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %call113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull %name)
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then107
  %tobool115.not = icmp eq i32 %is_extern, 0
  br i1 %tobool115.not, label %if.end118, label %if.then116

if.then116:                                       ; preds = %if.end114
  %57 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %58 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %57)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end114
  %59 = load ptr, ptr @debugfile, align 8, !tbaa !10
  tail call fastcc void @print_list(ptr noundef %59, ptr noundef %defn.addr.1)
  %60 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %61 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %60)
  br label %if.end120

if.end120:                                        ; preds = %if.end118, %if.end90
  %62 = load i32, ptr @nsyms, align 4, !tbaa !8
  %inc121 = add nsw i32 %62, 1
  store i32 %inc121, ptr @nsyms, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.else67, %if.then59, %if.end49, %free_list.exit206
  %retval.0 = phi ptr [ %call86, %if.end120 ], [ %sym.0232, %if.end49 ], [ %sym.0232, %if.else67 ], [ %sym.0232, %if.then59 ], [ null, %free_list.exit206 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_node(ptr nocapture noundef %node) local_unnamed_addr #4 {
entry:
  %string = getelementptr inbounds %struct.string_list, ptr %node, i64 0, i32 3
  %0 = load ptr, ptr %string, align 8, !tbaa !18
  tail call void @free(ptr noundef %0) #19
  tail call void @free(ptr noundef %node) #19
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @free_list(ptr noundef %s, ptr noundef readnone %e) local_unnamed_addr #3 {
entry:
  %cmp.not4 = icmp eq ptr %s, %e
  br i1 %cmp.not4, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %s.addr.05 = phi ptr [ %0, %while.body ], [ %s, %entry ]
  %0 = load ptr, ptr %s.addr.05, align 8, !tbaa !16
  %string.i = getelementptr inbounds %struct.string_list, ptr %s.addr.05, i64 0, i32 3
  %1 = load ptr, ptr %string.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %1) #19
  tail call void @free(ptr noundef %s.addr.05) #19
  %cmp.not = icmp eq ptr %0, %e
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @copy_node(ptr nocapture noundef readonly %node) local_unnamed_addr #3 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %0) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

if.end:                                           ; preds = %entry
  %string = getelementptr inbounds %struct.string_list, ptr %node, i64 0, i32 3
  %2 = load ptr, ptr %string, align 8, !tbaa !18
  %call2 = tail call noalias ptr @strdup(ptr noundef %2) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !10
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %3) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

if.end6:                                          ; preds = %if.end
  %string8 = getelementptr inbounds %struct.string_list, ptr %call, i64 0, i32 3
  store ptr %call2, ptr %string8, align 8, !tbaa !18
  %tag = getelementptr inbounds %struct.string_list, ptr %node, i64 0, i32 1
  %5 = load i32, ptr %tag, align 8, !tbaa !20
  %tag9 = getelementptr inbounds %struct.string_list, ptr %call, i64 0, i32 1
  store i32 %5, ptr %tag9, align 8, !tbaa !20
  ret ptr %call
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @copy_list_range(ptr noundef readonly %start, ptr noundef readnone %end) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq ptr %start, %end
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @copy_node(ptr noundef %start)
  %start.addr.016 = load ptr, ptr %start, align 8, !tbaa !16
  %cmp1.not17 = icmp eq ptr %start.addr.016, %end
  br i1 %cmp1.not17, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %start.addr.019 = phi ptr [ %start.addr.0, %for.body ], [ %start.addr.016, %if.end ]
  %n.018 = phi ptr [ %call2, %for.body ], [ %call, %if.end ]
  %call2 = tail call ptr @copy_node(ptr noundef %start.addr.019)
  store ptr %call2, ptr %n.018, align 8, !tbaa !16
  %start.addr.0 = load ptr, ptr %start.addr.019, align 8, !tbaa !16
  %cmp1.not = icmp eq ptr %start.addr.0, %end
  br i1 %cmp1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %n.0.lcssa = phi ptr [ %call, %if.end ], [ %call2, %for.body ]
  store ptr null, ptr %n.0.lcssa, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi ptr [ %call, %for.end ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @export_symbol(ptr noundef %name) local_unnamed_addr #3 {
entry:
  %0 = load i8, ptr %name, align 1, !tbaa !5
  %tobool.not3.i.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not3.i.i.i, label %crc32.exit.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %entry
  %1 = phi i8 [ %3, %while.body.i.i.i ], [ %0, %entry ]
  %crc.addr.05.i.i.i = phi i64 [ %xor2.i.i.i.i, %while.body.i.i.i ], [ 4294967295, %entry ]
  %s.addr.04.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i ], [ %name, %entry ]
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %s.addr.04.i.i.i, i64 1
  %conv.i.i.i.i = zext i8 %1 to i64
  %crc.masked.i.i.i.i = and i64 %crc.addr.05.i.i.i, 255
  %and.i.i.i.i = xor i64 %crc.masked.i.i.i.i, %conv.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i.i.i
  %2 = load i32, ptr %arrayidx.i.i.i.i, align 4, !tbaa !8
  %conv1.i.i.i.i = zext i32 %2 to i64
  %shr.i.i.i.i = lshr i64 %crc.addr.05.i.i.i, 8
  %xor2.i.i.i.i = xor i64 %shr.i.i.i.i, %conv1.i.i.i.i
  %3 = load i8, ptr %incdec.ptr.i.i.i, align 1, !tbaa !5
  %tobool.not.i.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i.i, label %partial_crc32.exit.loopexit.i.i, label %while.body.i.i.i

partial_crc32.exit.loopexit.i.i:                  ; preds = %while.body.i.i.i
  %phi.bo.i.i = and i64 %xor2.i.i.i.i, 4095
  %phi.bo.i = xor i64 %phi.bo.i.i, 4095
  br label %crc32.exit.i

crc32.exit.i:                                     ; preds = %partial_crc32.exit.loopexit.i.i, %entry
  %crc.addr.0.lcssa.i.i.i = phi i64 [ 0, %entry ], [ %phi.bo.i, %partial_crc32.exit.loopexit.i.i ]
  %arrayidx.i = getelementptr inbounds [4096 x ptr], ptr @symtab, i64 0, i64 %crc.addr.0.lcssa.i.i.i
  %sym.035.i = load ptr, ptr %arrayidx.i, align 8, !tbaa !10
  %tobool36.not.i = icmp eq ptr %sym.035.i, null
  br i1 %tobool36.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %crc32.exit.i
  %sym.037.i = phi ptr [ %sym.0.i, %for.inc.i ], [ %sym.035.i, %crc32.exit.i ]
  %type.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 2
  %4 = load i32, ptr %type.i, align 8, !tbaa !12
  switch i32 %4, label %for.inc.i [
    i32 5, label %land.lhs.true.i
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %for.body.i, %for.body.i, %for.body.i
  %name3.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 1
  %5 = load ptr, ptr %name3.i, align 8, !tbaa !14
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %5) #18
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %land.lhs.true6.i, label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %is_declared.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 7
  %6 = load i32, ptr %is_declared.i, align 4, !tbaa !15
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %if.else

for.inc.i:                                        ; preds = %land.lhs.true6.i, %land.lhs.true.i, %for.body.i
  %sym.0.i = load ptr, ptr %sym.037.i, align 8, !tbaa !10
  %tobool.not.i = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i, label %if.then, label %for.body.i

if.then:                                          ; preds = %for.inc.i, %crc32.exit.i
  tail call void (ptr, ...) @error_with_pos(ptr noundef nonnull @.str.1, ptr noundef nonnull %name)
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true6.i
  %.b53 = load i1, ptr @flag_dump_defs, align 4
  br i1 %.b53, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %7 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %name)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %expansion_trail = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 4
  store ptr inttoptr (i64 -1 to ptr), ptr %expansion_trail, align 8, !tbaa !27
  store ptr %sym.037.i, ptr @expansion_trail, align 8, !tbaa !10
  %call4 = tail call fastcc i64 @expand_and_crc_sym(ptr noundef nonnull %sym.037.i, i64 noundef 4294967295)
  %xor = xor i64 %call4, 4294967295
  %8 = load ptr, ptr @expansion_trail, align 8, !tbaa !10
  %cmp.not65 = icmp eq ptr %8, inttoptr (i64 -1 to ptr)
  br i1 %cmp.not65, label %if.end29, label %while.body

while.body:                                       ; preds = %if.end24, %if.end
  %sym.067 = phi ptr [ %9, %if.end24 ], [ %8, %if.end ]
  %has_changed.066 = phi i32 [ %has_changed.1, %if.end24 ], [ 0, %if.end ]
  %expansion_trail5 = getelementptr inbounds %struct.symbol, ptr %sym.067, i64 0, i32 4
  %9 = load ptr, ptr %expansion_trail5, align 8, !tbaa !27
  %status = getelementptr inbounds %struct.symbol, ptr %sym.067, i64 0, i32 8
  %10 = load i32, ptr %status, align 8, !tbaa !24
  %cmp6.not = icmp eq i32 %10, 0
  br i1 %cmp6.not, label %if.end24, label %if.then7

if.then7:                                         ; preds = %while.body
  %tobool8.not = icmp eq i32 %has_changed.066, 0
  %11 = load ptr, ptr @stderr, align 8, !tbaa !10
  br i1 %tobool8.not, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.then7
  %12 = load ptr, ptr @cur_filename, align 8, !tbaa !10
  %tobool.not.i57 = icmp eq ptr %12, null
  %..str.46.i = select i1 %tobool.not.i57, ptr @.str.46, ptr %12
  %13 = load i32, ptr @cur_line, align 4, !tbaa !8
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.45, ptr noundef %..str.46.i, i32 noundef %13) #23
  %14 = load ptr, ptr @stderr, align 8, !tbaa !10
  %.b55 = load i1, ptr @flag_preserve, align 4
  %cond = select i1 %.b55, ptr @.str.4, ptr @.str.5
  %call11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, ptr noundef nonnull %name) #20
  br label %if.end14

if.else12:                                        ; preds = %if.then7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %11) #20
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then9
  %type = getelementptr inbounds %struct.symbol, ptr %sym.067, i64 0, i32 2
  %16 = load i32, ptr %type, align 8, !tbaa !12
  %name15 = getelementptr inbounds %struct.symbol, ptr %sym.067, i64 0, i32 1
  %17 = load ptr, ptr %name15, align 8, !tbaa !14
  %tobool.not.i58 = icmp eq i32 %16, 0
  br i1 %tobool.not.i58, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  %idxprom.i = zext i32 %16 to i64
  %name1.i = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom.i, i32 1
  %18 = load ptr, ptr %name1.i, align 8, !tbaa !25
  %19 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call.i59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.47, ptr noundef %18, ptr noundef %17) #23
  br label %print_type_name.exit

if.else.i:                                        ; preds = %if.end14
  %20 = load ptr, ptr @stderr, align 8, !tbaa !10
  %fputs.i = tail call i32 @fputs(ptr %17, ptr %20) #23
  br label %print_type_name.exit

print_type_name.exit:                             ; preds = %if.else.i, %if.then.i
  %21 = load i32, ptr %status, align 8, !tbaa !24
  %cmp17 = icmp eq i32 %21, 1
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %print_type_name.exit
  %22 = load ptr, ptr @stderr, align 8, !tbaa !10
  %23 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %22) #20
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %print_type_name.exit
  %.b54 = load i1, ptr @flag_preserve, align 4
  br i1 %.b54, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %24 = load i32, ptr @errors, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr @errors, align 4, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20, %while.body
  %has_changed.1 = phi i32 [ 1, %if.then22 ], [ 1, %if.end20 ], [ %has_changed.066, %while.body ]
  store ptr null, ptr %expansion_trail5, align 8, !tbaa !27
  %cmp.not = icmp eq ptr %9, inttoptr (i64 -1 to ptr)
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end24
  %tobool26.not = icmp eq i32 %has_changed.1, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %while.end
  %25 = load ptr, ptr @stderr, align 8, !tbaa !10
  %fputc = tail call i32 @fputc(i32 10, ptr %25)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.end, %if.end
  %.b = load i1, ptr @flag_dump_defs, align 4
  br i1 %.b, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %26 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %27 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %26)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29
  %.b56 = load i1, ptr @flag_rel_crcs, align 4
  %cond35 = select i1 %.b56, ptr @.str.11, ptr @.str.10
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %cond35, ptr noundef nonnull %name, i64 noundef %xor)
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.then
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @error_with_pos(ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #10 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #19
  %.b = load i1, ptr @flag_warnings, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = load ptr, ptr @cur_filename, align 8, !tbaa !10
  %tobool.not.i = icmp eq ptr %1, null
  %..str.46.i = select i1 %tobool.not.i, ptr @.str.46, ptr %1
  %2 = load i32, ptr @cur_line, align 4, !tbaa !8
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %..str.46.i, i32 noundef %2) #23
  call void @llvm.va_start(ptr nonnull %args)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call = call i32 @vfprintf(ptr noundef %3, ptr noundef %fmt, ptr noundef nonnull %args) #20
  call void @llvm.va_end(ptr nonnull %args)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call3 = call i32 @putc(i32 noundef 10, ptr noundef %4)
  %5 = load i32, ptr @errors, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @errors, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @expand_and_crc_sym(ptr noundef %sym, i64 noundef %crc) unnamed_addr #3 {
entry:
  %defn = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3
  %0 = load ptr, ptr %defn, align 8, !tbaa !19
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %tmp.0 = phi ptr [ %1, %while.cond ], [ %0, %entry ]
  %elem.0 = phi i32 [ %inc, %while.cond ], [ 1, %entry ]
  %1 = load ptr, ptr %tmp.0, align 8, !tbaa !16
  %cmp.not = icmp eq ptr %1, null
  %inc = add nuw nsw i32 %elem.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = zext i32 %elem.0 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %2 = alloca i8, i64 %mul, align 16
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %conv
  %add.ptr1 = getelementptr inbounds ptr, ptr %add.ptr, i64 -1
  store ptr %0, ptr %add.ptr1, align 8, !tbaa !10
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %cmp4.not266 = icmp eq ptr %3, null
  br i1 %cmp4.not266, label %while.body12.preheader, label %while.body6

while.body6:                                      ; preds = %while.body6, %while.end
  %4 = phi ptr [ %5, %while.body6 ], [ %3, %while.end ]
  %add.ptr1.pn267 = phi ptr [ %tmp2.0, %while.body6 ], [ %add.ptr1, %while.end ]
  %tmp2.0 = getelementptr inbounds ptr, ptr %add.ptr1.pn267, i64 -1
  store ptr %4, ptr %tmp2.0, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %while.body12.preheader, label %while.body6

while.body12.preheader:                           ; preds = %while.body6, %while.end
  br label %while.body12

while.body12:                                     ; preds = %sw.epilog, %while.body12.preheader
  %crc.addr.0270 = phi i64 [ %crc.addr.1, %sw.epilog ], [ %crc, %while.body12.preheader ]
  %b.0269 = phi ptr [ %incdec.ptr13, %sw.epilog ], [ %2, %while.body12.preheader ]
  %incdec.ptr13 = getelementptr inbounds ptr, ptr %b.0269, i64 1
  %6 = load ptr, ptr %b.0269, align 8, !tbaa !10
  %tag = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %tag, align 8, !tbaa !20
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 5, label %sw.bb20
    i32 1, label %sw.bb20
    i32 3, label %sw.bb37
    i32 4, label %sw.bb37
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %while.body12
  %.b150 = load i1, ptr @flag_dump_defs, align 4
  br i1 %.b150, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb
  %8 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %string = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %string, align 8, !tbaa !18
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.42, ptr noundef %9)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %sw.bb
  %string17 = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %string17, align 8, !tbaa !18
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %tobool.not3.i = icmp eq i8 %11, 0
  br i1 %tobool.not3.i, label %partial_crc32.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %if.end16
  %12 = phi i8 [ %14, %while.body.i ], [ %11, %if.end16 ]
  %crc.addr.05.i = phi i64 [ %xor2.i.i, %while.body.i ], [ %crc.addr.0270, %if.end16 ]
  %s.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %10, %if.end16 ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %s.addr.04.i, i64 1
  %conv.i.i = zext i8 %12 to i64
  %crc.masked.i.i = and i64 %crc.addr.05.i, 255
  %and.i.i = xor i64 %crc.masked.i.i, %conv.i.i
  %arrayidx.i.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i
  %13 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !8
  %conv1.i.i = zext i32 %13 to i64
  %shr.i.i = lshr i64 %crc.addr.05.i, 8
  %xor2.i.i = xor i64 %shr.i.i, %conv1.i.i
  %14 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !5
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %partial_crc32.exit, label %while.body.i

partial_crc32.exit:                               ; preds = %while.body.i, %if.end16
  %crc.addr.0.lcssa.i = phi i64 [ %crc.addr.0270, %if.end16 ], [ %xor2.i.i, %while.body.i ]
  %crc.masked.i = and i64 %crc.addr.0.lcssa.i, 255
  %and.i = xor i64 %crc.masked.i, 32
  %arrayidx.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i
  %15 = load i32, ptr %arrayidx.i, align 4, !tbaa !8
  %conv1.i = zext i32 %15 to i64
  %shr.i = lshr i64 %crc.addr.0.lcssa.i, 8
  %xor2.i = xor i64 %shr.i, %conv1.i
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body12, %while.body12
  %string21 = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %string21, align 8, !tbaa !18
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %tobool.not3.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not3.i.i.i, label %crc32.exit.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %sw.bb20
  %18 = phi i8 [ %20, %while.body.i.i.i ], [ %17, %sw.bb20 ]
  %crc.addr.05.i.i.i = phi i64 [ %xor2.i.i.i.i, %while.body.i.i.i ], [ 4294967295, %sw.bb20 ]
  %s.addr.04.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i ], [ %16, %sw.bb20 ]
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %s.addr.04.i.i.i, i64 1
  %conv.i.i.i.i = zext i8 %18 to i64
  %crc.masked.i.i.i.i = and i64 %crc.addr.05.i.i.i, 255
  %and.i.i.i.i = xor i64 %crc.masked.i.i.i.i, %conv.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i.i.i
  %19 = load i32, ptr %arrayidx.i.i.i.i, align 4, !tbaa !8
  %conv1.i.i.i.i = zext i32 %19 to i64
  %shr.i.i.i.i = lshr i64 %crc.addr.05.i.i.i, 8
  %xor2.i.i.i.i = xor i64 %shr.i.i.i.i, %conv1.i.i.i.i
  %20 = load i8, ptr %incdec.ptr.i.i.i, align 1, !tbaa !5
  %tobool.not.i.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i.i, label %partial_crc32.exit.loopexit.i.i, label %while.body.i.i.i

partial_crc32.exit.loopexit.i.i:                  ; preds = %while.body.i.i.i
  %phi.bo.i.i = and i64 %xor2.i.i.i.i, 4095
  %phi.bo.i = xor i64 %phi.bo.i.i, 4095
  br label %crc32.exit.i

crc32.exit.i:                                     ; preds = %partial_crc32.exit.loopexit.i.i, %sw.bb20
  %crc.addr.0.lcssa.i.i.i = phi i64 [ 0, %sw.bb20 ], [ %phi.bo.i, %partial_crc32.exit.loopexit.i.i ]
  %arrayidx.i151 = getelementptr inbounds [4096 x ptr], ptr @symtab, i64 0, i64 %crc.addr.0.lcssa.i.i.i
  %sym.035.i = load ptr, ptr %arrayidx.i151, align 8, !tbaa !10
  %tobool36.not.i = icmp eq ptr %sym.035.i, null
  br i1 %tobool36.not.i, label %find_symbol.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %crc32.exit.i
  %21 = icmp ult i32 %7, 6
  %22 = sext i32 %7 to i64
  %switch.gep276 = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.preheader
  %sym.037.i = phi ptr [ %sym.0.i, %for.inc.i ], [ %sym.035.i, %for.body.i.preheader ]
  %type.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 2
  %23 = load i32, ptr %type.i, align 8, !tbaa !12
  %24 = icmp ult i32 %23, 6
  br i1 %24, label %switch.lookup, label %map_to_ns.exit.i

switch.lookup:                                    ; preds = %for.body.i
  %25 = sext i32 %23 to i64
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %25
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_to_ns.exit.i

map_to_ns.exit.i:                                 ; preds = %switch.lookup, %for.body.i
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ %23, %for.body.i ]
  br i1 %21, label %switch.lookup275, label %map_to_ns.exit29.i

switch.lookup275:                                 ; preds = %map_to_ns.exit.i
  %switch.load277 = load i32, ptr %switch.gep276, align 4
  br label %map_to_ns.exit29.i

map_to_ns.exit29.i:                               ; preds = %switch.lookup275, %map_to_ns.exit.i
  %retval.0.i28.i = phi i32 [ %switch.load277, %switch.lookup275 ], [ %7, %map_to_ns.exit.i ]
  %cmp.i = icmp eq i32 %retval.0.i.i, %retval.0.i28.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %map_to_ns.exit29.i
  %name3.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 1
  %26 = load ptr, ptr %name3.i, align 8, !tbaa !14
  %call4.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %26) #18
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %land.lhs.true6.i, label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %is_declared.i = getelementptr inbounds %struct.symbol, ptr %sym.037.i, i64 0, i32 7
  %27 = load i32, ptr %is_declared.i, align 4, !tbaa !15
  %tobool7.not.i = icmp eq i32 %27, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %find_symbol.exit

for.inc.i:                                        ; preds = %land.lhs.true6.i, %land.lhs.true.i, %map_to_ns.exit29.i
  %sym.0.i = load ptr, ptr %sym.037.i, align 8, !tbaa !10
  %tobool.not.i152 = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i152, label %find_symbol.exit, label %for.body.i

find_symbol.exit:                                 ; preds = %for.inc.i, %land.lhs.true6.i, %crc32.exit.i
  %sym.034.i = phi ptr [ null, %crc32.exit.i ], [ %sym.037.i, %land.lhs.true6.i ], [ null, %for.inc.i ]
  %expansion_trail = getelementptr inbounds %struct.symbol, ptr %sym.034.i, i64 0, i32 4
  %28 = load ptr, ptr %expansion_trail, align 8, !tbaa !27
  %tobool24.not = icmp eq ptr %28, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %find_symbol.exit
  %.b149 = load i1, ptr @flag_dump_defs, align 4
  br i1 %.b149, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then25
  %29 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.42, ptr noundef nonnull %16)
  %.pre = load ptr, ptr %string21, align 8, !tbaa !18
  %.pre272 = load i8, ptr %.pre, align 1, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then25
  %30 = phi i8 [ %.pre272, %if.then27 ], [ %17, %if.then25 ]
  %31 = phi ptr [ %.pre, %if.then27 ], [ %16, %if.then25 ]
  %tobool.not3.i153 = icmp eq i8 %30, 0
  br i1 %tobool.not3.i153, label %partial_crc32.exit167, label %while.body.i165

while.body.i165:                                  ; preds = %while.body.i165, %if.end30
  %32 = phi i8 [ %34, %while.body.i165 ], [ %30, %if.end30 ]
  %crc.addr.05.i154 = phi i64 [ %xor2.i.i163, %while.body.i165 ], [ %crc.addr.0270, %if.end30 ]
  %s.addr.04.i155 = phi ptr [ %incdec.ptr.i156, %while.body.i165 ], [ %31, %if.end30 ]
  %incdec.ptr.i156 = getelementptr inbounds i8, ptr %s.addr.04.i155, i64 1
  %conv.i.i157 = zext i8 %32 to i64
  %crc.masked.i.i158 = and i64 %crc.addr.05.i154, 255
  %and.i.i159 = xor i64 %crc.masked.i.i158, %conv.i.i157
  %arrayidx.i.i160 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i159
  %33 = load i32, ptr %arrayidx.i.i160, align 4, !tbaa !8
  %conv1.i.i161 = zext i32 %33 to i64
  %shr.i.i162 = lshr i64 %crc.addr.05.i154, 8
  %xor2.i.i163 = xor i64 %shr.i.i162, %conv1.i.i161
  %34 = load i8, ptr %incdec.ptr.i156, align 1, !tbaa !5
  %tobool.not.i164 = icmp eq i8 %34, 0
  br i1 %tobool.not.i164, label %partial_crc32.exit167, label %while.body.i165

partial_crc32.exit167:                            ; preds = %while.body.i165, %if.end30
  %crc.addr.0.lcssa.i166 = phi i64 [ %crc.addr.0270, %if.end30 ], [ %xor2.i.i163, %while.body.i165 ]
  %crc.masked.i168 = and i64 %crc.addr.0.lcssa.i166, 255
  %and.i169 = xor i64 %crc.masked.i168, 32
  %arrayidx.i170 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i169
  %35 = load i32, ptr %arrayidx.i170, align 4, !tbaa !8
  %conv1.i171 = zext i32 %35 to i64
  %shr.i172 = lshr i64 %crc.addr.0.lcssa.i166, 8
  %xor2.i173 = xor i64 %shr.i172, %conv1.i171
  br label %sw.epilog

if.else:                                          ; preds = %find_symbol.exit
  %36 = load ptr, ptr @expansion_trail, align 8, !tbaa !10
  store ptr %36, ptr %expansion_trail, align 8, !tbaa !27
  store ptr %sym.034.i, ptr @expansion_trail, align 8, !tbaa !10
  %call35 = call fastcc i64 @expand_and_crc_sym(ptr noundef nonnull %sym.034.i, i64 noundef %crc.addr.0270)
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body12, %while.body12, %while.body12
  %string38 = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 3
  %37 = load ptr, ptr %string38, align 8, !tbaa !18
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %tobool.not3.i.i.i174 = icmp eq i8 %38, 0
  br i1 %tobool.not3.i.i.i174, label %crc32.exit.i194, label %while.body.i.i.i186

while.body.i.i.i186:                              ; preds = %while.body.i.i.i186, %sw.bb37
  %39 = phi i8 [ %41, %while.body.i.i.i186 ], [ %38, %sw.bb37 ]
  %crc.addr.05.i.i.i175 = phi i64 [ %xor2.i.i.i.i184, %while.body.i.i.i186 ], [ 4294967295, %sw.bb37 ]
  %s.addr.04.i.i.i176 = phi ptr [ %incdec.ptr.i.i.i177, %while.body.i.i.i186 ], [ %37, %sw.bb37 ]
  %incdec.ptr.i.i.i177 = getelementptr inbounds i8, ptr %s.addr.04.i.i.i176, i64 1
  %conv.i.i.i.i178 = zext i8 %39 to i64
  %crc.masked.i.i.i.i179 = and i64 %crc.addr.05.i.i.i175, 255
  %and.i.i.i.i180 = xor i64 %crc.masked.i.i.i.i179, %conv.i.i.i.i178
  %arrayidx.i.i.i.i181 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i.i.i180
  %40 = load i32, ptr %arrayidx.i.i.i.i181, align 4, !tbaa !8
  %conv1.i.i.i.i182 = zext i32 %40 to i64
  %shr.i.i.i.i183 = lshr i64 %crc.addr.05.i.i.i175, 8
  %xor2.i.i.i.i184 = xor i64 %shr.i.i.i.i183, %conv1.i.i.i.i182
  %41 = load i8, ptr %incdec.ptr.i.i.i177, align 1, !tbaa !5
  %tobool.not.i.i.i185 = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i.i185, label %partial_crc32.exit.loopexit.i.i189, label %while.body.i.i.i186

partial_crc32.exit.loopexit.i.i189:               ; preds = %while.body.i.i.i186
  %phi.bo.i.i187 = and i64 %xor2.i.i.i.i184, 4095
  %phi.bo.i188 = xor i64 %phi.bo.i.i187, 4095
  br label %crc32.exit.i194

crc32.exit.i194:                                  ; preds = %partial_crc32.exit.loopexit.i.i189, %sw.bb37
  %crc.addr.0.lcssa.i.i.i190 = phi i64 [ 0, %sw.bb37 ], [ %phi.bo.i188, %partial_crc32.exit.loopexit.i.i189 ]
  %arrayidx.i191 = getelementptr inbounds [4096 x ptr], ptr @symtab, i64 0, i64 %crc.addr.0.lcssa.i.i.i190
  %sym.035.i192 = load ptr, ptr %arrayidx.i191, align 8, !tbaa !10
  %tobool36.not.i193 = icmp eq ptr %sym.035.i192, null
  br i1 %tobool36.not.i193, label %if.then42, label %for.body.i197.preheader

for.body.i197.preheader:                          ; preds = %crc32.exit.i194
  %42 = icmp ult i32 %7, 6
  %43 = sext i32 %7 to i64
  %switch.gep282 = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %43
  br label %for.body.i197

for.body.i197:                                    ; preds = %for.inc.i216, %for.body.i197.preheader
  %sym.037.i195 = phi ptr [ %sym.0.i214, %for.inc.i216 ], [ %sym.035.i192, %for.body.i197.preheader ]
  %type.i196 = getelementptr inbounds %struct.symbol, ptr %sym.037.i195, i64 0, i32 2
  %44 = load i32, ptr %type.i196, align 8, !tbaa !12
  %45 = icmp ult i32 %44, 6
  br i1 %45, label %switch.lookup278, label %map_to_ns.exit.i201

switch.lookup278:                                 ; preds = %for.body.i197
  %46 = sext i32 %44 to i64
  %switch.gep279 = getelementptr inbounds [6 x i32], ptr @switch.table.expand_and_crc_sym.64, i64 0, i64 %46
  %switch.load280 = load i32, ptr %switch.gep279, align 4
  br label %map_to_ns.exit.i201

map_to_ns.exit.i201:                              ; preds = %switch.lookup278, %for.body.i197
  %retval.0.i.i200 = phi i32 [ %switch.load280, %switch.lookup278 ], [ %44, %for.body.i197 ]
  br i1 %42, label %switch.lookup281, label %map_to_ns.exit29.i206

switch.lookup281:                                 ; preds = %map_to_ns.exit.i201
  %switch.load283 = load i32, ptr %switch.gep282, align 4
  br label %map_to_ns.exit29.i206

map_to_ns.exit29.i206:                            ; preds = %switch.lookup281, %map_to_ns.exit.i201
  %retval.0.i28.i204 = phi i32 [ %switch.load283, %switch.lookup281 ], [ %7, %map_to_ns.exit.i201 ]
  %cmp.i205 = icmp eq i32 %retval.0.i.i200, %retval.0.i28.i204
  br i1 %cmp.i205, label %land.lhs.true.i210, label %for.inc.i216

land.lhs.true.i210:                               ; preds = %map_to_ns.exit29.i206
  %name3.i207 = getelementptr inbounds %struct.symbol, ptr %sym.037.i195, i64 0, i32 1
  %47 = load ptr, ptr %name3.i207, align 8, !tbaa !14
  %call4.i208 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %47) #18
  %cmp5.i209 = icmp eq i32 %call4.i208, 0
  br i1 %cmp5.i209, label %land.lhs.true6.i213, label %for.inc.i216

land.lhs.true6.i213:                              ; preds = %land.lhs.true.i210
  %is_declared.i211 = getelementptr inbounds %struct.symbol, ptr %sym.037.i195, i64 0, i32 7
  %48 = load i32, ptr %is_declared.i211, align 4, !tbaa !15
  %tobool7.not.i212 = icmp eq i32 %48, 0
  br i1 %tobool7.not.i212, label %for.inc.i216, label %if.end59

for.inc.i216:                                     ; preds = %land.lhs.true6.i213, %land.lhs.true.i210, %map_to_ns.exit29.i206
  %sym.0.i214 = load ptr, ptr %sym.037.i195, align 8, !tbaa !10
  %tobool.not.i215 = icmp eq ptr %sym.0.i214, null
  br i1 %tobool.not.i215, label %if.then42, label %for.body.i197

if.then42:                                        ; preds = %for.inc.i216, %crc32.exit.i194
  %idxprom = zext i32 %7 to i64
  %name = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom, i32 1
  %49 = load ptr, ptr %name, align 8, !tbaa !25
  call void (ptr, ...) @error_with_pos(ptr noundef nonnull @.str.43, ptr noundef %49, ptr noundef nonnull %37)
  %50 = load i32, ptr %tag, align 8, !tbaa !20
  %idxprom46 = zext i32 %50 to i64
  %name48 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom46, i32 1
  %51 = load ptr, ptr %name48, align 8, !tbaa !25
  %call49 = call fastcc ptr @mk_node(ptr noundef %51)
  %52 = load ptr, ptr %string38, align 8, !tbaa !18
  %call51 = call fastcc ptr @mk_node(ptr noundef %52)
  %call52 = call fastcc ptr @mk_node(ptr noundef nonnull @.str.41)
  %call53 = call fastcc ptr @mk_node(ptr noundef nonnull @.str.40)
  %call54 = call fastcc ptr @mk_node(ptr noundef nonnull @.str.39)
  %call55 = call ptr (ptr, ...) @concat_list(ptr noundef %call49, ptr noundef %call51, ptr noundef %call52, ptr noundef %call53, ptr noundef %call54, ptr noundef null)
  %53 = load ptr, ptr %string38, align 8, !tbaa !18
  %54 = load i32, ptr %tag, align 8, !tbaa !20
  %call.i = call fastcc ptr @__add_symbol(ptr noundef %53, i32 noundef %54, ptr noundef %call55, i32 noundef 0, i32 noundef 0) #19
  br label %if.end59

if.end59:                                         ; preds = %if.then42, %land.lhs.true6.i213
  %subsym.0 = phi ptr [ %call.i, %if.then42 ], [ %sym.037.i195, %land.lhs.true6.i213 ]
  %expansion_trail60 = getelementptr inbounds %struct.symbol, ptr %subsym.0, i64 0, i32 4
  %55 = load ptr, ptr %expansion_trail60, align 8, !tbaa !27
  %tobool61.not = icmp eq ptr %55, null
  br i1 %tobool61.not, label %if.else81, label %if.then62

if.then62:                                        ; preds = %if.end59
  %.b = load i1, ptr @flag_dump_defs, align 4
  br i1 %.b, label %if.then64, label %if.end71

if.then64:                                        ; preds = %if.then62
  %56 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %57 = load i32, ptr %tag, align 8, !tbaa !20
  %idxprom66 = zext i32 %57 to i64
  %name68 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom66, i32 1
  %58 = load ptr, ptr %name68, align 8, !tbaa !25
  %59 = load ptr, ptr %string38, align 8, !tbaa !18
  %call70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.44, ptr noundef %58, ptr noundef %59)
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.then62
  %60 = load i32, ptr %tag, align 8, !tbaa !20
  %idxprom73 = zext i32 %60 to i64
  %name75 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom73, i32 1
  %61 = load ptr, ptr %name75, align 8, !tbaa !25
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %tobool.not3.i221 = icmp eq i8 %62, 0
  br i1 %tobool.not3.i221, label %partial_crc32.exit235, label %while.body.i233

while.body.i233:                                  ; preds = %while.body.i233, %if.end71
  %63 = phi i8 [ %65, %while.body.i233 ], [ %62, %if.end71 ]
  %crc.addr.05.i222 = phi i64 [ %xor2.i.i231, %while.body.i233 ], [ %crc.addr.0270, %if.end71 ]
  %s.addr.04.i223 = phi ptr [ %incdec.ptr.i224, %while.body.i233 ], [ %61, %if.end71 ]
  %incdec.ptr.i224 = getelementptr inbounds i8, ptr %s.addr.04.i223, i64 1
  %conv.i.i225 = zext i8 %63 to i64
  %crc.masked.i.i226 = and i64 %crc.addr.05.i222, 255
  %and.i.i227 = xor i64 %crc.masked.i.i226, %conv.i.i225
  %arrayidx.i.i228 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i227
  %64 = load i32, ptr %arrayidx.i.i228, align 4, !tbaa !8
  %conv1.i.i229 = zext i32 %64 to i64
  %shr.i.i230 = lshr i64 %crc.addr.05.i222, 8
  %xor2.i.i231 = xor i64 %shr.i.i230, %conv1.i.i229
  %65 = load i8, ptr %incdec.ptr.i224, align 1, !tbaa !5
  %tobool.not.i232 = icmp eq i8 %65, 0
  br i1 %tobool.not.i232, label %partial_crc32.exit235, label %while.body.i233

partial_crc32.exit235:                            ; preds = %while.body.i233, %if.end71
  %crc.addr.0.lcssa.i234 = phi i64 [ %crc.addr.0270, %if.end71 ], [ %xor2.i.i231, %while.body.i233 ]
  %crc.masked.i236 = and i64 %crc.addr.0.lcssa.i234, 255
  %and.i237 = xor i64 %crc.masked.i236, 32
  %arrayidx.i238 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i237
  %66 = load i32, ptr %arrayidx.i238, align 4, !tbaa !8
  %conv1.i239 = zext i32 %66 to i64
  %shr.i240 = lshr i64 %crc.addr.0.lcssa.i234, 8
  %xor2.i241 = xor i64 %shr.i240, %conv1.i239
  %67 = load ptr, ptr %string38, align 8, !tbaa !18
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %tobool.not3.i242 = icmp eq i8 %68, 0
  br i1 %tobool.not3.i242, label %partial_crc32.exit256, label %while.body.i254

while.body.i254:                                  ; preds = %while.body.i254, %partial_crc32.exit235
  %69 = phi i8 [ %71, %while.body.i254 ], [ %68, %partial_crc32.exit235 ]
  %crc.addr.05.i243 = phi i64 [ %xor2.i.i252, %while.body.i254 ], [ %xor2.i241, %partial_crc32.exit235 ]
  %s.addr.04.i244 = phi ptr [ %incdec.ptr.i245, %while.body.i254 ], [ %67, %partial_crc32.exit235 ]
  %incdec.ptr.i245 = getelementptr inbounds i8, ptr %s.addr.04.i244, i64 1
  %conv.i.i246 = zext i8 %69 to i64
  %crc.masked.i.i247 = and i64 %crc.addr.05.i243, 255
  %and.i.i248 = xor i64 %crc.masked.i.i247, %conv.i.i246
  %arrayidx.i.i249 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i.i248
  %70 = load i32, ptr %arrayidx.i.i249, align 4, !tbaa !8
  %conv1.i.i250 = zext i32 %70 to i64
  %shr.i.i251 = lshr i64 %crc.addr.05.i243, 8
  %xor2.i.i252 = xor i64 %shr.i.i251, %conv1.i.i250
  %71 = load i8, ptr %incdec.ptr.i245, align 1, !tbaa !5
  %tobool.not.i253 = icmp eq i8 %71, 0
  br i1 %tobool.not.i253, label %partial_crc32.exit256, label %while.body.i254

partial_crc32.exit256:                            ; preds = %while.body.i254, %partial_crc32.exit235
  %crc.addr.0.lcssa.i255 = phi i64 [ %xor2.i241, %partial_crc32.exit235 ], [ %xor2.i.i252, %while.body.i254 ]
  %crc.masked.i257 = and i64 %crc.addr.0.lcssa.i255, 255
  %and.i258 = xor i64 %crc.masked.i257, 32
  %arrayidx.i259 = getelementptr inbounds [256 x i32], ptr @crctab32, i64 0, i64 %and.i258
  %72 = load i32, ptr %arrayidx.i259, align 4, !tbaa !8
  %conv1.i260 = zext i32 %72 to i64
  %shr.i261 = lshr i64 %crc.addr.0.lcssa.i255, 8
  %xor2.i262 = xor i64 %shr.i261, %conv1.i260
  br label %sw.epilog

if.else81:                                        ; preds = %if.end59
  %73 = load ptr, ptr @expansion_trail, align 8, !tbaa !10
  store ptr %73, ptr %expansion_trail60, align 8, !tbaa !27
  store ptr %subsym.0, ptr @expansion_trail, align 8, !tbaa !10
  %call83 = call fastcc i64 @expand_and_crc_sym(ptr noundef nonnull %subsym.0, i64 noundef %crc.addr.0270)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else81, %partial_crc32.exit256, %if.else, %partial_crc32.exit167, %partial_crc32.exit, %while.body12
  %crc.addr.1 = phi i64 [ %crc.addr.0270, %while.body12 ], [ %xor2.i262, %partial_crc32.exit256 ], [ %call83, %if.else81 ], [ %xor2.i173, %partial_crc32.exit167 ], [ %call35, %if.else ], [ %xor2.i, %partial_crc32.exit ]
  %cmp10.not = icmp eq ptr %incdec.ptr13, %add.ptr
  br i1 %cmp10.not, label %while.end85, label %while.body12

while.end85:                                      ; preds = %sw.epilog
  %visited = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %74 = load ptr, ptr %visited, align 8, !tbaa !28
  %tobool86.not = icmp eq ptr %74, null
  br i1 %tobool86.not, label %if.then87, label %cleanup

if.then87:                                        ; preds = %while.end85
  %75 = load ptr, ptr @expand_and_crc_sym.end, align 8, !tbaa !10
  store ptr %sym, ptr %75, align 8, !tbaa !10
  store ptr %visited, ptr @expand_and_crc_sym.end, align 8, !tbaa !10
  store ptr inttoptr (i64 -1 to ptr), ptr %visited, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %while.end85, %entry
  %retval.0 = phi i64 [ %crc, %entry ], [ %crc.addr.1, %if.then87 ], [ %crc.addr.1, %while.end85 ]
  ret i64 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_location() unnamed_addr #10 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = load ptr, ptr @cur_filename, align 8, !tbaa !10
  %tobool.not = icmp eq ptr %1, null
  %..str.46 = select i1 %tobool.not, ptr @.str.46, ptr %1
  %2 = load i32, ptr @cur_line, align 4, !tbaa !8
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %..str.46, i32 noundef %2) #20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_type_name(i32 noundef %type, ptr noundef %name) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i32 %type, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %type to i64
  %name1 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom, i32 1
  %0 = load ptr, ptr %name1, align 8, !tbaa !25
  %1 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %0, ptr noundef %name) #20
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !10
  %fputs = tail call i32 @fputs(ptr %name, ptr %2) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #3 {
entry:
  %long_opts = alloca [11 x %struct.option], align 16
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %long_opts) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %long_opts, ptr noundef nonnull align 16 dereferenceable(352) @__const.main.long_opts, i64 352, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %ref_file.0 = phi ptr [ null, %entry ], [ %ref_file.0.be, %while.cond.backedge ]
  %dumpfile.0 = phi ptr [ null, %entry ], [ %dumpfile.0.be, %while.cond.backedge ]
  %call = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.22, ptr noundef nonnull %long_opts, ptr noundef null) #19
  switch i32 %call, label %sw.default [
    i32 -1, label %while.end
    i32 100, label %sw.bb
    i32 119, label %sw.bb1
    i32 113, label %sw.bb2
    i32 86, label %sw.bb3
    i32 68, label %sw.bb5
    i32 114, label %sw.bb6
    i32 84, label %sw.bb8
    i32 112, label %sw.bb13
    i32 104, label %sw.bb14
    i32 82, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.cond
  %0 = load i32, ptr @flag_debug, align 4, !tbaa !8
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @flag_debug, align 4, !tbaa !8
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  store i1 true, ptr @flag_warnings, align 4
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  store i1 false, ptr @flag_warnings, align 4
  br label %while.cond.backedge

sw.bb3:                                           ; preds = %while.cond
  %1 = load ptr, ptr @stderr, align 8, !tbaa !10
  %2 = call i64 @fwrite(ptr nonnull @.str.23, i64 24, i64 1, ptr %1) #20
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  store i1 true, ptr @flag_dump_defs, align 4
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  store i1 true, ptr @flag_reference, align 4
  %3 = load ptr, ptr @optarg, align 8, !tbaa !10
  %call7 = call ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.24)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then, label %while.cond.backedge

if.then:                                          ; preds = %sw.bb6
  %4 = load ptr, ptr @optarg, align 8, !tbaa !10
  call void @perror(ptr noundef %4) #20
  br label %cleanup

sw.bb8:                                           ; preds = %while.cond
  store i1 true, ptr @flag_dump_types, align 4
  %5 = load ptr, ptr @optarg, align 8, !tbaa !10
  %call9 = call ptr @fopen(ptr noundef %5, ptr noundef nonnull @.str.25)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb15, %sw.bb13, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %ref_file.0.be = phi ptr [ %ref_file.0, %sw.bb15 ], [ %ref_file.0, %sw.bb13 ], [ %ref_file.0, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %ref_file.0, %sw.bb5 ], [ %ref_file.0, %sw.bb3 ], [ %ref_file.0, %sw.bb2 ], [ %ref_file.0, %sw.bb1 ], [ %ref_file.0, %sw.bb ]
  %dumpfile.0.be = phi ptr [ %dumpfile.0, %sw.bb15 ], [ %dumpfile.0, %sw.bb13 ], [ %call9, %sw.bb8 ], [ %dumpfile.0, %sw.bb6 ], [ %dumpfile.0, %sw.bb5 ], [ %dumpfile.0, %sw.bb3 ], [ %dumpfile.0, %sw.bb2 ], [ %dumpfile.0, %sw.bb1 ], [ %dumpfile.0, %sw.bb ]
  br label %while.cond

if.then11:                                        ; preds = %sw.bb8
  %6 = load ptr, ptr @optarg, align 8, !tbaa !10
  call void @perror(ptr noundef %6) #20
  br label %cleanup

sw.bb13:                                          ; preds = %while.cond
  store i1 true, ptr @flag_preserve, align 4
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %7 = load ptr, ptr @stderr, align 8, !tbaa !10
  %8 = call i64 @fwrite(ptr nonnull @.str.49, i64 651, i64 1, ptr %7) #23
  br label %cleanup

sw.bb15:                                          ; preds = %while.cond
  store i1 true, ptr @flag_rel_crcs, align 4
  br label %while.cond.backedge

sw.default:                                       ; preds = %while.cond
  %9 = load ptr, ptr @stderr, align 8, !tbaa !10
  %10 = call i64 @fwrite(ptr nonnull @.str.49, i64 651, i64 1, ptr %9) #23
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr @flag_debug, align 4, !tbaa !8
  %cmp16 = icmp sgt i32 %11, 1
  %conv = zext i1 %cmp16 to i32
  store i32 %conv, ptr @yydebug, align 4, !tbaa !8
  %cmp17 = icmp sgt i32 %11, 2
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, ptr @yy_flex_debug, align 4, !tbaa !8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !10
  store ptr %12, ptr @debugfile, align 8, !tbaa !10
  %.b = load i1, ptr @flag_reference, align 4
  br i1 %.b, label %if.then20, label %if.end22

if.then20:                                        ; preds = %while.end
  %call75.i = call i32 @feof(ptr noundef %ref_file.0) #19
  %tobool.not76.i = icmp eq i32 %call75.i, 0
  br i1 %tobool.not76.i, label %while.body.i, label %read_reference.exit

while.body.i:                                     ; preds = %cleanup.i, %if.then20
  %call1.i = call fastcc ptr @read_node(ptr noundef %ref_file.0) #19
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %cleanup.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %tag.i = getelementptr inbounds %struct.string_list, ptr %call1.i, i64 0, i32 1
  %13 = load i32, ptr %tag.i, align 8, !tbaa !20
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end9.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %string.i = getelementptr inbounds %struct.string_list, ptr %call1.i, i64 0, i32 3
  %14 = load ptr, ptr %string.i, align 8, !tbaa !18
  %call4.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(9) @.str.50) #18
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.end9.i

if.end.i:                                         ; preds = %land.lhs.true3.i
  call void @free(ptr noundef %14) #19
  call void @free(ptr noundef nonnull %call1.i) #19
  %call6.i = call fastcc ptr @read_node(ptr noundef %ref_file.0) #19
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %cleanup.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %land.lhs.true3.i, %land.lhs.true.i
  %sym.067.i = phi ptr [ %call6.i, %if.end.i ], [ %call1.i, %land.lhs.true3.i ], [ %call1.i, %land.lhs.true.i ]
  %is_override.066.i = phi i32 [ 1, %if.end.i ], [ 0, %land.lhs.true3.i ], [ 0, %land.lhs.true.i ]
  %call10.i = call fastcc ptr @read_node(ptr noundef %ref_file.0) #19
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %while.end.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %if.end9.i
  %tag13.i = getelementptr inbounds %struct.string_list, ptr %call10.i, i64 0, i32 1
  %15 = load i32, ptr %tag13.i, align 8, !tbaa !20
  %cmp14.i = icmp eq i32 %15, 0
  br i1 %cmp14.i, label %land.lhs.true15.i, label %while.body24.preheader.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %string16.i = getelementptr inbounds %struct.string_list, ptr %call10.i, i64 0, i32 3
  %16 = load ptr, ptr %string16.i, align 8, !tbaa !18
  %call17.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(7) @.str.51) #18
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %while.body24.preheader.i

if.end21.i:                                       ; preds = %land.lhs.true15.i
  call void @free(ptr noundef %16) #19
  call void @free(ptr noundef nonnull %call10.i) #19
  %call20.i = call fastcc ptr @read_node(ptr noundef %ref_file.0) #19
  %tobool23.not72.i = icmp eq ptr %call20.i, null
  br i1 %tobool23.not72.i, label %while.end.i, label %while.body24.preheader.i

while.body24.preheader.i:                         ; preds = %if.end21.i, %land.lhs.true15.i, %land.lhs.true12.i
  %def.082.i = phi ptr [ %call20.i, %if.end21.i ], [ %call10.i, %land.lhs.true15.i ], [ %call10.i, %land.lhs.true12.i ]
  %is_extern.080.i = phi i32 [ 1, %if.end21.i ], [ 0, %land.lhs.true15.i ], [ 0, %land.lhs.true12.i ]
  br label %while.body24.i

while.body24.i:                                   ; preds = %while.body24.i, %while.body24.preheader.i
  %defn.074.i = phi ptr [ %def.173.i, %while.body24.i ], [ null, %while.body24.preheader.i ]
  %def.173.i = phi ptr [ %call25.i, %while.body24.i ], [ %def.082.i, %while.body24.preheader.i ]
  store ptr %defn.074.i, ptr %def.173.i, align 8, !tbaa !16
  %call25.i = call fastcc ptr @read_node(ptr noundef %ref_file.0) #19
  %tobool23.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool23.not.i, label %while.end.i, label %while.body24.i

while.end.i:                                      ; preds = %while.body24.i, %if.end21.i, %if.end9.i
  %is_extern.081.i = phi i32 [ 1, %if.end21.i ], [ 0, %if.end9.i ], [ %is_extern.080.i, %while.body24.i ]
  %defn.0.lcssa.i = phi ptr [ null, %if.end21.i ], [ null, %if.end9.i ], [ %def.173.i, %while.body24.i ]
  %string26.i = getelementptr inbounds %struct.string_list, ptr %sym.067.i, i64 0, i32 3
  %17 = load ptr, ptr %string26.i, align 8, !tbaa !18
  %call27.i = call noalias ptr @strdup(ptr noundef %17) #19
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end31.i

if.then29.i:                                      ; preds = %while.end.i
  %18 = load ptr, ptr @stderr, align 8, !tbaa !10
  %19 = call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %18) #23
  call void @exit(i32 noundef 1) #22
  unreachable

if.end31.i:                                       ; preds = %while.end.i
  %tag32.i = getelementptr inbounds %struct.string_list, ptr %sym.067.i, i64 0, i32 1
  %20 = load i32, ptr %tag32.i, align 8, !tbaa !20
  %call.i.i = call fastcc ptr @__add_symbol(ptr noundef nonnull %call27.i, i32 noundef %20, ptr noundef %defn.0.lcssa.i, i32 noundef %is_extern.081.i, i32 noundef 1) #19
  %is_override34.i = getelementptr inbounds %struct.symbol, ptr %call.i.i, i64 0, i32 9
  store i32 %is_override.066.i, ptr %is_override34.i, align 4, !tbaa !21
  %21 = load ptr, ptr %string26.i, align 8, !tbaa !18
  call void @free(ptr noundef %21) #19
  call void @free(ptr noundef nonnull %sym.067.i) #19
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end31.i, %if.end.i, %while.body.i
  %call.i = call i32 @feof(ptr noundef %ref_file.0) #19
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %read_reference.exit

read_reference.exit:                              ; preds = %cleanup.i, %if.then20
  %call21 = call i32 @fclose(ptr noundef %ref_file.0)
  br label %if.end22

if.end22:                                         ; preds = %read_reference.exit, %while.end
  %call23 = call i32 @yyparse() #19
  %.b89 = load i1, ptr @flag_dump_types, align 4
  %22 = freeze i1 %.b89
  br i1 %22, label %switch.early.test, label %if.end54

switch.early.test:                                ; preds = %if.end22
  %23 = load ptr, ptr @visited_symbols, align 8
  %magicptr = ptrtoint ptr %23 to i64
  switch i64 %magicptr, label %while.body30 [
    i64 -1, label %if.end54
    i64 0, label %if.end54
  ]

while.body30:                                     ; preds = %if.end50, %switch.early.test
  %24 = phi ptr [ %33, %if.end50 ], [ %23, %switch.early.test ]
  %is_override = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 9
  %25 = load i32, ptr %is_override, align 4, !tbaa !21
  %tobool31.not = icmp eq i32 %25, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %while.body30
  %26 = call i64 @fwrite(ptr nonnull @.str.26, i64 9, i64 1, ptr %dumpfile.0)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %while.body30
  %type = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %type, align 8, !tbaa !12
  %idxprom = zext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom
  %28 = load i32, ptr %arrayidx35, align 16, !tbaa !29
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.end44, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call42 = call i32 @putc(i32 noundef %28, ptr noundef %dumpfile.0)
  %call43 = call i32 @putc(i32 noundef 35, ptr noundef %dumpfile.0)
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end34
  %name = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %name, align 8, !tbaa !14
  %call45 = call i32 @fputs(ptr noundef %29, ptr noundef %dumpfile.0)
  %call46 = call i32 @putc(i32 noundef 32, ptr noundef %dumpfile.0)
  %is_extern = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 6
  %30 = load i32, ptr %is_extern, align 8, !tbaa !23
  %tobool47.not = icmp eq i32 %30, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end44
  %31 = call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %dumpfile.0)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44
  %defn = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 3
  %32 = load ptr, ptr %defn, align 8, !tbaa !19
  call fastcc void @print_list(ptr noundef %dumpfile.0, ptr noundef %32)
  %call51 = call i32 @putc(i32 noundef 10, ptr noundef %dumpfile.0)
  %visited = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 5
  %33 = load ptr, ptr %visited, align 8, !tbaa !28
  store ptr %33, ptr @visited_symbols, align 8, !tbaa !10
  store ptr null, ptr %visited, align 8, !tbaa !28
  %cmp28.old.not = icmp eq ptr %33, inttoptr (i64 -1 to ptr)
  br i1 %cmp28.old.not, label %if.end54, label %while.body30

if.end54:                                         ; preds = %if.end50, %switch.early.test, %switch.early.test, %if.end22
  %34 = load i32, ptr @flag_debug, align 4, !tbaa !8
  %tobool55.not = icmp eq i32 %34, 0
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end54
  %35 = load ptr, ptr @debugfile, align 8, !tbaa !10
  %36 = load i32, ptr @nsyms, align 4, !tbaa !8
  %conv57 = sitofp i32 %36 to double
  %div = fmul double %conv57, 0x3F30000000000000
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.28, i32 noundef %36, i32 noundef 4096, double noundef %div)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end54
  %tobool60.not = icmp eq ptr %dumpfile.0, null
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end59
  %call62 = call i32 @fclose(ptr noundef nonnull %dumpfile.0)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59
  %37 = load i32, ptr @errors, align 4, !tbaa !8
  %cmp64 = icmp ne i32 %37, 0
  %conv65 = zext i1 %cmp64 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %sw.default, %sw.bb14, %if.then11, %if.then
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %sw.bb14 ], [ 1, %if.then11 ], [ 1, %if.then ], [ %conv65, %if.end63 ]
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %long_opts) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @yyparse() local_unnamed_addr #14

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_list(ptr nocapture noundef %f, ptr noundef %list) unnamed_addr #10 {
entry:
  %cmp = icmp eq ptr %list, null
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 5, i64 1, ptr %f)
  br label %cleanup

while.cond:                                       ; preds = %while.cond, %entry
  %tmp.0 = phi ptr [ %1, %while.cond ], [ %list, %entry ]
  %elem.0 = phi i32 [ %inc, %while.cond ], [ 1, %entry ]
  %1 = load ptr, ptr %tmp.0, align 8, !tbaa !16
  %cmp1.not = icmp eq ptr %1, null
  %inc = add nuw nsw i32 %elem.0, 1
  br i1 %cmp1.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = zext i32 %elem.0 to i64
  %mul = shl nuw nsw i64 %conv, 3
  %2 = alloca i8, i64 %mul, align 16
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %conv
  %add.ptr2 = getelementptr inbounds ptr, ptr %add.ptr, i64 -1
  store ptr %list, ptr %add.ptr2, align 8, !tbaa !10
  %3 = load ptr, ptr %list, align 8, !tbaa !16
  %cmp5.not34 = icmp eq ptr %3, null
  br i1 %cmp5.not34, label %while.body13.preheader, label %while.body7

while.body7:                                      ; preds = %while.body7, %while.end
  %4 = phi ptr [ %5, %while.body7 ], [ %3, %while.end ]
  %add.ptr2.pn35 = phi ptr [ %tmp2.0, %while.body7 ], [ %add.ptr2, %while.end ]
  %tmp2.0 = getelementptr inbounds ptr, ptr %add.ptr2.pn35, i64 -1
  store ptr %4, ptr %tmp2.0, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %cmp5.not = icmp eq ptr %5, null
  br i1 %cmp5.not, label %while.body13.preheader, label %while.body7

while.body13.preheader:                           ; preds = %while.body7, %while.end
  br label %while.body13

while.body13:                                     ; preds = %print_node.exit, %while.body13.preheader
  %b.037 = phi ptr [ %incdec.ptr14, %print_node.exit ], [ %2, %while.body13.preheader ]
  %incdec.ptr14 = getelementptr inbounds ptr, ptr %b.037, i64 1
  %6 = load ptr, ptr %b.037, align 8, !tbaa !10
  %tag.i = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %tag.i, align 8, !tbaa !20
  %idxprom.i = zext i32 %7 to i64
  %arrayidx.i = getelementptr inbounds [6 x %struct.anon], ptr @symbol_types, i64 0, i64 %idxprom.i
  %8 = load i32, ptr %arrayidx.i, align 16, !tbaa !29
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %print_node.exit, label %if.then.i

if.then.i:                                        ; preds = %while.body13
  %call.i = call i32 @putc(i32 noundef %8, ptr noundef %f) #19
  %call5.i = call i32 @putc(i32 noundef 35, ptr noundef %f) #19
  br label %print_node.exit

print_node.exit:                                  ; preds = %if.then.i, %while.body13
  %string.i = getelementptr inbounds %struct.string_list, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %string.i, align 8, !tbaa !18
  %call6.i = call i32 @fputs(ptr noundef %9, ptr noundef %f) #19
  %call15 = call i32 @putc(i32 noundef 32, ptr noundef %f)
  %cmp11.not = icmp eq ptr %incdec.ptr14, %add.ptr
  br i1 %cmp11.not, label %cleanup, label %while.body13

cleanup:                                          ; preds = %print_node.exit, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind uwtable
define internal ptr @concat_list(ptr noundef %start, ...) unnamed_addr #15 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  %tobool.not = icmp eq ptr %start, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %ap)
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2
  %0 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end
  %start.addr.0 = phi ptr [ %start, %if.end ], [ %4, %for.end ]
  %gp_offset = load i32, ptr %ap, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.cond
  %reg_save_area = load ptr, ptr %0, align 16
  %1 = zext i32 %gp_offset to i64
  %2 = getelementptr i8, ptr %reg_save_area, i64 %1
  %3 = add nuw nsw i32 %gp_offset, 8
  store i32 %3, ptr %ap, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.cond
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load ptr, ptr %vaarg.addr, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %for.end8, label %for.cond3

for.cond3:                                        ; preds = %for.cond3, %vaarg.end
  %n2.0 = phi ptr [ %5, %for.cond3 ], [ %4, %vaarg.end ]
  %5 = load ptr, ptr %n2.0, align 8, !tbaa !16
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.end, label %for.cond3

for.end:                                          ; preds = %for.cond3
  store ptr %start.addr.0, ptr %n2.0, align 8, !tbaa !16
  br label %for.cond

for.end8:                                         ; preds = %vaarg.end
  call void @llvm.va_end(ptr nonnull %ap)
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %entry
  %retval.0 = phi ptr [ %start.addr.0, %for.end8 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @mk_node(ptr nocapture noundef readonly %string) unnamed_addr #3 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %0) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @strdup(ptr noundef %string) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !tbaa !10
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr %2) #20
  tail call void @exit(i32 noundef 1) #22
  unreachable

if.end6:                                          ; preds = %if.end
  %string8 = getelementptr inbounds %struct.string_list, ptr %call, i64 0, i32 3
  store ptr %call2, ptr %string8, align 8, !tbaa !18
  %tag = getelementptr inbounds %struct.string_list, ptr %call, i64 0, i32 1
  store i32 0, ptr %tag, align 8, !tbaa !20
  store ptr null, ptr %call, align 8, !tbaa !16
  ret ptr %call
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @read_node(ptr nocapture noundef %f) unnamed_addr #3 {
entry:
  %buffer = alloca [256 x i8], align 16
  %node = alloca %struct.string_list, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %node) #19
  %tag = getelementptr inbounds %struct.string_list, ptr %node, i64 0, i32 1
  %string = getelementptr inbounds %struct.string_list, ptr %node, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %node, i8 0, i64 16, i1 false)
  %call83 = call i32 @fgetc(ptr noundef %f)
  %cmp.not84 = icmp eq i32 %call83, -1
  br i1 %cmp.not84, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.backedge, %entry
  %call87 = phi i32 [ %call, %while.cond.backedge ], [ %call83, %entry ]
  %in_string.086 = phi i32 [ %in_string.0.be, %while.cond.backedge ], [ 0, %entry ]
  %incdec.ptr8085.idx = phi i64 [ %incdec.ptr79.idx, %while.cond.backedge ], [ 0, %entry ]
  %incdec.ptr8085.ptr = getelementptr inbounds i8, ptr %buffer, i64 %incdec.ptr8085.idx
  %tobool = icmp eq i32 %in_string.086, 0
  %cmp1 = icmp eq i32 %call87, 32
  %or.cond = and i1 %tobool, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %cmp4 = icmp eq i64 %incdec.ptr8085.idx, 0
  br i1 %cmp4, label %while.cond.backedge, label %while.end

if.else:                                          ; preds = %while.body
  switch i32 %call87, label %if.end20 [
    i32 34, label %if.then7
    i32 10, label %if.then11
  ]

if.then7:                                         ; preds = %if.else
  %lnot.ext = zext i1 %tobool to i32
  br label %if.end20

if.then11:                                        ; preds = %if.else
  %cmp14 = icmp eq i64 %incdec.ptr8085.idx, 0
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then11
  %call17 = call i32 @ungetc(i32 noundef 10, ptr noundef %f)
  br label %while.end

if.end20:                                         ; preds = %if.then7, %if.else
  %in_string.1 = phi i32 [ %lnot.ext, %if.then7 ], [ %in_string.086, %if.else ]
  %cmp24.not = icmp slt i64 %incdec.ptr8085.idx, 255
  br i1 %cmp24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end20
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = call i64 @fwrite(ptr nonnull @.str.52, i64 15, i64 1, ptr %0) #20
  call void @exit(i32 noundef 1) #22
  unreachable

if.end27:                                         ; preds = %if.end20
  %conv = trunc i32 %call87 to i8
  %incdec.ptr8085.add = add nsw i64 %incdec.ptr8085.idx, 1
  store i8 %conv, ptr %incdec.ptr8085.ptr, align 1, !tbaa !5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end27, %if.then
  %incdec.ptr79.idx = phi i64 [ 0, %if.then ], [ %incdec.ptr8085.add, %if.end27 ]
  %in_string.0.be = phi i32 [ 0, %if.then ], [ %in_string.1, %if.end27 ]
  %call = call i32 @fgetc(ptr noundef %f)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end.loopexit.loopexit.split.loop.exit, label %while.body

while.end.loopexit.loopexit.split.loop.exit:      ; preds = %while.cond.backedge
  %incdec.ptr79.ptr.le = getelementptr inbounds i8, ptr %buffer, i64 %incdec.ptr79.idx
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.loopexit.split.loop.exit, %if.end16, %if.then, %entry
  %2 = phi ptr [ %incdec.ptr8085.ptr, %if.end16 ], [ %buffer, %entry ], [ %incdec.ptr79.ptr.le, %while.end.loopexit.loopexit.split.loop.exit ], [ %incdec.ptr8085.ptr, %if.then ]
  %cmp31 = icmp eq ptr %2, %buffer
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %while.end
  store i8 0, ptr %2, align 1, !tbaa !5
  store ptr %buffer, ptr %string, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 1
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp40 = icmp eq i8 %3, 35
  br i1 %cmp40, label %for.cond.preheader, label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end34
  %4 = load i8, ptr %buffer, align 16, !tbaa !5
  switch i8 %4, label %for.inc.5 [
    i8 0, label %if.then52
    i8 116, label %if.then52.fold.split
    i8 101, label %if.then52.fold.split101
    i8 115, label %if.then52.fold.split102
    i8 117, label %if.then52.fold.split103
    i8 69, label %if.then52.fold.split104
  ]

if.then52.fold.split:                             ; preds = %for.cond.preheader
  br label %if.then52

if.then52.fold.split101:                          ; preds = %for.cond.preheader
  br label %if.then52

if.then52.fold.split102:                          ; preds = %for.cond.preheader
  br label %if.then52

if.then52.fold.split103:                          ; preds = %for.cond.preheader
  br label %if.then52

if.then52.fold.split104:                          ; preds = %for.cond.preheader
  br label %if.then52

if.then52:                                        ; preds = %if.then52.fold.split104, %if.then52.fold.split103, %if.then52.fold.split102, %if.then52.fold.split101, %if.then52.fold.split, %for.cond.preheader
  %n.089.lcssa = phi i32 [ 0, %for.cond.preheader ], [ 1, %if.then52.fold.split ], [ 2, %if.then52.fold.split101 ], [ 3, %if.then52.fold.split102 ], [ 4, %if.then52.fold.split103 ], [ 5, %if.then52.fold.split104 ]
  store i32 %n.089.lcssa, ptr %tag, align 8, !tbaa !20
  %add.ptr56 = getelementptr inbounds i8, ptr %buffer, i64 2
  store ptr %add.ptr56, ptr %string, align 8, !tbaa !18
  br label %cleanup.sink.split

for.inc.5:                                        ; preds = %for.cond.preheader
  %conv47 = sext i8 %4 to i32
  %5 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %conv47) #20
  call void @exit(i32 noundef 1) #22
  unreachable

cleanup.sink.split:                               ; preds = %if.then52, %if.end34
  %call64 = call ptr @copy_node(ptr noundef nonnull %node)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end, %if.then11
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %while.end ], [ %call64, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %node) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #19
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { argmemonly nofree nounwind willreturn writeonly }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !6, i64 16}
!13 = !{!"symbol", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !9, i64 48, !9, i64 52, !6, i64 56, !9, i64 60}
!14 = !{!13, !11, i64 8}
!15 = !{!13, !9, i64 52}
!16 = !{!17, !11, i64 0}
!17 = !{!"string_list", !11, i64 0, !6, i64 8, !9, i64 12, !11, i64 16}
!18 = !{!17, !11, i64 16}
!19 = !{!13, !11, i64 24}
!20 = !{!17, !6, i64 8}
!21 = !{!13, !9, i64 60}
!22 = !{!13, !11, i64 0}
!23 = !{!13, !9, i64 48}
!24 = !{!13, !6, i64 56}
!25 = !{!26, !11, i64 8}
!26 = !{!"", !9, i64 0, !11, i64 8}
!27 = !{!13, !11, i64 32}
!28 = !{!13, !11, i64 40}
!29 = !{!26, !9, i64 0}
