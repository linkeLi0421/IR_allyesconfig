; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mt2131.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2131.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt2131_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt2131_attach\09\09\09\09"
module asm "\09.long\09__crc_mt2131_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2131_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2131_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2131_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mt2131_priv = type { ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }

@__param_str_debug = internal constant [13 x i8] c"mt2131.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"mt2131.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [55 x i8] c"mt2131.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@mt2131_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2131_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/mt2131.c\00", [34 x i8] zeroinitializer }, align 32
@mt2131_attach._entry_ptr = internal global ptr @mt2131_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt2131\00", [25 x i8] zeroinitializer }, align 32
@mt2131_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013MT2131: Device not found at addr 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@mt2131_attach._entry_ptr.6 = internal global ptr @mt2131_attach._entry.4, section ".printk_index", align 4
@mt2131_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016MT2131: successfully identified at address 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@mt2131_attach._entry_ptr.9 = internal global ptr @mt2131_attach._entry.7, section ".printk_index", align 4
@mt2131_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2131_release, ptr @mt2131_init, ptr null, ptr null, ptr null, ptr @mt2131_set_params, ptr null, ptr null, ptr @mt2131_get_frequency, ptr null, ptr null, ptr @mt2131_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mt2131_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2131_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2131_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2131_attach to i32), ptr @__kstrtab_mt2131_attach, ptr @__kstrtabns_mt2131_attach }, section "___ksymtab+mt2131_attach", align 4
@__UNIQUE_ID_author292 = internal constant [26 x i8] c"mt2131.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [57 x i8] c"mt2131.description=Microtune MT2131 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [40 x i8] c"mt2131.file=drivers/media/tuners/mt2131\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"mt2131.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt2131_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014mt2131 I2C read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2131_readreg\00", [17 x i8] zeroinitializer }, align 32
@mt2131_readreg._entry_ptr = internal global ptr @mt2131_readreg._entry, section ".printk_index", align 4
@mt2131_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2131_release\00", [17 x i8] zeroinitializer }, align 32
@mt2131_release._entry_ptr = internal global ptr @mt2131_release._entry, section ".printk_index", align 4
@mt2131_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt2131_init\00", [20 x i8] zeroinitializer }, align 32
@mt2131_init._entry_ptr = internal global ptr @mt2131_init._entry, section ".printk_index", align 4
@mt2131_config1 = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01P\00P\80\00I\FA\88\08wA\04\00\00\002\7F\DAL\00\10\AAx\80\FFh\A0\FF\DD\00\00", [32 x i8] zeroinitializer }, align 32
@mt2131_config2 = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\10\7F\C8\0A_\00\04", [25 x i8] zeroinitializer }, align 32
@mt2131_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014mt2131 I2C write failed (len=%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2131_writeregs\00", [47 x i8] zeroinitializer }, align 32
@mt2131_writeregs._entry_ptr = internal global ptr @mt2131_writeregs._entry, section ".printk_index", align 4
@mt2131_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014mt2131 I2C write failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt2131_writereg\00", [16 x i8] zeroinitializer }, align 32
@mt2131_writereg._entry_ptr = internal global ptr @mt2131_writereg._entry, section ".printk_index", align 4
@mt2131_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %s() freq=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2131_set_params\00", [46 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr = internal global ptr @mt2131_set_params._entry, section ".printk_index", align 4
@mt2131_set_params._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: IF1: %dMHz IF2: %dMHz\0A\00", [35 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr.22 = internal global ptr @mt2131_set_params._entry.20, section ".printk_index", align 4
@mt2131_set_params._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: PLL freq=%dkHz  band=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr.25 = internal global ptr @mt2131_set_params._entry.23, section ".printk_index", align 4
@mt2131_set_params._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: PLL f_lo1=%dkHz  f_lo2=%dkHz\0A\00", [60 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr.28 = internal global ptr @mt2131_set_params._entry.26, section ".printk_index", align 4
@mt2131_set_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: PLL div1=%d  num1=%d  div2=%d  num2=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr.31 = internal global ptr @mt2131_set_params._entry.29, section ".printk_index", align 4
@mt2131_set_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: PLL [1..6]: %2x %2x %2x %2x %2x %2x\0A\00", [53 x i8] zeroinitializer }, align 32
@mt2131_set_params._entry_ptr.34 = internal global ptr @mt2131_set_params._entry.32, section ".printk_index", align 4
@mt2131_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.35, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt2131_get_frequency\00", [43 x i8] zeroinitializer }, align 32
@mt2131_get_frequency._entry_ptr = internal global ptr @mt2131_get_frequency._entry, section ".printk_index", align 4
@mt2131_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: %s() - LO Status = 0x%x, AFC Status = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2131_get_status\00", [46 x i8] zeroinitializer }, align 32
@mt2131_get_status._entry_ptr = internal global ptr @mt2131_get_status._entry, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 19, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 249, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 263, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 269, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"mt2131_tuner_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 226, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 49, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 221, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 201, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"mt2131_config1\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 26, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"mt2131_config2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 34, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 74, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 62, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 96, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 142, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 143, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 144, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 145, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 147, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 173, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [33 x i8] c"../drivers/media/tuners/mt2131.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 191, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_mt2131_attach, ptr @__param_debug, ptr @mt2131_attach._entry, ptr @mt2131_attach._entry.4, ptr @mt2131_attach._entry.7, ptr @mt2131_attach._entry_ptr, ptr @mt2131_attach._entry_ptr.6, ptr @mt2131_attach._entry_ptr.9, ptr @mt2131_get_frequency._entry, ptr @mt2131_get_frequency._entry_ptr, ptr @mt2131_get_status._entry, ptr @mt2131_get_status._entry_ptr, ptr @mt2131_init._entry, ptr @mt2131_init._entry_ptr, ptr @mt2131_readreg._entry, ptr @mt2131_readreg._entry_ptr, ptr @mt2131_release._entry, ptr @mt2131_release._entry_ptr, ptr @mt2131_set_params._entry, ptr @mt2131_set_params._entry.20, ptr @mt2131_set_params._entry.23, ptr @mt2131_set_params._entry.26, ptr @mt2131_set_params._entry.29, ptr @mt2131_set_params._entry.32, ptr @mt2131_set_params._entry_ptr, ptr @mt2131_set_params._entry_ptr.22, ptr @mt2131_set_params._entry_ptr.25, ptr @mt2131_set_params._entry_ptr.28, ptr @mt2131_set_params._entry_ptr.31, ptr @mt2131_set_params._entry_ptr.34, ptr @mt2131_writereg._entry, ptr @mt2131_writereg._entry_ptr, ptr @mt2131_writeregs._entry, ptr @mt2131_writeregs._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @mt2131_tuner_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mt2131_config1, ptr @mt2131_config2, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_config1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_config2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_set_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2131_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt2131_attach(ptr noundef writeonly %fe, ptr noundef %i2c, ptr noundef %cfg, i16 zeroext %if1) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %id, align 1
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #9
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c6 = getelementptr inbounds %struct.mt2131_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %i2c6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cfg, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %id, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  %20 = and i8 %19, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %20)
  %switch = icmp eq i8 %20, 62
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cfg, align 1
  %conv29 = zext i8 %22 to i32
  br i1 %switch, label %do.end26, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv29) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv29) #8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %23 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2131_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %24 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end19, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %do.end19 ], [ %fe, %do.end26 ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2131_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %2) #5
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2131_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i64 = alloca %struct.i2c_msg, align 4
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i40 = alloca [2 x i8], align 1
  %msg.i41 = alloca %struct.i2c_msg, align 4
  %buf.i28 = alloca [2 x i8], align 1
  %msg.i29 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2162687, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mt2131_config1, ptr %buf3.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2131_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end4, label %mt2131_writeregs.exit.thread

