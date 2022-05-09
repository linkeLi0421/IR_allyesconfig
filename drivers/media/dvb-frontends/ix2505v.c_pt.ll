; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ix2505v.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ix2505v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ix2505v_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ix2505v_attach\09\09\09\09"
module asm "\09.long\09__crc_ix2505v_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ix2505v_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ix2505v_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ix2505v_attach:\09\09\09\09\09"
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
%struct.ix2505v_state = type { ptr, ptr, i32 }
%struct.ix2505v_config = type { i8, i8, i8, i32, i8 }
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

@ix2505v_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ix2505v_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017ix2505v: %s: no config \00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ix2505v_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/ix2505v.c\00", [58 x i8] zeroinitializer }, align 32
@ix2505v_attach._entry_ptr = internal global ptr @ix2505v_attach._entry, section ".printk_index", align 4
@ix2505v_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017ix2505v: %s: No IX2505V found\0A\00", [63 x i8] zeroinitializer }, align 32
@ix2505v_attach._entry_ptr.5 = internal global ptr @ix2505v_attach._entry.3, section ".printk_index", align 4
@ix2505v_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sharp IX2505V (B0017)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @ix2505v_release, ptr null, ptr null, ptr null, ptr null, ptr @ix2505v_set_params, ptr null, ptr null, ptr @ix2505v_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ix2505v_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017ix2505v: %s: initialization (%s addr=0x%02x) ok\0A\00", [45 x i8] zeroinitializer }, align 32
@ix2505v_attach._entry_ptr.8 = internal global ptr @ix2505v_attach._entry.6, section ".printk_index", align 4
@__kstrtab_ix2505v_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ix2505v_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ix2505v_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ix2505v_attach to i32), ptr @__kstrtab_ix2505v_attach, ptr @__kstrtabns_ix2505v_attach }, section "___ksymtab+ix2505v_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"ix2505v.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @ix2505v_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"ix2505v.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"ix2505v.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [45 x i8] c"ix2505v.description=DVB IX2505V tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"ix2505v.author=Malcolm Priestley\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"ix2505v.file=drivers/media/dvb-frontends/ix2505v\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"ix2505v.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ix2505v_read_status_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017ix2505v: Read %s \00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ix2505v_read_status_reg\00", [40 x i8] zeroinitializer }, align 32
@ix2505v_read_status_reg._entry_ptr = internal global ptr @ix2505v_read_status_reg._entry, section ".printk_index", align 4
@ix2505v_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ix2505v: Frq=%d x=%d N=%d A=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ix2505v_set_params\00", [45 x i8] zeroinitializer }, align 32
@ix2505v_set_params._entry_ptr = internal global ptr @ix2505v_set_params._entry, section ".printk_index", align 4
@ix2505v_set_params._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017ix2505v: Osc=%x b_w=%x lpf=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ix2505v_set_params._entry_ptr.15 = internal global ptr @ix2505v_set_params._entry.13, section ".printk_index", align 4
@ix2505v_set_params._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017ix2505v: Data 0=[%4phN]\0A\00", [37 x i8] zeroinitializer }, align 32
@ix2505v_set_params._entry_ptr.18 = internal global ptr @ix2505v_set_params._entry.16, section ".printk_index", align 4
@ix2505v_set_params._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017ix2505v: Data 2=[%x%x]\0A\00", [38 x i8] zeroinitializer }, align 32
@ix2505v_set_params._entry_ptr.21 = internal global ptr @ix2505v_set_params._entry.19, section ".printk_index", align 4
@ix2505v_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ix2505v: %s: i2c error, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ix2505v_write\00", [18 x i8] zeroinitializer }, align 32
@ix2505v_write._entry_ptr = internal global ptr @ix2505v_write._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"ix2505v_debug\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 15, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 266, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 284, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"ix2505v_tuner_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 247, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 296, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 60, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 156, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 200, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 201, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 222, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [41 x i8] c"../drivers/media/dvb-frontends/ix2505v.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 77, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_ix2505v_attach, ptr @__param_debug, ptr @ix2505v_attach._entry, ptr @ix2505v_attach._entry.3, ptr @ix2505v_attach._entry.6, ptr @ix2505v_attach._entry_ptr, ptr @ix2505v_attach._entry_ptr.5, ptr @ix2505v_attach._entry_ptr.8, ptr @ix2505v_read_status_reg._entry, ptr @ix2505v_read_status_reg._entry_ptr, ptr @ix2505v_set_params._entry, ptr @ix2505v_set_params._entry.13, ptr @ix2505v_set_params._entry.16, ptr @ix2505v_set_params._entry.19, ptr @ix2505v_set_params._entry_ptr, ptr @ix2505v_set_params._entry_ptr.15, ptr @ix2505v_set_params._entry_ptr.18, ptr @ix2505v_set_params._entry_ptr.21, ptr @ix2505v_write._entry, ptr @ix2505v_write._entry_ptr, ptr @ix2505v_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ix2505v_tuner_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_read_status_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_set_params._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_set_params._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_set_params._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ix2505v_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ix2505v_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b2.i = alloca [1 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %config, null
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @ix2505v_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.error_crit_edge, label %do.end

