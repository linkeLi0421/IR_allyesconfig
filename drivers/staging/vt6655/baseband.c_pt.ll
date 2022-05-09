; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/baseband.c_pt.bc'
source_filename = "../drivers/staging/vt6655/baseband.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.vnt_phy_field = type { i8, i8, i16 }

@awc_frame_time = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 10, i16 20, i16 55, i16 110, i16 24, i16 36, i16 48, i16 72, i16 96, i16 144, i16 192, i16 216], [40 x i8] zeroinitializer }, align 32
@bb_read_embedded.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bb_read_embedded\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/vt6655/baseband.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x30)\0A\00", [45 x i8] zeroinitializer }, align 32
@bb_write_embedded.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bb_write_embedded\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x31)\0A\00", [45 x i8] zeroinitializer }, align 32
@by_vt3253_init_tab_rfmd = internal constant { [446 x [2 x i8]], [196 x i8] } { [446 x [2 x i8]] [[2 x i8] c"\000", [2 x i8] c"\01\00", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\08p", [2 x i8] c"\09E", [2 x i8] c"\0A*", [2 x i8] c"\0Bv", [2 x i8] c"\0C\00", [2 x i8] c"\0D\01", [2 x i8] c"\0E\80", [2 x i8] c"\0F\00", [2 x i8] c"\10\00", [2 x i8] c"\11\00", [2 x i8] c"\12\00", [2 x i8] c"\13\00", [2 x i8] c"\14\00", [2 x i8] c"\15\00", [2 x i8] c"\16\00", [2 x i8] c"\17\00", [2 x i8] c"\18\00", [2 x i8] c"\19\00", [2 x i8] c"\1A\00", [2 x i8] c"\1B\9D", [2 x i8] c"\1C\05", [2 x i8] c"\1D\00", [2 x i8] c"\1E\00", [2 x i8] c"\1F\00", [2 x i8] c" \00", [2 x i8] c"!\00", [2 x i8] c"\22\00", [2 x i8] c"#\00", [2 x i8] c"$\00", [2 x i8] c"%J", [2 x i8] c"&\00", [2 x i8] c"'\00", [2 x i8] c"(\00", [2 x i8] c")\00", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c",\00", [2 x i8] c"-\A8", [2 x i8] c".\1A", [2 x i8] c"/\0C", [2 x i8] c"0&", [2 x i8] c"1[", [2 x i8] c"2\00", [2 x i8] c"3\00", [2 x i8] c"4\00", [2 x i8] c"5\00", [2 x i8] c"6\AA", [2 x i8] c"7\AA", [2 x i8] c"8\FF", [2 x i8] c"9\FF", [2 x i8] c":\00", [2 x i8] c";\00", [2 x i8] c"<\00", [2 x i8] c"=\0D", [2 x i8] c">Q", [2 x i8] c"?\04", [2 x i8] c"@\00", [2 x i8] c"A\08", [2 x i8] c"B\00", [2 x i8] c"C\08", [2 x i8] c"D\06", [2 x i8] c"E\14", [2 x i8] c"F\05", [2 x i8] c"G\08", [2 x i8] c"H\00", [2 x i8] c"I\00", [2 x i8] c"J\00", [2 x i8] c"K\00", [2 x i8] c"L\09", [2 x i8] c"M\80", [2 x i8] c"N\00", [2 x i8] c"O\C5", [2 x i8] c"P\14", [2 x i8] c"Q\19", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"V\00", [2 x i8] c"W\00", [2 x i8] c"X\00", [2 x i8] c"Y\B0", [2 x i8] c"Z\00", [2 x i8] c"[\00", [2 x i8] c"\\\00", [2 x i8] c"]\00", [2 x i8] c"^\00", [2 x i8] c"_\00", [2 x i8] c"`D", [2 x i8] c"a\04", [2 x i8] c"b\00", [2 x i8] c"c\00", [2 x i8] c"d\00", [2 x i8] c"e\00", [2 x i8] c"f\04", [2 x i8] c"g\B7", [2 x i8] c"h\00", [2 x i8] c"i\00", [2 x i8] c"j\00", [2 x i8] c"k\00", [2 x i8] c"l\00", [2 x i8] c"m\03", [2 x i8] c"n\01", [2 x i8] c"o\00", [2 x i8] c"p\00", [2 x i8] c"q\00", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t\00", [2 x i8] c"u\00", [2 x i8] c"v\00", [2 x i8] c"w\00", [2 x i8] c"x\00", [2 x i8] c"y\00", [2 x i8] c"z\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"~\00", [2 x i8] c"\7F\00", [2 x i8] c"\80\0B", [2 x i8] c"\81\00", [2 x i8] c"\82<", [2 x i8] c"\83\00", [2 x i8] c"\84\00", [2 x i8] c"\85\00", [2 x i8] c"\86\00", [2 x i8] c"\87\00", [2 x i8] c"\88\08", [2 x i8] c"\89\00", [2 x i8] c"\8A\08", [2 x i8] c"\8B\A6", [2 x i8] c"\8C\84", [2 x i8] c"\8DG", [2 x i8] c"\8E\BB", [2 x i8] c"\8F\02", [2 x i8] c"\90!", [2 x i8] c"\91\0C", [2 x i8] c"\92\04", [2 x i8] c"\93\22", [2 x i8] c"\94\00", [2 x i8] c"\95\00", [2 x i8] c"\96\00", [2 x i8] c"\97\EB", [2 x i8] c"\98\00", [2 x i8] c"\99\00", [2 x i8] c"\9A\00", [2 x i8] c"\9B\00", [2 x i8] c"\9C\00", [2 x i8] c"\9D\00", [2 x i8] c"\9E\00", [2 x i8] c"\9F\00", [2 x i8] c"\A0\00", [2 x i8] c"\A1\00", [2 x i8] c"\A2\00", [2 x i8] c"\A3\00", [2 x i8] c"\A4\00", [2 x i8] c"\A5\00", [2 x i8] c"\A6\10", [2 x i8] c"\A7\04", [2 x i8] c"\A8\10", [2 x i8] c"\A9\00", [2 x i8] c"\AA\8F", [2 x i8] c"\AB\00", [2 x i8] c"\AC\00", [2 x i8] c"\AD\00", [2 x i8] c"\AE\00", [2 x i8] c"\AF\80", [2 x i8] c"\B08", [2 x i8] c"\B1\00", [2 x i8] c"\B2\00", [2 x i8] c"\B3\00", [2 x i8] c"\B4\EE", [2 x i8] c"\B5\FF", [2 x i8] c"\B6\10", [2 x i8] c"\B7\00", [2 x i8] c"\B8\00", [2 x i8] c"\B9\00", [2 x i8] c"\BA\00", [2 x i8] c"\BB\03", [2 x i8] c"\BC\00", [2 x i8] c"\BD\00", [2 x i8] c"\BE\00", [2 x i8] c"\BF\00", [2 x i8] c"\C0\10", [2 x i8] c"\C1\10", [2 x i8] c"\C2\18", [2 x i8] c"\C3 ", [2 x i8] c"\C4\10", [2 x i8] c"\C5\00", [2 x i8] c"\C6\22", [2 x i8] c"\C7\14", [2 x i8] c"\C8\0F", [2 x i8] c"\C9\08", [2 x i8] c"\CA\A4", [2 x i8] c"\CB\A7", [2 x i8] c"\CC<", [2 x i8] c"\CD\10", [2 x i8] c"\CE ", [2 x i8] c"\CF\00", [2 x i8] c"\D0\00", [2 x i8] c"\D1\10", [2 x i8] c"\D2\00", [2 x i8] c"\D3\00", [2 x i8] c"\D4\10", [2 x i8] c"\D53", [2 x i8] c"\D6p", [2 x i8] c"\D7\01", [2 x i8] c"\D8\00", [2 x i8] c"\D9\00", [2 x i8] c"\DA\00", [2 x i8] c"\DB\00", [2 x i8] c"\DC\00", [2 x i8] c"\DD\00", [2 x i8] c"\DE\00", [2 x i8] c"\DF\00", [2 x i8] c"\E0\00", [2 x i8] c"\E1\00", [2 x i8] c"\E2\CC", [2 x i8] c"\E3\04", [2 x i8] c"\E4\08", [2 x i8] c"\E5\10", [2 x i8] c"\E6\00", [2 x i8] c"\E7\0E", [2 x i8] c"\E8\88", [2 x i8] c"\E9\D4", [2 x i8] c"\EA\05", [2 x i8] c"\EB\F0", [2 x i8] c"\ECy", [2 x i8] c"\ED\0F", [2 x i8] c"\EE\04", [2 x i8] c"\EF\04", [2 x i8] c"\F0\00", [2 x i8] c"\F1\00", [2 x i8] c"\F2\00", [2 x i8] c"\F3\00", [2 x i8] c"\F4\00", [2 x i8] c"\F5\00", [2 x i8] c"\F6\00", [2 x i8] c"\F7\00", [2 x i8] c"\F8\00", [2 x i8] c"\F9\00", [2 x i8] c"\F0\00", [2 x i8] c"\F1\F8", [2 x i8] c"\F0\80", [2 x i8] c"\F0\00", [2 x i8] c"\F1\F4", [2 x i8] c"\F0\81", [2 x i8] c"\F0\01", [2 x i8] c"\F1\F0", [2 x i8] c"\F0\82", [2 x i8] c"\F0\02", [2 x i8] c"\F1\EC", [2 x i8] c"\F0\83", [2 x i8] c"\F0\03", [2 x i8] c"\F1\E8", [2 x i8] c"\F0\84", [2 x i8] c"\F0\04", [2 x i8] c"\F1\E4", [2 x i8] c"\F0\85", [2 x i8] c"\F0\05", [2 x i8] c"\F1\E0", [2 x i8] c"\F0\86", [2 x i8] c"\F0\06", [2 x i8] c"\F1\DC", [2 x i8] c"\F0\87", [2 x i8] c"\F0\07", [2 x i8] c"\F1\D8", [2 x i8] c"\F0\88", [2 x i8] c"\F0\08", [2 x i8] c"\F1\D4", [2 x i8] c"\F0\89", [2 x i8] c"\F0\09", [2 x i8] c"\F1\D0", [2 x i8] c"\F0\8A", [2 x i8] c"\F0\0A", [2 x i8] c"\F1\CC", [2 x i8] c"\F0\8B", [2 x i8] c"\F0\0B", [2 x i8] c"\F1\C8", [2 x i8] c"\F0\8C", [2 x i8] c"\F0\0C", [2 x i8] c"\F1\C4", [2 x i8] c"\F0\8D", [2 x i8] c"\F0\0D", [2 x i8] c"\F1\C0", [2 x i8] c"\F0\8E", [2 x i8] c"\F0\0E", [2 x i8] c"\F1\BC", [2 x i8] c"\F0\8F", [2 x i8] c"\F0\0F", [2 x i8] c"\F1\B8", [2 x i8] c"\F0\90", [2 x i8] c"\F0\10", [2 x i8] c"\F1\B4", [2 x i8] c"\F0\91", [2 x i8] c"\F0\11", [2 x i8] c"\F1\B0", [2 x i8] c"\F0\92", [2 x i8] c"\F0\12", [2 x i8] c"\F1\AC", [2 x i8] c"\F0\93", [2 x i8] c"\F0\13", [2 x i8] c"\F1\A8", [2 x i8] c"\F0\94", [2 x i8] c"\F0\14", [2 x i8] c"\F1\A4", [2 x i8] c"\F0\95", [2 x i8] c"\F0\15", [2 x i8] c"\F1\A0", [2 x i8] c"\F0\96", [2 x i8] c"\F0\16", [2 x i8] c"\F1\9C", [2 x i8] c"\F0\97", [2 x i8] c"\F0\17", [2 x i8] c"\F1\98", [2 x i8] c"\F0\98", [2 x i8] c"\F0\18", [2 x i8] c"\F1\94", [2 x i8] c"\F0\99", [2 x i8] c"\F0\19", [2 x i8] c"\F1\90", [2 x i8] c"\F0\9A", [2 x i8] c"\F0\1A", [2 x i8] c"\F1\8C", [2 x i8] c"\F0\9B", [2 x i8] c"\F0\1B", [2 x i8] c"\F1\88", [2 x i8] c"\F0\9C", [2 x i8] c"\F0\1C", [2 x i8] c"\F1\84", [2 x i8] c"\F0\9D", [2 x i8] c"\F0\1D", [2 x i8] c"\F1\80", [2 x i8] c"\F0\9E", [2 x i8] c"\F0\1E", [2 x i8] c"\F1|", [2 x i8] c"\F0\9F", [2 x i8] c"\F0\1F", [2 x i8] c"\F1x", [2 x i8] c"\F0\A0", [2 x i8] c"\F0 ", [2 x i8] c"\F1t", [2 x i8] c"\F0\A1", [2 x i8] c"\F0!", [2 x i8] c"\F1p", [2 x i8] c"\F0\A2", [2 x i8] c"\F0\22", [2 x i8] c"\F1l", [2 x i8] c"\F0\A3", [2 x i8] c"\F0#", [2 x i8] c"\F1h", [2 x i8] c"\F0\A4", [2 x i8] c"\F0$", [2 x i8] c"\F1d", [2 x i8] c"\F0\A5", [2 x i8] c"\F0%", [2 x i8] c"\F1`", [2 x i8] c"\F0\A6", [2 x i8] c"\F0&", [2 x i8] c"\F1\\", [2 x i8] c"\F0\A7", [2 x i8] c"\F0'", [2 x i8] c"\F1X", [2 x i8] c"\F0\A8", [2 x i8] c"\F0(", [2 x i8] c"\F1T", [2 x i8] c"\F0\A9", [2 x i8] c"\F0)", [2 x i8] c"\F1P", [2 x i8] c"\F0\AA", [2 x i8] c"\F0*", [2 x i8] c"\F1L", [2 x i8] c"\F0\AB", [2 x i8] c"\F0+", [2 x i8] c"\F1H", [2 x i8] c"\F0\AC", [2 x i8] c"\F0,", [2 x i8] c"\F1D", [2 x i8] c"\F0\AD", [2 x i8] c"\F0-", [2 x i8] c"\F1@", [2 x i8] c"\F0\AE", [2 x i8] c"\F0.", [2 x i8] c"\F1<", [2 x i8] c"\F0\AF", [2 x i8] c"\F0/", [2 x i8] c"\F18", [2 x i8] c"\F0\B0", [2 x i8] c"\F00", [2 x i8] c"\F14", [2 x i8] c"\F0\B1", [2 x i8] c"\F01", [2 x i8] c"\F10", [2 x i8] c"\F0\B2", [2 x i8] c"\F02", [2 x i8] c"\F1,", [2 x i8] c"\F0\B3", [2 x i8] c"\F03", [2 x i8] c"\F1(", [2 x i8] c"\F0\B4", [2 x i8] c"\F04", [2 x i8] c"\F1$", [2 x i8] c"\F0\B5", [2 x i8] c"\F05", [2 x i8] c"\F1 ", [2 x i8] c"\F0\B6", [2 x i8] c"\F06", [2 x i8] c"\F1\1C", [2 x i8] c"\F0\B7", [2 x i8] c"\F07", [2 x i8] c"\F1\18", [2 x i8] c"\F0\B8", [2 x i8] c"\F08", [2 x i8] c"\F1\14", [2 x i8] c"\F0\B9", [2 x i8] c"\F09", [2 x i8] c"\F1\10", [2 x i8] c"\F0\BA", [2 x i8] c"\F0:", [2 x i8] c"\F1\0C", [2 x i8] c"\F0\BB", [2 x i8] c"\F0;", [2 x i8] c"\F1\08", [2 x i8] c"\F0\00", [2 x i8] c"\F0<", [2 x i8] c"\F1\04", [2 x i8] c"\F0\BD", [2 x i8] c"\F0=", [2 x i8] c"\F1\00", [2 x i8] c"\F0\BE", [2 x i8] c"\F0>", [2 x i8] c"\F1\00", [2 x i8] c"\F0\BF", [2 x i8] c"\F0?", [2 x i8] c"\F1\00", [2 x i8] c"\F0\C0", [2 x i8] c"\F0\00"], [196 x i8] zeroinitializer }, align 32
@byVT3253B0_RFMD = internal constant { [256 x [2 x i8]], [128 x i8] } { [256 x [2 x i8]] [[2 x i8] c"\001", [2 x i8] c"\01\00", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\04\00", [2 x i8] c"\05\81", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\088", [2 x i8] c"\09E", [2 x i8] c"\0A*", [2 x i8] c"\0Bv", [2 x i8] c"\0C\00", [2 x i8] c"\0D\00", [2 x i8] c"\0E\80", [2 x i8] c"\0F\00", [2 x i8] c"\10\00", [2 x i8] c"\11\00", [2 x i8] c"\12\00", [2 x i8] c"\13\00", [2 x i8] c"\14\00", [2 x i8] c"\15\00", [2 x i8] c"\16\00", [2 x i8] c"\17\00", [2 x i8] c"\18\00", [2 x i8] c"\19\00", [2 x i8] c"\1A\00", [2 x i8] c"\1B\8E", [2 x i8] c"\1C\06", [2 x i8] c"\1D\00", [2 x i8] c"\1E\00", [2 x i8] c"\1F\00", [2 x i8] c" \00", [2 x i8] c"!\00", [2 x i8] c"\22\00", [2 x i8] c"#\00", [2 x i8] c"$\00", [2 x i8] c"%J", [2 x i8] c"&\00", [2 x i8] c"'\00", [2 x i8] c"(\00", [2 x i8] c")\00", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c",\00", [2 x i8] c"-4", [2 x i8] c".\18", [2 x i8] c"/\0C", [2 x i8] c"0&", [2 x i8] c"1[", [2 x i8] c"2\00", [2 x i8] c"3\00", [2 x i8] c"4\00", [2 x i8] c"5\00", [2 x i8] c"6\AA", [2 x i8] c"7\AA", [2 x i8] c"8\FF", [2 x i8] c"9\FF", [2 x i8] c":\F8", [2 x i8] c";\00", [2 x i8] c"<\00", [2 x i8] c"=\09", [2 x i8] c">\0D", [2 x i8] c"?\04", [2 x i8] c"@\00", [2 x i8] c"A\08", [2 x i8] c"B\00", [2 x i8] c"C\08", [2 x i8] c"D\08", [2 x i8] c"E\14", [2 x i8] c"F\05", [2 x i8] c"G\08", [2 x i8] c"H\00", [2 x i8] c"I\00", [2 x i8] c"J\00", [2 x i8] c"K\00", [2 x i8] c"L\09", [2 x i8] c"M\80", [2 x i8] c"N\00", [2 x i8] c"O\C5", [2 x i8] c"P\14", [2 x i8] c"Q\19", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"V\00", [2 x i8] c"W\00", [2 x i8] c"X\00", [2 x i8] c"Y\B0", [2 x i8] c"Z\00", [2 x i8] c"[\00", [2 x i8] c"\\\00", [2 x i8] c"]\00", [2 x i8] c"^\00", [2 x i8] c"_\00", [2 x i8] c"`9", [2 x i8] c"a\83", [2 x i8] c"b\00", [2 x i8] c"c\00", [2 x i8] c"d\00", [2 x i8] c"e\00", [2 x i8] c"f\C0", [2 x i8] c"gI", [2 x i8] c"h\00", [2 x i8] c"i\00", [2 x i8] c"j\00", [2 x i8] c"k\00", [2 x i8] c"l\00", [2 x i8] c"m\03", [2 x i8] c"n\01", [2 x i8] c"o\00", [2 x i8] c"p\00", [2 x i8] c"q\00", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t\00", [2 x i8] c"u\00", [2 x i8] c"v\00", [2 x i8] c"w\00", [2 x i8] c"x\00", [2 x i8] c"y\00", [2 x i8] c"z\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"~\00", [2 x i8] c"\7F\00", [2 x i8] c"\80\89", [2 x i8] c"\81\00", [2 x i8] c"\82\0E", [2 x i8] c"\83\00", [2 x i8] c"\84\00", [2 x i8] c"\85\00", [2 x i8] c"\86\00", [2 x i8] c"\87\00", [2 x i8] c"\88\08", [2 x i8] c"\89\00", [2 x i8] c"\8A\0E", [2 x i8] c"\8B\A7", [2 x i8] c"\8C\88", [2 x i8] c"\8DG", [2 x i8] c"\8E\AA", [2 x i8] c"\8F\02", [2 x i8] c"\90#", [2 x i8] c"\91\0C", [2 x i8] c"\92\06", [2 x i8] c"\93\08", [2 x i8] c"\94\00", [2 x i8] c"\95\00", [2 x i8] c"\96\00", [2 x i8] c"\97\EB", [2 x i8] c"\98\00", [2 x i8] c"\99\00", [2 x i8] c"\9A\00", [2 x i8] c"\9B\00", [2 x i8] c"\9C\00", [2 x i8] c"\9D\00", [2 x i8] c"\9E\00", [2 x i8] c"\9F\00", [2 x i8] c"\A0\00", [2 x i8] c"\A1\00", [2 x i8] c"\A2\00", [2 x i8] c"\A3\CD", [2 x i8] c"\A4\07", [2 x i8] c"\A53", [2 x i8] c"\A6\18", [2 x i8] c"\A7\00", [2 x i8] c"\A8\18", [2 x i8] c"\A9\00", [2 x i8] c"\AA(", [2 x i8] c"\AB\00", [2 x i8] c"\AC\00", [2 x i8] c"\AD\00", [2 x i8] c"\AE\00", [2 x i8] c"\AF\18", [2 x i8] c"\B08", [2 x i8] c"\B10", [2 x i8] c"\B2\00", [2 x i8] c"\B3\00", [2 x i8] c"\B4\00", [2 x i8] c"\B5\00", [2 x i8] c"\B6\84", [2 x i8] c"\B7\FD", [2 x i8] c"\B8\00", [2 x i8] c"\B9\00", [2 x i8] c"\BA\00", [2 x i8] c"\BB\03", [2 x i8] c"\BC\00", [2 x i8] c"\BD\00", [2 x i8] c"\BE\00", [2 x i8] c"\BF\00", [2 x i8] c"\C0\10", [2 x i8] c"\C1 ", [2 x i8] c"\C2\18", [2 x i8] c"\C3 ", [2 x i8] c"\C4\10", [2 x i8] c"\C5,", [2 x i8] c"\C6\1E", [2 x i8] c"\C7\10", [2 x i8] c"\C8\12", [2 x i8] c"\C9\01", [2 x i8] c"\CAo", [2 x i8] c"\CB\A7", [2 x i8] c"\CC<", [2 x i8] c"\CD\10", [2 x i8] c"\CE\00", [2 x i8] c"\CF\22", [2 x i8] c"\D0\00", [2 x i8] c"\D1\10", [2 x i8] c"\D2\00", [2 x i8] c"\D3\00", [2 x i8] c"\D4\10", [2 x i8] c"\D53", [2 x i8] c"\D6\80", [2 x i8] c"\D7!", [2 x i8] c"\D8\00", [2 x i8] c"\D9\00", [2 x i8] c"\DA\00", [2 x i8] c"\DB\00", [2 x i8] c"\DC\00", [2 x i8] c"\DD\00", [2 x i8] c"\DE\00", [2 x i8] c"\DF\00", [2 x i8] c"\E0\00", [2 x i8] c"\E1\B3", [2 x i8] c"\E2\00", [2 x i8] c"\E3\00", [2 x i8] c"\E4\00", [2 x i8] c"\E5\10", [2 x i8] c"\E6\00", [2 x i8] c"\E7\18", [2 x i8] c"\E8\08", [2 x i8] c"\E9\D4", [2 x i8] c"\EA\00", [2 x i8] c"\EB\FF", [2 x i8] c"\ECy", [2 x i8] c"\ED\10", [2 x i8] c"\EE0", [2 x i8] c"\EF\02", [2 x i8] c"\F0\00", [2 x i8] c"\F1\09", [2 x i8] c"\F2\00", [2 x i8] c"\F3\00", [2 x i8] c"\F4\00", [2 x i8] c"\F5\00", [2 x i8] c"\F6\00", [2 x i8] c"\F7\00", [2 x i8] c"\F8\00", [2 x i8] c"\F9\00", [2 x i8] c"\FA\00", [2 x i8] c"\FB\00", [2 x i8] c"\FC\00", [2 x i8] c"\FD\00", [2 x i8] c"\FE\00", [2 x i8] c"\FF\00"], [128 x i8] zeroinitializer }, align 32
@byVT3253B0_AGC4_RFMD2959 = internal constant { [195 x [2 x i8]], [122 x i8] } { [195 x [2 x i8]] [[2 x i8] c"\F0\00", [2 x i8] c"\F1>", [2 x i8] c"\F0\80", [2 x i8] c"\F0\00", [2 x i8] c"\F1>", [2 x i8] c"\F0\81", [2 x i8] c"\F0\01", [2 x i8] c"\F1>", [2 x i8] c"\F0\82", [2 x i8] c"\F0\02", [2 x i8] c"\F1>", [2 x i8] c"\F0\83", [2 x i8] c"\F0\03", [2 x i8] c"\F1;", [2 x i8] c"\F0\84", [2 x i8] c"\F0\04", [2 x i8] c"\F19", [2 x i8] c"\F0\85", [2 x i8] c"\F0\05", [2 x i8] c"\F18", [2 x i8] c"\F0\86", [2 x i8] c"\F0\06", [2 x i8] c"\F17", [2 x i8] c"\F0\87", [2 x i8] c"\F0\07", [2 x i8] c"\F16", [2 x i8] c"\F0\88", [2 x i8] c"\F0\08", [2 x i8] c"\F15", [2 x i8] c"\F0\89", [2 x i8] c"\F0\09", [2 x i8] c"\F15", [2 x i8] c"\F0\8A", [2 x i8] c"\F0\0A", [2 x i8] c"\F14", [2 x i8] c"\F0\8B", [2 x i8] c"\F0\0B", [2 x i8] c"\F14", [2 x i8] c"\F0\8C", [2 x i8] c"\F0\0C", [2 x i8] c"\F13", [2 x i8] c"\F0\8D", [2 x i8] c"\F0\0D", [2 x i8] c"\F12", [2 x i8] c"\F0\8E", [2 x i8] c"\F0\0E", [2 x i8] c"\F11", [2 x i8] c"\F0\8F", [2 x i8] c"\F0\0F", [2 x i8] c"\F10", [2 x i8] c"\F0\90", [2 x i8] c"\F0\10", [2 x i8] c"\F1/", [2 x i8] c"\F0\91", [2 x i8] c"\F0\11", [2 x i8] c"\F1/", [2 x i8] c"\F0\92", [2 x i8] c"\F0\12", [2 x i8] c"\F1.", [2 x i8] c"\F0\93", [2 x i8] c"\F0\13", [2 x i8] c"\F1-", [2 x i8] c"\F0\94", [2 x i8] c"\F0\14", [2 x i8] c"\F1,", [2 x i8] c"\F0\95", [2 x i8] c"\F0\15", [2 x i8] c"\F1+", [2 x i8] c"\F0\96", [2 x i8] c"\F0\16", [2 x i8] c"\F1+", [2 x i8] c"\F0\97", [2 x i8] c"\F0\17", [2 x i8] c"\F1*", [2 x i8] c"\F0\98", [2 x i8] c"\F0\18", [2 x i8] c"\F1)", [2 x i8] c"\F0\99", [2 x i8] c"\F0\19", [2 x i8] c"\F1(", [2 x i8] c"\F0\9A", [2 x i8] c"\F0\1A", [2 x i8] c"\F1'", [2 x i8] c"\F0\9B", [2 x i8] c"\F0\1B", [2 x i8] c"\F1&", [2 x i8] c"\F0\9C", [2 x i8] c"\F0\1C", [2 x i8] c"\F1%", [2 x i8] c"\F0\9D", [2 x i8] c"\F0\1D", [2 x i8] c"\F1$", [2 x i8] c"\F0\9E", [2 x i8] c"\F0\1E", [2 x i8] c"\F1$", [2 x i8] c"\F0\9F", [2 x i8] c"\F0\1F", [2 x i8] c"\F1#", [2 x i8] c"\F0\A0", [2 x i8] c"\F0 ", [2 x i8] c"\F1\22", [2 x i8] c"\F0\A1", [2 x i8] c"\F0!", [2 x i8] c"\F1!", [2 x i8] c"\F0\A2", [2 x i8] c"\F0\22", [2 x i8] c"\F1 ", [2 x i8] c"\F0\A3", [2 x i8] c"\F0#", [2 x i8] c"\F1 ", [2 x i8] c"\F0\A4", [2 x i8] c"\F0$", [2 x i8] c"\F1\1F", [2 x i8] c"\F0\A5", [2 x i8] c"\F0%", [2 x i8] c"\F1\1E", [2 x i8] c"\F0\A6", [2 x i8] c"\F0&", [2 x i8] c"\F1\1D", [2 x i8] c"\F0\A7", [2 x i8] c"\F0'", [2 x i8] c"\F1\1C", [2 x i8] c"\F0\A8", [2 x i8] c"\F0(", [2 x i8] c"\F1\1B", [2 x i8] c"\F0\A9", [2 x i8] c"\F0)", [2 x i8] c"\F1\1B", [2 x i8] c"\F0\AA", [2 x i8] c"\F0*", [2 x i8] c"\F1\1A", [2 x i8] c"\F0\AB", [2 x i8] c"\F0+", [2 x i8] c"\F1\1A", [2 x i8] c"\F0\AC", [2 x i8] c"\F0,", [2 x i8] c"\F1\19", [2 x i8] c"\F0\AD", [2 x i8] c"\F0-", [2 x i8] c"\F1\18", [2 x i8] c"\F0\AE", [2 x i8] c"\F0.", [2 x i8] c"\F1\17", [2 x i8] c"\F0\AF", [2 x i8] c"\F0/", [2 x i8] c"\F1\16", [2 x i8] c"\F0\B0", [2 x i8] c"\F00", [2 x i8] c"\F1\15", [2 x i8] c"\F0\B1", [2 x i8] c"\F01", [2 x i8] c"\F1\15", [2 x i8] c"\F0\B2", [2 x i8] c"\F02", [2 x i8] c"\F1\15", [2 x i8] c"\F0\B3", [2 x i8] c"\F03", [2 x i8] c"\F1\14", [2 x i8] c"\F0\B4", [2 x i8] c"\F04", [2 x i8] c"\F1\13", [2 x i8] c"\F0\B5", [2 x i8] c"\F05", [2 x i8] c"\F1\12", [2 x i8] c"\F0\B6", [2 x i8] c"\F06", [2 x i8] c"\F1\11", [2 x i8] c"\F0\B7", [2 x i8] c"\F07", [2 x i8] c"\F1\10", [2 x i8] c"\F0\B8", [2 x i8] c"\F08", [2 x i8] c"\F1\0F", [2 x i8] c"\F0\B9", [2 x i8] c"\F09", [2 x i8] c"\F1\0E", [2 x i8] c"\F0\BA", [2 x i8] c"\F0:", [2 x i8] c"\F1\0D", [2 x i8] c"\F0\BB", [2 x i8] c"\F0;", [2 x i8] c"\F1\0C", [2 x i8] c"\F0\BC", [2 x i8] c"\F0<", [2 x i8] c"\F1\0B", [2 x i8] c"\F0\BD", [2 x i8] c"\F0=", [2 x i8] c"\F1\0B", [2 x i8] c"\F0\BE", [2 x i8] c"\F0>", [2 x i8] c"\F1\0A", [2 x i8] c"\F0\BF", [2 x i8] c"\F0?", [2 x i8] c"\F1\09", [2 x i8] c"\F0\00"], [122 x i8] zeroinitializer }, align 32
@byVT3253B0_AIROHA2230 = internal constant { [256 x [2 x i8]], [128 x i8] } { [256 x [2 x i8]] [[2 x i8] c"\001", [2 x i8] c"\01\00", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\04\00", [2 x i8] c"\05\80", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\08p", [2 x i8] c"\09A", [2 x i8] c"\0A*", [2 x i8] c"\0Bv", [2 x i8] c"\0C\00", [2 x i8] c"\0D\00", [2 x i8] c"\0E\80", [2 x i8] c"\0F\00", [2 x i8] c"\10\00", [2 x i8] c"\11\00", [2 x i8] c"\12\00", [2 x i8] c"\13\00", [2 x i8] c"\14\00", [2 x i8] c"\15\00", [2 x i8] c"\16\00", [2 x i8] c"\17\00", [2 x i8] c"\18\00", [2 x i8] c"\19\00", [2 x i8] c"\1A\00", [2 x i8] c"\1B\8F", [2 x i8] c"\1C\09", [2 x i8] c"\1D\00", [2 x i8] c"\1E\00", [2 x i8] c"\1F\00", [2 x i8] c" \00", [2 x i8] c"!\00", [2 x i8] c"\22\00", [2 x i8] c"#\00", [2 x i8] c"$\00", [2 x i8] c"%J", [2 x i8] c"&\00", [2 x i8] c"'\00", [2 x i8] c"(\00", [2 x i8] c")\00", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c",\00", [2 x i8] c"-J", [2 x i8] c".\00", [2 x i8] c"/\0A", [2 x i8] c"0&", [2 x i8] c"1[", [2 x i8] c"2\00", [2 x i8] c"3\00", [2 x i8] c"4\00", [2 x i8] c"5\00", [2 x i8] c"6\AA", [2 x i8] c"7\AA", [2 x i8] c"8\FF", [2 x i8] c"9\FF", [2 x i8] c":y", [2 x i8] c";\00", [2 x i8] c"<\00", [2 x i8] c"=\0B", [2 x i8] c">H", [2 x i8] c"?\04", [2 x i8] c"@\00", [2 x i8] c"A\08", [2 x i8] c"B\00", [2 x i8] c"C\08", [2 x i8] c"D\08", [2 x i8] c"E\14", [2 x i8] c"F\05", [2 x i8] c"G\09", [2 x i8] c"H\00", [2 x i8] c"I\00", [2 x i8] c"J\00", [2 x i8] c"K\00", [2 x i8] c"L\09", [2 x i8] c"Ms", [2 x i8] c"N\00", [2 x i8] c"O\C5", [2 x i8] c"P\15", [2 x i8] c"Q\19", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"V\00", [2 x i8] c"W\00", [2 x i8] c"X\00", [2 x i8] c"Y\B0", [2 x i8] c"Z\00", [2 x i8] c"[\00", [2 x i8] c"\\\00", [2 x i8] c"]\00", [2 x i8] c"^\00", [2 x i8] c"_\00", [2 x i8] c"`\E4", [2 x i8] c"a\80", [2 x i8] c"b\00", [2 x i8] c"c\00", [2 x i8] c"d\00", [2 x i8] c"e\00", [2 x i8] c"f\98", [2 x i8] c"g\0A", [2 x i8] c"h\00", [2 x i8] c"i\00", [2 x i8] c"j\00", [2 x i8] c"k\00", [2 x i8] c"l\00", [2 x i8] c"m\03", [2 x i8] c"n\01", [2 x i8] c"o\00", [2 x i8] c"p\00", [2 x i8] c"q\00", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t\00", [2 x i8] c"u\00", [2 x i8] c"v\00", [2 x i8] c"w\00", [2 x i8] c"x\00", [2 x i8] c"y\00", [2 x i8] c"z\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"~\00", [2 x i8] c"\7F\00", [2 x i8] c"\80\8C", [2 x i8] c"\81\01", [2 x i8] c"\82\09", [2 x i8] c"\83\00", [2 x i8] c"\84\00", [2 x i8] c"\85\00", [2 x i8] c"\86\00", [2 x i8] c"\87\00", [2 x i8] c"\88\08", [2 x i8] c"\89\00", [2 x i8] c"\8A\0F", [2 x i8] c"\8B\B7", [2 x i8] c"\8C\88", [2 x i8] c"\8DG", [2 x i8] c"\8E\AA", [2 x i8] c"\8F\02", [2 x i8] c"\90\22", [2 x i8] c"\91\00", [2 x i8] c"\92\00", [2 x i8] c"\93\00", [2 x i8] c"\94\00", [2 x i8] c"\95\00", [2 x i8] c"\96\00", [2 x i8] c"\97\EB", [2 x i8] c"\98\00", [2 x i8] c"\99\00", [2 x i8] c"\9A\00", [2 x i8] c"\9B\00", [2 x i8] c"\9C\00", [2 x i8] c"\9D\00", [2 x i8] c"\9E\00", [2 x i8] c"\9F\01", [2 x i8] c"\A0\00", [2 x i8] c"\A1\00", [2 x i8] c"\A2\00", [2 x i8] c"\A3\00", [2 x i8] c"\A4\00", [2 x i8] c"\A5\00", [2 x i8] c"\A6\10", [2 x i8] c"\A7\00", [2 x i8] c"\A8\18", [2 x i8] c"\A9\00", [2 x i8] c"\AA\00", [2 x i8] c"\AB\00", [2 x i8] c"\AC\00", [2 x i8] c"\AD\00", [2 x i8] c"\AE\00", [2 x i8] c"\AF\18", [2 x i8] c"\B08", [2 x i8] c"\B10", [2 x i8] c"\B2\00", [2 x i8] c"\B3\00", [2 x i8] c"\B4\FF", [2 x i8] c"\B5\0F", [2 x i8] c"\B6\E4", [2 x i8] c"\B7\E2", [2 x i8] c"\B8\00", [2 x i8] c"\B9\00", [2 x i8] c"\BA\00", [2 x i8] c"\BB\03", [2 x i8] c"\BC\01", [2 x i8] c"\BD\00", [2 x i8] c"\BE\00", [2 x i8] c"\BF\00", [2 x i8] c"\C0\18", [2 x i8] c"\C1 ", [2 x i8] c"\C2\07", [2 x i8] c"\C3\18", [2 x i8] c"\C4\FF", [2 x i8] c"\C5,", [2 x i8] c"\C6\0C", [2 x i8] c"\C7\0A", [2 x i8] c"\C8\0E", [2 x i8] c"\C9\01", [2 x i8] c"\CAh", [2 x i8] c"\CB\A7", [2 x i8] c"\CC<", [2 x i8] c"\CD\10", [2 x i8] c"\CE\00", [2 x i8] c"\CF%", [2 x i8] c"\D0@", [2 x i8] c"\D1\12", [2 x i8] c"\D2\00", [2 x i8] c"\D3\00", [2 x i8] c"\D4\10", [2 x i8] c"\D5(", [2 x i8] c"\D6\80", [2 x i8] c"\D7*", [2 x i8] c"\D8\00", [2 x i8] c"\D9\00", [2 x i8] c"\DA\00", [2 x i8] c"\DB\00", [2 x i8] c"\DC\00", [2 x i8] c"\DD\00", [2 x i8] c"\DE\00", [2 x i8] c"\DF\00", [2 x i8] c"\E0\00", [2 x i8] c"\E1\B3", [2 x i8] c"\E2\00", [2 x i8] c"\E3\00", [2 x i8] c"\E4\00", [2 x i8] c"\E5\10", [2 x i8] c"\E6\00", [2 x i8] c"\E7\1C", [2 x i8] c"\E8\00", [2 x i8] c"\E9\F4", [2 x i8] c"\EA\00", [2 x i8] c"\EB\FF", [2 x i8] c"\ECy", [2 x i8] c"\ED ", [2 x i8] c"\EE0", [2 x i8] c"\EF\01", [2 x i8] c"\F0\00", [2 x i8] c"\F1>", [2 x i8] c"\F2\00", [2 x i8] c"\F3\00", [2 x i8] c"\F4\00", [2 x i8] c"\F5\00", [2 x i8] c"\F6\00", [2 x i8] c"\F7\00", [2 x i8] c"\F8\00", [2 x i8] c"\F9\00", [2 x i8] c"\FA\00", [2 x i8] c"\FB\00", [2 x i8] c"\FC\00", [2 x i8] c"\FD\00", [2 x i8] c"\FE\00", [2 x i8] c"\FF\00"], [128 x i8] zeroinitializer }, align 32
@byVT3253B0_AGC = internal constant { [193 x [2 x i8]], [126 x i8] } { [193 x [2 x i8]] [[2 x i8] c"\F0\00", [2 x i8] c"\F1\00", [2 x i8] c"\F0\80", [2 x i8] c"\F0\01", [2 x i8] c"\F1\00", [2 x i8] c"\F0\81", [2 x i8] c"\F0\02", [2 x i8] c"\F1\02", [2 x i8] c"\F0\82", [2 x i8] c"\F0\03", [2 x i8] c"\F1\04", [2 x i8] c"\F0\83", [2 x i8] c"\F0\03", [2 x i8] c"\F1\04", [2 x i8] c"\F0\84", [2 x i8] c"\F0\04", [2 x i8] c"\F1\06", [2 x i8] c"\F0\85", [2 x i8] c"\F0\05", [2 x i8] c"\F1\06", [2 x i8] c"\F0\86", [2 x i8] c"\F0\06", [2 x i8] c"\F1\06", [2 x i8] c"\F0\87", [2 x i8] c"\F0\07", [2 x i8] c"\F1\08", [2 x i8] c"\F0\88", [2 x i8] c"\F0\08", [2 x i8] c"\F1\08", [2 x i8] c"\F0\89", [2 x i8] c"\F0\09", [2 x i8] c"\F1\0A", [2 x i8] c"\F0\8A", [2 x i8] c"\F0\0A", [2 x i8] c"\F1\0A", [2 x i8] c"\F0\8B", [2 x i8] c"\F0\0B", [2 x i8] c"\F1\0C", [2 x i8] c"\F0\8C", [2 x i8] c"\F0\0C", [2 x i8] c"\F1\0C", [2 x i8] c"\F0\8D", [2 x i8] c"\F0\0D", [2 x i8] c"\F1\0E", [2 x i8] c"\F0\8E", [2 x i8] c"\F0\0E", [2 x i8] c"\F1\0E", [2 x i8] c"\F0\8F", [2 x i8] c"\F0\0F", [2 x i8] c"\F1\10", [2 x i8] c"\F0\90", [2 x i8] c"\F0\10", [2 x i8] c"\F1\10", [2 x i8] c"\F0\91", [2 x i8] c"\F0\11", [2 x i8] c"\F1\12", [2 x i8] c"\F0\92", [2 x i8] c"\F0\12", [2 x i8] c"\F1\12", [2 x i8] c"\F0\93", [2 x i8] c"\F0\13", [2 x i8] c"\F1\14", [2 x i8] c"\F0\94", [2 x i8] c"\F0\14", [2 x i8] c"\F1\14", [2 x i8] c"\F0\95", [2 x i8] c"\F0\15", [2 x i8] c"\F1\16", [2 x i8] c"\F0\96", [2 x i8] c"\F0\16", [2 x i8] c"\F1\16", [2 x i8] c"\F0\97", [2 x i8] c"\F0\17", [2 x i8] c"\F1\18", [2 x i8] c"\F0\98", [2 x i8] c"\F0\18", [2 x i8] c"\F1\18", [2 x i8] c"\F0\99", [2 x i8] c"\F0\19", [2 x i8] c"\F1\1A", [2 x i8] c"\F0\9A", [2 x i8] c"\F0\1A", [2 x i8] c"\F1\1A", [2 x i8] c"\F0\9B", [2 x i8] c"\F0\1B", [2 x i8] c"\F1\1C", [2 x i8] c"\F0\9C", [2 x i8] c"\F0\1C", [2 x i8] c"\F1\1C", [2 x i8] c"\F0\9D", [2 x i8] c"\F0\1D", [2 x i8] c"\F1\1E", [2 x i8] c"\F0\9E", [2 x i8] c"\F0\1E", [2 x i8] c"\F1\1E", [2 x i8] c"\F0\9F", [2 x i8] c"\F0\1F", [2 x i8] c"\F1 ", [2 x i8] c"\F0\A0", [2 x i8] c"\F0 ", [2 x i8] c"\F1 ", [2 x i8] c"\F0\A1", [2 x i8] c"\F0!", [2 x i8] c"\F1\22", [2 x i8] c"\F0\A2", [2 x i8] c"\F0\22", [2 x i8] c"\F1\22", [2 x i8] c"\F0\A3", [2 x i8] c"\F0#", [2 x i8] c"\F1$", [2 x i8] c"\F0\A4", [2 x i8] c"\F0$", [2 x i8] c"\F1$", [2 x i8] c"\F0\A5", [2 x i8] c"\F0%", [2 x i8] c"\F1&", [2 x i8] c"\F0\A6", [2 x i8] c"\F0&", [2 x i8] c"\F1&", [2 x i8] c"\F0\A7", [2 x i8] c"\F0'", [2 x i8] c"\F1(", [2 x i8] c"\F0\A8", [2 x i8] c"\F0(", [2 x i8] c"\F1(", [2 x i8] c"\F0\A9", [2 x i8] c"\F0)", [2 x i8] c"\F1*", [2 x i8] c"\F0\AA", [2 x i8] c"\F0*", [2 x i8] c"\F1*", [2 x i8] c"\F0\AB", [2 x i8] c"\F0+", [2 x i8] c"\F1,", [2 x i8] c"\F0\AC", [2 x i8] c"\F0,", [2 x i8] c"\F1,", [2 x i8] c"\F0\AD", [2 x i8] c"\F0-", [2 x i8] c"\F1.", [2 x i8] c"\F0\AE", [2 x i8] c"\F0.", [2 x i8] c"\F1.", [2 x i8] c"\F0\AF", [2 x i8] c"\F0/", [2 x i8] c"\F10", [2 x i8] c"\F0\B0", [2 x i8] c"\F00", [2 x i8] c"\F10", [2 x i8] c"\F0\B1", [2 x i8] c"\F01", [2 x i8] c"\F12", [2 x i8] c"\F0\B2", [2 x i8] c"\F02", [2 x i8] c"\F12", [2 x i8] c"\F0\B3", [2 x i8] c"\F03", [2 x i8] c"\F14", [2 x i8] c"\F0\B4", [2 x i8] c"\F04", [2 x i8] c"\F14", [2 x i8] c"\F0\B5", [2 x i8] c"\F05", [2 x i8] c"\F16", [2 x i8] c"\F0\B6", [2 x i8] c"\F06", [2 x i8] c"\F16", [2 x i8] c"\F0\B7", [2 x i8] c"\F07", [2 x i8] c"\F18", [2 x i8] c"\F0\B8", [2 x i8] c"\F08", [2 x i8] c"\F18", [2 x i8] c"\F0\B9", [2 x i8] c"\F09", [2 x i8] c"\F1:", [2 x i8] c"\F0\BA", [2 x i8] c"\F0:", [2 x i8] c"\F1:", [2 x i8] c"\F0\BB", [2 x i8] c"\F0;", [2 x i8] c"\F1<", [2 x i8] c"\F0\BC", [2 x i8] c"\F0<", [2 x i8] c"\F1<", [2 x i8] c"\F0\BD", [2 x i8] c"\F0=", [2 x i8] c"\F1>", [2 x i8] c"\F0\BE", [2 x i8] c"\F0>", [2 x i8] c"\F1>", [2 x i8] c"\F0\BF", [2 x i8] c"\F0\00"], [126 x i8] zeroinitializer }, align 32
@byVT3253B0_UW2451 = internal constant { [256 x [2 x i8]], [128 x i8] } { [256 x [2 x i8]] [[2 x i8] c"\001", [2 x i8] c"\01\00", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\04\00", [2 x i8] c"\05\81", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\088", [2 x i8] c"\09E", [2 x i8] c"\0A(", [2 x i8] c"\0Bv", [2 x i8] c"\0C\00", [2 x i8] c"\0D\00", [2 x i8] c"\0E\80", [2 x i8] c"\0F\00", [2 x i8] c"\10\00", [2 x i8] c"\11\00", [2 x i8] c"\12\00", [2 x i8] c"\13\00", [2 x i8] c"\14\00", [2 x i8] c"\15\00", [2 x i8] c"\16\00", [2 x i8] c"\17\00", [2 x i8] c"\18\00", [2 x i8] c"\19\00", [2 x i8] c"\1A\00", [2 x i8] c"\1B\8F", [2 x i8] c"\1C\0F", [2 x i8] c"\1D\00", [2 x i8] c"\1E\00", [2 x i8] c"\1F\00", [2 x i8] c" \00", [2 x i8] c"!\00", [2 x i8] c"\22\00", [2 x i8] c"#\00", [2 x i8] c"$\00", [2 x i8] c"%J", [2 x i8] c"&\00", [2 x i8] c"'\00", [2 x i8] c"(\00", [2 x i8] c")\00", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c",\00", [2 x i8] c"-\18", [2 x i8] c".\00", [2 x i8] c"/\0A", [2 x i8] c"0&", [2 x i8] c"1[", [2 x i8] c"2\00", [2 x i8] c"3\00", [2 x i8] c"4\00", [2 x i8] c"5\00", [2 x i8] c"6\AA", [2 x i8] c"7\AA", [2 x i8] c"8\FF", [2 x i8] c"9\FF", [2 x i8] c":\00", [2 x i8] c";\00", [2 x i8] c"<\00", [2 x i8] c"=\03", [2 x i8] c">\1D", [2 x i8] c"?\04", [2 x i8] c"@\00", [2 x i8] c"A\08", [2 x i8] c"B\00", [2 x i8] c"C\08", [2 x i8] c"D\08", [2 x i8] c"E\14", [2 x i8] c"F\05", [2 x i8] c"G\09", [2 x i8] c"H\00", [2 x i8] c"I\00", [2 x i8] c"J\00", [2 x i8] c"K\00", [2 x i8] c"L\09", [2 x i8] c"M\90", [2 x i8] c"N\00", [2 x i8] c"O\C5", [2 x i8] c"P\15", [2 x i8] c"Q\19", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"V\00", [2 x i8] c"W\00", [2 x i8] c"X\00", [2 x i8] c"Y\B0", [2 x i8] c"Z\00", [2 x i8] c"[\00", [2 x i8] c"\\\00", [2 x i8] c"]\00", [2 x i8] c"^\00", [2 x i8] c"_\00", [2 x i8] c"`\B3", [2 x i8] c"a\81", [2 x i8] c"b\00", [2 x i8] c"c\00", [2 x i8] c"d\00", [2 x i8] c"e\00", [2 x i8] c"fW", [2 x i8] c"gl", [2 x i8] c"h\00", [2 x i8] c"i\00", [2 x i8] c"j\00", [2 x i8] c"k\00", [2 x i8] c"l\00", [2 x i8] c"m\03", [2 x i8] c"n\01", [2 x i8] c"o\00", [2 x i8] c"p\00", [2 x i8] c"q\00", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t\00", [2 x i8] c"u\00", [2 x i8] c"v\00", [2 x i8] c"w\00", [2 x i8] c"x\00", [2 x i8] c"y\00", [2 x i8] c"z\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"~\00", [2 x i8] c"\7F\00", [2 x i8] c"\80\8C", [2 x i8] c"\81\00", [2 x i8] c"\82\0E", [2 x i8] c"\83\00", [2 x i8] c"\84\00", [2 x i8] c"\85\00", [2 x i8] c"\86\00", [2 x i8] c"\87\00", [2 x i8] c"\88\08", [2 x i8] c"\89\00", [2 x i8] c"\8A\0E", [2 x i8] c"\8B\A7", [2 x i8] c"\8C\88", [2 x i8] c"\8DG", [2 x i8] c"\8E\AA", [2 x i8] c"\8F\02", [2 x i8] c"\90\00", [2 x i8] c"\91\00", [2 x i8] c"\92\00", [2 x i8] c"\93\00", [2 x i8] c"\94\00", [2 x i8] c"\95\00", [2 x i8] c"\96\00", [2 x i8] c"\97\E3", [2 x i8] c"\98\00", [2 x i8] c"\99\00", [2 x i8] c"\9A\00", [2 x i8] c"\9B\00", [2 x i8] c"\9C\00", [2 x i8] c"\9D\00", [2 x i8] c"\9E\00", [2 x i8] c"\9F\00", [2 x i8] c"\A0\00", [2 x i8] c"\A1\00", [2 x i8] c"\A2\00", [2 x i8] c"\A3\00", [2 x i8] c"\A4\00", [2 x i8] c"\A5\00", [2 x i8] c"\A6\10", [2 x i8] c"\A7\00", [2 x i8] c"\A8\18", [2 x i8] c"\A9\00", [2 x i8] c"\AA\00", [2 x i8] c"\AB\00", [2 x i8] c"\AC\00", [2 x i8] c"\AD\00", [2 x i8] c"\AE\00", [2 x i8] c"\AF\18", [2 x i8] c"\B0\18", [2 x i8] c"\B10", [2 x i8] c"\B2\00", [2 x i8] c"\B3\00", [2 x i8] c"\B4\00", [2 x i8] c"\B5\00", [2 x i8] c"\B6\00", [2 x i8] c"\B7\00", [2 x i8] c"\B8\00", [2 x i8] c"\B9\00", [2 x i8] c"\BA\00", [2 x i8] c"\BB\03", [2 x i8] c"\BC\01", [2 x i8] c"\BD\00", [2 x i8] c"\BE\00", [2 x i8] c"\BF\00", [2 x i8] c"\C0\10", [2 x i8] c"\C1 ", [2 x i8] c"\C2\00", [2 x i8] c"\C3 ", [2 x i8] c"\C4\00", [2 x i8] c"\C5,", [2 x i8] c"\C6\1C", [2 x i8] c"\C7\10", [2 x i8] c"\C8\10", [2 x i8] c"\C9\01", [2 x i8] c"\CAh", [2 x i8] c"\CB\A7", [2 x i8] c"\CC<", [2 x i8] c"\CD\09", [2 x i8] c"\CE\00", [2 x i8] c"\CF ", [2 x i8] c"\D0@", [2 x i8] c"\D1\10", [2 x i8] c"\D2\00", [2 x i8] c"\D3\00", [2 x i8] c"\D4 ", [2 x i8] c"\D5(", [2 x i8] c"\D6\A0", [2 x i8] c"\D7*", [2 x i8] c"\D8\00", [2 x i8] c"\D9\00", [2 x i8] c"\DA\00", [2 x i8] c"\DB\00", [2 x i8] c"\DC\00", [2 x i8] c"\DD\00", [2 x i8] c"\DE\00", [2 x i8] c"\DF\00", [2 x i8] c"\E0\00", [2 x i8] c"\E1\D3", [2 x i8] c"\E2\C0", [2 x i8] c"\E3\00", [2 x i8] c"\E4\00", [2 x i8] c"\E5\10", [2 x i8] c"\E6\00", [2 x i8] c"\E7\12", [2 x i8] c"\E8\12", [2 x i8] c"\E94", [2 x i8] c"\EA\00", [2 x i8] c"\EB\FF", [2 x i8] c"\ECy", [2 x i8] c"\ED ", [2 x i8] c"\EE0", [2 x i8] c"\EF\01", [2 x i8] c"\F0\00", [2 x i8] c"\F1>", [2 x i8] c"\F2\00", [2 x i8] c"\F3\00", [2 x i8] c"\F4\00", [2 x i8] c"\F5\00", [2 x i8] c"\F6\00", [2 x i8] c"\F7\00", [2 x i8] c"\F8\00", [2 x i8] c"\F9\00", [2 x i8] c"\FA\00", [2 x i8] c"\FB\00", [2 x i8] c"\FC\00", [2 x i8] c"\FD\00", [2 x i8] c"\FE\00", [2 x i8] c"\FF\00"], [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 5, i64 8, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"awc_frame_time\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1684, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1928, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1970, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"by_vt3253_init_tab_rfmd\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 53, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"byVT3253B0_RFMD\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 503, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"byVT3253B0_AGC4_RFMD2959\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 765, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"byVT3253B0_AIROHA2230\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 966, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"byVT3253B0_AGC\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1488, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"byVT3253B0_UW2451\00", align 1
@___asan_gen_.46 = private constant [37 x i8] c"../drivers/staging/vt6655/baseband.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1227, i32 22 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @awc_frame_time, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @by_vt3253_init_tab_rfmd, ptr @byVT3253B0_RFMD, ptr @byVT3253B0_AGC4_RFMD2959, ptr @byVT3253B0_AIROHA2230, ptr @byVT3253B0_AGC, ptr @byVT3253B0_UW2451], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @awc_frame_time to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @by_vt3253_init_tab_rfmd to i32), i32 892, i32 1088, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byVT3253B0_RFMD to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byVT3253B0_AGC4_RFMD2959 to i32), i32 390, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byVT3253B0_AIROHA2230 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byVT3253B0_AGC to i32), i32 386, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byVT3253B0_UW2451 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bb_get_frame_time(i8 noundef zeroext %preamble_type, i8 noundef zeroext %by_pkt_type, i32 noundef %cb_frame_length, i16 noundef zeroext %tx_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %tx_rate)
  %cmp = icmp ugt i16 %tx_rate, 11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %tx_rate to i32
  %arrayidx = getelementptr [12 x i16], ptr @awc_frame_time, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %tx_rate)
  %cmp3 = icmp ult i16 %tx_rate, 4
  br i1 %cmp3, label %if.then5, label %if.end17

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %preamble_type)
  %cmp7 = icmp eq i8 %preamble_type, 1
  %. = select i1 %cmp7, i32 96, i32 192
  %mul = mul i32 %cb_frame_length, 80
  %div = udiv i32 %mul, %conv2
  %mul11 = mul i32 %div, %conv2
  %div12 = udiv i32 %mul11, 80
  call void @__sanitizer_cov_trace_cmp4(i32 %div12, i32 %cb_frame_length)
  %cmp13.not = icmp ne i32 %div12, %cb_frame_length
  %inc = zext i1 %cmp13.not to i32
  %frame_time.0 = add i32 %div, %.
  %add = add i32 %frame_time.0, %inc
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul18 = shl i32 %cb_frame_length, 3
  %add19 = add i32 %mul18, 22
  %div20 = udiv i32 %add19, %conv2
  %mul21 = mul i32 %div20, %conv2
  %sub = add i32 %mul21, -22
  %div2256 = lshr i32 %sub, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div2256, i32 %cb_frame_length)
  %cmp23.not = icmp ne i32 %div2256, %cb_frame_length
  %inc26 = zext i1 %cmp23.not to i32
  %spec.select = add i32 %div20, %inc26
  %mul28 = shl i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %by_pkt_type)
  %cmp30.not = icmp eq i8 %by_pkt_type, 0
  %add33 = add i32 %mul28, 6
  %frame_time.2 = select i1 %cmp30.not, i32 %mul28, i32 %add33
  %add35 = add i32 %frame_time.2, 20
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then5 ], [ %add35, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vnt_get_phy_field(ptr nocapture noundef readonly %priv, i32 noundef %frame_length, i16 noundef zeroext %tx_rate, i8 noundef zeroext %pkt_type, ptr noundef writeonly %phy) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %preamble_type1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 72
  %0 = ptrtoint ptr %preamble_type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %preamble_type1, align 1
  %mul = shl i32 %frame_length, 3
  %2 = zext i16 %tx_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %tx_rate, label %sw.default [
    i16 0, label %entry.sw.epilog_crit_edge
    i16 1, label %sw.bb2
    i16 2, label %sw.bb7
    i16 3, label %sw.bb24
    i16 4, label %sw.bb44
    i16 5, label %sw.bb53
    i16 6, label %sw.bb62
    i16 7, label %sw.bb71
    i16 8, label %sw.bb80
    i16 9, label %sw.bb89
    i16 10, label %sw.bb98
    i16 11, label %sw.bb107
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div192 = lshr exact i32 %mul, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %. = select i1 %cmp, i8 9, i8 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul8 = mul i32 %frame_length, 80
  %div9 = udiv i32 %mul8, 55
  %mul10 = mul nuw i32 %div9, 55
  %div11 = udiv i32 %mul10, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %mul)
  %cmp12.not = icmp ne i32 %div11, %mul
  %inc = zext i1 %cmp12.not to i32
  %spec.select = add nuw nsw i32 %div9, %inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp17 = icmp eq i8 %1, 1
  %.201 = select i1 %cmp17, i8 10, i8 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div25 = udiv i32 %mul, 11
  %mul26 = mul nuw i32 %div25, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul26)
  %cmp27.not = icmp ne i32 %mul, %mul26
  %sub = sub i32 %mul, %mul26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp31 = icmp ult i32 %sub, 4
  %inc30 = zext i1 %cmp27.not to i32
  %count.1 = add nuw nsw i32 %div25, %inc30
  %narrow = and i1 %cmp31, %cmp27.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp37 = icmp eq i8 %1, 1
  %.202 = select i1 %cmp37, i8 11, i8 3
  %phi.sel = select i1 %narrow, i8 -128, i8 0
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp46 = icmp eq i8 %pkt_type, 0
  br i1 %cmp46, label %sw.bb44.if.else134.sink.split_crit_edge, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb44.if.else134.sink.split_crit_edge:          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp55 = icmp eq i8 %pkt_type, 0
  br i1 %cmp55, label %sw.bb53.if.else134.sink.split_crit_edge, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb53.if.else134.sink.split_crit_edge:          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp64 = icmp eq i8 %pkt_type, 0
  br i1 %cmp64, label %sw.bb62.if.else134.sink.split_crit_edge, label %sw.bb62.sw.epilog_crit_edge

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb62.if.else134.sink.split_crit_edge:          ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp73 = icmp eq i8 %pkt_type, 0
  br i1 %cmp73, label %sw.bb71.if.else134.sink.split_crit_edge, label %sw.bb71.sw.epilog_crit_edge

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb71.if.else134.sink.split_crit_edge:          ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp82 = icmp eq i8 %pkt_type, 0
  br i1 %cmp82, label %sw.bb80.if.else134.sink.split_crit_edge, label %sw.bb80.sw.epilog_crit_edge