mt2131_writeregs.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 32) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 11, ptr %buf.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #5
  %17 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i22 = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i22, ptr %msg.i21, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i23, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %25 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i, ptr %buf1.i, align 4
  %26 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i21, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 1
  br i1 %cmp.not.i26, label %if.end4.mt2131_writereg.exit_crit_edge, label %do.end.i27

if.end4.mt2131_writereg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_writereg.exit

do.end.i27:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %mt2131_writereg.exit

mt2131_writereg.exit:                             ; preds = %do.end.i27, %if.end4.mt2131_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #5
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %29 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 21, ptr %buf.i28, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 71, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #5
  %31 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv.i30 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i30, ptr %msg.i29, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i31, align 2
  %buf1.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %39 = ptrtoint ptr %buf1.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i28, ptr %buf1.i33, align 4
  %40 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i29, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 1
  br i1 %cmp.not.i36, label %mt2131_writereg.exit.mt2131_writereg.exit39_crit_edge, label %do.end.i38

mt2131_writereg.exit.mt2131_writereg.exit39_crit_edge: ; preds = %mt2131_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_writereg.exit39

do.end.i38:                                       ; preds = %mt2131_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %mt2131_writereg.exit39

mt2131_writereg.exit39:                           ; preds = %do.end.i38, %mt2131_writereg.exit.mt2131_writereg.exit39_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i40) #5
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i40, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 7, ptr %buf.i40, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -14, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41) #5
  %45 = getelementptr inbounds i8, ptr %msg.i41, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv.i42 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i42, ptr %msg.i41, align 4
  %flags.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i43, align 2
  %buf1.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 3
  %53 = ptrtoint ptr %buf1.i45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i40, ptr %buf1.i45, align 4
  %54 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c.i, align 4
  %call.i47 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i41, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i48 = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i48, label %mt2131_writereg.exit39.mt2131_writereg.exit51_crit_edge, label %do.end.i50