do.body.error_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %error

if.end5:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #11
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %config10 = getelementptr inbounds %struct.ix2505v_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config10, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %tuner_write_only = getelementptr inbounds %struct.ix2505v_config, ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_write_only to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_write_only, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %if.end9.if.end46_crit_edge, label %if.then14

if.end9.if.end46_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then14:                                        ; preds = %if.end9
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.then14.if.end20_crit_edge, label %if.then16

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 %7(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then14.if.end20_crit_edge
  %8 = ptrtoint ptr %config10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config10, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b2.i) #7
  %12 = ptrtoint ptr %b2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %b2.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 131071, ptr %13, align 4
  %conv.i = zext i8 %11 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b2.i, ptr %buf.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  %20 = load i32, ptr @ix2505v_debug, align 4
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end20.do.end6.i_crit_edge, label %do.end.i

if.end20.do.end6.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end20.do.end6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %ix2505v_read_status_reg.exit, label %ix2505v_read_status_reg.exit.thread

ix2505v_read_status_reg.exit.thread:              ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b2.i) #7
  br label %do.body25

ix2505v_read_status_reg.exit:                     ; preds = %do.end6.i
  %21 = ptrtoint ptr %b2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b2.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b2.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool23.not = icmp sgt i8 %22, -1
  br i1 %tobool23.not, label %if.end37, label %ix2505v_read_status_reg.exit.do.body25_crit_edge

ix2505v_read_status_reg.exit.do.body25_crit_edge: ; preds = %ix2505v_read_status_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.body25:                                        ; preds = %ix2505v_read_status_reg.exit.do.body25_crit_edge, %ix2505v_read_status_reg.exit.thread
  %23 = load i32, ptr @ix2505v_debug, align 4
  %and26 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.error_crit_edge, label %do.end31

do.body25.error_crit_edge:                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %error

if.end37:                                         ; preds = %ix2505v_read_status_reg.exit
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %if.end37.if.end46_crit_edge, label %if.then41

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 %25(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end37.if.end46_crit_edge, %if.end9.if.end46_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %26 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %27 = call ptr @memcpy(ptr %tuner_ops, ptr @ix2505v_tuner_ops, i32 220)
  %28 = load i32, ptr @ix2505v_debug, align 4
  %and49 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %do.end54

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config, align 4
  %conv = zext i8 %30 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %tuner_ops, i32 noundef %conv) #10
  br label %cleanup

