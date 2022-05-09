; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mt2266.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2266.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt2266_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt2266_attach\09\09\09\09"
module asm "\09.long\09__crc_mt2266_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2266_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2266_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2266_attach:\09\09\09\09\09"
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
%struct.mt2266_priv = type { ptr, ptr, i32, i32, i8 }
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

@__param_str_debug = internal constant [13 x i8] c"mt2266.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"mt2266.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [55 x i8] c"mt2266.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@mt2266_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016MT2266: successfully identified\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2266_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/mt2266.c\00", [34 x i8] zeroinitializer }, align 32
@mt2266_attach._entry_ptr = internal global ptr @mt2266_attach._entry, section ".printk_index", align 4
@mt2266_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2266\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2266_release, ptr @mt2266_init, ptr @mt2266_sleep, ptr null, ptr null, ptr @mt2266_set_params, ptr null, ptr null, ptr @mt2266_get_frequency, ptr @mt2266_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mt2266_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2266_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2266_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2266_attach to i32), ptr @__kstrtab_mt2266_attach, ptr @__kstrtabns_mt2266_attach }, section "___ksymtab+mt2266_attach", align 4
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"mt2266.author=Olivier DANET\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [57 x i8] c"mt2266.description=Microtune MT2266 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [40 x i8] c"mt2266.file=drivers/media/tuners/mt2266\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"mt2266.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt2266_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014MT2266 I2C read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2266_readreg\00", [17 x i8] zeroinitializer }, align 32
@mt2266_readreg._entry_ptr = internal global ptr @mt2266_readreg._entry, section ".printk_index", align 4
@mt2266_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014MT2266 I2C write failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt2266_writereg\00", [16 x i8] zeroinitializer }, align 32
@mt2266_writereg._entry_ptr = internal global ptr @mt2266_writereg._entry, section ".printk_index", align 4
@mt2266_init_6mhz = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\08\A7\A7\A7\A7\A7\A7\A7\A7", [23 x i8] zeroinitializer }, align 32
@mt2266_init_8mhz = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\08\22\22\22\22\22\22\22\22", [23 x i8] zeroinitializer }, align 32
@mt2266_init_7mhz = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\0822222222", [23 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017MT2266: Switch from UHF to VHF\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2266_set_params\00", [46 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr = internal global ptr @mt2266_set_params._entry, section ".printk_index", align 4
@mt2266_set_params._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.11 = internal global ptr @mt2266_set_params._entry.9, section ".printk_index", align 4
@mt2266_vhf = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"\1D\FE\00\00\B4\03\A5\A5\A5\A5\82\AA\F1\17\80\1F", [16 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017MT2266: Switch from VHF to UHF\00", [63 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.14 = internal global ptr @mt2266_set_params._entry.12, section ".printk_index", align 4
@mt2266_set_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.16 = internal global ptr @mt2266_set_params._entry.15, section ".printk_index", align 4
@mt2266_uhf = internal global { [16 x i8], [16 x i8] } { [16 x i8] c"\1D\DC\00\0A\D4\03dddd\22\AA\F2\1E\80\14", [16 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017MT2266: set_parms: tune=%d band=%d %s\00", [56 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.19 = internal global ptr @mt2266_set_params._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UHF\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VHF\00", [28 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.23 = internal global ptr @mt2266_set_params._entry.22, section ".printk_index", align 4
@mt2266_set_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017MT2266: set_parms: [1..3]: %2x %2x %2x\00", [55 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.26 = internal global ptr @mt2266_set_params._entry.24, section ".printk_index", align 4
@mt2266_set_params._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.28 = internal global ptr @mt2266_set_params._entry.27, section ".printk_index", align 4
@mt2266_set_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017MT2266: Lock when i=%i\00", [39 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.31 = internal global ptr @mt2266_set_params._entry.29, section ".printk_index", align 4
@mt2266_set_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2266_set_params._entry_ptr.33 = internal global ptr @mt2266_set_params._entry.32, section ".printk_index", align 4
@mt2266_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014MT2266 I2C write failed (len=%i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt2266_writeregs\00", [47 x i8] zeroinitializer }, align 32
@mt2266_writeregs._entry_ptr = internal global ptr @mt2266_writeregs._entry, section ".printk_index", align 4
@mt2266_init1 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\01\00\00(\00R\99?", [24 x i8] zeroinitializer }, align 32
@mt2266_init2 = internal global { [38 x i8], [58 x i8] } { [38 x i8] c"\17mqa\C0\BF\FF\DC\00\0A\D4\03dddd\22\AA\F2\1E\80\14\01\01\01\01\01\01\7F^?\FF\FF\FF\00w\0F-", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6000000, i64 8000000]
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 41, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 332, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"mt2266_tuner_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 296, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 55, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 69, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"mt2266_init_6mhz\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 105, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"mt2266_init_8mhz\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 99, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"mt2266_init_7mhz\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 102, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 158, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"mt2266_vhf\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 111, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 163, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"mt2266_uhf\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 108, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 205, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 208, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 227, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 82, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"mt2266_init1\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 89, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"mt2266_init2\00", align 1
@___asan_gen_.157 = private constant [33 x i8] c"../drivers/media/tuners/mt2266.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 92, i32 11 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_mt2266_attach, ptr @__param_debug, ptr @mt2266_attach._entry, ptr @mt2266_attach._entry_ptr, ptr @mt2266_readreg._entry, ptr @mt2266_readreg._entry_ptr, ptr @mt2266_set_params._entry, ptr @mt2266_set_params._entry.12, ptr @mt2266_set_params._entry.15, ptr @mt2266_set_params._entry.17, ptr @mt2266_set_params._entry.22, ptr @mt2266_set_params._entry.24, ptr @mt2266_set_params._entry.27, ptr @mt2266_set_params._entry.29, ptr @mt2266_set_params._entry.32, ptr @mt2266_set_params._entry.9, ptr @mt2266_set_params._entry_ptr, ptr @mt2266_set_params._entry_ptr.11, ptr @mt2266_set_params._entry_ptr.14, ptr @mt2266_set_params._entry_ptr.16, ptr @mt2266_set_params._entry_ptr.19, ptr @mt2266_set_params._entry_ptr.23, ptr @mt2266_set_params._entry_ptr.26, ptr @mt2266_set_params._entry_ptr.28, ptr @mt2266_set_params._entry_ptr.31, ptr @mt2266_set_params._entry_ptr.33, ptr @mt2266_writereg._entry, ptr @mt2266_writereg._entry_ptr, ptr @mt2266_writeregs._entry, ptr @mt2266_writeregs._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt2266_tuner_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mt2266_init_6mhz, ptr @mt2266_init_8mhz, ptr @mt2266_init_7mhz, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mt2266_vhf, ptr @.str.13, ptr @mt2266_uhf, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.25, ptr @.str.30, ptr @.str.34, ptr @.str.35, ptr @mt2266_init1, ptr @mt2266_init2], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_init_6mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_init_8mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_init_7mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_vhf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_uhf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_set_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_init1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2266_init2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt2266_attach(ptr noundef writeonly %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %id, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.mt2266_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %i2c2, align 4
  %band = getelementptr inbounds %struct.mt2266_priv, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %band, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %19)
  %cmp6.not = icmp eq i8 %19, -123
  br i1 %cmp6.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %20 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2266_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %21 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  call fastcc void @mt2266_calibrate(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %if.then8 ], [ %fe, %do.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2266_calibrate(ptr noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %buf.i143 = alloca [2 x i8], align 1
  %msg.i144 = alloca %struct.i2c_msg, align 4
  %buf.i130 = alloca [2 x i8], align 1
  %msg.i131 = alloca %struct.i2c_msg, align 4
  %buf.i117 = alloca [2 x i8], align 1
  %msg.i118 = alloca %struct.i2c_msg, align 4
  %buf.i104 = alloca [2 x i8], align 1
  %msg.i105 = alloca %struct.i2c_msg, align 4
  %msg.i93 = alloca %struct.i2c_msg, align 4
  %buf.i80 = alloca [2 x i8], align 1
  %msg.i81 = alloca %struct.i2c_msg, align 4
  %buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %buf.i54 = alloca [2 x i8], align 1
  %msg.i55 = alloca %struct.i2c_msg, align 4
  %msg.i43 = alloca %struct.i2c_msg, align 4
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %buf.i23 = alloca [2 x i8], align 1
  %msg.i24 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 17, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf1.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2266_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.mt2266_writereg.exit_crit_edge, label %do.end.i

entry.mt2266_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit

mt2266_writereg.exit:                             ; preds = %do.end.i, %entry.mt2266_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i23) #6
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i23, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 17, ptr %buf.i23, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24) #6
  %17 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i25 = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i25, ptr %msg.i24, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i26, align 2
  %buf1.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %25 = ptrtoint ptr %buf1.i28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i23, ptr %buf1.i28, align 4
  %26 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i, align 4
  %call.i30 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i24, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30)
  %cmp.not.i31 = icmp eq i32 %call.i30, 1
  br i1 %cmp.not.i31, label %mt2266_writereg.exit.mt2266_writereg.exit35_crit_edge, label %do.end.i33

mt2266_writereg.exit.mt2266_writereg.exit35_crit_edge: ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit35

do.end.i33:                                       ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit35

mt2266_writereg.exit35:                           ; preds = %do.end.i33, %mt2266_writereg.exit.mt2266_writereg.exit35_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i23) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #6
  %28 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 589823, ptr %28, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i37 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i37, ptr %msg.i36, align 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i38, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  %36 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mt2266_init1, ptr %buf3.i, align 4
  %37 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c.i, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i36, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 1
  br i1 %cmp.not.i41, label %mt2266_writereg.exit35.mt2266_writeregs.exit_crit_edge, label %do.end.i42

mt2266_writereg.exit35.mt2266_writeregs.exit_crit_edge: ; preds = %mt2266_writereg.exit35
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit

do.end.i42:                                       ; preds = %mt2266_writereg.exit35
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 8) #10
  br label %mt2266_writeregs.exit

mt2266_writeregs.exit:                            ; preds = %do.end.i42, %mt2266_writereg.exit35.mt2266_writeregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43) #6
  %39 = getelementptr inbounds i8, ptr %msg.i43, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2555903, ptr %39, align 4
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv.i44 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i44, ptr %msg.i43, align 4
  %flags.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i45, align 2
  %buf3.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 3
  %47 = ptrtoint ptr %buf3.i47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mt2266_init2, ptr %buf3.i47, align 4
  %48 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c.i, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i43, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 1
  br i1 %cmp.not.i50, label %mt2266_writeregs.exit.mt2266_writeregs.exit53_crit_edge, label %do.end.i52

mt2266_writeregs.exit.mt2266_writeregs.exit53_crit_edge: ; preds = %mt2266_writeregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit53

do.end.i52:                                       ; preds = %mt2266_writeregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 38) #10
  br label %mt2266_writeregs.exit53

mt2266_writeregs.exit53:                          ; preds = %do.end.i52, %mt2266_writeregs.exit.mt2266_writeregs.exit53_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i54) #6
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i54, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 51, ptr %buf.i54, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 94, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55) #6
  %53 = getelementptr inbounds i8, ptr %msg.i55, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i56 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i55 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i56, ptr %msg.i55, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i57, align 2
  %buf1.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 3
  %61 = ptrtoint ptr %buf1.i59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i54, ptr %buf1.i59, align 4
  %62 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c.i, align 4
  %call.i61 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i55, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 1
  br i1 %cmp.not.i62, label %mt2266_writeregs.exit53.mt2266_writereg.exit66_crit_edge, label %do.end.i64