mt2131_writereg.exit39.mt2131_writereg.exit51_crit_edge: ; preds = %mt2131_writereg.exit39
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_writereg.exit51

do.end.i50:                                       ; preds = %mt2131_writereg.exit39
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %mt2131_writereg.exit51

mt2131_writereg.exit51:                           ; preds = %do.end.i50, %mt2131_writereg.exit39.mt2131_writereg.exit51_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i40) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #5
  %56 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %57 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 11, ptr %buf.i52, align 1
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #5
  %59 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 196607, ptr %59, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %conv.i54 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i54, ptr %msg.i53, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i55, align 2
  %buf1.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %67 = ptrtoint ptr %buf1.i57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i52, ptr %buf1.i57, align 4
  %68 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c.i, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i53, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %mt2131_writereg.exit51.mt2131_writereg.exit63_crit_edge, label %do.end.i62

mt2131_writereg.exit51.mt2131_writereg.exit63_crit_edge: ; preds = %mt2131_writereg.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_writereg.exit63

do.end.i62:                                       ; preds = %mt2131_writereg.exit51
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %mt2131_writereg.exit63

mt2131_writereg.exit63:                           ; preds = %do.end.i62, %mt2131_writereg.exit51.mt2131_writereg.exit63_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64) #5
  %70 = getelementptr inbounds i8, ptr %msg.i64, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 524287, ptr %70, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv.i65 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i64 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i65, ptr %msg.i64, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i66, align 2
  %buf3.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 3
  %78 = ptrtoint ptr %buf3.i68 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @mt2131_config2, ptr %buf3.i68, align 4
  %79 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c.i, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i64, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 1
  br i1 %cmp.not.i71, label %mt2131_writeregs.exit75, label %81

mt2131_writeregs.exit75:                          ; preds = %mt2131_writereg.exit63
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64) #5
  br label %cleanup

81:                                               ; preds = %mt2131_writereg.exit63
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64) #5
  br label %cleanup