sw.bb80.sw.epilog_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb80.if.else134.sink.split_crit_edge:          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp91 = icmp eq i8 %pkt_type, 0
  br i1 %cmp91, label %sw.bb89.if.else134.sink.split_crit_edge, label %sw.bb89.sw.epilog_crit_edge

sw.bb89.sw.epilog_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb89.if.else134.sink.split_crit_edge:          ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb98:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp100 = icmp eq i8 %pkt_type, 0
  br i1 %cmp100, label %sw.bb98.if.else134.sink.split_crit_edge, label %sw.bb98.sw.epilog_crit_edge

sw.bb98.sw.epilog_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb98.if.else134.sink.split_crit_edge:          ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.bb107:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp109 = icmp eq i8 %pkt_type, 0
  br i1 %cmp109, label %sw.bb107.if.else134.sink.split_crit_edge, label %sw.bb107.sw.epilog_crit_edge

sw.bb107.sw.epilog_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb107.if.else134.sink.split_crit_edge:         ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_type)
  %cmp117 = icmp eq i8 %pkt_type, 0
  br i1 %cmp117, label %sw.default.if.else134.sink.split_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default.if.else134.sink.split_crit_edge:       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134.sink.split

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb107.sw.epilog_crit_edge, %sw.bb98.sw.epilog_crit_edge, %sw.bb89.sw.epilog_crit_edge, %sw.bb80.sw.epilog_crit_edge, %sw.bb71.sw.epilog_crit_edge, %sw.bb62.sw.epilog_crit_edge, %sw.bb53.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge, %sw.bb24, %sw.bb7, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %., %sw.bb2 ], [ %.201, %sw.bb7 ], [ %.202, %sw.bb24 ], [ -117, %sw.bb44.sw.epilog_crit_edge ], [ -113, %sw.bb53.sw.epilog_crit_edge ], [ -118, %sw.bb62.sw.epilog_crit_edge ], [ -114, %sw.bb71.sw.epilog_crit_edge ], [ -119, %sw.bb80.sw.epilog_crit_edge ], [ -115, %sw.bb89.sw.epilog_crit_edge ], [ -120, %sw.bb98.sw.epilog_crit_edge ], [ -116, %sw.bb107.sw.epilog_crit_edge ], [ -116, %sw.default.sw.epilog_crit_edge ]
  %count.2 = phi i32 [ %mul, %entry.sw.epilog_crit_edge ], [ %div192, %sw.bb2 ], [ %spec.select, %sw.bb7 ], [ %count.1, %sw.bb24 ], [ 0, %sw.bb44.sw.epilog_crit_edge ], [ 0, %sw.bb53.sw.epilog_crit_edge ], [ 0, %sw.bb62.sw.epilog_crit_edge ], [ 0, %sw.bb71.sw.epilog_crit_edge ], [ 0, %sw.bb80.sw.epilog_crit_edge ], [ 0, %sw.bb89.sw.epilog_crit_edge ], [ 0, %sw.bb98.sw.epilog_crit_edge ], [ 0, %sw.bb107.sw.epilog_crit_edge ], [ 0, %sw.default.sw.epilog_crit_edge ]
  %ext_bit.1.shrunk = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb7 ], [ %phi.sel, %sw.bb24 ], [ 0, %sw.bb44.sw.epilog_crit_edge ], [ 0, %sw.bb53.sw.epilog_crit_edge ], [ 0, %sw.bb62.sw.epilog_crit_edge ], [ 0, %sw.bb71.sw.epilog_crit_edge ], [ 0, %sw.bb80.sw.epilog_crit_edge ], [ 0, %sw.bb89.sw.epilog_crit_edge ], [ 0, %sw.bb98.sw.epilog_crit_edge ], [ 0, %sw.bb107.sw.epilog_crit_edge ], [ 0, %sw.default.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %phy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pkt_type)
  %cmp125 = icmp eq i8 %pkt_type, 1
  br i1 %cmp125, label %sw.epilog.if.end138_crit_edge, label %sw.epilog.if.else134_crit_edge