mt2266_writeregs.exit53.mt2266_writereg.exit66_crit_edge: ; preds = %mt2266_writeregs.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit66

do.end.i64:                                       ; preds = %mt2266_writeregs.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit66

mt2266_writereg.exit66:                           ; preds = %do.end.i64, %mt2266_writeregs.exit53.mt2266_writereg.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i54) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i67) #6
  %64 = getelementptr inbounds [2 x i8], ptr %buf.i67, i32 0, i32 1
  %65 = ptrtoint ptr %buf.i67 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 16, ptr %buf.i67, align 1
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 16, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #6
  %67 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 196607, ptr %67, align 4
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv.i69 = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i69, ptr %msg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i70, align 2
  %buf1.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %75 = ptrtoint ptr %buf1.i72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i67, ptr %buf1.i72, align 4
  %76 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i2c.i, align 4
  %call.i74 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i68, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74)
  %cmp.not.i75 = icmp eq i32 %call.i74, 1
  br i1 %cmp.not.i75, label %mt2266_writereg.exit66.mt2266_writereg.exit79_crit_edge, label %do.end.i77

mt2266_writereg.exit66.mt2266_writereg.exit79_crit_edge: ; preds = %mt2266_writereg.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit79

do.end.i77:                                       ; preds = %mt2266_writereg.exit66
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit79