cleanup:                                          ; preds = %81, %mt2131_writeregs.exit75, %mt2131_writeregs.exit.thread
  %retval.0 = phi i32 [ -121, %mt2131_writeregs.exit.thread ], [ -121, %81 ], [ 0, %mt2131_writeregs.exit75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2131_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i249 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i242 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %b = alloca [8 x i8], align 1
  %lockval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #5
  %0 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %b, i32 0, i32 6
  %6 = getelementptr inbounds i8, ptr %b, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lockval) #5
  %8 = ptrtoint ptr %lockval to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %lockval, align 1
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %9 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner_priv, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %12, 1000
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, i32 noundef %div) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = add nuw nsw i32 %div, 1220000
  %14 = urem i32 %add, 250
  %mul = sub nuw nsw i32 %add, %14
  %sub = sub nsw i32 %mul, %div
  %sub4 = add nsw i32 %sub, -44000
  %sub5 = sub nsw i32 %mul, %sub4
  %15 = mul i32 %sub5, 1000
  %mul7 = add i32 %15, -44000000
  %frequency8 = getelementptr inbounds %struct.mt2131_priv, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %frequency8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul7, ptr %frequency8, align 4
  %mul9 = shl nuw nsw i32 %mul, 6
  %div10 = udiv i32 %mul9, 125
  %div11 = udiv i32 %mul, 16000
  %and = and i32 %div10, 8191
  %mul12 = shl nsw i32 %sub4, 6
  %div13 = udiv i32 %mul12, 125
  %div14 = udiv i32 %mul12, 1024000
  %and15 = and i32 %div13, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 82501000, i32 %12)
  %cmp16 = icmp ult i32 %12, 82501000
  br i1 %cmp16, label %if.end.if.end90_crit_edge, label %if.else

if.end.if.end90_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 137501000, i32 %12)
  %cmp18 = icmp ult i32 %12, 137501000
  br i1 %cmp18, label %if.else.if.end90_crit_edge, label %if.else20

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 192501000, i32 %12)
  %cmp21 = icmp ult i32 %12, 192501000
  br i1 %cmp21, label %if.else20.if.end90_crit_edge, label %if.else23

if.else20.if.end90_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 247501000, i32 %12)
  %cmp24 = icmp ult i32 %12, 247501000
  br i1 %cmp24, label %if.else23.if.end90_crit_edge, label %if.else26

if.else23.if.end90_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 302501000, i32 %12)
  %cmp27 = icmp ult i32 %12, 302501000
  br i1 %cmp27, label %if.else26.if.end90_crit_edge, label %if.else29

if.else26.if.end90_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 357501000, i32 %12)
  %cmp30 = icmp ult i32 %12, 357501000
  br i1 %cmp30, label %if.else29.if.end90_crit_edge, label %if.else32

if.else29.if.end90_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 412501000, i32 %12)
  %cmp33 = icmp ult i32 %12, 412501000
  br i1 %cmp33, label %if.else32.if.end90_crit_edge, label %if.else35

if.else32.if.end90_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_const_cmp4(i32 467501000, i32 %12)
  %cmp36 = icmp ult i32 %12, 467501000
  br i1 %cmp36, label %if.else35.if.end90_crit_edge, label %if.else38

if.else35.if.end90_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp4(i32 522501000, i32 %12)
  %cmp39 = icmp ult i32 %12, 522501000
  br i1 %cmp39, label %if.else38.if.end90_crit_edge, label %if.else41

if.else38.if.end90_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_const_cmp4(i32 577501000, i32 %12)
  %cmp42 = icmp ult i32 %12, 577501000
  br i1 %cmp42, label %if.else41.if.end90_crit_edge, label %if.else44

if.else41.if.end90_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp4(i32 632501000, i32 %12)
  %cmp45 = icmp ult i32 %12, 632501000
  br i1 %cmp45, label %if.else44.if.end90_crit_edge, label %if.else47

if.else44.if.end90_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_const_cmp4(i32 687501000, i32 %12)
  %cmp48 = icmp ult i32 %12, 687501000
  br i1 %cmp48, label %if.else47.if.end90_crit_edge, label %if.else50

