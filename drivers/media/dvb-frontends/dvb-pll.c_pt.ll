; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dvb-pll.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dvb-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_pll_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_pll_attach\09\09\09\09"
module asm "\09.long\09__crc_dvb_pll_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_pll_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_pll_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_pll_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.91 = type { i32, i32, i8, i8 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.dvb_pll_priv = type { i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_pll_desc = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [0 x %struct.anon.91] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_debug = internal constant [14 x i8] c"dvb_pll.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"dvb_pll.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"dvb_pll.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_id = internal constant [11 x i8] c"dvb_pll.id\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_id = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype292 = internal constant [33 x i8] c"dvb_pll.parmtype=id:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_id293 = internal constant [49 x i8] c"dvb_pll.parm=id:force pll id to use (DEBUG ONLY)\00", section ".modinfo", align 1
@pll_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@id = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@pll_list = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr null, ptr @dvb_pll_thomson_dtt7579, ptr @dvb_pll_thomson_dtt759x, ptr @dvb_pll_lg_z201, ptr @dvb_pll_unknown_1, ptr @dvb_pll_tua6010xs, ptr @dvb_pll_env57h1xd5, ptr @dvb_pll_tua6034, ptr @dvb_pll_tda665x, ptr @dvb_pll_tded4, ptr @dvb_pll_tdhu2, ptr @dvb_pll_samsung_tbmv, ptr @dvb_pll_philips_sd1878_tda8261, ptr @dvb_pll_opera1, ptr @dvb_pll_samsung_dtos403ih102a, ptr @dvb_pll_samsung_tdtc9251dh0, ptr @dvb_pll_samsung_tbdu18132, ptr @dvb_pll_samsung_tbmu24112, ptr @dvb_pll_alps_tdee4, ptr @dvb_pll_thomson_dtt7520x, ptr @dvb_pll_tua6034_friio, ptr @dvb_pll_tda665x_earth_pt1], [40 x i8] zeroinitializer }, align 32
@dvb_pll_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @dvb_pll_release, ptr @dvb_pll_init, ptr @dvb_pll_sleep, ptr null, ptr null, ptr @dvb_pll_set_params, ptr null, ptr null, ptr @dvb_pll_get_frequency, ptr @dvb_pll_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr @dvb_pll_calc_regs, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dvb_pll_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dvb_pll: %s: %s tuner, frequency range: %u...%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/dvb-pll.c\00", [58 x i8] zeroinitializer }, align 32
@dvb_pll_attach._entry_ptr = internal global ptr @dvb_pll_attach._entry, section ".printk_index", align 4
@dvb_pll_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dvb_pll: %s: dvb-pll[%d]\00", [37 x i8] zeroinitializer }, align 32
@dvb_pll_attach._entry_ptr.5 = internal global ptr @dvb_pll_attach._entry.3, section ".printk_index", align 4
@dvb_pll_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c %d-%04x\00", [21 x i8] zeroinitializer }, align 32
@dvb_pll_attach._entry_ptr.8 = internal global ptr @dvb_pll_attach._entry.6, section ".printk_index", align 4
@dvb_pll_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01c: id# %d (%s) attached, %s\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_pll_attach._entry_ptr.11 = internal global ptr @dvb_pll_attach._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insmod option\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"autodetected\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_pll_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_pll_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_pll_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_pll_attach to i32), ptr @__kstrtab_dvb_pll_attach, ptr @__kstrtabns_dvb_pll_attach }, section "___ksymtab+dvb_pll_attach", align 4
@__initcall__kmod_dvb_pll__294_950_dvb_pll_driver_init6 = internal global ptr @dvb_pll_driver_init, section ".initcall6.init", align 4
@dvb_pll_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @dvb_pll_probe, ptr @dvb_pll_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.73, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dvb_pll_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dvb_pll_driver_exit = internal global ptr @dvb_pll_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [36 x i8] c"dvb_pll.description=dvb pll library\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [26 x i8] c"dvb_pll.author=Gerd Knorr\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [49 x i8] c"dvb_pll.file=drivers/media/dvb-frontends/dvb-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"dvb_pll.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Thomson dtt7579\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\02\B4\03", [29 x i8] zeroinitializer }, align 32
@dvb_pll_thomson_dtt7579 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.15, i32 177000000, i32 858000000, i32 36166667, ptr null, ptr null, ptr null, ptr @.compoundliteral, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 443250000, i32 166667, i8 -76, i8 2 }, %struct.anon.91 { i32 542000000, i32 166667, i8 -76, i8 8 }, %struct.anon.91 { i32 771000000, i32 166667, i8 -68, i8 8 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -12, i8 8 }] }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Thomson dtt759x\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\02\84\03", [29 x i8] zeroinitializer }, align 32
@dvb_pll_thomson_dtt759x = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.91] }, [32 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.91] } { ptr @.str.17, i32 177000000, i32 896000000, i32 36166667, ptr @thomson_dtt759x_bw, ptr null, ptr null, ptr @.compoundliteral.18, i32 5, [5 x %struct.anon.91] [%struct.anon.91 { i32 264000000, i32 166667, i8 -76, i8 2 }, %struct.anon.91 { i32 470000000, i32 166667, i8 -68, i8 2 }, %struct.anon.91 { i32 735000000, i32 166667, i8 -68, i8 8 }, %struct.anon.91 { i32 835000000, i32 166667, i8 -12, i8 8 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -4, i8 8 }] }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LG z201\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\02\BC\03", [29 x i8] zeroinitializer }, align 32
@dvb_pll_lg_z201 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.91] }, [32 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.91] } { ptr @.str.20, i32 174000000, i32 862000000, i32 36166667, ptr null, ptr null, ptr null, ptr @.compoundliteral.21, i32 5, [5 x %struct.anon.91] [%struct.anon.91 { i32 157500000, i32 166667, i8 -68, i8 1 }, %struct.anon.91 { i32 443250000, i32 166667, i8 -68, i8 2 }, %struct.anon.91 { i32 542000000, i32 166667, i8 -68, i8 4 }, %struct.anon.91 { i32 830000000, i32 166667, i8 -12, i8 4 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -4, i8 4 }] }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unknown 1\00", [22 x i8] zeroinitializer }, align 32
@dvb_pll_unknown_1 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [9 x %struct.anon.91] }, [48 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [9 x %struct.anon.91] } { ptr @.str.23, i32 174000000, i32 862000000, i32 36166667, ptr null, ptr null, ptr null, ptr null, i32 9, [9 x %struct.anon.91] [%struct.anon.91 { i32 150000000, i32 166667, i8 -76, i8 1 }, %struct.anon.91 { i32 173000000, i32 166667, i8 -68, i8 1 }, %struct.anon.91 { i32 250000000, i32 166667, i8 -76, i8 2 }, %struct.anon.91 { i32 400000000, i32 166667, i8 -68, i8 2 }, %struct.anon.91 { i32 420000000, i32 166667, i8 -12, i8 2 }, %struct.anon.91 { i32 470000000, i32 166667, i8 -4, i8 2 }, %struct.anon.91 { i32 600000000, i32 166667, i8 -68, i8 8 }, %struct.anon.91 { i32 730000000, i32 166667, i8 -12, i8 8 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -4, i8 8 }] }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Infineon TUA6010XS\00", [45 x i8] zeroinitializer }, align 32
@dvb_pll_tua6010xs = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] }, [56 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] } { ptr @.str.25, i32 44250000, i32 858000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.91] [%struct.anon.91 { i32 115750000, i32 62500, i8 -114, i8 3 }, %struct.anon.91 { i32 403250000, i32 62500, i8 -114, i8 6 }, %struct.anon.91 { i32 999999999, i32 62500, i8 -114, i8 -123 }] }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Panasonic ENV57H1XD5\00", [43 x i8] zeroinitializer }, align 32
@dvb_pll_env57h1xd5 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.27, i32 44250000, i32 858000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 153000000, i32 166667, i8 -62, i8 65 }, %struct.anon.91 { i32 470000000, i32 166667, i8 -62, i8 66 }, %struct.anon.91 { i32 526000000, i32 166667, i8 -62, i8 -124 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -62, i8 -92 }] }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Infineon TUA6034\00", [47 x i8] zeroinitializer }, align 32
@dvb_pll_tua6034 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] }, [56 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] } { ptr @.str.29, i32 44250000, i32 858000000, i32 36166667, ptr @tua6034_bw, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.91] [%struct.anon.91 { i32 174500000, i32 62500, i8 -50, i8 1 }, %struct.anon.91 { i32 230000000, i32 62500, i8 -50, i8 2 }, %struct.anon.91 { i32 999999999, i32 62500, i8 -50, i8 4 }] }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Philips TDA6650/TDA6651\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\0B\F5\85\AB", [27 x i8] zeroinitializer }, align 32
@dvb_pll_tda665x = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [12 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [12 x %struct.anon.91] } { ptr @.str.31, i32 44250000, i32 858000000, i32 36166667, ptr @tda665x_bw, ptr @.compoundliteral.32, ptr null, ptr null, i32 12, [12 x %struct.anon.91] [%struct.anon.91 { i32 93834000, i32 166667, i8 -54, i8 97 }, %struct.anon.91 { i32 123834000, i32 166667, i8 -54, i8 -95 }, %struct.anon.91 { i32 161000000, i32 166667, i8 -54, i8 -95 }, %struct.anon.91 { i32 163834000, i32 166667, i8 -54, i8 -62 }, %struct.anon.91 { i32 253834000, i32 166667, i8 -54, i8 98 }, %struct.anon.91 { i32 383834000, i32 166667, i8 -54, i8 -94 }, %struct.anon.91 { i32 443834000, i32 166667, i8 -54, i8 -62 }, %struct.anon.91 { i32 444000000, i32 166667, i8 -54, i8 -60 }, %struct.anon.91 { i32 583834000, i32 166667, i8 -54, i8 100 }, %struct.anon.91 { i32 793834000, i32 166667, i8 -54, i8 -92 }, %struct.anon.91 { i32 444834000, i32 166667, i8 -54, i8 -60 }, %struct.anon.91 { i32 861000000, i32 166667, i8 -54, i8 -28 }] }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALPS TDED4\00", [21 x i8] zeroinitializer }, align 32
@dvb_pll_tded4 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.34, i32 47000000, i32 863000000, i32 36166667, ptr @tded4_bw, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 153000000, i32 166667, i8 -123, i8 1 }, %struct.anon.91 { i32 470000000, i32 166667, i8 -123, i8 2 }, %struct.anon.91 { i32 823000000, i32 166667, i8 -123, i8 8 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -123, i8 -120 }] }, [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALPS TDHU2\00", [21 x i8] zeroinitializer }, align 32
@dvb_pll_tdhu2 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.36, i32 54000000, i32 864000000, i32 44000000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 162000000, i32 62500, i8 -123, i8 1 }, %struct.anon.91 { i32 426000000, i32 62500, i8 -123, i8 2 }, %struct.anon.91 { i32 782000000, i32 62500, i8 -123, i8 8 }, %struct.anon.91 { i32 999999999, i32 62500, i8 -123, i8 -120 }] }, [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Samsung TBMV30111IN / TBMV30712IN1\00", [61 x i8] zeroinitializer }, align 32
@dvb_pll_samsung_tbmv = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.anon.91] }, [52 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.anon.91] } { ptr @.str.38, i32 54000000, i32 860000000, i32 44000000, ptr null, ptr null, ptr null, ptr null, i32 6, [6 x %struct.anon.91] [%struct.anon.91 { i32 172000000, i32 166667, i8 -76, i8 1 }, %struct.anon.91 { i32 214000000, i32 166667, i8 -76, i8 2 }, %struct.anon.91 { i32 467000000, i32 166667, i8 -68, i8 2 }, %struct.anon.91 { i32 721000000, i32 166667, i8 -68, i8 8 }, %struct.anon.91 { i32 841000000, i32 166667, i8 -12, i8 8 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -4, i8 2 }] }, [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Philips SD1878\00", [17 x i8] zeroinitializer }, align 32
@dvb_pll_philips_sd1878_tda8261 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.40, i32 950000000, i32 -2144967296, i32 249, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 1250000, i32 500, i8 -60, i8 0 }, %struct.anon.91 { i32 1450000, i32 500, i8 -60, i8 64 }, %struct.anon.91 { i32 2050000, i32 500, i8 -60, i8 -128 }, %struct.anon.91 { i32 2150000, i32 500, i8 -60, i8 -64 }] }, [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Opera Tuner\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\08\E5\E1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\08\E5\E5\00", [27 x i8] zeroinitializer }, align 32
@dvb_pll_opera1 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.91] }, [60 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.91] } { ptr @.str.42, i32 900000000, i32 -2044967296, i32 0, ptr @opera1_bw, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr null, i32 8, [8 x %struct.anon.91] [%struct.anon.91 { i32 1064000, i32 500, i8 -7, i8 -62 }, %struct.anon.91 { i32 1169000, i32 500, i8 -7, i8 -30 }, %struct.anon.91 { i32 1299000, i32 500, i8 -7, i8 32 }, %struct.anon.91 { i32 1444000, i32 500, i8 -7, i8 64 }, %struct.anon.91 { i32 1606000, i32 500, i8 -7, i8 96 }, %struct.anon.91 { i32 1777000, i32 500, i8 -7, i8 -128 }, %struct.anon.91 { i32 1941000, i32 500, i8 -7, i8 -96 }, %struct.anon.91 { i32 2250000, i32 500, i8 -7, i8 -64 }] }, [60 x i8] zeroinitializer }, align 32
@opera1_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dvb_pll: %s: i2c_transfer failed:%d\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"opera1_bw\00", [22 x i8] zeroinitializer }, align 32
@opera1_bw._entry_ptr = internal global ptr @opera1_bw._entry, section ".printk_index", align 4
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Samsung DTOS403IH102A\00", [42 x i8] zeroinitializer }, align 32
@dvb_pll_samsung_dtos403ih102a = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.91] }, [60 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.91] } { ptr @.str.48, i32 44250000, i32 858000000, i32 36125000, ptr @samsung_dtos403ih102a_set, ptr null, ptr null, ptr null, i32 8, [8 x %struct.anon.91] [%struct.anon.91 { i32 135000000, i32 62500, i8 -66, i8 1 }, %struct.anon.91 { i32 177000000, i32 62500, i8 -10, i8 1 }, %struct.anon.91 { i32 370000000, i32 62500, i8 -66, i8 2 }, %struct.anon.91 { i32 450000000, i32 62500, i8 -10, i8 2 }, %struct.anon.91 { i32 466000000, i32 62500, i8 -2, i8 2 }, %struct.anon.91 { i32 538000000, i32 62500, i8 -66, i8 8 }, %struct.anon.91 { i32 826000000, i32 62500, i8 -10, i8 8 }, %struct.anon.91 { i32 999999999, i32 62500, i8 -2, i8 8 }] }, [60 x i8] zeroinitializer }, align 32
@samsung_dtos403ih102a_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.50, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_dtos403ih102a_set\00", [38 x i8] zeroinitializer }, align 32
@samsung_dtos403ih102a_set._entry_ptr = internal global ptr @samsung_dtos403ih102a_set._entry, section ".printk_index", align 4
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Samsung TDTC9251DH0\00", [44 x i8] zeroinitializer }, align 32
@dvb_pll_samsung_tdtc9251dh0 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] }, [56 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] } { ptr @.str.51, i32 48000000, i32 863000000, i32 36166667, ptr null, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.91] [%struct.anon.91 { i32 157500000, i32 166667, i8 -52, i8 9 }, %struct.anon.91 { i32 443000000, i32 166667, i8 -52, i8 10 }, %struct.anon.91 { i32 863000000, i32 166667, i8 -52, i8 8 }] }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TBDU18132\00", [46 x i8] zeroinitializer }, align 32
@dvb_pll_samsung_tbdu18132 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.91] }, [36 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.91] } { ptr @.str.53, i32 950000000, i32 -2144967296, i32 0, ptr null, ptr null, ptr null, ptr null, i32 2, [2 x %struct.anon.91] [%struct.anon.91 { i32 1550000, i32 125, i8 -124, i8 -126 }, %struct.anon.91 { i32 4095937, i32 125, i8 -124, i8 -128 }] }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Samsung TBMU24112\00", [46 x i8] zeroinitializer }, align 32
@dvb_pll_samsung_tbmu24112 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.91] }, [36 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.91] } { ptr @.str.55, i32 950000000, i32 -2144967296, i32 0, ptr null, ptr null, ptr null, ptr null, i32 2, [2 x %struct.anon.91] [%struct.anon.91 { i32 1500000, i32 125, i8 -124, i8 24 }, %struct.anon.91 { i32 9999999, i32 125, i8 -124, i8 8 }] }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALPS TDEE4\00", [21 x i8] zeroinitializer }, align 32
@dvb_pll_alps_tdee4 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] }, [44 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.91] } { ptr @.str.57, i32 47000000, i32 862000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.91] [%struct.anon.91 { i32 153000000, i32 62500, i8 -107, i8 1 }, %struct.anon.91 { i32 430000000, i32 62500, i8 -107, i8 2 }, %struct.anon.91 { i32 822000000, i32 62500, i8 -107, i8 8 }, %struct.anon.91 { i32 999999999, i32 62500, i8 -107, i8 -120 }] }, [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Thomson dtt7520x\00", [47 x i8] zeroinitializer }, align 32
@dvb_pll_thomson_dtt7520x = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [7 x %struct.anon.91] }, [40 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [7 x %struct.anon.91] } { ptr @.str.59, i32 185000000, i32 900000000, i32 36166667, ptr @thomson_dtt7520x_bw, ptr null, ptr null, ptr null, i32 7, [7 x %struct.anon.91] [%struct.anon.91 { i32 305000000, i32 166667, i8 -76, i8 18 }, %struct.anon.91 { i32 405000000, i32 166667, i8 -68, i8 18 }, %struct.anon.91 { i32 445000000, i32 166667, i8 -68, i8 18 }, %struct.anon.91 { i32 465000000, i32 166667, i8 -12, i8 24 }, %struct.anon.91 { i32 735000000, i32 166667, i8 -4, i8 24 }, %struct.anon.91 { i32 835000000, i32 166667, i8 -68, i8 24 }, %struct.anon.91 { i32 999999999, i32 166667, i8 -4, i8 24 }] }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Infineon TUA6034 ISDB-T (Friio)\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\9AP\B2\08", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\04\9Ap\B3\0B", [27 x i8] zeroinitializer }, align 32
@dvb_pll_tua6034_friio = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] }, [56 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.91] } { ptr @.str.61, i32 90000000, i32 770000000, i32 57000000, ptr null, ptr @.compoundliteral.62, ptr null, ptr @.compoundliteral.63, i32 3, [3 x %struct.anon.91] [%struct.anon.91 { i32 170000000, i32 142857, i8 -70, i8 9 }, %struct.anon.91 { i32 470000000, i32 142857, i8 -70, i8 10 }, %struct.anon.91 { i32 770000000, i32 142857, i8 -78, i8 8 }] }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Philips TDA6651 ISDB-T (EarthSoft PT1)\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\05\0E\7F\C1\80\80", [26 x i8] zeroinitializer }, align 32
@dvb_pll_tda665x_earth_pt1 = internal constant { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [10 x %struct.anon.91] }, [36 x i8] } { { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [10 x %struct.anon.91] } { ptr @.str.65, i32 90000000, i32 770000000, i32 57000000, ptr null, ptr @.compoundliteral.66, ptr null, ptr null, i32 10, [10 x %struct.anon.91] [%struct.anon.91 { i32 140000000, i32 142857, i8 -63, i8 -127 }, %struct.anon.91 { i32 170000000, i32 142857, i8 -63, i8 -95 }, %struct.anon.91 { i32 220000000, i32 142857, i8 -63, i8 98 }, %struct.anon.91 { i32 330000000, i32 142857, i8 -63, i8 -94 }, %struct.anon.91 { i32 402000000, i32 142857, i8 -63, i8 -30 }, %struct.anon.91 { i32 450000000, i32 142857, i8 -63, i8 100 }, %struct.anon.91 { i32 550000000, i32 142857, i8 -63, i8 -124 }, %struct.anon.91 { i32 600000000, i32 142857, i8 -63, i8 -92 }, %struct.anon.91 { i32 700000000, i32 142857, i8 -63, i8 -60 }, %struct.anon.91 { i32 770000000, i32 142857, i8 -63, i8 -28 }] }, [36 x i8] zeroinitializer }, align 32
@dvb_pll_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dvb_pll: %s: pll: %s: freq=%d | i=%d/%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_pll_configure\00", [46 x i8] zeroinitializer }, align 32
@dvb_pll_configure._entry_ptr = internal global ptr @dvb_pll_configure._entry, section ".printk_index", align 4
@dvb_pll_configure._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017dvb_pll: %s: pll: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_pll_configure._entry_ptr.72 = internal global ptr @dvb_pll_configure._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb_pll\00", [24 x i8] zeroinitializer }, align 32
@dvb_pll_id = internal constant { [22 x %struct.i2c_device_id], [144 x i8] } { [22 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dtt7579\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"dtt759x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"z201\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"unknown_1\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tua6010xs\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"env57h1xd5\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"tua6034\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"tda665x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"tded4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"tdhu2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"tbmv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"sd1878_tda8261\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"opera1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"dtos403ih102a\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"tdtc9251dh0\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"tbdu18132\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"tbmu24112\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"tdee4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"dtt7520x\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.i2c_device_id { [20 x i8] c"tua6034_friio\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"tda665x_earthpt1\00\00\00\00", i32 21 }, %struct.i2c_device_id zeroinitializer], [144 x i8] zeroinitializer }, align 32
@dvb_pll_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 898, ptr @.str.76, ptr @.str.77 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DVB Simple Tuner attached.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_pll_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvb_pll_probe._entry_ptr = internal global ptr @dvb_pll_probe._entry, section ".printk_index", align 4
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 40, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [8 x i8] c"pll_ida\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 44, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"pll_list\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 568, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"dvb_pll_tuner_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 771, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 841, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 852, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 854, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 855, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"dvb_pll_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 941, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 38, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 73, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"dvb_pll_thomson_dtt7579\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 72, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 95, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"dvb_pll_thomson_dtt759x\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 94, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 137, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"dvb_pll_lg_z201\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 136, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 153, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"dvb_pll_unknown_1\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 152, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 175, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"dvb_pll_tua6010xs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 174, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 189, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"dvb_pll_env57h1xd5\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 188, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 247, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"dvb_pll_tua6034\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 246, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 213, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"dvb_pll_tda665x\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 212, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 271, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"dvb_pll_tded4\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 270, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 289, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"dvb_pll_tdhu2\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 288, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 306, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"dvb_pll_samsung_tbmv\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 305, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 325, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant [31 x i8] c"dvb_pll_philips_sd1878_tda8261\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 324, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 391, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"dvb_pll_opera1\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 390, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 357, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 438, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"dvb_pll_samsung_dtos403ih102a\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 437, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 427, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 458, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"dvb_pll_samsung_tdtc9251dh0\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 457, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 472, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant [26 x i8] c"dvb_pll_samsung_tbdu18132\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 471, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 493, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"dvb_pll_samsung_tbmu24112\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 492, i32 34 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 514, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"dvb_pll_alps_tdee4\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 513, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 119, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant [25 x i8] c"dvb_pll_thomson_dtt7520x\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 118, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 530, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"dvb_pll_tua6034_friio\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 529, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 546, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"dvb_pll_tda665x_earth_pt1\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 545, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 611, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 627, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 943, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"dvb_pll_id\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 913, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [41 x i8] c"../drivers/media/dvb-frontends/dvb-pll.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 898, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_id293, ptr @__UNIQUE_ID_idtype292, ptr @__UNIQUE_ID_license298, ptr @__exitcall_dvb_pll_driver_exit, ptr @__initcall__kmod_dvb_pll__294_950_dvb_pll_driver_init6, ptr @__ksymtab_dvb_pll_attach, ptr @__param_debug, ptr @__param_id, ptr @dvb_pll_attach._entry, ptr @dvb_pll_attach._entry.3, ptr @dvb_pll_attach._entry.6, ptr @dvb_pll_attach._entry.9, ptr @dvb_pll_attach._entry_ptr, ptr @dvb_pll_attach._entry_ptr.11, ptr @dvb_pll_attach._entry_ptr.5, ptr @dvb_pll_attach._entry_ptr.8, ptr @dvb_pll_configure._entry, ptr @dvb_pll_configure._entry.70, ptr @dvb_pll_configure._entry_ptr, ptr @dvb_pll_configure._entry_ptr.72, ptr @dvb_pll_driver_exit, ptr @dvb_pll_probe._entry, ptr @dvb_pll_probe._entry_ptr, ptr @opera1_bw._entry, ptr @opera1_bw._entry_ptr, ptr @samsung_dtos403ih102a_set._entry, ptr @samsung_dtos403ih102a_set._entry_ptr, ptr @debug, ptr @pll_ida, ptr @id, ptr @pll_list, ptr @dvb_pll_tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @dvb_pll_driver, ptr @.str.14, ptr @.str.15, ptr @.compoundliteral, ptr @dvb_pll_thomson_dtt7579, ptr @.str.17, ptr @.compoundliteral.18, ptr @dvb_pll_thomson_dtt759x, ptr @.str.20, ptr @.compoundliteral.21, ptr @dvb_pll_lg_z201, ptr @.str.23, ptr @dvb_pll_unknown_1, ptr @.str.25, ptr @dvb_pll_tua6010xs, ptr @.str.27, ptr @dvb_pll_env57h1xd5, ptr @.str.29, ptr @dvb_pll_tua6034, ptr @.str.31, ptr @.compoundliteral.32, ptr @dvb_pll_tda665x, ptr @.str.34, ptr @dvb_pll_tded4, ptr @.str.36, ptr @dvb_pll_tdhu2, ptr @.str.38, ptr @dvb_pll_samsung_tbmv, ptr @.str.40, ptr @dvb_pll_philips_sd1878_tda8261, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @dvb_pll_opera1, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @dvb_pll_samsung_dtos403ih102a, ptr @.str.50, ptr @.str.51, ptr @dvb_pll_samsung_tdtc9251dh0, ptr @.str.53, ptr @dvb_pll_samsung_tbdu18132, ptr @.str.55, ptr @dvb_pll_samsung_tbmu24112, ptr @.str.57, ptr @dvb_pll_alps_tdee4, ptr @.str.59, ptr @dvb_pll_thomson_dtt7520x, ptr @.str.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @dvb_pll_tua6034_friio, ptr @.str.65, ptr @.compoundliteral.66, ptr @dvb_pll_tda665x_earth_pt1, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @dvb_pll_id, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_list to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_thomson_dtt7579 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_thomson_dtt759x to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_lg_z201 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_unknown_1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tua6010xs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_env57h1xd5 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tua6034 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tda665x to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tded4 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tdhu2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_samsung_tbmv to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_philips_sd1878_tda8261 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_opera1 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_samsung_dtos403ih102a to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_dtos403ih102a_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_samsung_tdtc9251dh0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_samsung_tbdu18132 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_samsung_tbmu24112 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_alps_tdee4 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_thomson_dtt7520x to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tua6034_friio to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_tda665x_earth_pt1 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_configure._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_id to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_pll_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dvb_pll_attach(ptr noundef %fe, i32 noundef %pll_addr, ptr noundef %i2c, i32 noundef %pll_desc_id) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %conv = trunc i32 %pll_addr to i16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call7.i, align 8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %buf, align 4
  %call2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @pll_ida, i32 noundef 0, i32 noundef 63, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx6 = getelementptr [64 x i32], ptr @id, i32 0, i32 %call2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %10)
  %11 = icmp ult i32 %10, 21
  %pll_desc_id.addr.0 = select i1 %11, i32 %9, i32 %pll_desc_id
  %12 = add i32 %pll_desc_id.addr.0, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21, i32 %12)
  %13 = icmp ult i32 %12, -21
  br i1 %13, label %do.body22, label %do.end28, !prof !180