sw.epilog.if.else134_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else134

sw.epilog.if.end138_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.else134.sink.split:                            ; preds = %sw.default.if.else134.sink.split_crit_edge, %sw.bb107.if.else134.sink.split_crit_edge, %sw.bb98.if.else134.sink.split_crit_edge, %sw.bb89.if.else134.sink.split_crit_edge, %sw.bb80.if.else134.sink.split_crit_edge, %sw.bb71.if.else134.sink.split_crit_edge, %sw.bb62.if.else134.sink.split_crit_edge, %sw.bb53.if.else134.sink.split_crit_edge, %sw.bb44.if.else134.sink.split_crit_edge
  %.sink199 = phi i8 [ -101, %sw.bb44.if.else134.sink.split_crit_edge ], [ -97, %sw.bb53.if.else134.sink.split_crit_edge ], [ -102, %sw.bb62.if.else134.sink.split_crit_edge ], [ -98, %sw.bb71.if.else134.sink.split_crit_edge ], [ -103, %sw.bb80.if.else134.sink.split_crit_edge ], [ -99, %sw.bb89.if.else134.sink.split_crit_edge ], [ -104, %sw.bb98.if.else134.sink.split_crit_edge ], [ -100, %sw.bb107.if.else134.sink.split_crit_edge ], [ -100, %sw.default.if.else134.sink.split_crit_edge ]
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink199, ptr %phy, align 1
  br label %if.else134