mt2266_writereg.exit79:                           ; preds = %do.end.i77, %mt2266_writereg.exit66.mt2266_writereg.exit79_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i67) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i80) #6
  %78 = getelementptr inbounds [2 x i8], ptr %buf.i80, i32 0, i32 1
  %79 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 16, ptr %buf.i80, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i81) #6
  %81 = getelementptr inbounds i8, ptr %msg.i81, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 196607, ptr %81, align 4
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %conv.i82 = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i81 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i82, ptr %msg.i81, align 4
  %flags.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i83 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i83, align 2
  %buf1.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 0, i32 3
  %89 = ptrtoint ptr %buf1.i85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i80, ptr %buf1.i85, align 4
  %90 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c.i, align 4
  %call.i87 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i81, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i87)
  %cmp.not.i88 = icmp eq i32 %call.i87, 1
  br i1 %cmp.not.i88, label %mt2266_writereg.exit79.mt2266_writereg.exit92_crit_edge, label %do.end.i90

mt2266_writereg.exit79.mt2266_writereg.exit92_crit_edge: ; preds = %mt2266_writereg.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit92

do.end.i90:                                       ; preds = %mt2266_writereg.exit79
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit92

mt2266_writereg.exit92:                           ; preds = %do.end.i90, %mt2266_writereg.exit79.mt2266_writereg.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i81) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i80) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i93) #6
  %92 = getelementptr inbounds i8, ptr %msg.i93, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 655359, ptr %92, align 4
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %conv.i94 = zext i8 %97 to i16
  %98 = ptrtoint ptr %msg.i93 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i94, ptr %msg.i93, align 4
  %flags.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i95, align 2
  %buf3.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93, i32 0, i32 3
  %100 = ptrtoint ptr %buf3.i97 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @mt2266_init_8mhz, ptr %buf3.i97, align 4
  %101 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i2c.i, align 4
  %call.i99 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msg.i93, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i99)
  %cmp.not.i100 = icmp eq i32 %call.i99, 1
  br i1 %cmp.not.i100, label %mt2266_writereg.exit92.mt2266_writeregs.exit103_crit_edge, label %do.end.i102

mt2266_writereg.exit92.mt2266_writeregs.exit103_crit_edge: ; preds = %mt2266_writereg.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit103

do.end.i102:                                      ; preds = %mt2266_writereg.exit92
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 9) #10
  br label %mt2266_writeregs.exit103

mt2266_writeregs.exit103:                         ; preds = %do.end.i102, %mt2266_writereg.exit92.mt2266_writeregs.exit103_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93) #6
  call void @msleep(i32 noundef 25) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i104) #6
  %103 = getelementptr inbounds [2 x i8], ptr %buf.i104, i32 0, i32 1
  %104 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 23, ptr %buf.i104, align 1
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 109, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i105) #6
  %106 = getelementptr inbounds i8, ptr %msg.i105, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 196607, ptr %106, align 4
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %conv.i106 = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i105 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i106, ptr %msg.i105, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i105, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i107, align 2
  %buf1.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i105, i32 0, i32 3
  %114 = ptrtoint ptr %buf1.i109 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buf.i104, ptr %buf1.i109, align 4
  %115 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i2c.i, align 4
  %call.i111 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i105, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i111)
  %cmp.not.i112 = icmp eq i32 %call.i111, 1
  br i1 %cmp.not.i112, label %mt2266_writeregs.exit103.mt2266_writereg.exit116_crit_edge, label %do.end.i114

mt2266_writeregs.exit103.mt2266_writereg.exit116_crit_edge: ; preds = %mt2266_writeregs.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit116

do.end.i114:                                      ; preds = %mt2266_writeregs.exit103
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit116

mt2266_writereg.exit116:                          ; preds = %do.end.i114, %mt2266_writeregs.exit103.mt2266_writereg.exit116_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i105) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i117) #6
  %117 = getelementptr inbounds [2 x i8], ptr %buf.i117, i32 0, i32 1
  %118 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 28, ptr %buf.i117, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118) #6
  %120 = getelementptr inbounds i8, ptr %msg.i118, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 196607, ptr %120, align 4
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 1
  %conv.i119 = zext i8 %125 to i16
  %126 = ptrtoint ptr %msg.i118 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i119, ptr %msg.i118, align 4
  %flags.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i120 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i120, align 2
  %buf1.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118, i32 0, i32 3
  %128 = ptrtoint ptr %buf1.i122 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %buf.i117, ptr %buf1.i122, align 4
  %129 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i2c.i, align 4
  %call.i124 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i118, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i124)
  %cmp.not.i125 = icmp eq i32 %call.i124, 1
  br i1 %cmp.not.i125, label %mt2266_writereg.exit116.mt2266_writereg.exit129_crit_edge, label %do.end.i127

mt2266_writereg.exit116.mt2266_writereg.exit129_crit_edge: ; preds = %mt2266_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit129

do.end.i127:                                      ; preds = %mt2266_writereg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit129

mt2266_writereg.exit129:                          ; preds = %do.end.i127, %mt2266_writereg.exit116.mt2266_writereg.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i117) #6
  call void @msleep(i32 noundef 75) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i130) #6
  %131 = getelementptr inbounds [2 x i8], ptr %buf.i130, i32 0, i32 1
  %132 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 23, ptr %buf.i130, align 1
  %133 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 109, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i131) #6
  %134 = getelementptr inbounds i8, ptr %msg.i131, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 196607, ptr %134, align 4
  %136 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 1
  %conv.i132 = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i131 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i132, ptr %msg.i131, align 4
  %flags.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i133 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i133, align 2
  %buf1.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 3
  %142 = ptrtoint ptr %buf1.i135 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %buf.i130, ptr %buf1.i135, align 4
  %143 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c.i, align 4
  %call.i137 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i131, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i137)
  %cmp.not.i138 = icmp eq i32 %call.i137, 1
  br i1 %cmp.not.i138, label %mt2266_writereg.exit129.mt2266_writereg.exit142_crit_edge, label %do.end.i140

mt2266_writereg.exit129.mt2266_writereg.exit142_crit_edge: ; preds = %mt2266_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit142

do.end.i140:                                      ; preds = %mt2266_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit142