do.body22:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-frontends/dvb-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 808, 0\0A.popsection", ""() #8, !srcloc !181
  unreachable

do.end28:                                         ; preds = %if.end5
  %arrayidx29 = getelementptr [22 x ptr], ptr @pll_list, i32 0, i32 %pll_desc_id.addr.0
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29, align 4
  %cmp30.not = icmp eq ptr %i2c, null
  br i1 %cmp30.not, label %do.end28.if.end52_crit_edge, label %if.then32

do.end28.if.end52_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then32:                                        ; preds = %do.end28
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %16 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %if.then32.if.end38_crit_edge, label %if.then34

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 %17(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then32.if.end38_crit_edge
  %call39 = call i32 @i2c_transfer(ptr noundef nonnull %i2c, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %if.end43, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end43:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool46.not = icmp eq ptr %19, null
  br i1 %tobool46.not, label %if.end43.if.end52_crit_edge, label %if.then47

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call i32 %19(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end43.if.end52_crit_edge, %do.end28.if.end52_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #11
  %tobool54.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool54.not, label %if.end52.out_crit_edge, label %if.end56

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end56:                                         ; preds = %if.end52
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %pll_addr, ptr %pll_i2c_address, align 4
  %i2c57 = getelementptr inbounds %struct.dvb_pll_priv, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %i2c57 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c, ptr %i2c57, align 8
  %pll_desc = getelementptr inbounds %struct.dvb_pll_priv, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %pll_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %pll_desc, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2, ptr %call7.i.i, align 8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %25 = call ptr @memcpy(ptr %tuner_ops, ptr @dvb_pll_tuner_ops, i32 220)
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %15, align 4
  %call63 = call i32 @strscpy(ptr noundef %tuner_ops, ptr noundef %27, i32 noundef 128) #8
  %min = getelementptr inbounds %struct.dvb_pll_desc, ptr %15, i32 0, i32 1
  %28 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min, align 4
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 1
  %30 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %frequency_min_hz, align 4
  %max = getelementptr inbounds %struct.dvb_pll_desc, ptr %15, i32 0, i32 2
  %31 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max, align 4
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 2
  %33 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %frequency_max_hz, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %15, align 4
  %36 = load i32, ptr %min, align 4
  %37 = load i32, ptr %max, align 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %35, i32 noundef %36, i32 noundef %37) #12
  %initdata = getelementptr inbounds %struct.dvb_pll_desc, ptr %15, i32 0, i32 5
  %38 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %initdata, align 4
  %tobool77.not = icmp eq ptr %39, null
  br i1 %tobool77.not, label %if.then78, label %if.end56.if.end81_crit_edge

if.end56.if.end81_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 2
  %40 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %init, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end56.if.end81_crit_edge
  %sleepdata = getelementptr inbounds %struct.dvb_pll_desc, ptr %15, i32 0, i32 7
  %41 = ptrtoint ptr %sleepdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sleepdata, align 4
  %tobool82.not = icmp eq ptr %42, null
  br i1 %tobool82.not, label %if.then83, label %if.end81.if.end86_crit_edge

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 3
  %43 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sleep, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end81.if.end86_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %44 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool87.not = icmp eq i32 %45, 0
  br i1 %tobool87.not, label %lor.lhs.false, label %if.end86.do.end95_crit_edge

if.end86.do.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

lor.lhs.false:                                    ; preds = %if.end86
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i.i, align 8
  %arrayidx89 = getelementptr [64 x i32], ptr @id, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %pll_desc_id.addr.0)
  %cmp90 = icmp eq i32 %49, %pll_desc_id.addr.0
  br i1 %cmp90, label %lor.lhs.false.do.end95_crit_edge, label %lor.lhs.false.if.end119_crit_edge

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

lor.lhs.false.do.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

do.end95:                                         ; preds = %lor.lhs.false.do.end95_crit_edge, %if.end86.do.end95_crit_edge
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call7.i.i, align 8
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %51) #12
  br i1 %cmp30.not, label %do.end95.do.end111_crit_edge, label %do.end104