if.else134:                                       ; preds = %if.else134.sink.split, %sw.epilog.if.else134_crit_edge
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %sw.epilog.if.end138_crit_edge
  %.sink203 = phi i8 [ 0, %if.else134 ], [ %ext_bit.1.shrunk, %sw.epilog.if.end138_crit_edge ]
  %frame_length.sink = phi i32 [ %frame_length, %if.else134 ], [ %count.2, %sw.epilog.if.end138_crit_edge ]
  %service135 = getelementptr inbounds %struct.vnt_phy_field, ptr %phy, i32 0, i32 1
  %5 = ptrtoint ptr %service135 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink203, ptr %service135, align 1
  %conv136 = trunc i32 %frame_length.sink to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv136)
  %len137 = getelementptr inbounds %struct.vnt_phy_field, ptr %phy, i32 0, i32 2
  %7 = ptrtoint ptr %len137 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %len137, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bb_read_embedded(ptr nocapture noundef readonly %priv, i8 noundef zeroext %by_bb_addr, ptr nocapture noundef writeonly %pby_data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %by_bb_addr) #6, !srcloc !34
  %add.ptr1 = getelementptr i8, ptr %1, i32 108
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %3 = or i8 %2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %3) #6, !srcloc !34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.034 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.034, 1
  %cmp = icmp ult i16 %ww.034, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %ww.0.lcssa = phi i16 [ %ww.034, %for.body.for.end_crit_edge ], [ -16, %for.inc.for.end_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %1, i32 111
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %7 = ptrtoint ptr %pby_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pby_data, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa)
  %cmp12 = icmp eq i16 %ww.0.lcssa, -16
  br i1 %cmp12, label %do.body15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bb_read_embedded.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bb_read_embedded, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !37

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bb_read_embedded.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body15, %for.end.cleanup_crit_edge
  %8 = xor i1 %cmp12, true
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bb_write_embedded(ptr nocapture noundef readonly %priv, i8 noundef zeroext %by_bb_addr, i8 noundef zeroext %by_data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %by_bb_addr) #6, !srcloc !34
  %add.ptr1 = getelementptr i8, ptr %1, i32 111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %by_data) #6, !srcloc !34
  %add.ptr2 = getelementptr i8, ptr %1, i32 108
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %3 = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %3) #6, !srcloc !34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.036 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.036, 1
  %cmp = icmp ult i16 %ww.036, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body14

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body14:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bb_write_embedded.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bb_write_embedded, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !37

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bb_write_embedded.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body14, %for.body.cleanup_crit_edge
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bb_vt3253_init(ptr noundef %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %2 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %byRFType, align 1
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %4 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %local_id, align 4
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %if.else426 [
    i8 1, label %if.then
    i8 3, label %entry.for.body80.preheader_crit_edge
    i8 14, label %entry.for.body80.preheader_crit_edge647
    i8 5, label %entry.for.body137_crit_edge
    i8 8, label %entry.for.body205_crit_edge
    i8 9, label %entry.for.body304_crit_edge
    i8 10, label %entry.for.body370_crit_edge
  ]

entry.for.body370_crit_edge:                      ; preds = %entry
  br label %for.body370

entry.for.body304_crit_edge:                      ; preds = %entry
  br label %for.body304

entry.for.body205_crit_edge:                      ; preds = %entry
  br label %for.body205

entry.for.body137_crit_edge:                      ; preds = %entry
  br label %for.body137

entry.for.body80.preheader_crit_edge647:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80.preheader

entry.for.body80.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80.preheader

for.body80.preheader:                             ; preds = %entry.for.body80.preheader_crit_edge, %entry.for.body80.preheader_crit_edge647
  br label %for.body80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp3 = icmp ult i8 %5, 2
  br i1 %cmp3, label %if.then.for.body_crit_edge, label %if.then.for.body17_crit_edge

if.then.for.body17_crit_edge:                     ; preds = %if.then
  br label %for.body17

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %result.0634 = phi i8 [ %and, %for.body.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %ii.0633 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr [446 x [2 x i8]], ptr @by_vt3253_init_tab_rfmd, i32 0, i32 %ii.0633
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [446 x [2 x i8]], ptr @by_vt3253_init_tab_rfmd, i32 0, i32 %ii.0633, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %call = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %8, i8 noundef zeroext %10)
  %conv11 = zext i1 %call to i8
  %and = and i8 %result.0634, %conv11
  %inc = add nuw nsw i32 %ii.0633, 1
  %exitcond646.not = icmp eq i32 %inc, 446
  br i1 %exitcond646.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.then.for.body17_crit_edge
  %result.1630 = phi i8 [ %and26, %for.body17.for.body17_crit_edge ], [ 1, %if.then.for.body17_crit_edge ]
  %ii.1629 = phi i32 [ %inc30, %for.body17.for.body17_crit_edge ], [ 0, %if.then.for.body17_crit_edge ]
  %arrayidx18 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_RFMD, i32 0, i32 %ii.1629
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %arrayidx21 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_RFMD, i32 0, i32 %ii.1629, i32 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %call22 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %12, i8 noundef zeroext %14)
  %conv23 = zext i1 %call22 to i8
  %and26 = and i8 %result.1630, %conv23
  %inc30 = add nuw nsw i32 %ii.1629, 1
  %exitcond644.not = icmp eq i32 %inc30, 256
  br i1 %exitcond644.not, label %for.body17.for.body35_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.body17.for.body35_crit_edge:                  ; preds = %for.body17
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body17.for.body35_crit_edge
  %result.2632 = phi i8 [ %and44, %for.body35.for.body35_crit_edge ], [ %and26, %for.body17.for.body35_crit_edge ]
  %ii.2631 = phi i32 [ %inc48, %for.body35.for.body35_crit_edge ], [ 0, %for.body17.for.body35_crit_edge ]
  %arrayidx36 = getelementptr [195 x [2 x i8]], ptr @byVT3253B0_AGC4_RFMD2959, i32 0, i32 %ii.2631
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 1
  %arrayidx39 = getelementptr [195 x [2 x i8]], ptr @byVT3253B0_AGC4_RFMD2959, i32 0, i32 %ii.2631, i32 1
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx39, align 1
  %call40 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %16, i8 noundef zeroext %18)
  %conv41 = zext i1 %call40 to i8
  %and44 = and i8 %result.2632, %conv41
  %inc48 = add nuw nsw i32 %ii.2631, 1
  %exitcond645.not = icmp eq i32 %inc48, 195
  br i1 %exitcond645.not, label %for.end49, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.end49:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 587202560) #6, !srcloc !39
  %add.ptr50 = getelementptr i8, ptr %1, i32 119
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr50) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %20 = or i8 %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 %20) #6, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %for.end49, %for.body.if.end_crit_edge
  %result.3 = phi i8 [ %and44, %for.end49 ], [ %and, %for.body.if.end_crit_edge ]
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %21 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 24, ptr %abyBBVGA, align 2
  %arrayidx57 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %22 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %23 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx59, align 2
  %arrayidx61 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %24 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx61, align 1
  %dbm_threshold = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %25 = ptrtoint ptr %dbm_threshold to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -70, ptr %dbm_threshold, align 4
  %arrayidx64 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %26 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -50, ptr %arrayidx64, align 4
  %arrayidx66 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %27 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %result.3)
  %extract.t = icmp ne i8 %result.3, 0
  br label %if.end434

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.body80.preheader
  %result.4626 = phi i8 [ %and89, %for.body80.for.body80_crit_edge ], [ 1, %for.body80.preheader ]
  %ii.3625 = phi i32 [ %inc93, %for.body80.for.body80_crit_edge ], [ 0, %for.body80.preheader ]
  %arrayidx81 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.3625
  %29 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx81, align 1
  %arrayidx84 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.3625, i32 1
  %31 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx84, align 1
  %call85 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %30, i8 noundef zeroext %32)
  %conv86 = zext i1 %call85 to i8
  %and89 = and i8 %result.4626, %conv86
  %inc93 = add nuw nsw i32 %ii.3625, 1
  %exitcond642.not = icmp eq i32 %inc93, 256
  br i1 %exitcond642.not, label %for.body80.for.body98_crit_edge, label %for.body80.for.body80_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80

