; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/zl10039.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10039.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zl10039_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_zl10039_attach\09\09\09\09"
module asm "\09.long\09__crc_zl10039_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10039_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10039_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10039_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10039_state = type { ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zl10039_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10039_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/zl10039.c\00", [58 x i8] zeroinitializer }, align 32
@zl10039_attach._entry_ptr = internal global ptr @zl10039_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Zarlink ZL10039 DVB-S tuner\00", [36 x i8] zeroinitializer }, align 32
@zl10039_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017Chip ID=%x does not match a known type\0A\00", [54 x i8] zeroinitializer }, align 32
@zl10039_attach._entry_ptr.6 = internal global ptr @zl10039_attach._entry.4, section ".printk_index", align 4
@zl10039_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @zl10039_release, ptr @zl10039_init, ptr @zl10039_sleep, ptr null, ptr null, ptr @zl10039_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zl10039_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017Tuner attached @ i2c address 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@zl10039_attach._entry_ptr.9 = internal global ptr @zl10039_attach._entry.7, section ".printk_index", align 4
@__kstrtab_zl10039_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10039_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10039_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10039_attach to i32), ptr @__kstrtab_zl10039_attach, ptr @__kstrtabns_zl10039_attach }, section "___ksymtab+zl10039_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"zl10039.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"zl10039.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"zl10039.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"zl10039.description=Zarlink ZL10039 DVB-S tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [48 x i8] c"zl10039.author=Jan D. Louw <jd.louw@mweb.co.za>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"zl10039.file=drivers/media/dvb-frontends/zl10039\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"zl10039.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zl10039_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zl10039_read\00", [19 x i8] zeroinitializer }, align 32
@zl10039_read._entry_ptr = internal global ptr @zl10039_read._entry, section ".printk_index", align 4
@zl10039_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: i2c read error\0A\00", [42 x i8] zeroinitializer }, align 32
@zl10039_read._entry_ptr.13 = internal global ptr @zl10039_read._entry.11, section ".printk_index", align 4
@zl10039_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zl10039_release\00", [16 x i8] zeroinitializer }, align 32
@zl10039_release._entry_ptr = internal global ptr @zl10039_release._entry, section ".printk_index", align 4
@zl10039_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zl10039_init\00", [19 x i8] zeroinitializer }, align 32
@zl10039_init._entry_ptr = internal global ptr @zl10039_init._entry, section ".printk_index", align 4
@zl10039_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017Note: i2c write error normal when resetting the tuner\0A\00", [39 x i8] zeroinitializer }, align 32
@zl10039_init._entry_ptr.18 = internal global ptr @zl10039_init._entry.16, section ".printk_index", align 4
@zl10039_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017Tuner power up failed\0A\00", [39 x i8] zeroinitializer }, align 32
@zl10039_init._entry_ptr.21 = internal global ptr @zl10039_init._entry.19, section ".printk_index", align 4
@zl10039_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: i2c wr reg=%04x: len=%zu is too big!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zl10039_write\00", [18 x i8] zeroinitializer }, align 32
@zl10039_write._entry_ptr = internal global ptr @zl10039_write._entry, section ".printk_index", align 4
@zl10039_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zl10039_write._entry_ptr.26 = internal global ptr @zl10039_write._entry.25, section ".printk_index", align 4
@zl10039_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: i2c write error\0A\00", [41 x i8] zeroinitializer }, align 32
@zl10039_write._entry_ptr.29 = internal global ptr @zl10039_write._entry.27, section ".printk_index", align 4
@zl10039_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.30, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zl10039_sleep\00", [18 x i8] zeroinitializer }, align 32
@zl10039_sleep._entry_ptr = internal global ptr @zl10039_sleep._entry, section ".printk_index", align 4
@zl10039_sleep._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017Tuner sleep failed\0A\00", [42 x i8] zeroinitializer }, align 32
@zl10039_sleep._entry_ptr.33 = internal global ptr @zl10039_sleep._entry.31, section ".printk_index", align 4
@zl10039_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.34, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zl10039_set_params\00", [45 x i8] zeroinitializer }, align 32
@zl10039_set_params._entry_ptr = internal global ptr @zl10039_set_params._entry, section ".printk_index", align 4
@zl10039_set_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017Set frequency = %d, symbol rate = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@zl10039_set_params._entry_ptr.37 = internal global ptr @zl10039_set_params._entry.35, section ".printk_index", align 4
@zl10039_set_params._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017Error setting tuner\0A\00", [41 x i8] zeroinitializer }, align 32
@zl10039_set_params._entry_ptr.40 = internal global ptr @zl10039_set_params._entry.38, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 17, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 256, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 282, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 286, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"zl10039_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 244, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 292, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 76, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 79, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 239, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 137, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 143, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 148, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 99, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 105, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 110, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 162, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 167, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 186, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 187, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [41 x i8] c"../drivers/media/dvb-frontends/zl10039.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 231, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_zl10039_attach, ptr @__param_debug, ptr @zl10039_attach._entry, ptr @zl10039_attach._entry.4, ptr @zl10039_attach._entry.7, ptr @zl10039_attach._entry_ptr, ptr @zl10039_attach._entry_ptr.6, ptr @zl10039_attach._entry_ptr.9, ptr @zl10039_init._entry, ptr @zl10039_init._entry.16, ptr @zl10039_init._entry.19, ptr @zl10039_init._entry_ptr, ptr @zl10039_init._entry_ptr.18, ptr @zl10039_init._entry_ptr.21, ptr @zl10039_read._entry, ptr @zl10039_read._entry.11, ptr @zl10039_read._entry_ptr, ptr @zl10039_read._entry_ptr.13, ptr @zl10039_release._entry, ptr @zl10039_release._entry_ptr, ptr @zl10039_set_params._entry, ptr @zl10039_set_params._entry.35, ptr @zl10039_set_params._entry.38, ptr @zl10039_set_params._entry_ptr, ptr @zl10039_set_params._entry_ptr.37, ptr @zl10039_set_params._entry_ptr.40, ptr @zl10039_sleep._entry, ptr @zl10039_sleep._entry.31, ptr @zl10039_sleep._entry_ptr, ptr @zl10039_sleep._entry_ptr.33, ptr @zl10039_write._entry, ptr @zl10039_write._entry.25, ptr @zl10039_write._entry.27, ptr @zl10039_write._entry_ptr, ptr @zl10039_write._entry_ptr.26, ptr @zl10039_write._entry_ptr.29, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @zl10039_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_sleep._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_set_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl10039_set_params._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zl10039_attach(ptr noundef %fe, i8 noundef zeroext %i2c_addr, ptr noundef %i2c) #0 align 64 {
entry:
  %regbuf.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end3.error_crit_edge, label %if.end6