do.end95.do.end111_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end111

do.end104:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %52 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr.i, align 4
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %53, i32 noundef %pll_addr) #12
  br label %do.end111

do.end111:                                        ; preds = %do.end104, %do.end95.do.end111_crit_edge
  %54 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %15, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i, align 8
  %arrayidx115 = getelementptr [64 x i32], ptr @id, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %pll_desc_id.addr.0)
  %cmp116 = icmp eq i32 %59, %pll_desc_id.addr.0
  %cond = select i1 %cmp116, ptr @.str.12, ptr @.str.13
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %pll_desc_id.addr.0, ptr noundef %55, ptr noundef nonnull %cond) #12
  br label %if.end119

if.end119:                                        ; preds = %do.end111, %lor.lhs.false.if.end119_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

out:                                              ; preds = %if.end52.out_crit_edge, %if.end38.out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @ida_free(ptr noundef nonnull @pll_ida, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end119, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %out ], [ %fe, %if.end119 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dvb_pll_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dvb_pll_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @dvb_pll_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @thomson_dtt759x_bw(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %1)
  %cmp = icmp eq i32 %1, 7000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 16
  store i8 %4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tua6034_bw(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %1)
  %cmp = icmp eq i32 %1, 7000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 8
  store i8 %4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tda665x_bw(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp = icmp eq i32 %1, 8000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 8
  store i8 %4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tded4_bw(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp = icmp eq i32 %1, 8000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = or i8 %3, 4
  store i8 %4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @opera1_bw(ptr noundef %fe, ptr noundef %buf) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %symbol_rate, align 4
  %mul = mul i32 %3, 27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf1, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %13(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call4 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %call4) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 320032000, i32 %mul)
  %cmp9 = icmp ult i32 %mul, 320032000
  br i1 %cmp9, label %if.end8.if.end57_crit_edge, label %if.else

if.end8.if.end57_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 384032000, i32 %mul)
  %cmp12 = icmp ult i32 %mul, 384032000
  br i1 %cmp12, label %if.else.if.end57_crit_edge, label %if.else15

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 448032000, i32 %mul)
  %cmp16 = icmp ult i32 %mul, 448032000
  br i1 %cmp16, label %if.else15.if.end57_crit_edge, label %if.else19