for.body80.for.body98_crit_edge:                  ; preds = %for.body80
  br label %for.body98

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.body80.for.body98_crit_edge
  %result.5628 = phi i8 [ %and107, %for.body98.for.body98_crit_edge ], [ %and89, %for.body80.for.body98_crit_edge ]
  %ii.4627 = phi i32 [ %inc111, %for.body98.for.body98_crit_edge ], [ 0, %for.body80.for.body98_crit_edge ]
  %arrayidx99 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.4627
  %33 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx99, align 1
  %arrayidx102 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.4627, i32 1
  %35 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx102, align 1
  %call103 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %34, i8 noundef zeroext %36)
  %conv104 = zext i1 %call103 to i8
  %and107 = and i8 %result.5628, %conv104
  %inc111 = add nuw nsw i32 %ii.4627, 1
  %exitcond643.not = icmp eq i32 %inc111, 193
  br i1 %exitcond643.not, label %for.end112, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body98

for.end112:                                       ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #8
  %abyBBVGA113 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %37 = ptrtoint ptr %abyBBVGA113 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 28, ptr %abyBBVGA113, align 2
  %arrayidx116 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %38 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %arrayidx116, align 1
  %arrayidx118 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %39 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx118, align 2
  %arrayidx120 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %40 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx120, align 1
  %dbm_threshold121 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %41 = ptrtoint ptr %dbm_threshold121 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -70, ptr %dbm_threshold121, align 4
  %arrayidx124 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %42 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -48, ptr %arrayidx124, align 4
  %arrayidx126 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %43 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx126, align 4
  %arrayidx128 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %44 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx128, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and107)
  %extract.t602 = icmp ne i8 %and107, 0
  br label %if.end434