error:                                            ; preds = %do.end31, %do.body25.error_crit_edge, %do.end, %do.body.error_crit_edge
  %state.0 = phi ptr [ null, %do.end ], [ null, %do.body.error_crit_edge ], [ %call7.i.i, %do.end31 ], [ %call7.i.i, %do.body25.error_crit_edge ]
  call void @kfree(ptr noundef %state.0) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end54, %if.end46.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %if.end5.cleanup_crit_edge ], [ %fe, %do.end54 ], [ %fe, %if.end46.cleanup_crit_edge ]
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
define internal void @ix2505v_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ix2505v_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i341 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i326 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %symbol_rate, align 4
  %mul = mul i32 %5, 27
  %div = udiv i32 %mul, 32000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency_min_hz, align 4
  %div2 = udiv i32 %7, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div2)
  %cmp = icmp ult i32 %3, %div2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency_max_hz, align 4
  %div5 = udiv i32 %9, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div5)
  %cmp6 = icmp ugt i32 %3, %div5
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %config = getelementptr inbounds %struct.ix2505v_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %tuner_gain = getelementptr inbounds %struct.ix2505v_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tuner_gain to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner_gain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %14 = tail call i8 @llvm.umin.i8(i8 %13, i8 4)
  %tuner_chargepump = getelementptr inbounds %struct.ix2505v_config, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %tuner_chargepump to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tuner_chargepump, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  %mul25 = shl i32 %3, 3
  %div28 = udiv i32 %mul25, 1280
  %div29 = udiv i32 %mul25, 128000
  %mul30.neg = mul i32 %div29, 134217628
  %sub = add i32 %mul30.neg, %div28
  %mul32 = shl i32 %sub, 5
  %div33 = udiv i32 %mul32, 100
  %.op = shl nuw i8 %14, 5
  %.op.op = and i8 %.op, 96
  %17 = select i1 %tobool.not, i8 0, i8 %.op.op
  %shr = lshr i32 %div29, 3
  %18 = trunc i32 %shr to i8
  %conv35 = or i8 %17, %18
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv35, ptr %data, align 4
  %shl36 = shl nuw nsw i32 %div29, 5
  %and37 = and i32 %div33, 31
  %or38 = or i32 %and37, %shl36
  %conv39 = trunc i32 %or38 to i8
  %arrayidx40 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv39, ptr %arrayidx40, align 1
  %.op357 = shl i8 %16, 5
  %.op357.op = or i8 %.op357, -127
  %21 = select i1 %tobool18.not, i8 -31, i8 %.op357.op
  %arrayidx46 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx46, align 2
  %23 = load i32, ptr @ix2505v_debug, align 4
  %and47 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end.do.end53_crit_edge, label %do.end

if.end.do.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %div28, i32 noundef %div29, i32 noundef %div33) #10
  br label %do.end53

do.end53:                                         ; preds = %do.end, %if.end.do.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065001, i32 %3)
  %cmp54 = icmp ult i32 %3, 1065001
  br i1 %cmp54, label %do.end53.if.end88_crit_edge, label %if.else57

do.end53.if.end88_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1170001, i32 %3)
  %cmp58 = icmp ult i32 %3, 1170001
  br i1 %cmp58, label %if.else57.if.end88_crit_edge, label %if.else61

if.else57.if.end88_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300001, i32 %3)
  %cmp62 = icmp ult i32 %3, 1300001
  br i1 %cmp62, label %if.else61.if.end88_crit_edge, label %if.else65

if.else61.if.end88_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1445001, i32 %3)
  %cmp66 = icmp ult i32 %3, 1445001
  br i1 %cmp66, label %if.else65.if.end88_crit_edge, label %if.else69

if.else65.if.end88_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else69:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1607001, i32 %3)
  %cmp70 = icmp ult i32 %3, 1607001
  br i1 %cmp70, label %if.else69.if.end88_crit_edge, label %if.else73

if.else69.if.end88_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1778001, i32 %3)
  %cmp74 = icmp ult i32 %3, 1778001
  br i1 %cmp74, label %if.else73.if.end88_crit_edge, label %if.else77

if.else73.if.end88_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else77:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1942001, i32 %3)
  %cmp78 = icmp ult i32 %3, 1942001
  %. = select i1 %cmp78, i8 -96, i8 -64
  br label %if.end88

if.end88:                                         ; preds = %if.else77, %if.else73.if.end88_crit_edge, %if.else69.if.end88_crit_edge, %if.else65.if.end88_crit_edge, %if.else61.if.end88_crit_edge, %if.else57.if.end88_crit_edge, %do.end53.if.end88_crit_edge
  %local_osc.0 = phi i8 [ -62, %do.end53.if.end88_crit_edge ], [ -30, %if.else57.if.end88_crit_edge ], [ 32, %if.else61.if.end88_crit_edge ], [ 64, %if.else65.if.end88_crit_edge ], [ 96, %if.else69.if.end88_crit_edge ], [ -128, %if.else73.if.end88_crit_edge ], [ %., %if.else77 ]
  %arrayidx89 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %local_osc.0, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 320032000, i32 %mul)
  %cmp90 = icmp ult i32 %mul, 320032000
  br i1 %cmp90, label %if.end88.do.body140_crit_edge, label %if.else93

if.end88.do.body140_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 384032000, i32 %mul)
  %cmp94 = icmp ult i32 %mul, 384032000
  br i1 %cmp94, label %if.else93.do.body140_crit_edge, label %if.else97