if.else15.if.end57_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 512032000, i32 %mul)
  %cmp20 = icmp ult i32 %mul, 512032000
  br i1 %cmp20, label %if.else19.if.end57_crit_edge, label %if.else23

if.else19.if.end57_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 576032000, i32 %mul)
  %cmp24 = icmp ult i32 %mul, 576032000
  br i1 %cmp24, label %if.else23.if.end57_crit_edge, label %if.else27

if.else23.if.end57_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 640032000, i32 %mul)
  %cmp28 = icmp ult i32 %mul, 640032000
  br i1 %cmp28, label %if.else27.if.end57_crit_edge, label %if.else31

if.else27.if.end57_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 704032000, i32 %mul)
  %cmp32 = icmp ult i32 %mul, 704032000
  br i1 %cmp32, label %if.else31.if.end57_crit_edge, label %if.else35

if.else31.if.end57_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 768032000, i32 %mul)
  %cmp36 = icmp ult i32 %mul, 768032000
  br i1 %cmp36, label %if.else35.if.end57_crit_edge, label %if.else39

if.else35.if.end57_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp4(i32 832032000, i32 %mul)
  %cmp40 = icmp ult i32 %mul, 832032000
  br i1 %cmp40, label %if.else39.if.end57_crit_edge, label %if.else43