do.end3.error_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end6:                                          ; preds = %do.end3
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i, align 8
  %i2c_addr8 = getelementptr inbounds %struct.zl10039_state, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_addr8 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %i2c_addr, ptr %i2c_addr8, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %if.then10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %id = getelementptr inbounds %struct.zl10039_state, ptr %call7.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regbuf.i.i) #5
  %6 = ptrtoint ptr %regbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %regbuf.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %i2c_addr8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr8, align 4
  %conv2.i.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %regbuf.i.i, ptr %buf3.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv2.i.i, ptr %arrayinit.element.i.i, align 4
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags7.i.i, align 2
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len8.i.i, align 4
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %id, ptr %buf10.i.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end14.do.end13.i.i_crit_edge, label %do.end.i.i

if.end14.do.end13.i.i_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13.i.i

do.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #8
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i, %if.end14.do.end13.i.i_crit_edge
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  %call15.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15.i.i)
  %cmp.not.i.i = icmp eq i32 %call15.i.i, 2
  br i1 %cmp.not.i.i, label %if.end26, label %do.body18.i.i

do.body18.i.i:                                    ; preds = %do.end13.i.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool19.not.i.i, label %do.body18.i.i.if.then17_crit_edge, label %do.end23.i.i

do.body18.i.i.if.then17_crit_edge:                ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

do.end23.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #8
  br label %if.then17