if.else93.do.body140_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else97:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_const_cmp4(i32 448032000, i32 %mul)
  %cmp98 = icmp ult i32 %mul, 448032000
  br i1 %cmp98, label %if.else97.do.body140_crit_edge, label %if.else101

if.else97.do.body140_crit_edge:                   ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_const_cmp4(i32 512032000, i32 %mul)
  %cmp102 = icmp ult i32 %mul, 512032000
  br i1 %cmp102, label %if.else101.do.body140_crit_edge, label %if.else105

if.else101.do.body140_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else105:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_const_cmp4(i32 576032000, i32 %mul)
  %cmp106 = icmp ult i32 %mul, 576032000
  br i1 %cmp106, label %if.else105.do.body140_crit_edge, label %if.else109

if.else105.do.body140_crit_edge:                  ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else109:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_const_cmp4(i32 640032000, i32 %mul)
  %cmp110 = icmp ult i32 %mul, 640032000
  br i1 %cmp110, label %if.else109.do.body140_crit_edge, label %if.else113

if.else109.do.body140_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else113:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_const_cmp4(i32 704032000, i32 %mul)
  %cmp114 = icmp ult i32 %mul, 704032000
  br i1 %cmp114, label %if.else113.do.body140_crit_edge, label %if.else117

if.else113.do.body140_crit_edge:                  ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else117:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_const_cmp4(i32 768032000, i32 %mul)
  %cmp118 = icmp ult i32 %mul, 768032000
  br i1 %cmp118, label %if.else117.do.body140_crit_edge, label %if.else121

if.else117.do.body140_crit_edge:                  ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_const_cmp4(i32 832032000, i32 %mul)
  %cmp122 = icmp ult i32 %mul, 832032000
  br i1 %cmp122, label %if.else121.do.body140_crit_edge, label %if.else125

if.else121.do.body140_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.else125:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 896032000, i32 %mul)
  %cmp126 = icmp ult i32 %mul, 896032000
  %.325 = select i1 %cmp126, i32 3, i32 11
  br label %do.body140

do.body140:                                       ; preds = %if.else125, %if.else121.do.body140_crit_edge, %if.else117.do.body140_crit_edge, %if.else113.do.body140_crit_edge, %if.else109.do.body140_crit_edge, %if.else105.do.body140_crit_edge, %if.else101.do.body140_crit_edge, %if.else97.do.body140_crit_edge, %if.else93.do.body140_crit_edge, %if.end88.do.body140_crit_edge
  %lpf.0 = phi i32 [ 12, %if.end88.do.body140_crit_edge ], [ 2, %if.else93.do.body140_crit_edge ], [ 10, %if.else97.do.body140_crit_edge ], [ 6, %if.else101.do.body140_crit_edge ], [ 14, %if.else105.do.body140_crit_edge ], [ 1, %if.else109.do.body140_crit_edge ], [ 9, %if.else113.do.body140_crit_edge ], [ 5, %if.else117.do.body140_crit_edge ], [ 13, %if.else121.do.body140_crit_edge ], [ %.325, %if.else125 ]
  %25 = load i32, ptr @ix2505v_debug, align 4
  %and141 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %do.body140.do.body154_crit_edge, label %do.end146

do.body140.do.body154_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

do.end146:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #9
  %conv148 = zext i8 %local_osc.0 to i32
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv148, i32 noundef %div, i32 noundef %lpf.0) #10
  br label %do.body154

do.body154:                                       ; preds = %do.end146, %do.body140.do.body154_crit_edge
  %26 = load i32, ptr @ix2505v_debug, align 4
  %and155 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body154.do.end165_crit_edge, label %do.end160

do.body154.do.end165_crit_edge:                   ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end165

do.end160:                                        ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %data) #10
  br label %do.end165

do.end165:                                        ; preds = %do.end160, %do.body154.do.end165_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %27 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool167.not = icmp eq ptr %28, null
  br i1 %tobool167.not, label %do.end165.if.end172_crit_edge, label %if.then168

do.end165.if.end172_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then168:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  %call171 = call i32 %28(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %do.end165.if.end172_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %29 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 327679, ptr %29, align 4
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data, ptr %buf2.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end172.ix2505v_write.exit_crit_edge, label %do.body.i

if.end172.ix2505v_write.exit_crit_edge:           ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit

do.body.i:                                        ; preds = %if.end172
  %40 = load i32, ptr @ix2505v_debug, align 4
  %and.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ix2505v_write.exit_crit_edge, label %do.end.i

do.body.i.ix2505v_write.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i) #10
  br label %ix2505v_write.exit