if.else47.if.end90_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_const_cmp4(i32 742501000, i32 %12)
  %cmp51 = icmp ult i32 %12, 742501000
  br i1 %cmp51, label %if.else50.if.end90_crit_edge, label %if.else53

if.else50.if.end90_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else53:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_const_cmp4(i32 797501000, i32 %12)
  %cmp54 = icmp ult i32 %12, 797501000
  br i1 %cmp54, label %if.else53.if.end90_crit_edge, label %if.else56

if.else53.if.end90_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_const_cmp4(i32 852501000, i32 %12)
  %cmp57 = icmp ult i32 %12, 852501000
  br i1 %cmp57, label %if.else56.if.end90_crit_edge, label %if.else59

if.else56.if.end90_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else59:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_const_cmp4(i32 907501000, i32 %12)
  %cmp60 = icmp ult i32 %12, 907501000
  br i1 %cmp60, label %if.else59.if.end90_crit_edge, label %if.else62

if.else59.if.end90_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_const_cmp4(i32 962501000, i32 %12)
  %cmp63 = icmp ult i32 %12, 962501000
  br i1 %cmp63, label %if.else62.if.end90_crit_edge, label %if.else65

if.else62.if.end90_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else65:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1017501000, i32 %12)
  %cmp66 = icmp ult i32 %12, 1017501000
  br i1 %cmp66, label %if.else65.if.end90_crit_edge, label %if.else68

if.else65.if.end90_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1072501000, i32 %12)
  %cmp69 = icmp ult i32 %12, 1072501000
  %. = select i1 %cmp69, i8 18, i8 19
  br label %if.end90

if.end90:                                         ; preds = %if.else68, %if.else65.if.end90_crit_edge, %if.else62.if.end90_crit_edge, %if.else59.if.end90_crit_edge, %if.else56.if.end90_crit_edge, %if.else53.if.end90_crit_edge, %if.else50.if.end90_crit_edge, %if.else47.if.end90_crit_edge, %if.else44.if.end90_crit_edge, %if.else41.if.end90_crit_edge, %if.else38.if.end90_crit_edge, %if.else35.if.end90_crit_edge, %if.else32.if.end90_crit_edge, %if.else29.if.end90_crit_edge, %if.else26.if.end90_crit_edge, %if.else23.if.end90_crit_edge, %if.else20.if.end90_crit_edge, %if.else.if.end90_crit_edge, %if.end.if.end90_crit_edge
  %if_band_center.0 = phi i8 [ 0, %if.end.if.end90_crit_edge ], [ 1, %if.else.if.end90_crit_edge ], [ 2, %if.else20.if.end90_crit_edge ], [ 3, %if.else23.if.end90_crit_edge ], [ 4, %if.else26.if.end90_crit_edge ], [ 5, %if.else29.if.end90_crit_edge ], [ 6, %if.else32.if.end90_crit_edge ], [ 7, %if.else35.if.end90_crit_edge ], [ 8, %if.else38.if.end90_crit_edge ], [ 9, %if.else41.if.end90_crit_edge ], [ 10, %if.else44.if.end90_crit_edge ], [ 11, %if.else47.if.end90_crit_edge ], [ 12, %if.else50.if.end90_crit_edge ], [ 13, %if.else53.if.end90_crit_edge ], [ 14, %if.else56.if.end90_crit_edge ], [ 15, %if.else59.if.end90_crit_edge ], [ 16, %if.else62.if.end90_crit_edge ], [ 17, %if.else65.if.end90_crit_edge ], [ %., %if.else68 ]
  %17 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %b, align 1
  %shr = lshr i32 %div10, 5
  %conv = trunc i32 %shr to i8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %0, align 1
  %19 = trunc i32 %div10 to i8
  %conv94 = and i8 %19, 31
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv94, ptr %1, align 1
  %conv96 = trunc i32 %div11 to i8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv96, ptr %2, align 1
  %shr98 = lshr i32 %div13, 5
  %conv100 = trunc i32 %shr98 to i8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv100, ptr %3, align 1
  %23 = trunc i32 %div13 to i8
  %conv103 = and i8 %23, 31
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv103, ptr %4, align 1
  %conv105 = trunc i32 %div14 to i8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv105, ptr %5, align 1
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp107 = icmp sgt i32 %26, 0
  br i1 %cmp107, label %if.end115, label %if.end90.if.end164_crit_edge