if.then17:                                        ; preds = %do.end23.i.i, %do.body18.i.i.if.then17_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regbuf.i.i) #5
  %23 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.then17.error_crit_edge, label %if.then21

if.then17.error_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call i32 %24(ptr noundef %fe, i32 noundef 0) #5
  br label %error

if.end26:                                         ; preds = %do.end13.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regbuf.i.i) #5
  %25 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool29.not = icmp eq ptr %26, null
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 %26(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id, align 1
  %29 = and i8 %28, 15
  store i8 %29, ptr %id, align 1
  %conv39 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cond = icmp eq i8 %29, 1
  br i1 %cond, label %sw.bb, label %do.body42

sw.bb:                                            ; preds = %if.end34
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %call41 = call i32 @strscpy(ptr noundef %tuner_ops, ptr noundef nonnull @.str.3, i32 noundef 128) #5
  %30 = call ptr @memcpy(ptr %tuner_ops, ptr @zl10039_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %31 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %tuner_priv, align 4
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool58.not = icmp eq i32 %32, 0
  br i1 %tobool58.not, label %sw.bb.cleanup_crit_edge, label %do.end62

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body42:                                        ; preds = %if.end34
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool43.not = icmp eq i32 %33, 0
  br i1 %tobool43.not, label %do.body42.error_crit_edge, label %do.end47

do.body42.error_crit_edge:                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv39) #8
  br label %error

do.end62:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv64 = zext i8 %i2c_addr to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv64) #8
  br label %cleanup

error:                                            ; preds = %do.end47, %do.body42.error_crit_edge, %if.then21, %if.then17.error_crit_edge, %do.end3.error_crit_edge
  call void @kfree(ptr noundef %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end62, %sw.bb.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %fe, %do.end62 ], [ %fe, %sw.bb.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zl10039_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10039_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i58 = alloca [64 x i8], align 1
  %msg.i.i59 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #5
  %5 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.zl10039_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end9.do.end14.i.i_crit_edge, label %do.end9.i.i

if.end9.do.end14.i.i_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

do.end9.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i, %if.end9.do.end14.i.i_crit_edge
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %buf.i.i, align 1
  %arrayidx16.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %arrayidx16.i.i, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call17.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i)
  %cmp18.not.i.i = icmp eq i32 %call17.i.i, 1
  br i1 %cmp18.not.i.i, label %zl10039_writereg.exit, label %do.body21.i.i

do.body21.i.i:                                    ; preds = %do.end14.i.i
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool22.not.i.i, label %do.body12.thread, label %do.body12

do.body12.thread:                                 ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  br label %if.end23

zl10039_writereg.exit:                            ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  br label %if.end23

do.body12:                                        ; preds = %do.body21.i.i
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %do.body12.if.end23_crit_edge, label %do.end17

do.body12.if.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %do.body12.if.end23_crit_edge, %zl10039_writereg.exit, %do.body12.thread
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i58) #5
  %19 = call ptr @memset(ptr %buf.i.i58, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i59) #5
  %20 = getelementptr inbounds i8, ptr %msg.i.i59, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %22 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i61 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i.i59 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i61, ptr %msg.i.i59, align 4
  %flags.i.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i.i62 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i.i62, align 2
  %buf2.i.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59, i32 0, i32 3
  %26 = ptrtoint ptr %buf2.i.i63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i.i58, ptr %buf2.i.i63, align 4
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i64 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i64, label %if.end23.do.end14.i.i70_crit_edge, label %do.end9.i.i66

if.end23.do.end14.i.i70_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i70

do.end9.i.i66:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i70

do.end14.i.i70:                                   ; preds = %do.end9.i.i66, %if.end23.do.end14.i.i70_crit_edge
  %28 = ptrtoint ptr %buf.i.i58 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 15, ptr %buf.i.i58, align 1
  %arrayidx16.i.i67 = getelementptr inbounds [64 x i8], ptr %buf.i.i58, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx16.i.i67 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx16.i.i67, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call17.i.i68 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i.i59, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i68)
  %cmp18.not.i.i69 = icmp eq i32 %call17.i.i68, 1
  br i1 %cmp18.not.i.i69, label %if.end38, label %do.body21.i.i72