ix2505v_write.exit:                               ; preds = %do.end.i, %do.body.i.ix2505v_write.exit_crit_edge, %if.end172.ix2505v_write.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ -5, %do.body.i.ix2505v_write.exit_crit_edge ], [ 0, %if.end172.ix2505v_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx46, align 2
  %43 = or i8 %42, 4
  store i8 %43, ptr %arrayidx46, align 2
  %44 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool183.not = icmp eq ptr %45, null
  br i1 %tobool183.not, label %ix2505v_write.exit.if.end188_crit_edge, label %if.then184

ix2505v_write.exit.if.end188_crit_edge:           ; preds = %ix2505v_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

if.then184:                                       ; preds = %ix2505v_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call187 = call i32 %45(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %ix2505v_write.exit.if.end188_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i326) #7
  %46 = getelementptr inbounds i8, ptr %msg.i326, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131071, ptr %46, align 4
  %48 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i328 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i326 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i328, ptr %msg.i326, align 4
  %flags.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i329, align 2
  %buf2.i331 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326, i32 0, i32 3
  %54 = ptrtoint ptr %buf2.i331 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx46, ptr %buf2.i331, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i332 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i326, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i332)
  %cmp.not.i333 = icmp eq i32 %call.i332, 1
  br i1 %cmp.not.i333, label %if.end188.ix2505v_write.exit340_crit_edge, label %do.body.i336

if.end188.ix2505v_write.exit340_crit_edge:        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit340

do.body.i336:                                     ; preds = %if.end188
  %57 = load i32, ptr @ix2505v_debug, align 4
  %and.i334 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i334)
  %tobool.not.i335 = icmp eq i32 %and.i334, 0
  br i1 %tobool.not.i335, label %do.body.i336.ix2505v_write.exit340_crit_edge, label %do.end.i338

do.body.i336.ix2505v_write.exit340_crit_edge:     ; preds = %do.body.i336
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit340

do.end.i338:                                      ; preds = %do.body.i336
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i332) #10
  br label %ix2505v_write.exit340

ix2505v_write.exit340:                            ; preds = %do.end.i338, %do.body.i336.ix2505v_write.exit340_crit_edge, %if.end188.ix2505v_write.exit340_crit_edge
  %retval.0.i339 = phi i32 [ -5, %do.end.i338 ], [ -5, %do.body.i336.ix2505v_write.exit340_crit_edge ], [ 0, %if.end188.ix2505v_write.exit340_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i326) #7
  %or192 = or i32 %retval.0.i339, %retval.0.i
  call void @msleep(i32 noundef 10) #7
  %58 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx46, align 2
  %lpf.0.tr = trunc i32 %lpf.0 to i8
  %60 = shl nuw nsw i8 %lpf.0.tr, 1
  %61 = and i8 %60, 24
  %conv200 = or i8 %59, %61
  store i8 %conv200, ptr %arrayidx46, align 2
  %62 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx89, align 1
  %64 = shl nuw nsw i8 %lpf.0.tr, 2
  %65 = and i8 %64, 12
  %conv207 = or i8 %63, %65
  store i8 %conv207, ptr %arrayidx89, align 1
  %66 = load i32, ptr @ix2505v_debug, align 4
  %and209 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %ix2505v_write.exit340.do.end223_crit_edge, label %do.end214

ix2505v_write.exit340.do.end223_crit_edge:        ; preds = %ix2505v_write.exit340
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end223

do.end214:                                        ; preds = %ix2505v_write.exit340
  call void @__sanitizer_cov_trace_pc() #9
  %conv217 = zext i8 %conv200 to i32
  %conv219 = zext i8 %conv207 to i32
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv217, i32 noundef %conv219) #10
  br label %do.end223

do.end223:                                        ; preds = %do.end214, %ix2505v_write.exit340.do.end223_crit_edge
  %67 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool226.not = icmp eq ptr %68, null
  br i1 %tobool226.not, label %do.end223.if.end231_crit_edge, label %if.then227