if.end90.if.end164_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.end115:                                        ; preds = %if.end90
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 1220, i32 noundef 44000) #8
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp116 = icmp sgt i32 %.pr, 0
  br i1 %cmp116, label %if.end125, label %if.end115.if.end164_crit_edge

if.end115.if.end164_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.end125:                                        ; preds = %if.end115
  %conv123 = zext i8 %if_band_center.0 to i32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef %div, i32 noundef %conv123) #8
  %.pr260 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr260)
  %cmp126 = icmp sgt i32 %.pr260, 0
  br i1 %cmp126, label %if.end134, label %if.end125.if.end164_crit_edge

if.end125.if.end164_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.end134:                                        ; preds = %if.end125
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, i32 noundef %mul, i32 noundef %sub4) #8
  %.pr262.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr262.pr)
  %cmp135 = icmp sgt i32 %.pr262.pr, 0
  br i1 %cmp135, label %if.end143, label %if.end134.if.end164_crit_edge

if.end134.if.end164_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.end143:                                        ; preds = %if.end134
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, i32 noundef %div11, i32 noundef %and, i32 noundef %div14, i32 noundef %and15) #8
  %.pr264 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr264)
  %cmp144 = icmp sgt i32 %.pr264, 0
  br i1 %cmp144, label %do.end149, label %if.end143.if.end164_crit_edge

if.end143.if.end164_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv152 = zext i8 %28 to i32
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv154 = zext i8 %30 to i32
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv156 = zext i8 %32 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %3, align 1
  %conv158 = zext i8 %34 to i32
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %4, align 1
  %conv160 = zext i8 %36 to i32
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %conv162 = zext i8 %38 to i32
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef %conv152, i32 noundef %conv154, i32 noundef %conv156, i32 noundef %conv158, i32 noundef %conv160, i32 noundef %conv162) #8
  br label %if.end164

if.end164:                                        ; preds = %do.end149, %if.end143.if.end164_crit_edge, %if.end134.if.end164_crit_edge, %if.end125.if.end164_crit_edge, %if.end115.if.end164_crit_edge, %if.end90.if.end164_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 524287, ptr %39, align 4
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %10, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b, ptr %buf3.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2131_priv, ptr %10, i32 0, i32 1
  %48 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end169, label %mt2131_writeregs.exit.thread

mt2131_writeregs.exit.thread:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  br label %cleanup

if.end169:                                        ; preds = %if.end164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 11, ptr %buf.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %if_band_center.0, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i242) #5
  %53 = getelementptr inbounds i8, ptr %msg.i242, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %10, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i243 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i242 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i243, ptr %msg.i242, align 4
  %flags.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i242, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i244 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i244, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i242, i32 0, i32 3
  %61 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i, ptr %buf1.i, align 4
  %62 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c.i, align 4
  %call.i246 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i242, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i246)
  %cmp.not.i247 = icmp eq i32 %call.i246, 1
  br i1 %cmp.not.i247, label %if.end169.mt2131_writereg.exit_crit_edge, label %do.end.i248

if.end169.mt2131_writereg.exit_crit_edge:         ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_writereg.exit

do.end.i248:                                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %mt2131_writereg.exit

mt2131_writereg.exit:                             ; preds = %do.end.i248, %if.end169.mt2131_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i242) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %64 = getelementptr inbounds i8, ptr %msg.i249, i32 4
  %flags.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 1
  %buf.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 1
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 1, i32 1
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 1, i32 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 1, i32 3
  br label %do.body171