mt2266_writereg.exit142:                          ; preds = %do.end.i140, %mt2266_writereg.exit129.mt2266_writereg.exit142_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i131) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i143) #6
  %145 = getelementptr inbounds [2 x i8], ptr %buf.i143, i32 0, i32 1
  %146 = ptrtoint ptr %buf.i143 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 28, ptr %buf.i143, align 1
  %147 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -1, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i144) #6
  %148 = getelementptr inbounds i8, ptr %msg.i144, i32 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 196607, ptr %148, align 4
  %150 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 1
  %conv.i145 = zext i8 %153 to i16
  %154 = ptrtoint ptr %msg.i144 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i145, ptr %msg.i144, align 4
  %flags.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i146, align 2
  %buf1.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144, i32 0, i32 3
  %156 = ptrtoint ptr %buf1.i148 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %buf.i143, ptr %buf1.i148, align 4
  %157 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i2c.i, align 4
  %call.i150 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i144, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 1
  br i1 %cmp.not.i151, label %mt2266_writereg.exit142.mt2266_writereg.exit155_crit_edge, label %do.end.i153

mt2266_writereg.exit142.mt2266_writereg.exit155_crit_edge: ; preds = %mt2266_writereg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit155

do.end.i153:                                      ; preds = %mt2266_writereg.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit155

mt2266_writereg.exit155:                          ; preds = %do.end.i153, %mt2266_writereg.exit142.mt2266_writereg.exit155_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i144) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i143) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2266_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2266_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i10 = alloca [2 x i8], align 1
  %msg.i11 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 23, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 109, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2266_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %mt2266_writereg.exit.thread

mt2266_writereg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i10) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i10, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 28, ptr %buf.i10, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11) #6
  %19 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv.i12 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i12, ptr %msg.i11, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i13, align 2
  %buf1.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %27 = ptrtoint ptr %buf1.i15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i10, ptr %buf1.i15, align 4
  %28 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c.i, align 4
  %call.i17 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i17)
  %cmp.not.i18 = icmp eq i32 %call.i17, 1
  br i1 %cmp.not.i18, label %mt2266_writereg.exit22, label %30

mt2266_writereg.exit22:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i10) #6
  br label %cleanup

30:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i10) #6
  br label %cleanup

cleanup:                                          ; preds = %30, %mt2266_writereg.exit22, %mt2266_writereg.exit.thread
  %retval.0 = phi i32 [ -121, %mt2266_writereg.exit.thread ], [ -121, %30 ], [ 0, %mt2266_writereg.exit22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2266_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 23, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 109, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2266_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.mt2266_writereg.exit_crit_edge, label %do.end.i

entry.mt2266_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit

mt2266_writereg.exit:                             ; preds = %do.end.i, %entry.mt2266_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 28, ptr %buf.i3, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %19 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv.i5 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i5, ptr %msg.i4, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i6, align 2
  %buf1.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %27 = ptrtoint ptr %buf1.i8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i3, ptr %buf1.i8, align 4
  %28 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c.i, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %mt2266_writereg.exit.mt2266_writereg.exit15_crit_edge, label %do.end.i13

mt2266_writereg.exit.mt2266_writereg.exit15_crit_edge: ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit15

do.end.i13:                                       ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit15

mt2266_writereg.exit15:                           ; preds = %do.end.i13, %mt2266_writereg.exit.mt2266_writereg.exit15_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2266_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i427 = alloca [2 x i8], align 1
  %msg.i428 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i417 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i406 = alloca %struct.i2c_msg, align 4
  %msg.i395 = alloca %struct.i2c_msg, align 4
  %msg.i384 = alloca %struct.i2c_msg, align 4
  %buf.i371 = alloca [2 x i8], align 1
  %msg.i372 = alloca %struct.i2c_msg, align 4
  %buf.i358 = alloca [2 x i8], align 1
  %msg.i359 = alloca %struct.i2c_msg, align 4
  %msg.i347 = alloca %struct.i2c_msg, align 4
  %buf.i334 = alloca [2 x i8], align 1
  %msg.i335 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i327 = alloca %struct.i2c_msg, align 4
  %msg.i316 = alloca %struct.i2c_msg, align 4
  %msg.i305 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %b = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %b) #6
  %0 = getelementptr inbounds [10 x i8], ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %b, i32 0, i32 3
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %3 = call ptr @memset(ptr %b, i32 255, i32 10)
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  %frequency = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  %8 = add i32 %7, -230001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 239999000, i32 %8)
  %9 = icmp ult i32 %8, 239999000
  br i1 %9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %7, 1000
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %frequency, align 4
  %mul4 = shl i32 %div, 10
  %div5 = udiv i32 %mul4, 1875
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %7)
  %cmp6 = icmp ult i32 %7, 300000000
  %conv = zext i1 %cmp6 to i8
  %mul11 = zext i1 %cmp6 to i32
  %spec.select = shl nuw nsw i32 %div5, %mul11
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth_hz, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.default [
    i32 6000000, label %sw.bb
    i32 8000000, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  store i16 9, ptr %16, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mt2266_init_6mhz, ptr %buf3.i, align 4
  %i2c.i = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.mt2266_writeregs.exit_crit_edge, label %do.end.i

sw.bb.mt2266_writeregs.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 9) #10
  br label %mt2266_writeregs.exit

mt2266_writeregs.exit:                            ; preds = %do.end.i, %sw.bb.mt2266_writeregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i305) #6
  %27 = getelementptr inbounds i8, ptr %msg.i305, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i306 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i305 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i306, ptr %msg.i305, align 4
  %flags.i307 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i305, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i307 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i307, align 2
  store i16 9, ptr %27, align 4
  %buf3.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i305, i32 0, i32 3
  %35 = ptrtoint ptr %buf3.i309 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mt2266_init_8mhz, ptr %buf3.i309, align 4
  %i2c.i310 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %36 = ptrtoint ptr %i2c.i310 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i310, align 4
  %call.i311 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i305, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i311)
  %cmp.not.i312 = icmp eq i32 %call.i311, 1
  br i1 %cmp.not.i312, label %sw.bb13.mt2266_writeregs.exit315_crit_edge, label %do.end.i314

sw.bb13.mt2266_writeregs.exit315_crit_edge:       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit315

do.end.i314:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 9) #10
  br label %mt2266_writeregs.exit315

mt2266_writeregs.exit315:                         ; preds = %do.end.i314, %sw.bb13.mt2266_writeregs.exit315_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i305) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i316) #6
  %38 = getelementptr inbounds i8, ptr %msg.i316, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv.i317 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i316 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i317, ptr %msg.i316, align 4
  %flags.i318 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i316, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i318 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i318, align 2
  store i16 9, ptr %38, align 4
  %buf3.i320 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i316, i32 0, i32 3
  %46 = ptrtoint ptr %buf3.i320 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mt2266_init_7mhz, ptr %buf3.i320, align 4
  %i2c.i321 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %47 = ptrtoint ptr %i2c.i321 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c.i321, align 4
  %call.i322 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i316, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i322)
  %cmp.not.i323 = icmp eq i32 %call.i322, 1
  br i1 %cmp.not.i323, label %sw.default.mt2266_writeregs.exit326_crit_edge, label %do.end.i325