if.else39.if.end57_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 896032000, i32 %mul)
  %cmp44 = icmp ult i32 %mul, 896032000
  %. = select i1 %cmp44, i8 3, i8 11
  br label %if.end57

if.end57:                                         ; preds = %if.else43, %if.else39.if.end57_crit_edge, %if.else35.if.end57_crit_edge, %if.else31.if.end57_crit_edge, %if.else27.if.end57_crit_edge, %if.else23.if.end57_crit_edge, %if.else19.if.end57_crit_edge, %if.else15.if.end57_crit_edge, %if.else.if.end57_crit_edge, %if.end8.if.end57_crit_edge
  %lpf.0 = phi i8 [ 12, %if.end8.if.end57_crit_edge ], [ 2, %if.else.if.end57_crit_edge ], [ 10, %if.else15.if.end57_crit_edge ], [ 6, %if.else19.if.end57_crit_edge ], [ 14, %if.else23.if.end57_crit_edge ], [ 1, %if.else27.if.end57_crit_edge ], [ 9, %if.else31.if.end57_crit_edge ], [ 5, %if.else35.if.end57_crit_edge ], [ 13, %if.else39.if.end57_crit_edge ], [ %., %if.else43 ]
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = xor i8 %17, 28
  %19 = shl nuw nsw i8 %lpf.0, 1
  %20 = and i8 %19, 24
  %conv63 = or i8 %20, %18
  store i8 %conv63, ptr %arrayidx, align 1
  %arrayidx67 = getelementptr i8, ptr %buf, i32 3
  %21 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx67, align 1
  %23 = shl nuw nsw i8 %lpf.0, 2
  %24 = and i8 %23, 12
  %conv70 = or i8 %22, %24
  store i8 %conv70, ptr %arrayidx67, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_dtos403ih102a_set(ptr noundef %fe, ptr noundef %buf) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf1, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %call4 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50, i32 noundef %call4) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -98, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -112, ptr %arrayidx9, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @thomson_dtt7520x_bw(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp = icmp eq i32 %1, 8000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = xor i8 %3, 16
  store i8 %4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_pll_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_init(ptr noundef %fe) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.end:                                           ; preds = %entry
  %pll_desc = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pll_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_desc, align 4
  %initdata = getelementptr inbounds %struct.dvb_pll_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %initdata, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup47_crit_edge, label %if.then1

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %8 = getelementptr inbounds i8, ptr %msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %conv4 = zext i8 %15 to i16
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %7, i32 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %18 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then1.if.end11_crit_edge, label %if.then8

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %19(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then1.if.end11_crit_edge
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %pll_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_desc, align 4
  %initdata2 = getelementptr inbounds %struct.dvb_pll_desc, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %initdata2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %initdata2, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.end17.if.end44_crit_edge, label %if.then20

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then20:                                        ; preds = %if.end17
  %add.ptr23 = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr23, ptr %buf, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %25, align 1
  %conv28 = zext i8 %28 to i16
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv28, ptr %len, align 4
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %if.then20.if.end37_crit_edge, label %if.then33

if.then20.if.end37_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 %31(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then20.if.end37_crit_edge
  %32 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c, align 4
  %call39 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %if.end37.if.end44_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %if.end37.if.end44_crit_edge, %if.end17.if.end44_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end37.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -22, %entry.cleanup47_crit_edge ], [ -22, %if.end.cleanup47_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end:                                           ; preds = %entry
  %pll_desc = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pll_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_desc, align 4
  %sleepdata = getelementptr inbounds %struct.dvb_pll_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sleepdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleepdata, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup20_crit_edge, label %if.then1

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %8 = getelementptr inbounds i8, ptr %msg, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %conv4 = zext i8 %15 to i16
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %7, i32 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %18 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then1.if.end11_crit_edge, label %if.then8

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %19(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then1.if.end11_crit_edge
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  %.call13 = select i1 %cmp14.not, i32 0, i32 %call13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end11, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i32 [ %.call13, %if.end11 ], [ -22, %entry.cleanup20_crit_edge ], [ -22, %if.end.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf1, align 4
  %i2c = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %call = call fastcc i32 @dvb_pll_configure(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.else.if.end13_crit_edge, label %if.then9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 %16(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else.if.end13_crit_edge
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call15 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %frequency20 = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %frequency20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %frequency20, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvb_pll_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dvb_pll_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_calc_regs(ptr noundef %fe, ptr noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buf_len)
  %cmp = icmp slt i32 %buf_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call fastcc i32 @dvb_pll_configure(ptr noundef %fe, ptr noundef %add.ptr, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pll_i2c_address = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pll_i2c_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pll_i2c_address, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %frequency5 = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %frequency5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %frequency5, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_pll_configure(ptr noundef %fe, ptr noundef %buf, i32 noundef %frequency) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %pll_desc = getelementptr inbounds %struct.dvb_pll_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pll_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_desc, align 4
  %count = getelementptr inbounds %struct.dvb_pll_desc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp92 = icmp sgt i32 %5, 0
  br i1 %cmp92, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_pll_desc, ptr %3, i32 0, i32 9, i32 %i.093
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %frequency)
  %cmp1 = icmp ult i32 %7, %frequency
  br i1 %cmp1, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.093, %for.body.for.end_crit_edge ], [ %5, %for.inc.for.end_crit_edge ]
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.end.if.end4_crit_edge, label %do.end

for.end.if.end4_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef %10, i32 noundef %frequency, i32 noundef %i.0.lcssa, i32 noundef %5) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %for.end.if.end4_crit_edge
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %12)
  %cmp6 = icmp eq i32 %i.0.lcssa, %12
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %iffreq = getelementptr inbounds %struct.dvb_pll_desc, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %iffreq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iffreq, align 4
  %add = add i32 %14, %frequency
  %stepsize = getelementptr %struct.dvb_pll_desc, ptr %3, i32 0, i32 9, i32 %i.0.lcssa, i32 1
  %15 = ptrtoint ptr %stepsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stepsize, align 4
  %div1191 = lshr i32 %16, 1
  %add12 = add i32 %add, %div1191
  %div16 = udiv i32 %add12, %16
  %shr = lshr i32 %div16, 8
  %conv = trunc i32 %shr to i8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %buf, align 1
  %conv18 = trunc i32 %div16 to i8
  %arrayidx19 = getelementptr i8, ptr %buf, i32 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18, ptr %arrayidx19, align 1
  %config = getelementptr %struct.dvb_pll_desc, ptr %3, i32 0, i32 9, i32 %i.0.lcssa, i32 2
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config, align 4
  %arrayidx22 = getelementptr i8, ptr %buf, i32 2
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx22, align 1
  %cb = getelementptr %struct.dvb_pll_desc, ptr %3, i32 0, i32 9, i32 %i.0.lcssa, i32 3
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cb, align 1
  %arrayidx25 = getelementptr i8, ptr %buf, i32 3
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx25, align 1
  %set = getelementptr inbounds %struct.dvb_pll_desc, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set, align 4
  %tobool26.not = icmp eq ptr %26, null
  br i1 %tobool26.not, label %if.end8.if.end29_crit_edge, label %if.then27

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %fe, ptr noundef %buf) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end8.if.end29_crit_edge
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool30.not = icmp eq i32 %27, 0
  br i1 %tobool30.not, label %if.end29.if.end46_crit_edge, label %do.end34

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 1
  %conv38 = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx19, align 1
  %conv40 = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx22, align 1
  %conv42 = zext i8 %35 to i32
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx25, align 1
  %conv44 = zext i8 %37 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, ptr noundef %29, i32 noundef %div16, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %conv44) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end34, %if.end29.if.end46_crit_edge
  %38 = ptrtoint ptr %stepsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stepsize, align 4
  %mul = mul i32 %39, %div16
  %40 = ptrtoint ptr %iffreq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iffreq, align 4
  %sub = sub i32 %mul, %41
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end46 ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv = zext i16 %8 to i32
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %call = tail call ptr @dvb_pll_attach(ptr noundef %3, i32 noundef %conv, ptr noundef %10, i32 noundef %6)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32, i32 1
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %release, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_pll_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void @ida_free(ptr noundef nonnull @pll_ida, i32 noundef %5) #8
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tuner_priv, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !35, !37, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165, !166, !167, !168, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 42, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype292, !6, !"__UNIQUE_ID_idtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id293, !9, !"__UNIQUE_ID_id293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 47, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 841, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dvb_pll_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @dvb_pll_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 852, i32 3}
!18 = !{ptr @dvb_pll_attach._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dvb_pll_attach._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 854, i32 4}
!22 = !{ptr @dvb_pll_attach._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dvb_pll_attach._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 855, i32 3}
!26 = !{ptr @dvb_pll_attach._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dvb_pll_attach._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_dvb_pll_attach, !31, !"__ksymtab_dvb_pll_attach", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 869, i32 1}
!32 = !{ptr @__initcall__kmod_dvb_pll__294_950_dvb_pll_driver_init6, !33, !"__initcall__kmod_dvb_pll__294_950_dvb_pll_driver_init6", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 950, i32 1}
!34 = !{ptr @__exitcall_dvb_pll_driver_exit, !33, !"__exitcall_dvb_pll_driver_exit", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_description295, !36, !"__UNIQUE_ID_description295", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 952, i32 1}
!37 = !{ptr @__UNIQUE_ID_author296, !38, !"__UNIQUE_ID_author296", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 953, i32 1}
!39 = !{ptr @__UNIQUE_ID_file297, !40, !"__UNIQUE_ID_file297", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 954, i32 1}
!41 = !{ptr @__UNIQUE_ID_license298, !40, !"__UNIQUE_ID_license298", i1 false, i1 false}
!42 = !{ptr @debug, !43, !"debug", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 40, i32 12}
!44 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!45 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!46 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 38, i32 8}
!49 = !{ptr @pll_ida, !48, !"pll_ida", i1 false, i1 false}
!50 = !{ptr @id, !51, !"id", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 44, i32 21}
!52 = !{ptr @pll_list, !53, !"pll_list", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 568, i32 35}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 73, i32 11}
!56 = !{ptr @dvb_pll_thomson_dtt7579, !57, !"dvb_pll_thomson_dtt7579", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 72, i32 34}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 95, i32 11}
!60 = !{ptr @dvb_pll_thomson_dtt759x, !61, !"dvb_pll_thomson_dtt759x", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 94, i32 34}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 137, i32 11}
!64 = !{ptr @dvb_pll_lg_z201, !65, !"dvb_pll_lg_z201", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 136, i32 34}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 153, i32 11}
!68 = !{ptr @dvb_pll_unknown_1, !69, !"dvb_pll_unknown_1", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 152, i32 34}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 175, i32 11}
!72 = !{ptr @dvb_pll_tua6010xs, !73, !"dvb_pll_tua6010xs", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 174, i32 34}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 189, i32 11}
!76 = !{ptr @dvb_pll_env57h1xd5, !77, !"dvb_pll_env57h1xd5", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 188, i32 34}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 247, i32 11}
!80 = !{ptr @dvb_pll_tua6034, !81, !"dvb_pll_tua6034", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 246, i32 34}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 213, i32 11}
!84 = !{ptr @dvb_pll_tda665x, !85, !"dvb_pll_tda665x", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 212, i32 34}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 271, i32 10}
!88 = !{ptr @dvb_pll_tded4, !89, !"dvb_pll_tded4", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 270, i32 34}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 289, i32 10}
!92 = !{ptr @dvb_pll_tdhu2, !93, !"dvb_pll_tdhu2", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 288, i32 34}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 306, i32 10}
!96 = !{ptr @dvb_pll_samsung_tbmv, !97, !"dvb_pll_samsung_tbmv", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 305, i32 34}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 325, i32 11}
!100 = !{ptr @dvb_pll_philips_sd1878_tda8261, !101, !"dvb_pll_philips_sd1878_tda8261", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 324, i32 34}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 391, i32 11}
!104 = !{ptr @dvb_pll_opera1, !105, !"dvb_pll_opera1", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 390, i32 34}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 357, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @opera1_bw._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @opera1_bw._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 438, i32 12}
!113 = !{ptr @dvb_pll_samsung_dtos403ih102a, !114, !"dvb_pll_samsung_dtos403ih102a", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 437, i32 34}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 427, i32 3}
!117 = !{ptr @samsung_dtos403ih102a_set._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @samsung_dtos403ih102a_set._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 458, i32 10}
!121 = !{ptr @dvb_pll_samsung_tdtc9251dh0, !122, !"dvb_pll_samsung_tdtc9251dh0", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 457, i32 34}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 472, i32 10}
!125 = !{ptr @dvb_pll_samsung_tbdu18132, !126, !"dvb_pll_samsung_tbdu18132", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 471, i32 34}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 493, i32 10}
!129 = !{ptr @dvb_pll_samsung_tbmu24112, !130, !"dvb_pll_samsung_tbmu24112", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 492, i32 34}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 514, i32 10}
!133 = !{ptr @dvb_pll_alps_tdee4, !134, !"dvb_pll_alps_tdee4", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 513, i32 34}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 119, i32 11}
!137 = !{ptr @dvb_pll_thomson_dtt7520x, !138, !"dvb_pll_thomson_dtt7520x", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 118, i32 34}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 530, i32 12}
!141 = !{ptr @dvb_pll_tua6034_friio, !142, !"dvb_pll_tua6034_friio", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 529, i32 34}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 546, i32 12}
!145 = !{ptr @dvb_pll_tda665x_earth_pt1, !146, !"dvb_pll_tda665x_earth_pt1", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 545, i32 34}
!147 = !{ptr @dvb_pll_tuner_ops, !148, !"dvb_pll_tuner_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 771, i32 35}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 611, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dvb_pll_configure._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @dvb_pll_configure._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 627, i32 3}
!156 = !{ptr @dvb_pll_configure._entry.70, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dvb_pll_configure._entry_ptr.72, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 943, i32 11}
!160 = !{ptr @dvb_pll_driver, !161, !"dvb_pll_driver", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 941, i32 26}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 898, i32 2}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @dvb_pll_probe._entry, !163, !"_entry", i1 false, i1 false}
!168 = !{ptr @dvb_pll_probe._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @dvb_pll_id, !170, !"dvb_pll_id", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/dvb-pll.c", i32 913, i32 35}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 2155740313, i64 2155740815, i64 2155740350, i64 2155740406, i64 2155740440, i64 2155740464, i64 2155740505, i64 2155740526, i64 2155740554, i64 2155740588}