do.body21.i.i72:                                  ; preds = %do.end14.i.i70
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not.i.i71 = icmp eq i32 %32, 0
  br i1 %tobool22.not.i.i71, label %do.body27.thread, label %do.body27

do.body27.thread:                                 ; preds = %do.body21.i.i72
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i58) #5
  br label %cleanup

do.body27:                                        ; preds = %do.body21.i.i72
  %call28.i.i73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  %.pr83 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr83)
  %tobool28.not = icmp eq i32 %.pr83, 0
  br i1 %tobool28.not, label %do.body27.cleanup_crit_edge, label %do.end32

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end38:                                         ; preds = %do.end14.i.i70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i58) #5
  %33 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = call i32 %34(ptr noundef %fe, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end38.cleanup_crit_edge, %do.end32, %do.body27.cleanup_crit_edge, %do.body27.thread
  %retval.0 = phi i32 [ -121, %do.end32 ], [ -121, %do.body27.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end38.cleanup_crit_edge ], [ -121, %do.body27.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10039_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #5
  %5 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.zl10039_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end9.do.end14.i.i_crit_edge, label %do.end9.i.i

if.end9.do.end14.i.i_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

do.end9.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i, %if.end9.do.end14.i.i_crit_edge
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %buf.i.i, align 1
  %arrayidx16.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %arrayidx16.i.i, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call17.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i)
  %cmp18.not.i.i = icmp eq i32 %call17.i.i, 1
  br i1 %cmp18.not.i.i, label %if.end23, label %do.body21.i.i

do.body21.i.i:                                    ; preds = %do.end14.i.i
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool22.not.i.i, label %do.body12.thread, label %do.body12

do.body12.thread:                                 ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  br label %cleanup

do.body12:                                        ; preds = %do.body21.i.i
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %do.body12.cleanup_crit_edge, label %do.end17

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end23:                                         ; preds = %do.end14.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 %20(ptr noundef %fe, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %do.end17, %do.body12.cleanup_crit_edge, %do.body12.thread
  %retval.0 = phi i32 [ -121, %do.end17 ], [ -121, %do.body12.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end23.cleanup_crit_edge ], [ -121, %do.body12.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl10039_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i93 = alloca [64 x i8], align 1
  %msg.i.i94 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body4

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body4:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #8
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %do.body4.do.end14_crit_edge, label %do.end9

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %5 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %symbol_rate, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %4, i32 noundef %6) #8
  br label %do.end14

do.end14:                                         ; preds = %do.end9, %do.body4.do.end14_crit_edge, %entry.do.end14_crit_edge
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %mul = mul i32 %8, 1000
  %div16 = udiv i32 %mul, 126387
  %symbol_rate17 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %9 = ptrtoint ptr %symbol_rate17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %symbol_rate17, align 4
  %mul18 = mul i32 %10, 27
  %div19 = udiv i32 %mul18, 32000
  %mul20 = mul nuw nsw i32 %div19, 5088
  %div21 = udiv i32 %mul20, 1011100
  %11 = trunc i32 %div21 to i8
  %conv = add i8 %11, -1
  %shr = lshr i32 %div16, 8
  %12 = trunc i32 %shr to i8
  %conv22 = and i8 %12, 127
  %conv25 = trunc i32 %div16 to i8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %do.end14.if.end36_crit_edge, label %if.then32

do.end14.if.end36_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then32:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.end14.if.end36_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #5
  %15 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %16 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.zl10039_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.end36.do.end14.i.i_crit_edge, label %do.end9.i.i

if.end36.do.end14.i.i_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

do.end9.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end9.i.i, %if.end36.do.end14.i.i_crit_edge
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %buf.i.i, align 1
  %arrayidx16.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %arrayidx16.i.i, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call17.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i)
  %cmp18.not.i.i = icmp eq i32 %call17.i.i, 1
  br i1 %cmp18.not.i.i, label %if.end40, label %do.body21.i.i

do.body21.i.i:                                    ; preds = %do.end14.i.i
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool22.not.i.i, label %do.body21.i.i.zl10039_writereg.exit.thread_crit_edge, label %do.end26.i.i

do.body21.i.i.zl10039_writereg.exit.thread_crit_edge: ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %zl10039_writereg.exit.thread

do.end26.i.i:                                     ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  br label %zl10039_writereg.exit.thread

zl10039_writereg.exit.thread:                     ; preds = %do.end26.i.i, %do.body21.i.i.zl10039_writereg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  br label %do.body59

if.end40:                                         ; preds = %do.end14.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #5
  %29 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %30 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 524287, ptr %30, align 4
  %32 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i, ptr %buf2.i, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end40.do.end14.i_crit_edge, label %do.end9.i

if.end40.do.end14.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i

do.end9.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i, %if.end40.do.end14.i_crit_edge
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %buf.i, align 1
  %arrayidx16.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv22, ptr %arrayidx16.i, align 1
  %buf.sroa.5.0.arrayidx16.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 2
  %40 = ptrtoint ptr %buf.sroa.5.0.arrayidx16.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv25, ptr %buf.sroa.5.0.arrayidx16.i.sroa_idx, align 1
  %buf.sroa.7.0.arrayidx16.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf.sroa.7.0.arrayidx16.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 29, ptr %buf.sroa.7.0.arrayidx16.i.sroa_idx, align 1
  %buf.sroa.9.0.arrayidx16.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 4
  %42 = ptrtoint ptr %buf.sroa.9.0.arrayidx16.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 64, ptr %buf.sroa.9.0.arrayidx16.i.sroa_idx, align 1
  %buf.sroa.11.0.arrayidx16.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 5
  %43 = ptrtoint ptr %buf.sroa.11.0.arrayidx16.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 110, ptr %buf.sroa.11.0.arrayidx16.i.sroa_idx, align 1
  %buf.sroa.13.0.arrayidx16.i.sroa_idx = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 6
  %44 = ptrtoint ptr %buf.sroa.13.0.arrayidx16.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %buf.sroa.13.0.arrayidx16.i.sroa_idx, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call17.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 1
  br i1 %cmp18.not.i, label %if.end45, label %do.body21.i

do.body21.i:                                      ; preds = %do.end14.i
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool22.not.i = icmp eq i32 %47, 0
  br i1 %tobool22.not.i, label %do.body21.i.zl10039_write.exit.thread_crit_edge, label %do.end26.i

do.body21.i.zl10039_write.exit.thread_crit_edge:  ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %zl10039_write.exit.thread

do.end26.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  br label %zl10039_write.exit.thread

zl10039_write.exit.thread:                        ; preds = %do.end26.i, %do.body21.i.zl10039_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  br label %do.body59

if.end45:                                         ; preds = %do.end14.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i93) #5
  %48 = call ptr @memset(ptr %buf.i.i93, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i94) #5
  %49 = getelementptr inbounds i8, ptr %msg.i.i94, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %51 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_addr.i.i, align 4
  %conv.i.i96 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i.i94 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i96, ptr %msg.i.i94, align 4
  %flags.i.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i97 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i.i97, align 2
  %buf2.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i94, i32 0, i32 3
  %55 = ptrtoint ptr %buf2.i.i98 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i.i93, ptr %buf2.i.i98, align 4
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i99 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i99, label %if.end45.do.end14.i.i105_crit_edge, label %do.end9.i.i101