sw.default.mt2266_writeregs.exit326_crit_edge:    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit326

do.end.i325:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 9) #10
  br label %mt2266_writeregs.exit326

mt2266_writeregs.exit326:                         ; preds = %do.end.i325, %sw.default.mt2266_writeregs.exit326_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i316) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %mt2266_writeregs.exit326, %mt2266_writeregs.exit315, %mt2266_writeregs.exit
  %49 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 3
  %51 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bandwidth, align 4
  %band22 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 4
  %52 = ptrtoint ptr %band22 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %band22, align 4
  br i1 %cmp6, label %land.lhs.true21, label %land.lhs.true44.critedge

land.lhs.true21:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp24 = icmp eq i8 %53, 0
  br i1 %cmp24, label %do.body, label %land.lhs.true21.if.end70.thread_crit_edge

land.lhs.true21.if.end70.thread_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.thread

do.body:                                          ; preds = %land.lhs.true21
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not = icmp eq i32 %54, 0
  br i1 %tobool.not, label %do.body.do.end37_crit_edge, label %do.end

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end37

do.end37:                                         ; preds = %do.end, %do.body.do.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %buf.i, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i327) #6
  %58 = getelementptr inbounds i8, ptr %msg.i327, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i328 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i327 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i328, ptr %msg.i327, align 4
  %flags.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i327, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i329, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i327, i32 0, i32 3
  %66 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i, ptr %buf1.i, align 4
  %i2c.i330 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %67 = ptrtoint ptr %i2c.i330 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c.i330, align 4
  %call.i331 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i327, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i331)
  %cmp.not.i332 = icmp eq i32 %call.i331, 1
  br i1 %cmp.not.i332, label %do.end37.mt2266_writereg.exit_crit_edge, label %do.end.i333

do.end37.mt2266_writereg.exit_crit_edge:          ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit

do.end.i333:                                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit

mt2266_writereg.exit:                             ; preds = %do.end.i333, %do.end37.mt2266_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i327) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i334) #6
  %69 = getelementptr inbounds [2 x i8], ptr %buf.i334, i32 0, i32 1
  %70 = ptrtoint ptr %buf.i334 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 25, ptr %buf.i334, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 97, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i335) #6
  %72 = getelementptr inbounds i8, ptr %msg.i335, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196607, ptr %72, align 4
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  %conv.i336 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i335 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i336, ptr %msg.i335, align 4
  %flags.i337 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i337 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i337, align 2
  %buf1.i339 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 0, i32 3
  %80 = ptrtoint ptr %buf1.i339 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i334, ptr %buf1.i339, align 4
  %81 = ptrtoint ptr %i2c.i330 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c.i330, align 4
  %call.i341 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i335, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i341)
  %cmp.not.i342 = icmp eq i32 %call.i341, 1
  br i1 %cmp.not.i342, label %mt2266_writereg.exit.mt2266_writereg.exit346_crit_edge, label %do.end.i344

mt2266_writereg.exit.mt2266_writereg.exit346_crit_edge: ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit346

do.end.i344:                                      ; preds = %mt2266_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit346

mt2266_writereg.exit346:                          ; preds = %do.end.i344, %mt2266_writereg.exit.mt2266_writereg.exit346_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i335) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i334) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i347) #6
  %83 = getelementptr inbounds i8, ptr %msg.i347, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1114111, ptr %83, align 4
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %5, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %conv.i348 = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i347 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i348, ptr %msg.i347, align 4
  %flags.i349 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i349 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i349, align 2
  %buf3.i351 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 3
  %91 = ptrtoint ptr %buf3.i351 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @mt2266_vhf, ptr %buf3.i351, align 4
  %92 = ptrtoint ptr %i2c.i330 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c.i330, align 4
  %call.i353 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i347, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i353)
  %cmp.not.i354 = icmp eq i32 %call.i353, 1
  br i1 %cmp.not.i354, label %mt2266_writereg.exit346.mt2266_writeregs.exit357_crit_edge, label %do.end.i356

mt2266_writereg.exit346.mt2266_writeregs.exit357_crit_edge: ; preds = %mt2266_writereg.exit346
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit357

do.end.i356:                                      ; preds = %mt2266_writereg.exit346
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 16) #10
  br label %mt2266_writeregs.exit357

mt2266_writeregs.exit357:                         ; preds = %do.end.i356, %mt2266_writereg.exit346.mt2266_writeregs.exit357_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i347) #6
  br label %if.end70.thread

land.lhs.true44.critedge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp47 = icmp eq i8 %53, 1
  br i1 %cmp47, label %do.body50, label %land.lhs.true44.critedge.if.end70_crit_edge

land.lhs.true44.critedge.if.end70_crit_edge:      ; preds = %land.lhs.true44.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body50:                                        ; preds = %land.lhs.true44.critedge
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool51.not = icmp eq i32 %94, 0
  br i1 %tobool51.not, label %do.body50.do.end65_crit_edge, label %do.end55

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end65

do.end65:                                         ; preds = %do.end55, %do.body50.do.end65_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i358) #6
  %95 = getelementptr inbounds [2 x i8], ptr %buf.i358, i32 0, i32 1
  %96 = ptrtoint ptr %buf.i358 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %buf.i358, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 82, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i359) #6
  %98 = getelementptr inbounds i8, ptr %msg.i359, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %98, align 4
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %5, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv.i360 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i359 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i360, ptr %msg.i359, align 4
  %flags.i361 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i359, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i361 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i361, align 2
  store i16 2, ptr %98, align 4
  %buf1.i363 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i359, i32 0, i32 3
  %106 = ptrtoint ptr %buf1.i363 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i358, ptr %buf1.i363, align 4
  %i2c.i364 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %107 = ptrtoint ptr %i2c.i364 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c.i364, align 4
  %call.i365 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i359, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i365)
  %cmp.not.i366 = icmp eq i32 %call.i365, 1
  br i1 %cmp.not.i366, label %do.end65.mt2266_writereg.exit370_crit_edge, label %do.end.i368

do.end65.mt2266_writereg.exit370_crit_edge:       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit370

do.end.i368:                                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit370