do.body171:                                       ; preds = %if.end178.do.body171_crit_edge, %mt2131_writereg.exit
  %i.0 = phi i32 [ 0, %mt2131_writereg.exit ], [ %inc, %if.end178.do.body171_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %65 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 8, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i249) #5
  %66 = call ptr @memset(ptr %64, i32 255, i32 16)
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %10, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv.i250 = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i249 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i250, ptr %msg.i249, align 4
  %72 = ptrtoint ptr %flags.i251 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i251, align 2
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %64, align 4
  %74 = ptrtoint ptr %buf.i253 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %reg.addr.i, ptr %buf.i253, align 4
  %75 = load i8, ptr %68, align 1
  %conv4.i = zext i8 %75 to i16
  %76 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %77 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags5.i, align 2
  %78 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %len6.i, align 4
  %79 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %lockval, ptr %buf7.i, align 4
  %80 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c.i, align 4
  %call.i255 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i249, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i255)
  %cmp.not.i256 = icmp eq i32 %call.i255, 2
  br i1 %cmp.not.i256, label %do.body171.mt2131_readreg.exit_crit_edge, label %do.end.i257

do.body171.mt2131_readreg.exit_crit_edge:         ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_readreg.exit

do.end.i257:                                      ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %mt2131_readreg.exit

mt2131_readreg.exit:                              ; preds = %do.end.i257, %do.body171.mt2131_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i249) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %82 = ptrtoint ptr %lockval to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %lockval, align 1
  %84 = and i8 %83, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %84)
  %cmp175 = icmp eq i8 %84, -120
  br i1 %cmp175, label %mt2131_readreg.exit.cleanup_crit_edge, label %if.end178

mt2131_readreg.exit.cleanup_crit_edge:            ; preds = %mt2131_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end178:                                        ; preds = %mt2131_readreg.exit
  call void @msleep(i32 noundef 4) #5
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end178.cleanup_crit_edge, label %if.end178.do.body171_crit_edge

if.end178.do.body171_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body171

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end178.cleanup_crit_edge, %mt2131_readreg.exit.cleanup_crit_edge, %mt2131_writeregs.exit.thread
  %retval.0.i268 = phi i32 [ -121, %mt2131_writeregs.exit.thread ], [ 0, %mt2131_readreg.exit.cleanup_crit_edge ], [ 0, %if.end178.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lockval) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #5
  ret i32 %retval.0.i268
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2131_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %frequency1 = getelementptr inbounds %struct.mt2131_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frequency1, align 4
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2131_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %reg.addr.i12 = alloca i8, align 1
  %msg.i13 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %lock_status = alloca i8, align 1
  %afc_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lock_status) #5
  %2 = ptrtoint ptr %lock_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lock_status, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %afc_status) #5
  %3 = ptrtoint ptr %afc_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %afc_status, align 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 1
  %conv4.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lock_status, ptr %buf7.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2131_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.mt2131_readreg.exit_crit_edge, label %do.end.i

entry.mt2131_readreg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_readreg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %mt2131_readreg.exit

mt2131_readreg.exit:                              ; preds = %do.end.i, %entry.mt2131_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %23 = ptrtoint ptr %lock_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lock_status, align 1
  %25 = and i8 %24, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %25)
  %cmp = icmp eq i8 %25, -120
  br i1 %cmp, label %if.then, label %mt2131_readreg.exit.if.end_crit_edge

mt2131_readreg.exit.if.end_crit_edge:             ; preds = %mt2131_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %mt2131_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mt2131_readreg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i12)
  %27 = ptrtoint ptr %reg.addr.i12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 9, ptr %reg.addr.i12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i13) #5
  %28 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i14 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i14, ptr %msg.i13, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i15, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i12, ptr %buf.i17, align 4
  %arrayinit.element.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1
  %38 = load i8, ptr %31, align 1
  %conv4.i19 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i18 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4.i19, ptr %arrayinit.element.i18, align 4
  %flags5.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 1
  %40 = ptrtoint ptr %flags5.i20 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags5.i20, align 2
  %len6.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 2
  %41 = ptrtoint ptr %len6.i21 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len6.i21, align 4
  %buf7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %afc_status, ptr %buf7.i22, align 4
  %43 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c.i, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i13, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, 2
  br i1 %cmp.not.i25, label %if.end.mt2131_readreg.exit29_crit_edge, label %do.end.i27