if.end45.do.end14.i.i105_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i105

do.end9.i.i101:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #8
  br label %do.end14.i.i105

do.end14.i.i105:                                  ; preds = %do.end9.i.i101, %if.end45.do.end14.i.i105_crit_edge
  %57 = ptrtoint ptr %buf.i.i93 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %buf.i.i93, align 1
  %arrayidx16.i.i102 = getelementptr inbounds [64 x i8], ptr %buf.i.i93, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx16.i.i102 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 106, ptr %arrayidx16.i.i102, align 1
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call17.i.i103 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i.i94, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i103)
  %cmp18.not.i.i104 = icmp eq i32 %call17.i.i103, 1
  br i1 %cmp18.not.i.i104, label %if.end50, label %do.body21.i.i107

do.body21.i.i107:                                 ; preds = %do.end14.i.i105
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool22.not.i.i106 = icmp eq i32 %61, 0
  br i1 %tobool22.not.i.i106, label %do.body21.i.i107.zl10039_writereg.exit111.thread_crit_edge, label %do.end26.i.i109

do.body21.i.i107.zl10039_writereg.exit111.thread_crit_edge: ; preds = %do.body21.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %zl10039_writereg.exit111.thread

do.end26.i.i109:                                  ; preds = %do.body21.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i.i108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #8
  br label %zl10039_writereg.exit111.thread