mt2266_writereg.exit370:                          ; preds = %do.end.i368, %do.end65.mt2266_writereg.exit370_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i359) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i358) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i371) #6
  %109 = getelementptr inbounds [2 x i8], ptr %buf.i371, i32 0, i32 1
  %110 = ptrtoint ptr %buf.i371 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 25, ptr %buf.i371, align 1
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 97, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i372) #6
  %112 = getelementptr inbounds i8, ptr %msg.i372, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %112, align 4
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %5, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv.i373 = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i372 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i373, ptr %msg.i372, align 4
  %flags.i374 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i372, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i374 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i374, align 2
  store i16 2, ptr %112, align 4
  %buf1.i376 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i372, i32 0, i32 3
  %120 = ptrtoint ptr %buf1.i376 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %buf.i371, ptr %buf1.i376, align 4
  %121 = ptrtoint ptr %i2c.i364 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c.i364, align 4
  %call.i378 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %msg.i372, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i378)
  %cmp.not.i379 = icmp eq i32 %call.i378, 1
  br i1 %cmp.not.i379, label %mt2266_writereg.exit370.mt2266_writereg.exit383_crit_edge, label %do.end.i381

mt2266_writereg.exit370.mt2266_writereg.exit383_crit_edge: ; preds = %mt2266_writereg.exit370
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit383

do.end.i381:                                      ; preds = %mt2266_writereg.exit370
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit383

mt2266_writereg.exit383:                          ; preds = %do.end.i381, %mt2266_writereg.exit370.mt2266_writereg.exit383_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i372) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i371) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i384) #6
  %123 = getelementptr inbounds i8, ptr %msg.i384, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %123, align 4
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %5, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 1
  %conv.i385 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i384 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i385, ptr %msg.i384, align 4
  %flags.i386 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i386 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i386, align 2
  store i16 16, ptr %123, align 4
  %buf3.i388 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 3
  %131 = ptrtoint ptr %buf3.i388 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @mt2266_uhf, ptr %buf3.i388, align 4
  %132 = ptrtoint ptr %i2c.i364 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i2c.i364, align 4
  %call.i390 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i384, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i390)
  %cmp.not.i391 = icmp eq i32 %call.i390, 1
  br i1 %cmp.not.i391, label %mt2266_writereg.exit383.mt2266_writeregs.exit394_crit_edge, label %do.end.i393

mt2266_writereg.exit383.mt2266_writeregs.exit394_crit_edge: ; preds = %mt2266_writereg.exit383
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit394

do.end.i393:                                      ; preds = %mt2266_writereg.exit383
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i392 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 16) #10
  br label %mt2266_writeregs.exit394

mt2266_writeregs.exit394:                         ; preds = %do.end.i393, %mt2266_writereg.exit383.mt2266_writeregs.exit394_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384) #6
  br label %if.end70

if.end70.thread:                                  ; preds = %mt2266_writeregs.exit357, %land.lhs.true21.if.end70.thread_crit_edge
  call void @msleep(i32 noundef 10) #6
  br label %if.end135

if.end70:                                         ; preds = %mt2266_writeregs.exit394, %land.lhs.true44.critedge.if.end70_crit_edge
  call void @msleep(i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 495001000, i32 %7)
  %cmp71 = icmp ult i32 %7, 495001000
  br i1 %cmp71, label %if.end70.if.end135_crit_edge, label %if.else74

if.end70.if.end135_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 525001000, i32 %7)
  %cmp75 = icmp ult i32 %7, 525001000
  br i1 %cmp75, label %if.else74.if.end135_crit_edge, label %if.else78

if.else74.if.end135_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else78:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_const_cmp4(i32 550001000, i32 %7)
  %cmp79 = icmp ult i32 %7, 550001000
  br i1 %cmp79, label %if.else78.if.end135_crit_edge, label %if.else82

if.else78.if.end135_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else82:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_const_cmp4(i32 580001000, i32 %7)
  %cmp83 = icmp ult i32 %7, 580001000
  br i1 %cmp83, label %if.else82.if.end135_crit_edge, label %if.else86

if.else82.if.end135_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_const_cmp4(i32 605001000, i32 %7)
  %cmp87 = icmp ult i32 %7, 605001000
  br i1 %cmp87, label %if.else86.if.end135_crit_edge, label %if.else90

if.else86.if.end135_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else90:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 630001000, i32 %7)
  %cmp91 = icmp ult i32 %7, 630001000
  br i1 %cmp91, label %if.else90.if.end135_crit_edge, label %if.else94

if.else90.if.end135_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else94:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_const_cmp4(i32 655001000, i32 %7)
  %cmp95 = icmp ult i32 %7, 655001000
  br i1 %cmp95, label %if.else94.if.end135_crit_edge, label %if.else98

if.else94.if.end135_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else98:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 685001000, i32 %7)
  %cmp99 = icmp ult i32 %7, 685001000
  br i1 %cmp99, label %if.else98.if.end135_crit_edge, label %if.else102

if.else98.if.end135_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else102:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_const_cmp4(i32 710001000, i32 %7)
  %cmp103 = icmp ult i32 %7, 710001000
  br i1 %cmp103, label %if.else102.if.end135_crit_edge, label %if.else106

if.else102.if.end135_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_const_cmp4(i32 735001000, i32 %7)
  %cmp107 = icmp ult i32 %7, 735001000
  br i1 %cmp107, label %if.else106.if.end135_crit_edge, label %if.else110

if.else106.if.end135_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else110:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_const_cmp4(i32 765001000, i32 %7)
  %cmp111 = icmp ult i32 %7, 765001000
  br i1 %cmp111, label %if.else110.if.end135_crit_edge, label %if.else114

if.else110.if.end135_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else114:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_const_cmp4(i32 802001000, i32 %7)
  %cmp115 = icmp ult i32 %7, 802001000
  br i1 %cmp115, label %if.else114.if.end135_crit_edge, label %if.else118

if.else114.if.end135_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.else118:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 840001000, i32 %7)
  %cmp119 = icmp ult i32 %7, 840001000
  %. = select i1 %cmp119, i8 34, i8 17
  br label %if.end135