for.body137:                                      ; preds = %for.body137.for.body137_crit_edge, %entry.for.body137_crit_edge
  %result.6622 = phi i8 [ %and146, %for.body137.for.body137_crit_edge ], [ 1, %entry.for.body137_crit_edge ]
  %ii.5621 = phi i32 [ %inc150, %for.body137.for.body137_crit_edge ], [ 0, %entry.for.body137_crit_edge ]
  %arrayidx138 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_UW2451, i32 0, i32 %ii.5621
  %45 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx138, align 1
  %arrayidx141 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_UW2451, i32 0, i32 %ii.5621, i32 1
  %47 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx141, align 1
  %call142 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %46, i8 noundef zeroext %48)
  %conv143 = zext i1 %call142 to i8
  %and146 = and i8 %result.6622, %conv143
  %inc150 = add nuw nsw i32 %ii.5621, 1
  %exitcond640.not = icmp eq i32 %inc150, 256
  br i1 %exitcond640.not, label %for.body137.for.body155_crit_edge, label %for.body137.for.body137_crit_edge

for.body137.for.body137_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body137

for.body137.for.body155_crit_edge:                ; preds = %for.body137
  br label %for.body155

for.body155:                                      ; preds = %for.body155.for.body155_crit_edge, %for.body137.for.body155_crit_edge
  %result.7624 = phi i8 [ %and164, %for.body155.for.body155_crit_edge ], [ %and146, %for.body137.for.body155_crit_edge ]
  %ii.6623 = phi i32 [ %inc168, %for.body155.for.body155_crit_edge ], [ 0, %for.body137.for.body155_crit_edge ]
  %arrayidx156 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.6623
  %49 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx156, align 1
  %arrayidx159 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.6623, i32 1
  %51 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx159, align 1
  %call160 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %50, i8 noundef zeroext %52)
  %conv161 = zext i1 %call160 to i8
  %and164 = and i8 %result.7624, %conv161
  %inc168 = add nuw nsw i32 %ii.6623, 1
  %exitcond641.not = icmp eq i32 %inc168, 193
  br i1 %exitcond641.not, label %for.end169, label %for.body155.for.body155_crit_edge