zl10039_writereg.exit111.thread:                  ; preds = %do.end26.i.i109, %do.body21.i.i107.zl10039_writereg.exit111.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i94) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i93) #5
  br label %do.body59

if.end50:                                         ; preds = %do.end14.i.i105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i94) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i93) #5
  %62 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool53.not = icmp eq ptr %63, null
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.then54

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = call i32 %63(ptr noundef %fe, i32 noundef 0) #5
  br label %cleanup

do.body59:                                        ; preds = %zl10039_writereg.exit111.thread, %zl10039_write.exit.thread, %zl10039_writereg.exit.thread
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool60.not = icmp eq i32 %64, 0
  br i1 %tobool60.not, label %do.body59.cleanup_crit_edge, label %do.end64

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end64:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body59.cleanup_crit_edge, %if.then54, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then54 ], [ 0, %if.end50.cleanup_crit_edge ], [ -121, %do.end64 ], [ -121, %do.body59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 256, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @zl10039_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @zl10039_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 282, i32 4}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 286, i32 3}
!10 = !{ptr @zl10039_attach._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @zl10039_attach._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 292, i32 2}
!14 = !{ptr @zl10039_attach._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @zl10039_attach._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_zl10039_attach, !17, !"__ksymtab_zl10039_attach", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 298, i32 1}
!18 = !{ptr @__param_debug, !19, !"__param_debug", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 300, i32 1}
!20 = !{ptr @__UNIQUE_ID_debugtype290, !19, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_debug291, !22, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 301, i32 1}
!23 = !{ptr @__UNIQUE_ID_description292, !24, !"__UNIQUE_ID_description292", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 302, i32 1}
!25 = !{ptr @__UNIQUE_ID_author293, !26, !"__UNIQUE_ID_author293", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 303, i32 1}
!27 = !{ptr @__UNIQUE_ID_file294, !28, !"__UNIQUE_ID_file294", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 304, i32 1}
!29 = !{ptr @__UNIQUE_ID_license295, !28, !"__UNIQUE_ID_license295", i1 false, i1 false}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 17, i32 12}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 76, i32 2}
!34 = !{ptr @zl10039_read._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @zl10039_read._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 79, i32 3}
!38 = !{ptr @zl10039_read._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @zl10039_read._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @zl10039_ops, !41, !"zl10039_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 244, i32 35}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 239, i32 2}
!44 = !{ptr @zl10039_release._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @zl10039_release._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 137, i32 2}
!48 = !{ptr @zl10039_init._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @zl10039_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 143, i32 3}
!52 = !{ptr @zl10039_init._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @zl10039_init._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 148, i32 3}
!56 = !{ptr @zl10039_init._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @zl10039_init._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 99, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @zl10039_write._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @zl10039_write._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zl10039_write._entry.25, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 105, i32 2}
!66 = !{ptr @zl10039_write._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 110, i32 3}
!69 = !{ptr @zl10039_write._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @zl10039_write._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 162, i32 2}
!73 = !{ptr @zl10039_sleep._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @zl10039_sleep._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 167, i32 3}
!77 = !{ptr @zl10039_sleep._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @zl10039_sleep._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 186, i32 2}
!81 = !{ptr @zl10039_set_params._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @zl10039_set_params._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 187, i32 2}
!85 = !{ptr @zl10039_set_params._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @zl10039_set_params._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/zl10039.c", i32 231, i32 2}
!89 = !{ptr @zl10039_set_params._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @zl10039_set_params._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @__param_str_debug, !19, !"__param_str_debug", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