if.end135:                                        ; preds = %if.else118, %if.else114.if.end135_crit_edge, %if.else110.if.end135_crit_edge, %if.else106.if.end135_crit_edge, %if.else102.if.end135_crit_edge, %if.else98.if.end135_crit_edge, %if.else94.if.end135_crit_edge, %if.else90.if.end135_crit_edge, %if.else86.if.end135_crit_edge, %if.else82.if.end135_crit_edge, %if.else78.if.end135_crit_edge, %if.else74.if.end135_crit_edge, %if.end70.if.end135_crit_edge, %if.end70.thread
  %lnaband.0 = phi i8 [ -18, %if.end70.if.end135_crit_edge ], [ -35, %if.else74.if.end135_crit_edge ], [ -52, %if.else78.if.end135_crit_edge ], [ -69, %if.else82.if.end135_crit_edge ], [ -86, %if.else86.if.end135_crit_edge ], [ -103, %if.else90.if.end135_crit_edge ], [ -120, %if.else94.if.end135_crit_edge ], [ 119, %if.else98.if.end135_crit_edge ], [ 102, %if.else102.if.end135_crit_edge ], [ 85, %if.else106.if.end135_crit_edge ], [ 68, %if.else110.if.end135_crit_edge ], [ 51, %if.else114.if.end135_crit_edge ], [ %., %if.else118 ], [ -18, %if.end70.thread ]
  %134 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %b, align 1
  %shr = lshr i32 %spec.select, 8
  %135 = trunc i32 %shr to i8
  %conv136 = and i8 %135, 31
  %136 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv136, ptr %0, align 1
  %conv139 = trunc i32 %spec.select to i8
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv139, ptr %1, align 1
  %shr141 = lshr i32 %spec.select, 13
  %conv142 = trunc i32 %shr141 to i8
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv142, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i395) #6
  %139 = getelementptr inbounds i8, ptr %msg.i395, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 327679, ptr %139, align 4
  %141 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %5, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 1
  %conv.i396 = zext i8 %144 to i16
  %145 = ptrtoint ptr %msg.i395 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i396, ptr %msg.i395, align 4
  %flags.i397 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i395, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i397 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i397, align 2
  %buf3.i399 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i395, i32 0, i32 3
  %147 = ptrtoint ptr %buf3.i399 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %b, ptr %buf3.i399, align 4
  %i2c.i400 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 1
  %148 = ptrtoint ptr %i2c.i400 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c.i400, align 4
  %call.i401 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i395, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i401)
  %cmp.not.i402 = icmp eq i32 %call.i401, 1
  br i1 %cmp.not.i402, label %if.end135.mt2266_writeregs.exit405_crit_edge, label %do.end.i404

if.end135.mt2266_writeregs.exit405_crit_edge:     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit405

do.end.i404:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 4) #10
  br label %mt2266_writeregs.exit405

mt2266_writeregs.exit405:                         ; preds = %do.end.i404, %if.end135.mt2266_writeregs.exit405_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i395) #6
  %150 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool146.not = icmp eq i32 %150, 0
  br i1 %tobool146.not, label %mt2266_writeregs.exit405.do.end187_crit_edge, label %do.body166

mt2266_writeregs.exit405.do.end187_crit_edge:     ; preds = %mt2266_writeregs.exit405
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

do.body166:                                       ; preds = %mt2266_writeregs.exit405
  %conv152 = zext i8 %lnaband.0 to i32
  %cond156 = select i1 %cmp6, ptr @.str.21, ptr @.str.20
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %spec.select, i32 noundef %conv152, ptr noundef nonnull %cond156) #10
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool167.not = icmp eq i32 %.pr, 0
  br i1 %tobool167.not, label %do.body166.do.end187_crit_edge, label %do.end171

do.body166.do.end187_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end187

do.end171:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %0, align 1
  %conv174 = zext i8 %152 to i32
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %1, align 1
  %conv176 = zext i8 %154 to i32
  %155 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %2, align 1
  %conv178 = zext i8 %156 to i32
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv174, i32 noundef %conv176, i32 noundef %conv178) #10
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end187

do.end187:                                        ; preds = %do.end171, %do.body166.do.end187_crit_edge, %mt2266_writeregs.exit405.do.end187_crit_edge
  br i1 %cmp6, label %do.end187.if.end203_crit_edge, label %if.then191

do.end187.if.end203_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.then191:                                       ; preds = %do.end187
  %157 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 5, ptr %b, align 1
  %band193 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 4
  %158 = ptrtoint ptr %band193 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %band193, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %159)
  %cmp195 = icmp eq i8 %159, 1
  %conv198 = select i1 %cmp195, i8 82, i8 98
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv198, ptr %0, align 1
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %lnaband.0, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i406) #6
  %162 = getelementptr inbounds i8, ptr %msg.i406, i32 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 262143, ptr %162, align 4
  %164 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %5, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 1
  %conv.i407 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i406 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i407, ptr %msg.i406, align 4
  %flags.i408 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i408 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i408, align 2
  %buf3.i410 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 0, i32 3
  %170 = ptrtoint ptr %buf3.i410 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %b, ptr %buf3.i410, align 4
  %171 = ptrtoint ptr %i2c.i400 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i2c.i400, align 4
  %call.i412 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i406, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i412)
  %cmp.not.i413 = icmp eq i32 %call.i412, 1
  br i1 %cmp.not.i413, label %if.then191.mt2266_writeregs.exit416_crit_edge, label %do.end.i415

if.then191.mt2266_writeregs.exit416_crit_edge:    ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writeregs.exit416

do.end.i415:                                      ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef 3) #10
  br label %mt2266_writeregs.exit416

mt2266_writeregs.exit416:                         ; preds = %do.end.i415, %if.then191.mt2266_writeregs.exit416_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i406) #6
  br label %if.end203

if.end203:                                        ; preds = %mt2266_writeregs.exit416, %do.end187.if.end203_crit_edge
  %173 = getelementptr inbounds i8, ptr %msg.i417, i32 4
  %flags.i419 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 0, i32 1
  %buf.i421 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 1
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 1, i32 1
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 1, i32 2
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i417, i32 1, i32 3
  br label %do.body204

do.body204:                                       ; preds = %if.end212.do.body204_crit_edge, %if.end203
  %i.0 = phi i32 [ 0, %if.end203 ], [ %inc, %if.end212.do.body204_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %174 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 18, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i417) #6
  %175 = call ptr @memset(ptr %173, i32 255, i32 16)
  %176 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %5, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  %conv.i418 = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i417 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i418, ptr %msg.i417, align 4
  %181 = ptrtoint ptr %flags.i419 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i419, align 2
  %182 = ptrtoint ptr %173 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 1, ptr %173, align 4
  %183 = ptrtoint ptr %buf.i421 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %reg.addr.i, ptr %buf.i421, align 4
  %184 = load i8, ptr %177, align 1
  %conv4.i = zext i8 %184 to i16
  %185 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %186 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %flags5.i, align 2
  %187 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 1, ptr %len6.i, align 4
  %188 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %b, ptr %buf7.i, align 4
  %189 = ptrtoint ptr %i2c.i400 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %i2c.i400, align 4
  %call.i423 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i417, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i423)
  %cmp.not.i424 = icmp eq i32 %call.i423, 2
  br i1 %cmp.not.i424, label %do.body204.mt2266_readreg.exit_crit_edge, label %do.end.i425