for.body155.for.body155_crit_edge:                ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body155

for.end169:                                       ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr170 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr170, i8 35) #6, !srcloc !34
  %add.ptr173 = getelementptr i8, ptr %1, i32 119
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr173) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %54 = or i8 %53, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr173, i8 %54) #6, !srcloc !34
  %abyBBVGA181 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %55 = ptrtoint ptr %abyBBVGA181 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 20, ptr %abyBBVGA181, align 2
  %arrayidx184 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %56 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 10, ptr %arrayidx184, align 1
  %arrayidx186 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %57 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx186, align 2
  %arrayidx188 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %58 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx188, align 1
  %dbm_threshold189 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %59 = ptrtoint ptr %dbm_threshold189 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -60, ptr %dbm_threshold189, align 4
  %arrayidx192 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %60 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -50, ptr %arrayidx192, align 4
  %arrayidx194 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %61 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx194, align 4
  %arrayidx196 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %62 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx196, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and164)
  %extract.t603 = icmp ne i8 %and164, 0
  br label %if.end434

for.body205:                                      ; preds = %for.body205.for.body205_crit_edge, %entry.for.body205_crit_edge
  %result.8.off0618 = phi i32 [ %and214, %for.body205.for.body205_crit_edge ], [ 1, %entry.for.body205_crit_edge ]
  %ii.7617 = phi i32 [ %inc218, %for.body205.for.body205_crit_edge ], [ 0, %entry.for.body205_crit_edge ]
  %arrayidx206 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_UW2451, i32 0, i32 %ii.7617
  %63 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx206, align 1
  %arrayidx209 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_UW2451, i32 0, i32 %ii.7617, i32 1
  %65 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx209, align 1
  %call210 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %64, i8 noundef zeroext %66)
  %conv211 = zext i1 %call210 to i32
  %and214 = and i32 %result.8.off0618, %conv211
  %inc218 = add nuw nsw i32 %ii.7617, 1
  %exitcond638.not = icmp eq i32 %inc218, 256
  br i1 %exitcond638.not, label %for.end219, label %for.body205.for.body205_crit_edge

for.body205.for.body205_crit_edge:                ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body205

for.end219:                                       ; preds = %for.body205
  %call220 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -41, i8 noundef zeroext 6)
  %conv221 = zext i1 %call220 to i32
  %and224 = and i32 %and214, %conv221
  %call227 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -112, i8 noundef zeroext 32)
  %conv228 = zext i1 %call227 to i32
  %and231 = and i32 %and224, %conv228
  %call234 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -105, i8 noundef zeroext -21)
  %conv235 = zext i1 %call234 to i32
  %and238 = and i32 %and231, %conv235
  %call241 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -90, i8 noundef zeroext 0)
  %conv242 = zext i1 %call241 to i32
  %and245 = and i32 %and238, %conv242
  %call248 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -88, i8 noundef zeroext 48)
  %conv249 = zext i1 %call248 to i32
  %and252 = and i32 %and245, %conv249
  %call255 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -80, i8 noundef zeroext 88)
  %conv256 = zext i1 %call255 to i32
  %and259 = and i32 %and252, %conv256
  %67 = trunc i32 %and259 to i8
  br label %for.body265

for.body265:                                      ; preds = %for.body265.for.body265_crit_edge, %for.end219
  %result.9620 = phi i8 [ %67, %for.end219 ], [ %and274, %for.body265.for.body265_crit_edge ]
  %ii.8619 = phi i32 [ 0, %for.end219 ], [ %inc278, %for.body265.for.body265_crit_edge ]
  %arrayidx266 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.8619
  %68 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx266, align 1
  %arrayidx269 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.8619, i32 1
  %70 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx269, align 1
  %call270 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %69, i8 noundef zeroext %71)
  %conv271 = zext i1 %call270 to i8
  %and274 = and i8 %result.9620, %conv271
  %inc278 = add nuw nsw i32 %ii.8619, 1
  %exitcond639.not = icmp eq i32 %inc278, 193
  br i1 %exitcond639.not, label %for.end279, label %for.body265.for.body265_crit_edge

for.body265.for.body265_crit_edge:                ; preds = %for.body265
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body265

for.end279:                                       ; preds = %for.body265
  call void @__sanitizer_cov_trace_pc() #8
  %abyBBVGA280 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %72 = ptrtoint ptr %abyBBVGA280 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 20, ptr %abyBBVGA280, align 2
  %arrayidx283 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %73 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 10, ptr %arrayidx283, align 1
  %arrayidx285 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %74 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx285, align 2
  %arrayidx287 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %75 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx287, align 1
  %dbm_threshold288 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %76 = ptrtoint ptr %dbm_threshold288 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -60, ptr %dbm_threshold288, align 4
  %arrayidx291 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %77 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -50, ptr %arrayidx291, align 4
  %arrayidx293 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %78 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx293, align 4
  %arrayidx295 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %79 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx295, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and274)
  %extract.t604 = icmp ne i8 %and274, 0
  br label %if.end434

for.body304:                                      ; preds = %for.body304.for.body304_crit_edge, %entry.for.body304_crit_edge
  %result.10614 = phi i8 [ %and313, %for.body304.for.body304_crit_edge ], [ 1, %entry.for.body304_crit_edge ]
  %ii.9613 = phi i32 [ %inc317, %for.body304.for.body304_crit_edge ], [ 0, %entry.for.body304_crit_edge ]
  %arrayidx305 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.9613
  %80 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx305, align 1
  %arrayidx308 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.9613, i32 1
  %82 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx308, align 1
  %call309 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %81, i8 noundef zeroext %83)
  %conv310 = zext i1 %call309 to i8
  %and313 = and i8 %result.10614, %conv310
  %inc317 = add nuw nsw i32 %ii.9613, 1
  %exitcond636.not = icmp eq i32 %inc317, 256
  br i1 %exitcond636.not, label %for.body304.for.body322_crit_edge, label %for.body304.for.body304_crit_edge

for.body304.for.body304_crit_edge:                ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body304

for.body304.for.body322_crit_edge:                ; preds = %for.body304
  br label %for.body322

for.body322:                                      ; preds = %for.body322.for.body322_crit_edge, %for.body304.for.body322_crit_edge
  %result.11616 = phi i8 [ %and331, %for.body322.for.body322_crit_edge ], [ %and313, %for.body304.for.body322_crit_edge ]
  %ii.10615 = phi i32 [ %inc335, %for.body322.for.body322_crit_edge ], [ 0, %for.body304.for.body322_crit_edge ]
  %arrayidx323 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.10615
  %84 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx323, align 1
  %arrayidx326 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.10615, i32 1
  %86 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx326, align 1
  %call327 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %85, i8 noundef zeroext %87)
  %conv328 = zext i1 %call327 to i8
  %and331 = and i8 %result.11616, %conv328
  %inc335 = add nuw nsw i32 %ii.10615, 1
  %exitcond637.not = icmp eq i32 %inc335, 193
  br i1 %exitcond637.not, label %for.end336, label %for.body322.for.body322_crit_edge

for.body322.for.body322_crit_edge:                ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body322

for.end336:                                       ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #8
  %abyBBVGA337 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %88 = ptrtoint ptr %abyBBVGA337 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 28, ptr %abyBBVGA337, align 2
  %arrayidx340 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %89 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 16, ptr %arrayidx340, align 1
  %arrayidx342 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %90 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx342, align 2
  %arrayidx344 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %91 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx344, align 1
  %dbm_threshold345 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %92 = ptrtoint ptr %dbm_threshold345 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -70, ptr %dbm_threshold345, align 4
  %arrayidx348 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %93 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -48, ptr %arrayidx348, align 4
  %arrayidx350 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %94 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx350, align 4
  %arrayidx352 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %95 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx352, align 4
  %add.ptr354 = getelementptr i8, ptr %1, i32 120
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr354) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %97 = or i16 %96, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr354, i16 %97) #6, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and331)
  %extract.t605 = icmp ne i8 %and331, 0
  br label %if.end434