do.end223.if.end231_crit_edge:                    ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then227:                                       ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #9
  %call230 = call i32 %68(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end231

if.end231:                                        ; preds = %if.then227, %do.end223.if.end231_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i341) #7
  %69 = getelementptr inbounds i8, ptr %msg.i341, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i343 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i341 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i343, ptr %msg.i341, align 4
  %flags.i344 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i341, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i344 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i344, align 2
  %buf2.i346 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i341, i32 0, i32 3
  %77 = ptrtoint ptr %buf2.i346 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx46, ptr %buf2.i346, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i347 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i341, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i347)
  %cmp.not.i348 = icmp eq i32 %call.i347, 1
  br i1 %cmp.not.i348, label %if.end231.ix2505v_write.exit355_crit_edge, label %do.body.i351

if.end231.ix2505v_write.exit355_crit_edge:        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit355

do.body.i351:                                     ; preds = %if.end231
  %80 = load i32, ptr @ix2505v_debug, align 4
  %and.i349 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i349)
  %tobool.not.i350 = icmp eq i32 %and.i349, 0
  br i1 %tobool.not.i350, label %do.body.i351.ix2505v_write.exit355_crit_edge, label %do.end.i353

do.body.i351.ix2505v_write.exit355_crit_edge:     ; preds = %do.body.i351
  call void @__sanitizer_cov_trace_pc() #9
  br label %ix2505v_write.exit355

do.end.i353:                                      ; preds = %do.body.i351
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i347) #10
  br label %ix2505v_write.exit355

ix2505v_write.exit355:                            ; preds = %do.end.i353, %do.body.i351.ix2505v_write.exit355_crit_edge, %if.end231.ix2505v_write.exit355_crit_edge
  %retval.0.i354 = phi i32 [ -5, %do.end.i353 ], [ -5, %do.body.i351.ix2505v_write.exit355_crit_edge ], [ 0, %if.end231.ix2505v_write.exit355_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i341) #7
  %or235 = or i32 %or192, %retval.0.i354
  %81 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config, align 4
  %min_delay_ms = getelementptr inbounds %struct.ix2505v_config, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %min_delay_ms to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool237.not = icmp eq i32 %84, 0
  br i1 %tobool237.not, label %ix2505v_write.exit355.if.end241_crit_edge, label %if.then238

ix2505v_write.exit355.if.end241_crit_edge:        ; preds = %ix2505v_write.exit355
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then238:                                       ; preds = %ix2505v_write.exit355
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef %84) #7
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %ix2505v_write.exit355.if.end241_crit_edge
  %frequency242 = getelementptr inbounds %struct.ix2505v_state, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %frequency242 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %3, ptr %frequency242, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or235, %if.end241 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ix2505v_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.ix2505v_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 266, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ix2505v_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ix2505v_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 284, i32 4}
!8 = !{ptr @ix2505v_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ix2505v_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 296, i32 2}
!12 = !{ptr @ix2505v_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ix2505v_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_ix2505v_attach, !15, !"__ksymtab_ix2505v_attach", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 305, i32 1}
!16 = !{ptr @__param_debug, !17, !"__param_debug", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 307, i32 1}
!18 = !{ptr @__UNIQUE_ID_debugtype290, !17, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_debug291, !20, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 308, i32 1}
!21 = !{ptr @__UNIQUE_ID_description292, !22, !"__UNIQUE_ID_description292", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 309, i32 1}
!23 = !{ptr @__UNIQUE_ID_author293, !24, !"__UNIQUE_ID_author293", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 310, i32 1}
!25 = !{ptr @__UNIQUE_ID_file294, !26, !"__UNIQUE_ID_file294", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 311, i32 1}
!27 = !{ptr @__UNIQUE_ID_license295, !26, !"__UNIQUE_ID_license295", i1 false, i1 false}
!28 = !{ptr @ix2505v_debug, !29, !"ix2505v_debug", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 15, i32 12}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 60, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ix2505v_read_status_reg._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ix2505v_read_status_reg._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ix2505v_tuner_ops, !36, !"ix2505v_tuner_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 247, i32 35}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 156, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ix2505v_set_params._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ix2505v_set_params._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 200, i32 2}
!44 = !{ptr @ix2505v_set_params._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ix2505v_set_params._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 201, i32 2}
!48 = !{ptr @ix2505v_set_params._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ix2505v_set_params._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 222, i32 2}
!52 = !{ptr @ix2505v_set_params._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ix2505v_set_params._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/ix2505v.c", i32 77, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ix2505v_write._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ix2505v_write._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__param_str_debug, !17, !"__param_str_debug", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