do.body204.mt2266_readreg.exit_crit_edge:         ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_readreg.exit

do.end.i425:                                      ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %mt2266_readreg.exit

mt2266_readreg.exit:                              ; preds = %do.end.i425, %do.body204.mt2266_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i417) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %191 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %b, align 1
  %193 = and i8 %192, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool210.not = icmp eq i8 %193, 0
  br i1 %tobool210.not, label %if.end212, label %mt2266_readreg.exit.do.body217_crit_edge

mt2266_readreg.exit.do.body217_crit_edge:         ; preds = %mt2266_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body217

if.end212:                                        ; preds = %mt2266_readreg.exit
  call void @msleep(i32 noundef 10) #6
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end212.do.body217_crit_edge, label %if.end212.do.body204_crit_edge

if.end212.do.body204_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body204

if.end212.do.body217_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body217

do.body217:                                       ; preds = %if.end212.do.body217_crit_edge, %mt2266_readreg.exit.do.body217_crit_edge
  %i.1 = phi i32 [ %i.0, %mt2266_readreg.exit.do.body217_crit_edge ], [ 10, %if.end212.do.body217_crit_edge ]
  %194 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool218.not = icmp eq i32 %194, 0
  br i1 %tobool218.not, label %do.body217.do.end232_crit_edge, label %do.end222

do.body217.do.end232_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end232

do.end222:                                        ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #8
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.1) #10
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.end232

do.end232:                                        ; preds = %do.end222, %do.body217.do.end232_crit_edge
  br i1 %cmp6, label %do.end232.if.end243_crit_edge, label %land.lhs.true236

do.end232.if.end243_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

land.lhs.true236:                                 ; preds = %do.end232
  %band237 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 4
  %195 = ptrtoint ptr %band237 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %band237, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp239 = icmp eq i8 %196, 1
  br i1 %cmp239, label %if.then241, label %land.lhs.true236.if.end243_crit_edge

land.lhs.true236.if.end243_crit_edge:             ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

if.then241:                                       ; preds = %land.lhs.true236
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i427) #6
  %197 = getelementptr inbounds [2 x i8], ptr %buf.i427, i32 0, i32 1
  %198 = ptrtoint ptr %buf.i427 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 5, ptr %buf.i427, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 98, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i428) #6
  %200 = getelementptr inbounds i8, ptr %msg.i428, i32 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 196607, ptr %200, align 4
  %202 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %5, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 1
  %conv.i429 = zext i8 %205 to i16
  %206 = ptrtoint ptr %msg.i428 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv.i429, ptr %msg.i428, align 4
  %flags.i430 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i428, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i430 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %flags.i430, align 2
  %buf1.i432 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i428, i32 0, i32 3
  %208 = ptrtoint ptr %buf1.i432 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %buf.i427, ptr %buf1.i432, align 4
  %209 = ptrtoint ptr %i2c.i400 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %i2c.i400, align 4
  %call.i434 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i428, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i434)
  %cmp.not.i435 = icmp eq i32 %call.i434, 1
  br i1 %cmp.not.i435, label %if.then241.mt2266_writereg.exit439_crit_edge, label %do.end.i437

if.then241.mt2266_writereg.exit439_crit_edge:     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt2266_writereg.exit439

do.end.i437:                                      ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %mt2266_writereg.exit439

mt2266_writereg.exit439:                          ; preds = %do.end.i437, %if.then241.mt2266_writereg.exit439_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i428) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i427) #6
  br label %if.end243

if.end243:                                        ; preds = %mt2266_writereg.exit439, %land.lhs.true236.if.end243_crit_edge, %do.end232.if.end243_crit_edge
  %band244 = getelementptr inbounds %struct.mt2266_priv, ptr %5, i32 0, i32 4
  %211 = ptrtoint ptr %band244 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv, ptr %band244, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end243 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %b) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt2266_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.mt2266_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt2266_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.mt2266_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mt2266.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mt2266.c", i32 43, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mt2266.c", i32 332, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mt2266_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mt2266_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mt2266_attach, !12, !"__ksymtab_mt2266_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/mt2266.c", i32 339, i32 1}
!13 = !{ptr @__UNIQUE_ID_author292, !14, !"__UNIQUE_ID_author292", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/mt2266.c", i32 341, i32 1}
!15 = !{ptr @__UNIQUE_ID_description293, !16, !"__UNIQUE_ID_description293", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/mt2266.c", i32 342, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/mt2266.c", i32 343, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/mt2266.c", i32 41, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/mt2266.c", i32 55, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt2266_readreg._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt2266_readreg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mt2266_tuner_ops, !29, !"mt2266_tuner_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/mt2266.c", i32 296, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/mt2266.c", i32 69, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt2266_writereg._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt2266_writereg._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/mt2266.c", i32 158, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mt2266_set_params._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt2266_set_params._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mt2266_set_params._entry.9, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt2266_set_params._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/mt2266.c", i32 163, i32 3}
!45 = !{ptr @mt2266_set_params._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt2266_set_params._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mt2266_set_params._entry.15, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt2266_set_params._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/mt2266.c", i32 205, i32 2}
!51 = !{ptr @mt2266_set_params._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt2266_set_params._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mt2266_set_params._entry.22, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt2266_set_params._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/mt2266.c", i32 208, i32 2}
!59 = !{ptr @mt2266_set_params._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt2266_set_params._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mt2266_set_params._entry.27, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt2266_set_params._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/mt2266.c", i32 227, i32 2}
!65 = !{ptr @mt2266_set_params._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt2266_set_params._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mt2266_set_params._entry.32, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @mt2266_set_params._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/mt2266.c", i32 82, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mt2266_writeregs._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt2266_writeregs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mt2266_init_6mhz, !75, !"mt2266_init_6mhz", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/mt2266.c", i32 105, i32 11}
!76 = !{ptr @mt2266_init_8mhz, !77, !"mt2266_init_8mhz", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/mt2266.c", i32 99, i32 11}
!78 = !{ptr @mt2266_init_7mhz, !79, !"mt2266_init_7mhz", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/mt2266.c", i32 102, i32 11}
!80 = !{ptr @mt2266_vhf, !81, !"mt2266_vhf", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/mt2266.c", i32 111, i32 11}
!82 = !{ptr @mt2266_uhf, !83, !"mt2266_uhf", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/mt2266.c", i32 108, i32 11}
!84 = !{ptr @mt2266_init1, !85, !"mt2266_init1", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/mt2266.c", i32 89, i32 11}
!86 = !{ptr @mt2266_init2, !87, !"mt2266_init2", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/mt2266.c", i32 92, i32 11}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