for.body370:                                      ; preds = %for.body370.for.body370_crit_edge, %entry.for.body370_crit_edge
  %result.12.off0610 = phi i32 [ %and379, %for.body370.for.body370_crit_edge ], [ 1, %entry.for.body370_crit_edge ]
  %ii.11609 = phi i32 [ %inc383, %for.body370.for.body370_crit_edge ], [ 0, %entry.for.body370_crit_edge ]
  %arrayidx371 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.11609
  %98 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx371, align 1
  %arrayidx374 = getelementptr [256 x [2 x i8]], ptr @byVT3253B0_AIROHA2230, i32 0, i32 %ii.11609, i32 1
  %100 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx374, align 1
  %call375 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %99, i8 noundef zeroext %101)
  %conv376 = zext i1 %call375 to i32
  %and379 = and i32 %result.12.off0610, %conv376
  %inc383 = add nuw nsw i32 %ii.11609, 1
  %exitcond.not = icmp eq i32 %inc383, 256
  br i1 %exitcond.not, label %for.end384, label %for.body370.for.body370_crit_edge

for.body370.for.body370_crit_edge:                ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body370

for.end384:                                       ; preds = %for.body370
  %call385 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -41, i8 noundef zeroext 6)
  %conv386 = zext i1 %call385 to i32
  %and389 = and i32 %and379, %conv386
  %102 = trunc i32 %and389 to i8
  br label %for.body395

for.body395:                                      ; preds = %for.body395.for.body395_crit_edge, %for.end384
  %result.13612 = phi i8 [ %102, %for.end384 ], [ %and404, %for.body395.for.body395_crit_edge ]
  %ii.12611 = phi i32 [ 0, %for.end384 ], [ %inc408, %for.body395.for.body395_crit_edge ]
  %arrayidx396 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.12611
  %103 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx396, align 1
  %arrayidx399 = getelementptr [193 x [2 x i8]], ptr @byVT3253B0_AGC, i32 0, i32 %ii.12611, i32 1
  %105 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx399, align 1
  %call400 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext %104, i8 noundef zeroext %106)
  %conv401 = zext i1 %call400 to i8
  %and404 = and i8 %result.13612, %conv401
  %inc408 = add nuw nsw i32 %ii.12611, 1
  %exitcond635.not = icmp eq i32 %inc408, 193
  br i1 %exitcond635.not, label %for.end409, label %for.body395.for.body395_crit_edge

for.body395.for.body395_crit_edge:                ; preds = %for.body395
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body395

for.end409:                                       ; preds = %for.body395
  call void @__sanitizer_cov_trace_pc() #8
  %abyBBVGA410 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %107 = ptrtoint ptr %abyBBVGA410 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 28, ptr %abyBBVGA410, align 2
  %arrayidx413 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 1
  %108 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 16, ptr %arrayidx413, align 1
  %arrayidx415 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 2
  %109 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %arrayidx415, align 2
  %arrayidx417 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 110, i32 3
  %110 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx417, align 1
  %dbm_threshold418 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 111
  %111 = ptrtoint ptr %dbm_threshold418 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -70, ptr %dbm_threshold418, align 4
  %arrayidx421 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 1
  %112 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -48, ptr %arrayidx421, align 4
  %arrayidx423 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 2
  %113 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx423, align 4
  %arrayidx425 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 111, i32 3
  %114 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %arrayidx425, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and404)
  %extract.t606 = icmp ne i8 %and404, 0
  br label %if.end434

if.else426:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bUpdateBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 106
  %115 = ptrtoint ptr %bUpdateBBVGA to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %bUpdateBBVGA, align 2
  %abyBBVGA427 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %116 = ptrtoint ptr %abyBBVGA427 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 28, ptr %abyBBVGA427, align 2
  br label %if.end434

if.end434:                                        ; preds = %if.else426, %for.end409, %for.end336, %for.end279, %for.end169, %for.end112, %if.end
  %result.14.off0 = phi i1 [ %extract.t, %if.end ], [ %extract.t602, %for.end112 ], [ %extract.t603, %for.end169 ], [ %extract.t604, %for.end279 ], [ %extract.t605, %for.end336 ], [ %extract.t606, %for.end409 ], [ true, %if.else426 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp436 = icmp ugt i8 %5, 1
  br i1 %cmp436, label %if.then438, label %if.end434.if.end441_crit_edge

if.end434.if.end441_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end441

if.then438:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #8
  %call439 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 4, i8 noundef zeroext 127)
  %call440 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 13, i8 noundef zeroext 1)
  br label %if.end441

if.end441:                                        ; preds = %if.then438, %if.end434.if.end441_crit_edge
  ret i1 %result.14.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_set_short_slot_time(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  %by_bb_rx_conf = alloca i8, align 1
  %by_bb_vga = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  %0 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %by_bb_rx_conf, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_bb_vga) #6
  %1 = ptrtoint ptr %by_bb_vga to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %by_bb_vga, align 1
  %call = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 10, ptr noundef nonnull %by_bb_rx_conf)
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 82
  %2 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %short_slot_time, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %by_bb_rx_conf, align 1
  %6 = and i8 %5, -33
  %masksel = select i1 %tobool.not, i8 32, i8 0
  %storemerge = or i8 %6, %masksel
  store i8 %storemerge, ptr %by_bb_rx_conf, align 1
  %call4 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext -25, ptr noundef nonnull %by_bb_vga)
  %7 = ptrtoint ptr %by_bb_vga to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %by_bb_vga, align 1
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %9 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %abyBBVGA, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp = icmp eq i8 %8, %10
  br i1 %cmp, label %if.then8, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %5, 32
  %12 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %by_bb_rx_conf, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %entry.if.end12_crit_edge
  %13 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %by_bb_rx_conf, align 1
  %call13 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 10, i8 noundef zeroext %14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_bb_vga) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_set_vga_gain_offset(ptr nocapture noundef %priv, i8 noundef zeroext %by_data) local_unnamed_addr #4 align 64 {
entry:
  %by_bb_rx_conf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  %0 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %by_bb_rx_conf, align 1
  %call = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -25, i8 noundef zeroext %by_data)
  %call1 = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 10, ptr noundef nonnull %by_bb_rx_conf)
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %1 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %abyBBVGA, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %by_data)
  %cmp = icmp eq i8 %2, %by_data
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %by_bb_rx_conf, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %by_bb_rx_conf, align 1
  br label %if.end13

if.else:                                          ; preds = %entry
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 82
  %6 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %short_slot_time, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %by_bb_rx_conf, align 1
  br i1 %tobool.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = and i8 %9, -33
  %11 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %by_bb_rx_conf, align 1
  br label %if.end13

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %12 = or i8 %9, 32
  %13 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %by_bb_rx_conf, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then6, %if.then
  %byBBVGACurrent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 109
  %14 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %by_data, ptr %byBBVGACurrent, align 1
  %15 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %by_bb_rx_conf, align 1
  %call14 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 10, i8 noundef zeroext %16)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_software_reset(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 80, i8 noundef zeroext 64)
  %call1 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 80, i8 noundef zeroext 0)
  %call2 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -100, i8 noundef zeroext 1)
  %call3 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext -100, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_power_save_mode_on(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  %by_org_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_org_data) #6
  %0 = ptrtoint ptr %by_org_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %by_org_data, align 1, !annotation !45
  %call = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 13, ptr noundef nonnull %by_org_data)
  %1 = ptrtoint ptr %by_org_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %by_org_data, align 1
  %3 = or i8 %2, 1
  %call2 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 13, i8 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_org_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_power_save_mode_off(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  %by_org_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_org_data) #6
  %0 = ptrtoint ptr %by_org_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %by_org_data, align 1, !annotation !45
  %call = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 13, ptr noundef nonnull %by_org_data)
  %1 = ptrtoint ptr %by_org_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %by_org_data, align 1
  %3 = and i8 %2, -2
  %call2 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 13, i8 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_org_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_set_tx_antenna_mode(ptr nocapture noundef readonly %priv, i8 noundef zeroext %by_antenna_mode) local_unnamed_addr #4 align 64 {
entry:
  %by_bb_tx_conf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_bb_tx_conf) #6
  %0 = ptrtoint ptr %by_bb_tx_conf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %by_bb_tx_conf, align 1, !annotation !45
  %call = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 9, ptr noundef nonnull %by_bb_tx_conf)
  %1 = zext i8 %by_antenna_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %by_antenna_mode, label %entry.if.end22_crit_edge [
    i8 2, label %if.then
    i8 0, label %if.then7
    i8 1, label %if.then14
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %by_bb_tx_conf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %by_bb_tx_conf, align 1
  %4 = or i8 %3, 2
  store i8 %4, ptr %by_bb_tx_conf, align 1
  br label %if.end22

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %by_bb_tx_conf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %by_bb_tx_conf, align 1
  %7 = and i8 %6, -7
  store i8 %7, ptr %by_bb_tx_conf, align 1
  br label %if.end22

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %by_bb_tx_conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %by_bb_tx_conf, align 1
  %10 = and i8 %9, -7
  %11 = or i8 %10, 4
  store i8 %11, ptr %by_bb_tx_conf, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then7, %if.then, %entry.if.end22_crit_edge
  %12 = ptrtoint ptr %by_bb_tx_conf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %by_bb_tx_conf, align 1
  %call23 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 9, i8 noundef zeroext %13)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_bb_tx_conf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_set_rx_antenna_mode(ptr nocapture noundef readonly %priv, i8 noundef zeroext %by_antenna_mode) local_unnamed_addr #4 align 64 {
entry:
  %by_bb_rx_conf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  %0 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %by_bb_rx_conf, align 1, !annotation !45
  %call = call zeroext i1 @bb_read_embedded(ptr noundef %priv, i8 noundef zeroext 10, ptr noundef nonnull %by_bb_rx_conf)
  %1 = zext i8 %by_antenna_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %by_antenna_mode, label %entry.if.end22_crit_edge [
    i8 2, label %if.then
    i8 0, label %if.then7
    i8 1, label %if.then14
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %by_bb_rx_conf, align 1
  %4 = or i8 %3, 1
  store i8 %4, ptr %by_bb_rx_conf, align 1
  br label %if.end22

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %by_bb_rx_conf, align 1
  %7 = and i8 %6, -4
  store i8 %7, ptr %by_bb_rx_conf, align 1
  br label %if.end22

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %by_bb_rx_conf, align 1
  %10 = and i8 %9, -4
  %11 = or i8 %10, 2
  store i8 %11, ptr %by_bb_rx_conf, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then7, %if.then, %entry.if.end22_crit_edge
  %12 = ptrtoint ptr %by_bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %by_bb_rx_conf, align 1
  %call23 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 10, i8 noundef zeroext %13)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %by_bb_rx_conf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bb_set_deep_sleep(ptr nocapture noundef readonly %priv, i8 noundef zeroext %by_local_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 12, i8 noundef zeroext 23)
  %call1 = tail call zeroext i1 @bb_write_embedded(ptr noundef %priv, i8 noundef zeroext 13, i8 noundef zeroext -71)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/baseband.c", i32 1928, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bb_read_embedded.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/baseband.c", i32 1970, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bb_write_embedded.__UNIQUE_ID_ddebug351, !7, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!10 = !{ptr @awc_frame_time, !11, !"awc_frame_time", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/baseband.c", i32 1684, i32 29}
!12 = !{ptr @by_vt3253_init_tab_rfmd, !13, !"by_vt3253_init_tab_rfmd", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6655/baseband.c", i32 53, i32 28}
!14 = !{ptr @byVT3253B0_RFMD, !15, !"byVT3253B0_RFMD", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6655/baseband.c", i32 503, i32 28}
!16 = !{ptr @byVT3253B0_AGC4_RFMD2959, !17, !"byVT3253B0_AGC4_RFMD2959", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6655/baseband.c", i32 765, i32 15}
!18 = !{ptr @byVT3253B0_AIROHA2230, !19, !"byVT3253B0_AIROHA2230", i1 false, i1 false}
!19 = !{!"../drivers/staging/vt6655/baseband.c", i32 966, i32 15}
!20 = !{ptr @byVT3253B0_AGC, !21, !"byVT3253B0_AGC", i1 false, i1 false}
!21 = !{!"../drivers/staging/vt6655/baseband.c", i32 1488, i32 22}
!22 = !{ptr @byVT3253B0_UW2451, !23, !"byVT3253B0_UW2451", i1 false, i1 false}
!23 = !{!"../drivers/staging/vt6655/baseband.c", i32 1227, i32 22}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152600361}
!34 = !{i64 5059016}
!35 = !{i64 5059411}
!36 = !{i64 2152598756}
!37 = !{i64 2149032831, i64 2149032836, i64 2149032849, i64 2149032893, i64 2149032927, i64 2149032948}
!38 = !{i64 2152601335}
!39 = !{i64 5059213}
!40 = !{i64 5058793}
!41 = !{i64 2152599368}
!42 = !{i64 2152600785}
!43 = !{i64 5058593}
!44 = !{i8 0, i8 2}
!45 = !{!"auto-init"}