if.end.mt2131_readreg.exit29_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt2131_readreg.exit29

do.end.i27:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %mt2131_readreg.exit29

mt2131_readreg.exit29:                            ; preds = %do.end.i27, %if.end.mt2131_readreg.exit29_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i13) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i12)
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3 = icmp sgt i32 %45, 0
  br i1 %cmp3, label %do.end, label %mt2131_readreg.exit29.if.end9_crit_edge

mt2131_readreg.exit29.if.end9_crit_edge:          ; preds = %mt2131_readreg.exit29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %mt2131_readreg.exit29
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %lock_status to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lock_status, align 1
  %conv6 = zext i8 %47 to i32
  %48 = ptrtoint ptr %afc_status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %afc_status, align 1
  %conv7 = zext i8 %49 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %mt2131_readreg.exit29.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %afc_status) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lock_status) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mt2131.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mt2131.c", i32 21, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mt2131.c", i32 249, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mt2131_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mt2131_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/mt2131.c", i32 263, i32 3}
!14 = !{ptr @mt2131_attach._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mt2131_attach._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/mt2131.c", i32 269, i32 2}
!18 = !{ptr @mt2131_attach._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt2131_attach._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_mt2131_attach, !21, !"__ksymtab_mt2131_attach", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/mt2131.c", i32 277, i32 1}
!22 = !{ptr @__UNIQUE_ID_author292, !23, !"__UNIQUE_ID_author292", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/mt2131.c", i32 279, i32 1}
!24 = !{ptr @__UNIQUE_ID_description293, !25, !"__UNIQUE_ID_description293", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/mt2131.c", i32 280, i32 1}
!26 = !{ptr @__UNIQUE_ID_file294, !27, !"__UNIQUE_ID_file294", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/mt2131.c", i32 281, i32 1}
!28 = !{ptr @__UNIQUE_ID_license295, !27, !"__UNIQUE_ID_license295", i1 false, i1 false}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/mt2131.c", i32 19, i32 12}
!31 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/mt2131.c", i32 49, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt2131_readreg._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt2131_readreg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mt2131_tuner_ops, !38, !"mt2131_tuner_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/mt2131.c", i32 226, i32 35}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/mt2131.c", i32 221, i32 2}
!41 = !{ptr @mt2131_release._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt2131_release._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/mt2131.c", i32 201, i32 2}
!45 = !{ptr @mt2131_init._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt2131_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/mt2131.c", i32 74, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt2131_writeregs._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt2131_writeregs._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mt2131_config1, !53, !"mt2131_config1", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/mt2131.c", i32 26, i32 11}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/mt2131.c", i32 62, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mt2131_writereg._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mt2131_writereg._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mt2131_config2, !60, !"mt2131_config2", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/mt2131.c", i32 34, i32 11}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/mt2131.c", i32 96, i32 2}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mt2131_set_params._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mt2131_set_params._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/mt2131.c", i32 142, i32 2}
!68 = !{ptr @mt2131_set_params._entry.20, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mt2131_set_params._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/mt2131.c", i32 143, i32 2}
!72 = !{ptr @mt2131_set_params._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt2131_set_params._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/mt2131.c", i32 144, i32 2}
!76 = !{ptr @mt2131_set_params._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mt2131_set_params._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/mt2131.c", i32 145, i32 2}
!80 = !{ptr @mt2131_set_params._entry.29, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt2131_set_params._entry_ptr.31, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/mt2131.c", i32 147, i32 2}
!84 = !{ptr @mt2131_set_params._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mt2131_set_params._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/mt2131.c", i32 173, i32 2}
!88 = !{ptr @mt2131_get_frequency._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mt2131_get_frequency._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/mt2131.c", i32 191, i32 2}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mt2131_get_status._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mt2131_get_status._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
