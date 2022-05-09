; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda8290.c_pt.bc'
source_filename = "../drivers/media/tuners/tda8290.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tda829x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda829x_attach\09\09\09\09"
module asm "\09.long\09__crc_tda829x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda829x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda829x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda829x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tda829x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_tda829x_probe\09\09\09\09"
module asm "\09.long\09__crc_tda829x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda829x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tda829x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tda829x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.91 = type { [2 x i8] }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda8290_priv = type { %struct.tuner_i2c_props, i8, i8, i8, %struct.tda827x_config, ptr }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [14 x i8] c"tda8290.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"tda8290.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"tda8290.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_deemphasis_50 = internal constant [22 x i8] c"tda8290.deemphasis_50\00", align 1
@deemphasis_50 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_deemphasis_50 = internal constant %struct.kernel_param { ptr @__param_str_deemphasis_50, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @deemphasis_50 } }, section "__param", align 4
@__UNIQUE_ID_deemphasis_50type292 = internal constant [35 x i8] c"tda8290.parmtype=deemphasis_50:int\00", section ".modinfo", align 1
@__UNIQUE_ID_deemphasis_50293 = internal constant [68 x i8] c"tda8290.parm=deemphasis_50:0 - 75us deemphasis; 1 - 50us deemphasis\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda829x\00", [24 x i8] zeroinitializer }, align 32
@tda8290_ops = internal constant { %struct.analog_demod_ops, [60 x i8] } { %struct.analog_demod_ops { %struct.analog_demod_info zeroinitializer, ptr @tda8290_set_params, ptr @tda8290_has_signal, ptr null, ptr null, ptr @tda8290_standby, ptr @tda829x_release, ptr @tda8290_i2c_bridge, ptr null }, [60 x i8] zeroinitializer }, align 32
@tda8295_ops = internal constant { %struct.analog_demod_ops, [60 x i8] } { %struct.analog_demod_ops { %struct.analog_demod_info zeroinitializer, ptr @tda8295_set_params, ptr @tda8295_has_signal, ptr null, ptr null, ptr @tda8295_standby, ptr @tda829x_release, ptr @tda8295_i2c_bridge, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda8290\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda8295\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tda8290+75\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tda8295+75\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tda8290+75a\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tda8295+75a\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda8290+18271\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda8295+18271\00", [18 x i8] zeroinitializer }, align 32
@tda829x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda829x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tda8290.c\00", [33 x i8] zeroinitializer }, align 32
@tda829x_attach._entry_ptr = internal global ptr @tda829x_attach._entry, section ".printk_index", align 4
@__kstrtab_tda829x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda829x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda829x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda829x_attach to i32), ptr @__kstrtab_tda829x_attach, ptr @__kstrtabns_tda829x_attach }, section "___ksymtab_gpl+tda829x_attach", align 4
@tda829x_probe.soft_reset = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@tda829x_probe.easy_mode_b = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\01\02", [30 x i8] zeroinitializer }, align 32
@tda829x_probe.easy_mode_g = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\01\04", [30 x i8] zeroinitializer }, align 32
@tda829x_probe.restore_9886 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\D60", [29 x i8] zeroinitializer }, align 32
@tda829x_probe.addr_dto_lsb = internal global { i8, [31 x i8] } { i8 7, [31 x i8] zeroinitializer }, align 32
@__kstrtab_tda829x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda829x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tda829x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda829x_probe to i32), ptr @__kstrtab_tda829x_probe, ptr @__kstrtabns_tda829x_probe }, section "___ksymtab_gpl+tda829x_probe", align 4
@__UNIQUE_ID_description294 = internal constant [77 x i8] c"tda8290.description=Philips/NXP TDA8290/TDA8295 analog IF demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [60 x i8] c"tda8290.author=Gerd Knorr, Hartmut Hackmann, Michael Krufky\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"tda8290.file=drivers/media/tuners/tda8290\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"tda8290.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda8290_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.11, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: couldn't read register 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda8290_probe\00", [18 x i8] zeroinitializer }, align 32
@tda8290_probe._entry_ptr = internal global ptr @tda8290_probe._entry, section ".printk_index", align 4
@tda8290_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.11, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: tda8290 detected @ %d-%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@tda8290_probe._entry_ptr.16 = internal global ptr @tda8290_probe._entry.14, section ".printk_index", align 4
@tda8290_set_params.soft_reset = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@tda8290_set_params.expert_mode = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\01\80", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.agc_out_on = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\02\00", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.gainset_off = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"(\14", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.if_agc_spd = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0F\88", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.adc_head_6 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\05\04", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.adc_head_9 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\05\02", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.adc_head_12 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\05\01", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.pll_bw_nom = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0DG", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.pll_bw_low = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0D'", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.gainset_2 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"(d", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.agc_rst_on = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0E\0B", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.agc_rst_off = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0E\09", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.if_agc_set = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\0F\81", [30 x i8] zeroinitializer }, align 32
@tda8290_set_params.addr_adc_sat = internal global { i8, [31 x i8] } { i8 26, [31 x i8] zeroinitializer }, align 32
@tda8290_set_params.addr_agc_stat = internal global { i8, [31 x i8] } { i8 29, [31 x i8] zeroinitializer }, align 32
@tda8290_set_params.addr_pll_stat = internal global { i8, [31 x i8] } { i8 27, [31 x i8] zeroinitializer }, align 32
@tda8290_set_params.adc_sat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tda8290_set_params.agc_stat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tda8290_set_params.pll_stat = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tda8290_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.11, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s %d-%04x: tda827xa config is 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda8290_set_params\00", [45 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr = internal global ptr @tda8290_set_params._entry, section ".printk_index", align 4
@fm_mode = internal global { [13 x %struct.anon.91], [38 x i8] } { [13 x %struct.anon.91] [%struct.anon.91 { [2 x i8] c"\01\81" }, %struct.anon.91 { [2 x i8] c"\03H" }, %struct.anon.91 { [2 x i8] c"\04\04" }, %struct.anon.91 { [2 x i8] c"\05\04" }, %struct.anon.91 { [2 x i8] c"\06\10" }, %struct.anon.91 { [2 x i8] c"\07\00" }, %struct.anon.91 { [2 x i8] c"\08\00" }, %struct.anon.91 { [2 x i8] c"\09\80" }, %struct.anon.91 { [2 x i8] c"\0A\DA" }, %struct.anon.91 { [2 x i8] c"\0BK" }, %struct.anon.91 { [2 x i8] c"\0Ch" }, %struct.anon.91 { [2 x i8] c"\0D\00" }, %struct.anon.91 { [2 x i8] c"\14\00" }], [38 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.11, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s %d-%04x: tda8290 is locked, AGC: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.21 = internal global ptr @tda8290_set_params._entry.19, section ".printk_index", align 4
@tda8290_set_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.11, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: tda8290 not locked, no signal?\0A\00", [50 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.24 = internal global ptr @tda8290_set_params._entry.22, section ".printk_index", align 4
@tda8290_set_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.11, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s %d-%04x: adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.27 = internal global ptr @tda8290_set_params._entry.25, section ".printk_index", align 4
@tda8290_set_params._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.11, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d-%04x: adjust gain, step 2. Agc: %d, lock: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.30 = internal global ptr @tda8290_set_params._entry.28, section ".printk_index", align 4
@tda8290_set_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.11, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: adjust gain, step 3. Agc: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.33 = internal global ptr @tda8290_set_params._entry.31, section ".printk_index", align 4
@tda8290_set_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.11, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s %d-%04x: trying to resolve SECAM L deadlock\0A\00", [46 x i8] zeroinitializer }, align 32
@tda8290_set_params._entry_ptr.36 = internal global ptr @tda8290_set_params._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GH\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DK\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LC\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xx\00", [29 x i8] zeroinitializer }, align 32
@set_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.11, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: setting to radio FM\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_audio\00", [22 x i8] zeroinitializer }, align 32
@set_audio._entry_ptr = internal global ptr @set_audio._entry, section ".printk_index", align 4
@set_audio._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.11, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: setting tda829x to system %s\0A\00", [52 x i8] zeroinitializer }, align 32
@set_audio._entry_ptr.49 = internal global ptr @set_audio._entry.47, section ".printk_index", align 4
@tda8290_standby.cb1 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"0\D0", [30 x i8] zeroinitializer }, align 32
@tda8290_standby.tda8290_standby = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\02", [30 x i8] zeroinitializer }, align 32
@tda8290_standby.tda8290_agc_tri = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\02 ", [30 x i8] zeroinitializer }, align 32
@tda8290_i2c_bridge.enable = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"!\C0", [30 x i8] zeroinitializer }, align 32
@tda8290_i2c_bridge.disable = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@tda8295_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.50, ptr @.str.11, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda8295_probe\00", [18 x i8] zeroinitializer }, align 32
@tda8295_probe._entry_ptr = internal global ptr @tda8295_probe._entry, section ".printk_index", align 4
@tda8295_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.11, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s detected @ %d-%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@tda8295_probe._entry_ptr.53 = internal global ptr @tda8295_probe._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tda8295c1\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tda8295c2\00", [22 x i8] zeroinitializer }, align 32
@tda8295_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.11, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d-%04x: %s: freq = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda8295_set_params\00", [45 x i8] zeroinitializer }, align 32
@tda8295_set_params._entry_ptr = internal global ptr @tda8295_set_params._entry, section ".printk_index", align 4
@tda8295_set_params._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.11, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s %d-%04x: tda8295 is locked\0A\00", [63 x i8] zeroinitializer }, align 32
@tda8295_set_params._entry_ptr.60 = internal global ptr @tda8295_set_params._entry.58, section ".printk_index", align 4
@tda8295_set_params._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.11, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: tda8295 not locked, no signal?\0A\00", [50 x i8] zeroinitializer }, align 32
@tda8295_set_params._entry_ptr.63 = internal global ptr @tda8295_set_params._entry.61, section ".printk_index", align 4
@tda8295_i2c_bridge.enable = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"E\C1", [30 x i8] zeroinitializer }, align 32
@tda8295_i2c_bridge.disable = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@tda8295_i2c_bridge.buf = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"E\01\00", [29 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.11, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016%s %d-%04x: could not clearly identify tuner address, defaulting to %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda829x_find_tuner\00", [45 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry_ptr = internal global ptr @tda829x_find_tuner._entry, section ".printk_index", align 4
@tda829x_find_tuner._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.11, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: setting tuner address to %x\0A\00", [53 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry_ptr.68 = internal global ptr @tda829x_find_tuner._entry.66, section ".printk_index", align 4
@tda829x_find_tuner._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.11, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s %d-%04x: tuner access failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry_ptr.71 = internal global ptr @tda829x_find_tuner._entry.69, section ".printk_index", align 4
@tda829x_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.65, ptr @.str.11, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry_ptr.76 = internal global ptr @tda829x_find_tuner._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda827x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.65, ptr @.str.11, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@tda829x_find_tuner._entry_ptr.81 = internal global ptr @tda829x_find_tuner._entry.79, section ".printk_index", align 4
@tda8290_init_tuner.tda8275_init = internal global { [14 x i8], [18 x i8] } { [14 x i8] c"\00\00\00@\DC\04\AF?*\04\FF\00\00@", [18 x i8] zeroinitializer }, align 32
@tda8290_init_tuner.tda8275a_init = internal global { [14 x i8], [18 x i8] } { [14 x i8] c"\00\00\00\00\DC\05\8B\0C\04 \FF\00\00K", [18 x i8] zeroinitializer }, align 32
@tda8290_init_if.set_VS = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"0o", [30 x i8] zeroinitializer }, align 32
@tda8290_init_if.set_GP00_CF = internal global { [2 x i8], [30 x i8] } { [2 x i8] c" \01", [30 x i8] zeroinitializer }, align 32
@tda8290_init_if.set_GP01_CF = internal global { [2 x i8], [30 x i8] } { [2 x i8] c" \0B", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_adc_ctl = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"3\14", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_adc_ctl2 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_pll_reg6 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c">c", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_pll_reg0 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"8#", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_pll_reg7 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"?\01", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_pll_reg10 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"Ba", [30 x i8] zeroinitializer }, align 32
@tda8295_init_if.set_gpio_reg0 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"D\0B", [30 x i8] zeroinitializer }, align 32
@switch.table.tda829x_attach = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.1, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.7, ptr @.str.8], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 20, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"deemphasis_50\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 24, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 744, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"tda8290_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 714, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"tda8295_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 722, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 773, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 776, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 779, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 782, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 785, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 788, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 791, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 794, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 799, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 827, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"easy_mode_b\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 828, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"easy_mode_g\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 829, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"restore_9886\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 830, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"addr_dto_lsb\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 831, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 669, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 676, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"soft_reset\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 169, i32 23 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"expert_mode\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 171, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"agc_out_on\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 172, i32 23 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"gainset_off\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 173, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"if_agc_spd\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 174, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant [11 x i8] c"adc_head_6\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 175, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"adc_head_9\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 176, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"adc_head_12\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 177, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant [11 x i8] c"pll_bw_nom\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 178, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"pll_bw_low\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 179, i32 23 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"gainset_2\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 180, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"agc_rst_on\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 181, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"agc_rst_off\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 182, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant [11 x i8] c"if_agc_set\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 183, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"addr_adc_sat\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 184, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"addr_agc_stat\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 185, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"addr_pll_stat\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 186, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant [8 x i8] c"adc_sat\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 187, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant [9 x i8] c"agc_stat\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 187, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"pll_stat\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 188, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 194, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"fm_mode\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 146, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 241, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 244, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 250, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 259, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 271, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 288, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 111, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 114, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 117, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 120, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 123, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 126, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 129, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 132, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 138, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 140, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [4 x i8] c"cb1\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 459, i32 23 }
@___asan_gen_.313 = private unnamed_addr constant [16 x i8] c"tda8290_standby\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 460, i32 23 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"tda8290_agc_tri\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 461, i32 23 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 54, i32 24 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 55, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 696, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 703, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 405, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 430, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 432, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 75, i32 24 }
@___asan_gen_.367 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 76, i32 23 }
@___asan_gen_.370 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 77, i32 23 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 610, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 614, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 624, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [24 x i8] c"tda829x_tda18271_config\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 564, i32 31 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 634, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 642, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [13 x i8] c"tda8275_init\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 530, i32 23 }
@___asan_gen_.424 = private unnamed_addr constant [14 x i8] c"tda8275a_init\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 533, i32 23 }
@___asan_gen_.427 = private unnamed_addr constant [7 x i8] c"set_VS\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 486, i32 23 }
@___asan_gen_.430 = private unnamed_addr constant [12 x i8] c"set_GP00_CF\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 487, i32 23 }
@___asan_gen_.433 = private unnamed_addr constant [12 x i8] c"set_GP01_CF\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 488, i32 23 }
@___asan_gen_.436 = private unnamed_addr constant [12 x i8] c"set_adc_ctl\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 502, i32 23 }
@___asan_gen_.439 = private unnamed_addr constant [13 x i8] c"set_adc_ctl2\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 503, i32 23 }
@___asan_gen_.442 = private unnamed_addr constant [13 x i8] c"set_pll_reg6\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 504, i32 23 }
@___asan_gen_.445 = private unnamed_addr constant [13 x i8] c"set_pll_reg0\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 505, i32 23 }
@___asan_gen_.448 = private unnamed_addr constant [13 x i8] c"set_pll_reg7\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 506, i32 23 }
@___asan_gen_.451 = private unnamed_addr constant [14 x i8] c"set_pll_reg10\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 507, i32 23 }
@___asan_gen_.454 = private unnamed_addr constant [14 x i8] c"set_gpio_reg0\00", align 1
@___asan_gen_.455 = private constant [34 x i8] c"../drivers/media/tuners/tda8290.c\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 508, i32 23 }
@___asan_gen_.457 = private unnamed_addr constant [28 x i8] c"switch.table.tda829x_attach\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_deemphasis_50293, ptr @__UNIQUE_ID_deemphasis_50type292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_tda829x_attach, ptr @__ksymtab_tda829x_probe, ptr @__param_debug, ptr @__param_deemphasis_50, ptr @set_audio._entry, ptr @set_audio._entry.47, ptr @set_audio._entry_ptr, ptr @set_audio._entry_ptr.49, ptr @tda8290_probe._entry, ptr @tda8290_probe._entry.14, ptr @tda8290_probe._entry_ptr, ptr @tda8290_probe._entry_ptr.16, ptr @tda8290_set_params._entry, ptr @tda8290_set_params._entry.19, ptr @tda8290_set_params._entry.22, ptr @tda8290_set_params._entry.25, ptr @tda8290_set_params._entry.28, ptr @tda8290_set_params._entry.31, ptr @tda8290_set_params._entry.34, ptr @tda8290_set_params._entry_ptr, ptr @tda8290_set_params._entry_ptr.21, ptr @tda8290_set_params._entry_ptr.24, ptr @tda8290_set_params._entry_ptr.27, ptr @tda8290_set_params._entry_ptr.30, ptr @tda8290_set_params._entry_ptr.33, ptr @tda8290_set_params._entry_ptr.36, ptr @tda8295_probe._entry, ptr @tda8295_probe._entry.51, ptr @tda8295_probe._entry_ptr, ptr @tda8295_probe._entry_ptr.53, ptr @tda8295_set_params._entry, ptr @tda8295_set_params._entry.58, ptr @tda8295_set_params._entry.61, ptr @tda8295_set_params._entry_ptr, ptr @tda8295_set_params._entry_ptr.60, ptr @tda8295_set_params._entry_ptr.63, ptr @tda829x_attach._entry, ptr @tda829x_attach._entry_ptr, ptr @tda829x_find_tuner._entry, ptr @tda829x_find_tuner._entry.66, ptr @tda829x_find_tuner._entry.69, ptr @tda829x_find_tuner._entry.74, ptr @tda829x_find_tuner._entry.79, ptr @tda829x_find_tuner._entry_ptr, ptr @tda829x_find_tuner._entry_ptr.68, ptr @tda829x_find_tuner._entry_ptr.71, ptr @tda829x_find_tuner._entry_ptr.76, ptr @tda829x_find_tuner._entry_ptr.81, ptr @debug, ptr @deemphasis_50, ptr @.str, ptr @tda8290_ops, ptr @tda8295_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tda829x_probe.soft_reset, ptr @tda829x_probe.easy_mode_b, ptr @tda829x_probe.easy_mode_g, ptr @tda829x_probe.restore_9886, ptr @tda829x_probe.addr_dto_lsb, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @tda8290_set_params.soft_reset, ptr @tda8290_set_params.expert_mode, ptr @tda8290_set_params.agc_out_on, ptr @tda8290_set_params.gainset_off, ptr @tda8290_set_params.if_agc_spd, ptr @tda8290_set_params.adc_head_6, ptr @tda8290_set_params.adc_head_9, ptr @tda8290_set_params.adc_head_12, ptr @tda8290_set_params.pll_bw_nom, ptr @tda8290_set_params.pll_bw_low, ptr @tda8290_set_params.gainset_2, ptr @tda8290_set_params.agc_rst_on, ptr @tda8290_set_params.agc_rst_off, ptr @tda8290_set_params.if_agc_set, ptr @tda8290_set_params.addr_adc_sat, ptr @tda8290_set_params.addr_agc_stat, ptr @tda8290_set_params.addr_pll_stat, ptr @tda8290_set_params.adc_sat, ptr @tda8290_set_params.agc_stat, ptr @tda8290_set_params.pll_stat, ptr @.str.17, ptr @.str.18, ptr @fm_mode, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @tda8290_standby.cb1, ptr @tda8290_standby.tda8290_standby, ptr @tda8290_standby.tda8290_agc_tri, ptr @tda8290_i2c_bridge.enable, ptr @tda8290_i2c_bridge.disable, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @tda8295_i2c_bridge.enable, ptr @tda8295_i2c_bridge.disable, ptr @tda8295_i2c_bridge.buf, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @tda829x_tda18271_config, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @tda8290_init_tuner.tda8275_init, ptr @tda8290_init_tuner.tda8275a_init, ptr @tda8290_init_if.set_VS, ptr @tda8290_init_if.set_GP00_CF, ptr @tda8290_init_if.set_GP01_CF, ptr @tda8295_init_if.set_adc_ctl, ptr @tda8295_init_if.set_adc_ctl2, ptr @tda8295_init_if.set_pll_reg6, ptr @tda8295_init_if.set_pll_reg0, ptr @tda8295_init_if.set_pll_reg7, ptr @tda8295_init_if.set_pll_reg10, ptr @tda8295_init_if.set_gpio_reg0, ptr @switch.table.tda829x_attach], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deemphasis_50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_probe.soft_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_probe.easy_mode_b to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_probe.easy_mode_g to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_probe.restore_9886 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_probe.addr_dto_lsb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.soft_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.expert_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.agc_out_on to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.gainset_off to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.if_agc_spd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.adc_head_6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.adc_head_9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.adc_head_12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.pll_bw_nom to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.pll_bw_low to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.gainset_2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.agc_rst_on to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.agc_rst_off to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.if_agc_set to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.addr_adc_sat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.addr_agc_stat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.addr_pll_stat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.adc_sat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.agc_stat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params.pll_stat to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_mode to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_set_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_standby.cb1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_standby.tda8290_standby to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_standby.tda8290_agc_tri to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_i2c_bridge.enable to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_i2c_bridge.disable to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_set_params._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_set_params._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_i2c_bridge.enable to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_i2c_bridge.disable to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_i2c_bridge.buf to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_find_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_find_tuner._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_find_tuner._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_find_tuner._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_find_tuner._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_init_tuner.tda8275_init to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_init_tuner.tda8275a_init to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_init_if.set_VS to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_init_if.set_GP00_CF to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8290_init_if.set_GP01_CF to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_adc_ctl to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_adc_ctl2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_pll_reg6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_pll_reg0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_pll_reg7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_pll_reg10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8295_init_if.set_gpio_reg0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda829x_attach to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda829x_attach(ptr noundef %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr, ptr noundef readonly %cfg) #0 align 64 {
entry:
  %msg.i17.i.i = alloca %struct.i2c_msg, align 4
  %msg.i12.i.i = alloca %struct.i2c_msg, align 4
  %msg.i1.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i98.i = alloca [2 x %struct.i2c_msg], align 4
  %set_gpio_cf.i.i = alloca [2 x i8], align 2
  %set_gpio_val.i.i = alloca [2 x i8], align 2
  %msg.i10.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i84.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i85.i = alloca [2 x i8], align 2
  %msg.i77.i = alloca %struct.i2c_msg, align 4
  %msg.i70.i = alloca %struct.i2c_msg, align 4
  %msg.i63.i = alloca %struct.i2c_msg, align 4
  %msg.i56.i = alloca %struct.i2c_msg, align 4
  %msg.i49.i = alloca %struct.i2c_msg, align 4
  %msg.i42.i = alloca %struct.i2c_msg, align 4
  %msg.i.i150 = alloca %struct.i2c_msg, align 4
  %msg.i7.i24.i = alloca %struct.i2c_msg, align 4
  %msg.i.i25.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i26.i = alloca [2 x i8], align 2
  %msg.i7.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i151 = alloca [2 x i8], align 2
  %msg.i19.i = alloca %struct.i2c_msg, align 4
  %msg.i12.i = alloca %struct.i2c_msg, align 4
  %msg.i.i138 = alloca %struct.i2c_msg, align 4
  %msg.i127 = alloca %struct.i2c_msg, align 4
  %data.i = alloca i8, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %1 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %analog_demod_priv, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i2c_addr, ptr %call7.i.i, align 8
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c_adap, ptr %adap, align 4
  %name3 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name3, align 4
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg, align 4
  %config = getelementptr inbounds %struct.tda8290_priv, ptr %call7.i.i, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %config, align 4
  %tda18271_std_map = getelementptr inbounds %struct.tda829x_config, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %tda18271_std_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tda18271_std_map, align 4
  %tda18271_std_map6 = getelementptr inbounds %struct.tda8290_priv, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %tda18271_std_map6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %tda18271_std_map6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %call9 = tail call fastcc i32 @tda8290_probe(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %ver = getelementptr inbounds %struct.tda8290_priv, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ver, align 2
  %analog_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33
  %12 = call ptr @memcpy(ptr %analog_ops, ptr @tda8290_ops, i32 36)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  %call14 = tail call fastcc i32 @tda8295_probe(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %ver17 = getelementptr inbounds %struct.tda8290_priv, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ver17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %ver17, align 2
  %analog_ops19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33
  %14 = call ptr @memcpy(ptr %analog_ops19, ptr @tda8295_ops, i32 36)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end12.if.end20_crit_edge
  br i1 %tobool.not, label %if.end20.if.then32_crit_edge, label %land.lhs.true

if.end20.if.then32_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

land.lhs.true:                                    ; preds = %if.end20
  %no_i2c_gate = getelementptr inbounds %struct.tda829x_config, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %no_i2c_gate to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %no_i2c_gate, align 4
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  br i1 %tobool22.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %if.then23

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  %18 = ptrtoint ptr %no_i2c_gate to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load28.pr = load i8, ptr %no_i2c_gate, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then23, %land.lhs.true.lor.lhs.false_crit_edge
  %bf.load28 = phi i8 [ %bf.load, %land.lhs.true.lor.lhs.false_crit_edge ], [ %bf.load28.pr, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %cmp31 = icmp sgt i8 %bf.load28, -1
  br i1 %cmp31, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end20.if.then32_crit_edge
  %19 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 12288, ptr %buf.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %20, align 4
  %conv.i.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx1.i, ptr %buf9.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %20, i32 0, i32 1
  %34 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #5
  %37 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %20, align 4
  %conv.i8.i = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i8.i, ptr %msg.i7.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i9.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %43 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %44 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adap.i.i, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %46 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %data.i, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %49 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 131071, ptr %49, align 4
  %51 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags.i, align 2
  %buf.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %data.i, ptr %buf.i126, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %54 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.then32.if.end.i_crit_edge, label %if.then.i

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %55(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then32.if.end.i_crit_edge
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 96, ptr %msg.i, align 4
  %57 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adap.i, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 1
  %tuner_addrs.1.i = select i1 %cmp6.i, i32 96, i32 0
  %inc.i = zext i1 %cmp6.i to i32
  %59 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 97, ptr %msg.i, align 4
  %60 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap.i, align 4
  %call5.1.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.1.i)
  %cmp6.1.i = icmp eq i32 %call5.1.i, 1
  %shl.1.i = shl nuw nsw i32 %tuner_addrs.1.i, 8
  %add.1.i = or i32 %shl.1.i, 97
  %tuner_addrs.1.1.i = select i1 %cmp6.1.i, i32 %add.1.i, i32 %tuner_addrs.1.i
  %inc.1.i = zext i1 %cmp6.1.i to i32
  %tuners_found.1.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %62 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 98, ptr %msg.i, align 4
  %63 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adap.i, align 4
  %call5.2.i = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.2.i)
  %cmp6.2.i = icmp eq i32 %call5.2.i, 1
  %shl.2.i = shl nuw nsw i32 %tuner_addrs.1.1.i, 8
  %add.2.i = or i32 %shl.2.i, 98
  %tuner_addrs.1.2.i = select i1 %cmp6.2.i, i32 %add.2.i, i32 %tuner_addrs.1.1.i
  %inc.2.i = zext i1 %cmp6.2.i to i32
  %tuners_found.1.2.i = add nuw nsw i32 %tuners_found.1.1.i, %inc.2.i
  %65 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 99, ptr %msg.i, align 4
  %66 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adap.i, align 4
  %call5.3.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.3.i)
  %cmp6.3.i = icmp eq i32 %call5.3.i, 1
  %shl.3.i = shl i32 %tuner_addrs.1.2.i, 8
  %add.3.i = or i32 %shl.3.i, 99
  %tuner_addrs.1.3.i = select i1 %cmp6.3.i, i32 %add.3.i, i32 %tuner_addrs.1.2.i
  %inc.3.i = zext i1 %cmp6.3.i to i32
  %tuners_found.1.3.i = add nuw nsw i32 %tuners_found.1.2.i, %inc.3.i
  %68 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool14.not.i = icmp eq ptr %69, null
  br i1 %tobool14.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then15.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = call i32 %69(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end.i.if.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tuners_found.1.3.i)
  %cmp21.i = icmp ugt i32 %tuners_found.1.3.i, 1
  br i1 %cmp21.i, label %for.body27.i, label %if.end20.i.if.end40.i_crit_edge

if.end20.i.if.end40.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

for.body27.i:                                     ; preds = %if.end20.i
  %70 = trunc i32 %tuner_addrs.1.3.i to i16
  %conv28.i = and i16 %70, 255
  %71 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv28.i, ptr %msg.i, align 4
  %72 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap.i, align 4
  %call32.i = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i)
  %cmp33.i = icmp eq i32 %call32.i, 1
  br i1 %cmp33.i, label %if.then35.i, label %for.body27.i.if.end40.i_crit_edge

for.body27.i.if.end40.i_crit_edge:                ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then35.i:                                      ; preds = %for.body27.i
  %shr.i = lshr i32 %tuner_addrs.1.3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tuners_found.1.3.i)
  %exitcond.not.i = icmp eq i32 %tuners_found.1.3.i, 1
  br i1 %exitcond.not.i, label %if.then35.i.if.end40.i_crit_edge, label %for.body27.i.1

if.then35.i.if.end40.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

for.body27.i.1:                                   ; preds = %if.then35.i
  %74 = trunc i32 %shr.i to i16
  %conv28.i.1 = and i16 %74, 255
  %75 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv28.i.1, ptr %msg.i, align 4
  %76 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adap.i, align 4
  %call32.i.1 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i.1)
  %cmp33.i.1 = icmp eq i32 %call32.i.1, 1
  br i1 %cmp33.i.1, label %if.then35.i.1, label %for.body27.i.1.if.end40.i_crit_edge

for.body27.i.1.if.end40.i_crit_edge:              ; preds = %for.body27.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then35.i.1:                                    ; preds = %for.body27.i.1
  %shr.i.1 = lshr i32 %tuner_addrs.1.3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tuners_found.1.3.i)
  %exitcond.not.i.1 = icmp eq i32 %tuners_found.1.3.i, 2
  br i1 %exitcond.not.i.1, label %if.then35.i.1.if.end40.i_crit_edge, label %for.body27.i.2

if.then35.i.1.if.end40.i_crit_edge:               ; preds = %if.then35.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

for.body27.i.2:                                   ; preds = %if.then35.i.1
  %78 = trunc i32 %shr.i.1 to i16
  %conv28.i.2 = and i16 %78, 255
  %79 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv28.i.2, ptr %msg.i, align 4
  %80 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adap.i, align 4
  %call32.i.2 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i.2)
  %cmp33.i.2 = icmp eq i32 %call32.i.2, 1
  br i1 %cmp33.i.2, label %if.then35.i.2, label %for.body27.i.2.if.end40.i_crit_edge

for.body27.i.2.if.end40.i_crit_edge:              ; preds = %for.body27.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then35.i.2:                                    ; preds = %for.body27.i.2
  %shr.i.2 = lshr i32 %tuner_addrs.1.3.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tuners_found.1.3.i)
  %exitcond.not.i.2 = icmp eq i32 %tuners_found.1.3.i, 3
  br i1 %exitcond.not.i.2, label %if.then35.i.2.if.end40.i_crit_edge, label %for.body27.i.3

if.then35.i.2.if.end40.i_crit_edge:               ; preds = %if.then35.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

for.body27.i.3:                                   ; preds = %if.then35.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %82 = trunc i32 %shr.i.2 to i16
  %83 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %msg.i, align 4
  %84 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adap.i, align 4
  %call32.i.3 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i.3)
  %cmp33.i.3 = icmp eq i32 %call32.i.3, 1
  %spec.select = select i1 %cmp33.i.3, i32 0, i32 %shr.i.2
  br label %if.end40.i

if.end40.i:                                       ; preds = %for.body27.i.3, %if.then35.i.2.if.end40.i_crit_edge, %for.body27.i.2.if.end40.i_crit_edge, %if.then35.i.1.if.end40.i_crit_edge, %for.body27.i.1.if.end40.i_crit_edge, %if.then35.i.if.end40.i_crit_edge, %for.body27.i.if.end40.i_crit_edge, %if.end20.i.if.end40.i_crit_edge
  %tuner_addrs.3.i = phi i32 [ %tuner_addrs.1.3.i, %if.end20.i.if.end40.i_crit_edge ], [ %shr.i, %if.then35.i.if.end40.i_crit_edge ], [ %tuner_addrs.1.3.i, %for.body27.i.if.end40.i_crit_edge ], [ %shr.i, %for.body27.i.1.if.end40.i_crit_edge ], [ %shr.i.1, %if.then35.i.1.if.end40.i_crit_edge ], [ %shr.i.1, %for.body27.i.2.if.end40.i_crit_edge ], [ %shr.i.2, %if.then35.i.2.if.end40.i_crit_edge ], [ %spec.select, %for.body27.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tuner_addrs.3.i)
  %cmp41.i = icmp eq i32 %tuner_addrs.3.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %if.else61.i

if.then43.i:                                      ; preds = %if.end40.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %47, i32 0, i32 3
  %86 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name.i, align 4
  %88 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adap.i, align 4
  %tobool49.not.i = icmp eq ptr %89, null
  br i1 %tobool49.not.i, label %if.then43.i.cond.end.i_crit_edge, label %cond.true.i

if.then43.i.cond.end.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then43.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %91, %cond.true.i ], [ -1, %if.then43.i.cond.end.i_crit_edge ]
  %92 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %47, align 4
  %conv55.i = zext i8 %93 to i32
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %87, i32 noundef %cond.i, i32 noundef %conv55.i, i32 noundef 96) #9
  br label %if.end89.i

if.else61.i:                                      ; preds = %if.end40.i
  %and62.i = and i32 %tuner_addrs.3.i, 255
  %name70.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %47, i32 0, i32 3
  %94 = ptrtoint ptr %name70.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name70.i, align 4
  %96 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adap.i, align 4
  %tobool73.not.i = icmp eq ptr %97, null
  br i1 %tobool73.not.i, label %if.else61.i.cond.end79.i_crit_edge, label %cond.true74.i

if.else61.i.cond.end79.i_crit_edge:               ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end79.i

cond.true74.i:                                    ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i345.i = getelementptr inbounds %struct.i2c_adapter, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %nr.i345.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr.i345.i, align 4
  br label %cond.end79.i

cond.end79.i:                                     ; preds = %cond.true74.i, %if.else61.i.cond.end79.i_crit_edge
  %cond80.i = phi i32 [ %99, %cond.true74.i ], [ -1, %if.else61.i.cond.end79.i_crit_edge ]
  %100 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %47, align 4
  %conv83.i = zext i8 %101 to i32
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %95, i32 noundef %cond80.i, i32 noundef %conv83.i, i32 noundef %and62.i) #9
  br label %if.end89.i

if.end89.i:                                       ; preds = %cond.end79.i, %cond.end.i
  %tuner_addrs.4.i = phi i32 [ 96, %cond.end.i ], [ %and62.i, %cond.end79.i ]
  %conv90.i = trunc i32 %tuner_addrs.4.i to i8
  %tda827x_addr.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 2
  %102 = ptrtoint ptr %tda827x_addr.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv90.i, ptr %tda827x_addr.i, align 1
  %conv91.i = trunc i32 %tuner_addrs.4.i to i16
  %103 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv91.i, ptr %msg.i, align 4
  %104 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool96.not.i = icmp eq ptr %105, null
  br i1 %tobool96.not.i, label %if.end89.i.if.end102.i_crit_edge, label %if.then97.i

if.end89.i.if.end102.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102.i

if.then97.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %call101.i = call i32 %105(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then97.i, %if.end89.i.if.end102.i_crit_edge
  %106 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adap.i, align 4
  %call105.i = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call105.i)
  %cmp106.not.i = icmp eq i32 %call105.i, 1
  br i1 %cmp106.not.i, label %if.end145.i, label %do.end113.i

do.end113.i:                                      ; preds = %if.end102.i
  %name116.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %47, i32 0, i32 3
  %108 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name116.i, align 4
  %110 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adap.i, align 4
  %tobool119.not.i = icmp eq ptr %111, null
  br i1 %tobool119.not.i, label %do.end113.i.cond.end125.i_crit_edge, label %cond.true120.i

do.end113.i.cond.end125.i_crit_edge:              ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end125.i

cond.true120.i:                                   ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i346.i = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %nr.i346.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr.i346.i, align 4
  br label %cond.end125.i

cond.end125.i:                                    ; preds = %cond.true120.i, %do.end113.i.cond.end125.i_crit_edge
  %cond126.i = phi i32 [ %113, %cond.true120.i ], [ -1, %do.end113.i.cond.end125.i_crit_edge ]
  %114 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %47, align 4
  %conv129.i = zext i8 %115 to i32
  %call130.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %109, i32 noundef %cond126.i, i32 noundef %conv129.i) #9
  %116 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool138.not.i = icmp eq ptr %117, null
  br i1 %tobool138.not.i, label %tda829x_find_tuner.exit.thread, label %tda829x_find_tuner.exit.thread166

tda829x_find_tuner.exit.thread166:                ; preds = %cond.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call257.i169 = call i32 %117(ptr noundef %fe, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %fail

tda829x_find_tuner.exit.thread:                   ; preds = %cond.end125.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %fail

if.end145.i:                                      ; preds = %if.end102.i
  %118 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data.i, align 1
  %.off.i = add i8 %119, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then152.i, label %if.else181.i

if.then152.i:                                     ; preds = %if.end145.i
  %ver.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 3
  %120 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ver.i, align 2
  %122 = or i8 %121, 16
  store i8 %122, ptr %ver.i, align 2
  %config.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 4, i32 2
  %123 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %config.i, align 4
  store i32 %124, ptr getelementptr inbounds (%struct.tda18271_config, ptr @tda829x_tda18271_config, i32 0, i32 6), align 4
  %tda18271_std_map.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 5
  %125 = ptrtoint ptr %tda18271_std_map.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tda18271_std_map.i, align 4
  store ptr %126, ptr @tda829x_tda18271_config, align 4
  %call155.i = call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool156.not.i = icmp eq ptr %call155.i, null
  br i1 %tobool156.not.i, label %cond.end161.i, label %if.then152.i.if.then164.i_crit_edge

if.then152.i.if.then164.i_crit_edge:              ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then164.i

cond.end161.i:                                    ; preds = %if.then152.i
  %call159.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.73) #5
  %call160.i = call ptr @__symbol_get(ptr noundef nonnull @.str.72) #5
  %tobool163.not.i = icmp eq ptr %call160.i, null
  br i1 %tobool163.not.i, label %do.end176.i, label %cond.end161.i.if.then164.i_crit_edge

cond.end161.i.if.then164.i_crit_edge:             ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then164.i

if.then164.i:                                     ; preds = %cond.end161.i.if.then164.i_crit_edge, %if.then152.i.if.then164.i_crit_edge
  %cond162349.i = phi ptr [ %call160.i, %cond.end161.i.if.then164.i_crit_edge ], [ %call155.i, %if.then152.i.if.then164.i_crit_edge ]
  %127 = ptrtoint ptr %tda827x_addr.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %tda827x_addr.i, align 1
  %129 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adap.i, align 4
  %call168.i = call ptr %cond162349.i(ptr noundef %fe, i8 noundef zeroext %128, ptr noundef %130, ptr noundef nonnull @tda829x_tda18271_config) #5
  %cmp169.i = icmp eq ptr %call168.i, null
  br i1 %cmp169.i, label %if.then171.i, label %if.then164.i.if.end231.i_crit_edge

if.then164.i.if.end231.i_crit_edge:               ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end231.i

if.then171.i:                                     ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.72) #5
  br label %if.end231.i

do.end176.i:                                      ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #7
  %call178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #9
  br label %if.end231.i

if.else181.i:                                     ; preds = %if.end145.i
  %131 = and i8 %119, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp184.i = icmp eq i8 %131, 0
  %ver187.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 3
  %132 = ptrtoint ptr %ver187.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ver187.i, align 2
  %..i = select i1 %cmp184.i, i8 4, i8 8
  %134 = or i8 %133, %..i
  store i8 %134, ptr %ver187.i, align 2
  %call199.i = call ptr @__symbol_get(ptr noundef nonnull @.str.77) #5
  %tobool200.not.i = icmp eq ptr %call199.i, null
  br i1 %tobool200.not.i, label %cond.end205.i, label %if.else181.i.if.then208.i_crit_edge

if.else181.i.if.then208.i_crit_edge:              ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then208.i

cond.end205.i:                                    ; preds = %if.else181.i
  %call203.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.78) #5
  %call204.i = call ptr @__symbol_get(ptr noundef nonnull @.str.77) #5
  %tobool207.not.i = icmp eq ptr %call204.i, null
  br i1 %tobool207.not.i, label %do.end222.i, label %cond.end205.i.if.then208.i_crit_edge

cond.end205.i.if.then208.i_crit_edge:             ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then208.i

if.then208.i:                                     ; preds = %cond.end205.i.if.then208.i_crit_edge, %if.else181.i.if.then208.i_crit_edge
  %cond206352.i = phi ptr [ %call204.i, %cond.end205.i.if.then208.i_crit_edge ], [ %call199.i, %if.else181.i.if.then208.i_crit_edge ]
  %135 = ptrtoint ptr %tda827x_addr.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %tda827x_addr.i, align 1
  %conv210.i = zext i8 %136 to i32
  %137 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %adap.i, align 4
  %cfg213.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 4
  %call214.i = call ptr %cond206352.i(ptr noundef %fe, i32 noundef %conv210.i, ptr noundef %138, ptr noundef %cfg213.i) #5
  %cmp215.i = icmp eq ptr %call214.i, null
  br i1 %cmp215.i, label %if.then217.i, label %if.then208.i.if.end225.i_crit_edge

if.then208.i.if.end225.i_crit_edge:               ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225.i

if.then217.i:                                     ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.77) #5
  br label %if.end225.i

do.end222.i:                                      ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #7
  %call224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #9
  br label %if.end225.i

if.end225.i:                                      ; preds = %do.end222.i, %if.then217.i, %if.then208.i.if.end225.i_crit_edge
  %139 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %47, align 4
  %conv229.i = zext i8 %140 to i32
  %switch_addr.i = getelementptr inbounds %struct.tda8290_priv, ptr %47, i32 0, i32 4, i32 3
  %141 = ptrtoint ptr %switch_addr.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv229.i, ptr %switch_addr.i, align 4
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.end225.i, %do.end176.i, %if.then171.i, %if.then164.i.if.end231.i_crit_edge
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 2
  %142 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %init.i, align 4
  %tobool233.not.i = icmp eq ptr %143, null
  br i1 %tobool233.not.i, label %if.end231.i.if.end239.i_crit_edge, label %if.then234.i

if.end231.i.if.end239.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end239.i

if.then234.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #7
  %call238.i = call i32 %143(ptr noundef %fe) #5
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then234.i, %if.end231.i.if.end239.i_crit_edge
  %sleep.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 3
  %144 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sleep.i, align 4
  %tobool242.not.i = icmp eq ptr %145, null
  br i1 %tobool242.not.i, label %if.end239.i.if.end248.i_crit_edge, label %if.then243.i

if.end239.i.if.end248.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248.i

if.then243.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #7
  %call247.i = call i32 %145(ptr noundef %fe) #5
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.then243.i, %if.end239.i.if.end248.i_crit_edge
  %146 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool252.not.i = icmp eq ptr %147, null
  br i1 %tobool252.not.i, label %tda829x_find_tuner.exit.thread163, label %tda829x_find_tuner.exit

tda829x_find_tuner.exit.thread163:                ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %if.end37

tda829x_find_tuner.exit:                          ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #7
  %call257.i = call i32 %147(ptr noundef %fe, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %if.end37

if.end37:                                         ; preds = %tda829x_find_tuner.exit, %tda829x_find_tuner.exit.thread163, %lor.lhs.false.if.end37_crit_edge
  %ver38 = getelementptr inbounds %struct.tda8290_priv, ptr %call7.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %ver38 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ver38, align 2
  %switch.tableidx = add i8 %149, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %switch.tableidx)
  %150 = icmp ult i8 %switch.tableidx, 18
  br i1 %150, label %switch.hole_check, label %if.end37.fail_crit_edge

if.end37.fail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

switch.hole_check:                                ; preds = %if.end37
  %switch.maskindex = zext i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 197427, %switch.maskindex
  %151 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %switch.lobit.not = icmp eq i32 %151, 0
  br i1 %switch.lobit.not, label %switch.hole_check.fail_crit_edge, label %switch.lookup

switch.hole_check.fail_crit_edge:                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

switch.lookup:                                    ; preds = %switch.hole_check
  %152 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [18 x ptr], ptr @switch.table.tda829x_attach, i32 0, i32 %152
  %153 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %153)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %154 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name3, align 4
  %156 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adap, align 4
  %tobool52.not = icmp eq ptr %157, null
  br i1 %tobool52.not, label %switch.lookup.cond.end_crit_edge, label %cond.true

switch.lookup.cond.end_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %157, i32 0, i32 11
  %158 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %switch.lookup.cond.end_crit_edge
  %cond = phi i32 [ %159, %cond.true ], [ -1, %switch.lookup.cond.end_crit_edge ]
  %160 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %call7.i.i, align 8
  %conv58 = zext i8 %161 to i32
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %155, i32 noundef %cond, i32 noundef %conv58, ptr noundef nonnull %switch.load) #9
  %analog_ops65 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33
  %162 = ptrtoint ptr %analog_ops65 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %switch.load, ptr %analog_ops65, align 4
  %163 = ptrtoint ptr %ver38 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ver38, align 2
  %conv68 = zext i8 %164 to i32
  %and = and i32 %conv68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %cond.end
  %and73 = and i32 %conv68, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then70.if.end76_crit_edge, label %if.then75

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then75:                                        ; preds = %if.then70
  %165 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i127) #5
  %167 = getelementptr inbounds i8, ptr %msg.i127, i32 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 983039, ptr %167, align 4
  %tda827x_addr.i129 = getelementptr inbounds %struct.tda8290_priv, ptr %166, i32 0, i32 2
  %169 = ptrtoint ptr %tda827x_addr.i129 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tda827x_addr.i129, align 1
  %conv.i = zext i8 %170 to i16
  %171 = ptrtoint ptr %msg.i127 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv.i, ptr %msg.i127, align 4
  %flags.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i130 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i130, align 2
  %buf.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 3
  %ver.i133 = getelementptr inbounds %struct.tda8290_priv, ptr %166, i32 0, i32 3
  %173 = ptrtoint ptr %ver.i133 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ver.i133, align 2
  %175 = and i8 %174, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i134 = icmp eq i8 %175, 0
  %spec.store.select.i = select i1 %tobool.not.i134, ptr @tda8290_init_tuner.tda8275_init, ptr @tda8290_init_tuner.tda8275a_init
  %176 = ptrtoint ptr %buf.i132 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %spec.store.select.i, ptr %buf.i132, align 4
  %i2c_gate_ctrl.i135 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %177 = ptrtoint ptr %i2c_gate_ctrl.i135 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c_gate_ctrl.i135, align 4
  %tobool3.not.i = icmp eq ptr %178, null
  br i1 %tobool3.not.i, label %if.then75.if.end8.i_crit_edge, label %if.then4.i

if.then75.if.end8.i_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  %call.i136 = call i32 %178(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.then75.if.end8.i_crit_edge
  %adap.i137 = getelementptr inbounds %struct.tuner_i2c_props, ptr %166, i32 0, i32 1
  %179 = ptrtoint ptr %adap.i137 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %adap.i137, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg.i127, i32 noundef 1) #5
  %181 = ptrtoint ptr %i2c_gate_ctrl.i135 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c_gate_ctrl.i135, align 4
  %tobool13.not.i = icmp eq ptr %182, null
  br i1 %tobool13.not.i, label %if.end8.i.tda8290_init_tuner.exit_crit_edge, label %if.then14.i

if.end8.i.tda8290_init_tuner.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda8290_init_tuner.exit

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = call i32 %182(ptr noundef %fe, i32 noundef 0) #5
  br label %tda8290_init_tuner.exit

tda8290_init_tuner.exit:                          ; preds = %if.then14.i, %if.end8.i.tda8290_init_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #5
  br label %if.end76

if.end76:                                         ; preds = %tda8290_init_tuner.exit, %if.then70.if.end76_crit_edge
  %183 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %analog_demod_priv, align 4
  %config.i140 = getelementptr inbounds %struct.tda8290_priv, ptr %184, i32 0, i32 4, i32 2
  %185 = ptrtoint ptr %config.i140 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %config.i140, align 4
  %.off.i141 = add i32 %186, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i141)
  %switch.i142 = icmp ult i32 %.off.i141, 2
  br i1 %switch.i142, label %if.then.i148, label %if.else.i

if.then.i148:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i138) #5
  %187 = getelementptr inbounds i8, ptr %msg.i.i138, i32 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 196607, ptr %187, align 4
  %189 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %184, align 4
  %conv.i.i143 = zext i8 %190 to i16
  %191 = ptrtoint ptr %msg.i.i138 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.i.i143, ptr %msg.i.i138, align 4
  %flags.i.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138, i32 0, i32 1
  %192 = ptrtoint ptr %flags.i.i144 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %flags.i.i144, align 2
  %buf4.i.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i138, i32 0, i32 3
  %193 = ptrtoint ptr %buf4.i.i145 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @tda8290_init_if.set_GP00_CF, ptr %buf4.i.i145, align 4
  %adap.i.i146 = getelementptr inbounds %struct.tuner_i2c_props, ptr %184, i32 0, i32 1
  %194 = ptrtoint ptr %adap.i.i146 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %adap.i.i146, align 4
  %call.i.i147 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msg.i.i138, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i138) #5
  br label %tda8290_init_if.exit

if.else.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12.i) #5
  %196 = getelementptr inbounds i8, ptr %msg.i12.i, i32 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 196607, ptr %196, align 4
  %198 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %184, align 4
  %conv.i13.i = zext i8 %199 to i16
  %200 = ptrtoint ptr %msg.i12.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.i13.i, ptr %msg.i12.i, align 4
  %flags.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 1
  %201 = ptrtoint ptr %flags.i14.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %flags.i14.i, align 2
  %buf4.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 3
  %202 = ptrtoint ptr %buf4.i16.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @tda8290_init_if.set_GP01_CF, ptr %buf4.i16.i, align 4
  %adap.i17.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %184, i32 0, i32 1
  %203 = ptrtoint ptr %adap.i17.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %adap.i17.i, align 4
  %call.i18.i = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i12.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12.i) #5
  br label %tda8290_init_if.exit

tda8290_init_if.exit:                             ; preds = %if.else.i, %if.then.i148
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19.i) #5
  %205 = getelementptr inbounds i8, ptr %msg.i19.i, i32 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 196607, ptr %205, align 4
  %207 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %184, align 4
  %conv.i20.i = zext i8 %208 to i16
  %209 = ptrtoint ptr %msg.i19.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv.i20.i, ptr %msg.i19.i, align 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 1
  %210 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %flags.i21.i, align 2
  %buf4.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 3
  %211 = ptrtoint ptr %buf4.i23.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @tda8290_init_if.set_VS, ptr %buf4.i23.i, align 4
  %adap.i24.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %184, i32 0, i32 1
  %212 = ptrtoint ptr %adap.i24.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %adap.i24.i, align 4
  %call.i25.i = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %msg.i19.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19.i) #5
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %and79 = and i32 %conv68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else.cleanup_crit_edge, label %if.then81

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then81:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i151) #5
  %216 = ptrtoint ptr %buf.i.i151 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 12288, ptr %buf.i.i151, align 2
  %arrayidx1.i.i = getelementptr inbounds [2 x i8], ptr %buf.i.i151, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #5
  %217 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %218 = call ptr @memset(ptr %217, i32 255, i32 16)
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %215, align 4
  %conv.i.i.i = zext i8 %220 to i16
  %221 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %222 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %flags.i.i.i, align 2
  %223 = ptrtoint ptr %217 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 1, ptr %217, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %224 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %buf.i.i151, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1
  %225 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %flags6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 1
  %226 = ptrtoint ptr %flags6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 1, ptr %flags6.i.i.i, align 2
  %len7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 2
  %227 = ptrtoint ptr %len7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 1, ptr %len7.i.i.i, align 4
  %buf9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 3
  %228 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %arrayidx1.i.i, ptr %buf9.i.i.i, align 4
  %adap.i.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %215, i32 0, i32 1
  %229 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #5
  %231 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %arrayidx1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i.i) #5
  %232 = getelementptr inbounds i8, ptr %msg.i7.i.i, i32 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 196607, ptr %232, align 4
  %234 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %215, align 4
  %conv.i8.i.i = zext i8 %235 to i16
  %236 = ptrtoint ptr %msg.i7.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv.i8.i.i, ptr %msg.i7.i.i, align 4
  %flags.i9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %flags.i9.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 0, ptr %flags.i9.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i.i, i32 0, i32 3
  %238 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %buf.i.i151, ptr %buf4.i.i.i, align 4
  %239 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %adap.i.i.i, align 4
  %call.i11.i.i = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %msg.i7.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i151) #5
  %241 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i26.i) #5
  %243 = ptrtoint ptr %buf.i26.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 256, ptr %buf.i26.i, align 2
  %arrayidx1.i28.i = getelementptr inbounds [2 x i8], ptr %buf.i26.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i25.i) #5
  %244 = getelementptr inbounds i8, ptr %msg.i.i25.i, i32 4
  %245 = call ptr @memset(ptr %244, i32 255, i32 16)
  %246 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %242, align 4
  %conv.i.i29.i = zext i8 %247 to i16
  %248 = ptrtoint ptr %msg.i.i25.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %conv.i.i29.i, ptr %msg.i.i25.i, align 4
  %flags.i.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 0, i32 1
  %249 = ptrtoint ptr %flags.i.i30.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 0, ptr %flags.i.i30.i, align 2
  %250 = ptrtoint ptr %244 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 1, ptr %244, align 4
  %buf.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 0, i32 3
  %251 = ptrtoint ptr %buf.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %buf.i26.i, ptr %buf.i.i31.i, align 4
  %arrayinit.element.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 1
  %252 = ptrtoint ptr %arrayinit.element.i.i32.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv.i.i29.i, ptr %arrayinit.element.i.i32.i, align 4
  %flags6.i.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 1, i32 1
  %253 = ptrtoint ptr %flags6.i.i33.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 1, ptr %flags6.i.i33.i, align 2
  %len7.i.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 1, i32 2
  %254 = ptrtoint ptr %len7.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1, ptr %len7.i.i34.i, align 4
  %buf9.i.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25.i, i32 1, i32 3
  %255 = ptrtoint ptr %buf9.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %arrayidx1.i28.i, ptr %buf9.i.i35.i, align 4
  %adap.i.i36.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %242, i32 0, i32 1
  %256 = ptrtoint ptr %adap.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %adap.i.i36.i, align 4
  %call.i.i37.i = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i.i25.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i25.i) #5
  %258 = ptrtoint ptr %arrayidx1.i28.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %arrayidx1.i28.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i24.i) #5
  %259 = getelementptr inbounds i8, ptr %msg.i7.i24.i, i32 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 196607, ptr %259, align 4
  %261 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %242, align 4
  %conv.i8.i38.i = zext i8 %262 to i16
  %263 = ptrtoint ptr %msg.i7.i24.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.i8.i38.i, ptr %msg.i7.i24.i, align 4
  %flags.i9.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i24.i, i32 0, i32 1
  %264 = ptrtoint ptr %flags.i9.i39.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %flags.i9.i39.i, align 2
  %buf4.i.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i24.i, i32 0, i32 3
  %265 = ptrtoint ptr %buf4.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %buf.i26.i, ptr %buf4.i.i40.i, align 4
  %266 = ptrtoint ptr %adap.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %adap.i.i36.i, align 4
  %call.i11.i41.i = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %msg.i7.i24.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i24.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26.i) #5
  call fastcc void @tda8295_set_video_std(ptr noundef %fe) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i150) #5
  %268 = getelementptr inbounds i8, ptr %msg.i.i150, i32 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 196607, ptr %268, align 4
  %270 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %215, align 4
  %conv.i.i153 = zext i8 %271 to i16
  %272 = ptrtoint ptr %msg.i.i150 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv.i.i153, ptr %msg.i.i150, align 4
  %flags.i.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i150, i32 0, i32 1
  %273 = ptrtoint ptr %flags.i.i154 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %flags.i.i154, align 2
  %buf4.i.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i150, i32 0, i32 3
  %274 = ptrtoint ptr %buf4.i.i155 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @tda8295_init_if.set_adc_ctl, ptr %buf4.i.i155, align 4
  %275 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i156 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %msg.i.i150, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i150) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i42.i) #5
  %277 = getelementptr inbounds i8, ptr %msg.i42.i, i32 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 196607, ptr %277, align 4
  %279 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %215, align 4
  %conv.i43.i = zext i8 %280 to i16
  %281 = ptrtoint ptr %msg.i42.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv.i43.i, ptr %msg.i42.i, align 4
  %flags.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42.i, i32 0, i32 1
  %282 = ptrtoint ptr %flags.i44.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 0, ptr %flags.i44.i, align 2
  %buf4.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42.i, i32 0, i32 3
  %283 = ptrtoint ptr %buf4.i46.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @tda8295_init_if.set_adc_ctl2, ptr %buf4.i46.i, align 4
  %284 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %adap.i.i.i, align 4
  %call.i48.i = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i42.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i49.i) #5
  %286 = getelementptr inbounds i8, ptr %msg.i49.i, i32 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 196607, ptr %286, align 4
  %288 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %215, align 4
  %conv.i50.i = zext i8 %289 to i16
  %290 = ptrtoint ptr %msg.i49.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv.i50.i, ptr %msg.i49.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i, i32 0, i32 1
  %291 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %flags.i51.i, align 2
  %buf4.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i, i32 0, i32 3
  %292 = ptrtoint ptr %buf4.i53.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr @tda8295_init_if.set_pll_reg6, ptr %buf4.i53.i, align 4
  %293 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %adap.i.i.i, align 4
  %call.i55.i = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %msg.i49.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i49.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56.i) #5
  %295 = getelementptr inbounds i8, ptr %msg.i56.i, i32 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 196607, ptr %295, align 4
  %297 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %215, align 4
  %conv.i57.i = zext i8 %298 to i16
  %299 = ptrtoint ptr %msg.i56.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %conv.i57.i, ptr %msg.i56.i, align 4
  %flags.i58.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 1
  %300 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 0, ptr %flags.i58.i, align 2
  %buf4.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 3
  %301 = ptrtoint ptr %buf4.i60.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr @tda8295_init_if.set_pll_reg0, ptr %buf4.i60.i, align 4
  %302 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %adap.i.i.i, align 4
  %call.i62.i = call i32 @i2c_transfer(ptr noundef %303, ptr noundef nonnull %msg.i56.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63.i) #5
  %304 = getelementptr inbounds i8, ptr %msg.i63.i, i32 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 196607, ptr %304, align 4
  %306 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %215, align 4
  %conv.i64.i = zext i8 %307 to i16
  %308 = ptrtoint ptr %msg.i63.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %conv.i64.i, ptr %msg.i63.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 1
  %309 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 0, ptr %flags.i65.i, align 2
  %buf4.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 3
  %310 = ptrtoint ptr %buf4.i67.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr @tda8295_init_if.set_pll_reg7, ptr %buf4.i67.i, align 4
  %311 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %adap.i.i.i, align 4
  %call.i69.i = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %msg.i63.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70.i) #5
  %313 = getelementptr inbounds i8, ptr %msg.i70.i, i32 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 196607, ptr %313, align 4
  %315 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %215, align 4
  %conv.i71.i = zext i8 %316 to i16
  %317 = ptrtoint ptr %msg.i70.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv.i71.i, ptr %msg.i70.i, align 4
  %flags.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 1
  %318 = ptrtoint ptr %flags.i72.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 0, ptr %flags.i72.i, align 2
  %buf4.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70.i, i32 0, i32 3
  %319 = ptrtoint ptr %buf4.i74.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr @tda8295_init_if.set_pll_reg10, ptr %buf4.i74.i, align 4
  %320 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %adap.i.i.i, align 4
  %call.i76.i = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %msg.i70.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77.i) #5
  %322 = getelementptr inbounds i8, ptr %msg.i77.i, i32 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 196607, ptr %322, align 4
  %324 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %215, align 4
  %conv.i78.i = zext i8 %325 to i16
  %326 = ptrtoint ptr %msg.i77.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %conv.i78.i, ptr %msg.i77.i, align 4
  %flags.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i, i32 0, i32 1
  %327 = ptrtoint ptr %flags.i79.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 0, ptr %flags.i79.i, align 2
  %buf4.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i, i32 0, i32 3
  %328 = ptrtoint ptr %buf4.i81.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @tda8295_init_if.set_gpio_reg0, ptr %buf4.i81.i, align 4
  %329 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %adap.i.i.i, align 4
  %call.i83.i = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %msg.i77.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77.i) #5
  %331 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i85.i) #5
  %333 = ptrtoint ptr %buf.i85.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 512, ptr %buf.i85.i, align 2
  %arrayidx1.i87.i = getelementptr inbounds [2 x i8], ptr %buf.i85.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i84.i) #5
  %334 = getelementptr inbounds i8, ptr %msg.i.i84.i, i32 4
  %335 = call ptr @memset(ptr %334, i32 255, i32 16)
  %336 = ptrtoint ptr %332 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %332, align 4
  %conv.i.i88.i = zext i8 %337 to i16
  %338 = ptrtoint ptr %msg.i.i84.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv.i.i88.i, ptr %msg.i.i84.i, align 4
  %flags.i.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 0, i32 1
  %339 = ptrtoint ptr %flags.i.i89.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 0, ptr %flags.i.i89.i, align 2
  %340 = ptrtoint ptr %334 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 1, ptr %334, align 4
  %buf.i.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 0, i32 3
  %341 = ptrtoint ptr %buf.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %buf.i85.i, ptr %buf.i.i90.i, align 4
  %arrayinit.element.i.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 1
  %342 = ptrtoint ptr %arrayinit.element.i.i91.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 %conv.i.i88.i, ptr %arrayinit.element.i.i91.i, align 4
  %flags6.i.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 1, i32 1
  %343 = ptrtoint ptr %flags6.i.i92.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 1, ptr %flags6.i.i92.i, align 2
  %len7.i.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 1, i32 2
  %344 = ptrtoint ptr %len7.i.i93.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 1, ptr %len7.i.i93.i, align 4
  %buf9.i.i94.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i84.i, i32 1, i32 3
  %345 = ptrtoint ptr %buf9.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %arrayidx1.i87.i, ptr %buf9.i.i94.i, align 4
  %adap.i.i95.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %332, i32 0, i32 1
  %346 = ptrtoint ptr %adap.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %adap.i.i95.i, align 4
  %call.i.i96.i = call i32 @i2c_transfer(ptr noundef %347, ptr noundef nonnull %msg.i.i84.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i84.i) #5
  %348 = ptrtoint ptr %arrayidx1.i87.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx1.i87.i, align 1
  %storemerge.i.i = or i8 %349, 64
  store i8 %storemerge.i.i, ptr %arrayidx1.i87.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i.i) #5
  %350 = getelementptr inbounds i8, ptr %msg.i10.i.i, i32 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 196607, ptr %350, align 4
  %352 = ptrtoint ptr %332 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %332, align 4
  %conv.i11.i.i = zext i8 %353 to i16
  %354 = ptrtoint ptr %msg.i10.i.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %conv.i11.i.i, ptr %msg.i10.i.i, align 4
  %flags.i12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i.i, i32 0, i32 1
  %355 = ptrtoint ptr %flags.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 0, ptr %flags.i12.i.i, align 2
  %buf4.i.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i.i, i32 0, i32 3
  %356 = ptrtoint ptr %buf4.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %buf.i85.i, ptr %buf4.i.i97.i, align 4
  %357 = ptrtoint ptr %adap.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %adap.i.i95.i, align 4
  %call.i14.i.i = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %msg.i10.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i85.i) #5
  %359 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %set_gpio_cf.i.i) #5
  %361 = ptrtoint ptr %set_gpio_cf.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 17408, ptr %set_gpio_cf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %set_gpio_val.i.i) #5
  %362 = ptrtoint ptr %set_gpio_val.i.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 17920, ptr %set_gpio_val.i.i, align 2
  %arrayidx1.i100.i = getelementptr inbounds [2 x i8], ptr %set_gpio_cf.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i98.i) #5
  %363 = getelementptr inbounds i8, ptr %msg.i.i98.i, i32 4
  %364 = call ptr @memset(ptr %363, i32 255, i32 16)
  %365 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %360, align 4
  %conv.i.i101.i = zext i8 %366 to i16
  %367 = ptrtoint ptr %msg.i.i98.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv.i.i101.i, ptr %msg.i.i98.i, align 4
  %flags.i.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 0, i32 1
  %368 = ptrtoint ptr %flags.i.i102.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 0, ptr %flags.i.i102.i, align 2
  %369 = ptrtoint ptr %363 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 1, ptr %363, align 4
  %buf.i.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 0, i32 3
  %370 = ptrtoint ptr %buf.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %set_gpio_cf.i.i, ptr %buf.i.i103.i, align 4
  %arrayinit.element.i.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 1
  %371 = ptrtoint ptr %arrayinit.element.i.i104.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv.i.i101.i, ptr %arrayinit.element.i.i104.i, align 4
  %flags6.i.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 1, i32 1
  %372 = ptrtoint ptr %flags6.i.i105.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 1, ptr %flags6.i.i105.i, align 2
  %len7.i.i106.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 1, i32 2
  %373 = ptrtoint ptr %len7.i.i106.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 1, ptr %len7.i.i106.i, align 4
  %buf9.i.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98.i, i32 1, i32 3
  %374 = ptrtoint ptr %buf9.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %arrayidx1.i100.i, ptr %buf9.i.i107.i, align 4
  %adap.i.i108.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %360, i32 0, i32 1
  %375 = ptrtoint ptr %adap.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %adap.i.i108.i, align 4
  %call.i.i109.i = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %msg.i.i98.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i98.i) #5
  %arrayidx4.i.i = getelementptr inbounds [2 x i8], ptr %set_gpio_val.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i1.i.i) #5
  %377 = getelementptr inbounds i8, ptr %msg.i1.i.i, i32 4
  %378 = call ptr @memset(ptr %377, i32 255, i32 16)
  %379 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %360, align 4
  %conv.i2.i.i = zext i8 %380 to i16
  %381 = ptrtoint ptr %msg.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %conv.i2.i.i, ptr %msg.i1.i.i, align 4
  %flags.i3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 1
  %382 = ptrtoint ptr %flags.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 0, ptr %flags.i3.i.i, align 2
  %383 = ptrtoint ptr %377 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 1, ptr %377, align 4
  %buf.i5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 3
  %384 = ptrtoint ptr %buf.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %set_gpio_val.i.i, ptr %buf.i5.i.i, align 4
  %arrayinit.element.i6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 1
  %385 = ptrtoint ptr %arrayinit.element.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 %conv.i2.i.i, ptr %arrayinit.element.i6.i.i, align 4
  %flags6.i7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 1, i32 1
  %386 = ptrtoint ptr %flags6.i7.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 1, ptr %flags6.i7.i.i, align 2
  %len7.i8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 1, i32 2
  %387 = ptrtoint ptr %len7.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 1, ptr %len7.i8.i.i, align 4
  %buf9.i9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 1, i32 3
  %388 = ptrtoint ptr %buf9.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %arrayidx4.i.i, ptr %buf9.i9.i.i, align 4
  %389 = ptrtoint ptr %adap.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %adap.i.i108.i, align 4
  %call.i11.i110.i = call i32 @i2c_transfer(ptr noundef %390, ptr noundef nonnull %msg.i1.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i1.i.i) #5
  %391 = ptrtoint ptr %arrayidx1.i100.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx1.i100.i, align 1
  %393 = and i8 %392, -16
  store i8 %393, ptr %arrayidx1.i100.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12.i.i) #5
  %394 = getelementptr inbounds i8, ptr %msg.i12.i.i, i32 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 196607, ptr %394, align 4
  %396 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %360, align 4
  %conv.i13.i.i = zext i8 %397 to i16
  %398 = ptrtoint ptr %msg.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %conv.i13.i.i, ptr %msg.i12.i.i, align 4
  %flags.i14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i.i, i32 0, i32 1
  %399 = ptrtoint ptr %flags.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 0, ptr %flags.i14.i.i, align 2
  %buf4.i.i111.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i.i, i32 0, i32 3
  %400 = ptrtoint ptr %buf4.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %set_gpio_cf.i.i, ptr %buf4.i.i111.i, align 4
  %401 = ptrtoint ptr %adap.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %adap.i.i108.i, align 4
  %call.i16.i.i = call i32 @i2c_transfer(ptr noundef %402, ptr noundef nonnull %msg.i12.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12.i.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17.i.i) #5
  %403 = getelementptr inbounds i8, ptr %msg.i17.i.i, i32 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 196607, ptr %403, align 4
  %405 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %360, align 4
  %conv.i18.i.i = zext i8 %406 to i16
  %407 = ptrtoint ptr %msg.i17.i.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %conv.i18.i.i, ptr %msg.i17.i.i, align 4
  %flags.i19.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i.i, i32 0, i32 1
  %408 = ptrtoint ptr %flags.i19.i.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 0, ptr %flags.i19.i.i, align 2
  %buf4.i21.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i.i, i32 0, i32 3
  %409 = ptrtoint ptr %buf4.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %set_gpio_val.i.i, ptr %buf4.i21.i.i, align 4
  %410 = ptrtoint ptr %adap.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %adap.i.i108.i, align 4
  %call.i23.i.i = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %msg.i17.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %set_gpio_val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %set_gpio_cf.i.i) #5
  br label %cleanup

fail:                                             ; preds = %switch.hole_check.fail_crit_edge, %if.end37.fail_crit_edge, %tda829x_find_tuner.exit.thread, %tda829x_find_tuner.exit.thread166
  %analog_ops85 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33
  %412 = call ptr @memset(ptr %analog_ops85, i32 0, i32 36)
  %413 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %analog_demod_priv, align 4
  %ver.i158 = getelementptr inbounds %struct.tda8290_priv, ptr %414, i32 0, i32 3
  %415 = ptrtoint ptr %ver.i158 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %ver.i158, align 2
  %417 = and i8 %416, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not.i159 = icmp eq i8 %417, 0
  br i1 %tobool.not.i159, label %fail.tda829x_release.exit_crit_edge, label %if.then.i160

fail.tda829x_release.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda829x_release.exit

if.then.i160:                                     ; preds = %fail
  %release.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %418 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %release.i, align 4
  %tobool1.not.i = icmp eq ptr %419, null
  br i1 %tobool1.not.i, label %if.then.i160.tda829x_release.exit_crit_edge, label %if.then2.i

if.then.i160.tda829x_release.exit_crit_edge:      ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda829x_release.exit

if.then2.i:                                       ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #7
  call void %419(ptr noundef %fe) #5
  br label %tda829x_release.exit

tda829x_release.exit:                             ; preds = %if.then2.i, %if.then.i160.tda829x_release.exit_crit_edge, %fail.tda829x_release.exit_crit_edge
  %420 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %analog_demod_priv, align 4
  call void @kfree(ptr noundef %421) #5
  %422 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr null, ptr %analog_demod_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %tda829x_release.exit, %if.then81, %if.else.cleanup_crit_edge, %tda8290_init_if.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %tda829x_release.exit ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.else.cleanup_crit_edge ], [ %fe, %if.then81 ], [ %fe, %tda8290_init_if.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda8290_probe(ptr nocapture noundef readonly %i2c_props) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  %id = alloca i8, align 1
  %msg_read = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 31, ptr %reg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #5
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_read) #5
  %2 = getelementptr inbounds i8, ptr %msg_read, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg_read to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg_read, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 3
  %13 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %id, ptr %buf7, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %i2c_props, i32 0, i32 1
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 4
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg_read, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg, align 1
  %conv9 = zext i8 %17 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %19)
  %cmp12 = icmp eq i8 %19, -119
  br i1 %cmp12, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then14.cleanup_crit_edge, label %do.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 4
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr.i, align 4
  %25 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2c_props, align 4
  %conv23 = zext i8 %26 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %24, i32 noundef %conv23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end18 ], [ 0, %if.then14.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_read) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda8295_probe(ptr nocapture noundef readonly %i2c_props) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  %id = alloca i8, align 1
  %msg_read = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 47, ptr %reg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #5
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_read) #5
  %2 = getelementptr inbounds i8, ptr %msg_read, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg_read to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg_read, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 1, i32 3
  %13 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %id, ptr %buf7, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %i2c_props, i32 0, i32 1
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 4
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg_read, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg, align 1
  %conv9 = zext i8 %17 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.50, i32 noundef %conv9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  %20 = and i8 %19, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -118, i8 %20)
  %cmp12 = icmp eq i8 %20, -118
  br i1 %cmp12, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then14.cleanup_crit_edge, label %do.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -118, i8 %19)
  %cmp21 = icmp eq i8 %19, -118
  %cond = select i1 %cmp21, ptr @.str.54, ptr @.str.55
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 4
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i, align 4
  %26 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_props, align 4
  %conv26 = zext i8 %27 to i32
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond, i32 noundef %25, i32 noundef %conv26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end18 ], [ 0, %if.then14.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_read) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda829x_release(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %ver = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ver, align 2
  %4 = and i8 %3, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %fe) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %7 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %analog_demod_priv, align 4
  tail call void @kfree(ptr noundef %8) #5
  %9 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %analog_demod_priv, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tda829x_probe(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  %msg.i88 = alloca %struct.i2c_msg, align 4
  %msg.i77 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i70 = alloca %struct.i2c_msg, align 4
  %msg.i63 = alloca %struct.i2c_msg, align 4
  %msg.i52 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i45 = alloca %struct.i2c_msg, align 4
  %msg.i40 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %i2c_props = alloca %struct.tuner_i2c_props, align 4
  %data = alloca i8, align 1
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_props) #5
  %0 = ptrtoint ptr %i2c_props to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %i2c_props, align 4
  store i8 %i2c_addr, ptr %i2c_props, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %i2c_props, i32 0, i32 1
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c_adap, ptr %adap, align 4
  %count = getelementptr inbounds %struct.tuner_i2c_props, ptr %i2c_props, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count, align 4
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %i2c_props, i32 0, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %conv.i = zext i8 %i2c_addr to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %12, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tda829x_probe.soft_reset, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 8, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %23)
  %cmp3.not = icmp eq i8 %25, %23
  br i1 %cmp3.not, label %for.inc, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc:                                          ; preds = %entry
  %26 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %23)
  %cmp3.not.1 = icmp eq i8 %28, %23
  br i1 %cmp3.not.1, label %for.inc.1, label %for.inc.if.end8_crit_edge

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.1:                                        ; preds = %for.inc
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %23)
  %cmp3.not.2 = icmp eq i8 %30, %23
  br i1 %cmp3.not.2, label %for.inc.2, label %for.inc.1.if.end8_crit_edge

for.inc.1.if.end8_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.2:                                        ; preds = %for.inc.1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %23)
  %cmp3.not.3 = icmp eq i8 %32, %23
  br i1 %cmp3.not.3, label %for.inc.3, label %for.inc.2.if.end8_crit_edge

for.inc.2.if.end8_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.3:                                        ; preds = %for.inc.2
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %23)
  %cmp3.not.4 = icmp eq i8 %34, %23
  br i1 %cmp3.not.4, label %for.inc.4, label %for.inc.3.if.end8_crit_edge

for.inc.3.if.end8_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.4:                                        ; preds = %for.inc.3
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %23)
  %cmp3.not.5 = icmp eq i8 %36, %23
  br i1 %cmp3.not.5, label %for.inc.5, label %for.inc.4.if.end8_crit_edge

for.inc.4.if.end8_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.5:                                        ; preds = %for.inc.4
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %23)
  %cmp3.not.6 = icmp eq i8 %38, %23
  br i1 %cmp3.not.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end8_crit_edge

for.inc.5.if.end8_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %for.inc.5.if.end8_crit_edge, %for.inc.4.if.end8_crit_edge, %for.inc.3.if.end8_crit_edge, %for.inc.2.if.end8_crit_edge, %for.inc.1.if.end8_crit_edge, %for.inc.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = call fastcc i32 @tda8290_probe(ptr noundef nonnull %i2c_props)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %call12 = call fastcc i32 @tda8295_probe(ptr noundef nonnull %i2c_props)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i40) #5
  %39 = getelementptr inbounds i8, ptr %msg.i40, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_props, align 4
  %conv.i41 = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i40 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i41, ptr %msg.i40, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i42, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 3
  %45 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tda829x_probe.easy_mode_b, ptr %buf4.i, align 4
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 4
  %call.i44 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i40, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i40) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45) #5
  %48 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 196607, ptr %48, align 4
  %50 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i41, ptr %msg.i45, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i47, align 2
  %buf4.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %52 = ptrtoint ptr %buf4.i49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @tda829x_probe.soft_reset, ptr %buf4.i49, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i45, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i52) #5
  %53 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  %55 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i41, ptr %msg.i52, align 4
  %flags.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i54 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i54, align 2
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %53, align 4
  %buf.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @tda829x_probe.addr_dto_lsb, ptr %buf.i56, align 4
  %arrayinit.element.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1
  %59 = ptrtoint ptr %arrayinit.element.i57 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i41, ptr %arrayinit.element.i57, align 4
  %flags6.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 1
  %60 = ptrtoint ptr %flags6.i58 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags6.i58, align 2
  %len7.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 2
  %61 = ptrtoint ptr %len7.i59 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %len7.i59, align 4
  %buf9.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 1, i32 3
  %62 = ptrtoint ptr %buf9.i60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %data, ptr %buf9.i60, align 4
  %call.i62 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i52, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i52) #5
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp21 = icmp eq i8 %64, 0
  br i1 %cmp21, label %if.then23, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then23:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63) #5
  %65 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 196607, ptr %65, align 4
  %67 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i41, ptr %msg.i63, align 4
  %flags.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i65, align 2
  %buf4.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %69 = ptrtoint ptr %buf4.i67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @tda829x_probe.easy_mode_g, ptr %buf4.i67, align 4
  %call.i69 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i63, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70) #5
  %70 = getelementptr inbounds i8, ptr %msg.i70, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %msg.i70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i41, ptr %msg.i70, align 4
  %flags.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i72, align 2
  %buf4.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 3
  %74 = ptrtoint ptr %buf4.i74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @tda829x_probe.soft_reset, ptr %buf4.i74, align 4
  %call.i76 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i70, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i77) #5
  %75 = getelementptr inbounds i8, ptr %msg.i77, i32 4
  %76 = call ptr @memset(ptr %75, i32 255, i32 16)
  %77 = ptrtoint ptr %msg.i77 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i41, ptr %msg.i77, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i79, align 2
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %75, align 4
  %buf.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tda829x_probe.addr_dto_lsb, ptr %buf.i81, align 4
  %arrayinit.element.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 1
  %81 = ptrtoint ptr %arrayinit.element.i82 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i41, ptr %arrayinit.element.i82, align 4
  %flags6.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 1, i32 1
  %82 = ptrtoint ptr %flags6.i83 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %flags6.i83, align 2
  %len7.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 1, i32 2
  %83 = ptrtoint ptr %len7.i84 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %len7.i84, align 4
  %buf9.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77, i32 1, i32 3
  %84 = ptrtoint ptr %buf9.i85 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %data, ptr %buf9.i85, align 4
  %call.i87 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i77, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i77) #5
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %86)
  %cmp28 = icmp eq i8 %86, 123
  br i1 %cmp28, label %if.then23.cleanup_crit_edge, label %if.then23.if.end32_crit_edge

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.then23.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88) #5
  %87 = getelementptr inbounds i8, ptr %msg.i88, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 262143, ptr %87, align 4
  %89 = ptrtoint ptr %msg.i88 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i41, ptr %msg.i88, align 4
  %flags.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i90, align 2
  %buf4.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 3
  %91 = ptrtoint ptr %buf4.i92 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @tda829x_probe.restore_9886, ptr %buf4.i92, align 4
  %92 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adap, align 4
  %call.i94 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i88, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end32 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ -19, %for.inc.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_props) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8290_set_params(ptr noundef %fe, ptr noundef %params) #0 align 64 {
entry:
  %msg.i653 = alloca %struct.i2c_msg, align 4
  %msg.i646 = alloca %struct.i2c_msg, align 4
  %msg.i639 = alloca %struct.i2c_msg, align 4
  %msg.i627 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i616 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i609 = alloca %struct.i2c_msg, align 4
  %msg.i602 = alloca %struct.i2c_msg, align 4
  %msg.i590 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i579 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i567 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i556 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i549 = alloca %struct.i2c_msg, align 4
  %msg.i535 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i524 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i519 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i512 = alloca %struct.i2c_msg, align 4
  %msg.i505 = alloca %struct.i2c_msg, align 4
  %msg.i498 = alloca %struct.i2c_msg, align 4
  %msg.i491 = alloca %struct.i2c_msg, align 4
  %msg.i484 = alloca %struct.i2c_msg, align 4
  %msg.i477 = alloca %struct.i2c_msg, align 4
  %msg.i470 = alloca %struct.i2c_msg, align 4
  %msg.i463 = alloca %struct.i2c_msg, align 4
  %msg.i456 = alloca %struct.i2c_msg, align 4
  %msg.i449 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %easy_mode = alloca [2 x i8], align 1
  %deemphasis = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %easy_mode) #5
  %2 = getelementptr inbounds [2 x i8], ptr %easy_mode, i32 0, i32 1
  %3 = ptrtoint ptr %easy_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %easy_mode, align 1
  %tda8290_easy_mode = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tda8290_easy_mode, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %2, align 1
  tail call fastcc void @set_audio(ptr noundef %fe, ptr noundef %params)
  %config = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.body:                                          ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %do.body.if.end17_crit_edge, label %do.end

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %do.body
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %conv = zext i8 %17 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %11, i32 noundef %cond, i32 noundef %conv, i32 noundef %8) #9
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %do.body.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 196607, ptr %18, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 4
  %conv.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %easy_mode, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i449) #5
  %27 = getelementptr inbounds i8, ptr %msg.i449, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %conv.i450 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i449 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i450, ptr %msg.i449, align 4
  %flags.i451 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i449, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i451 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i451, align 2
  %buf4.i453 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i449, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i453 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tda8290_set_params.agc_out_on, ptr %buf4.i453, align 4
  %34 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap.i, align 4
  %call.i455 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i449, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i449) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i456) #5
  %36 = getelementptr inbounds i8, ptr %msg.i456, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %1, align 4
  %conv.i457 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i456 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i457, ptr %msg.i456, align 4
  %flags.i458 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i458 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i458, align 2
  %buf4.i460 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 0, i32 3
  %42 = ptrtoint ptr %buf4.i460 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tda8290_set_params.soft_reset, ptr %buf4.i460, align 4
  %43 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap.i, align 4
  %call.i462 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i456, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i456) #5
  call void @msleep(i32 noundef 1) #5
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp = icmp eq i32 %46, 1
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %deemphasis) #5
  %47 = ptrtoint ptr %deemphasis to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 4865, ptr %deemphasis, align 2
  %48 = load i32, ptr @deemphasis_50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool26.not = icmp eq i32 %48, 0
  br i1 %tobool26.not, label %if.then25.if.end28_crit_edge, label %if.then27

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr inbounds [2 x i8], ptr %deemphasis, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %arrayidx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge
  %50 = getelementptr inbounds i8, ptr %msg.i463, i32 4
  %flags.i465 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i463, i32 0, i32 1
  %buf4.i467 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i463, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end28
  %i.0660 = phi i32 [ 0, %if.end28 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx32 = getelementptr [13 x %struct.anon.91], ptr @fm_mode, i32 0, i32 %i.0660
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i463) #5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196607, ptr %50, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %1, align 4
  %conv.i464 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i463 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i464, ptr %msg.i463, align 4
  %55 = ptrtoint ptr %flags.i465 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i465, align 2
  %56 = ptrtoint ptr %buf4.i467 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx32, ptr %buf4.i467, align 4
  %57 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adap.i, align 4
  %call.i469 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i463, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i463) #5
  %inc = add nuw nsw i32 %i.0660, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i470) #5
  %59 = getelementptr inbounds i8, ptr %msg.i470, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 196607, ptr %59, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 4
  %conv.i471 = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i470 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i471, ptr %msg.i470, align 4
  %flags.i472 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i470, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i472 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i472, align 2
  %buf4.i474 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i470, i32 0, i32 3
  %65 = ptrtoint ptr %buf4.i474 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %deemphasis, ptr %buf4.i474, align 4
  %66 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adap.i, align 4
  %call.i476 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i470, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i470) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %deemphasis) #5
  br label %if.end59

if.else:                                          ; preds = %if.end17
  %68 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tda8290_easy_mode, align 4
  %add = xor i8 %69, -128
  store i8 %add, ptr getelementptr inbounds ([2 x i8], ptr @tda8290_set_params.expert_mode, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i477) #5
  %70 = getelementptr inbounds i8, ptr %msg.i477, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %1, align 4
  %conv.i478 = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i477 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i478, ptr %msg.i477, align 4
  %flags.i479 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i479 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i479, align 2
  %buf4.i481 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477, i32 0, i32 3
  %76 = ptrtoint ptr %buf4.i481 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @tda8290_set_params.expert_mode, ptr %buf4.i481, align 4
  %77 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adap.i, align 4
  %call.i483 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i477, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i477) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i484) #5
  %79 = getelementptr inbounds i8, ptr %msg.i484, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %1, align 4
  %conv.i485 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i484 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i485, ptr %msg.i484, align 4
  %flags.i486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i484, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i486 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i486, align 2
  %buf4.i488 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i484, i32 0, i32 3
  %85 = ptrtoint ptr %buf4.i488 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tda8290_set_params.gainset_off, ptr %buf4.i488, align 4
  %86 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adap.i, align 4
  %call.i490 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i484, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i484) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i491) #5
  %88 = getelementptr inbounds i8, ptr %msg.i491, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 196607, ptr %88, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %1, align 4
  %conv.i492 = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i491 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i492, ptr %msg.i491, align 4
  %flags.i493 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i491, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i493 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i493, align 2
  %buf4.i495 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i491, i32 0, i32 3
  %94 = ptrtoint ptr %buf4.i495 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @tda8290_set_params.if_agc_spd, ptr %buf4.i495, align 4
  %95 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adap.i, align 4
  %call.i497 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i491, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i491) #5
  %97 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tda8290_easy_mode, align 4
  %99 = and i8 %98, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool49.not = icmp eq i8 %99, 0
  br i1 %tobool49.not, label %if.else53, label %if.then50

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i498) #5
  %100 = getelementptr inbounds i8, ptr %msg.i498, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 196607, ptr %100, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %1, align 4
  %conv.i499 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i498 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i499, ptr %msg.i498, align 4
  %flags.i500 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i500 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i500, align 2
  %buf4.i502 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 3
  %106 = ptrtoint ptr %buf4.i502 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tda8290_set_params.adc_head_9, ptr %buf4.i502, align 4
  %107 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adap.i, align 4
  %call.i504 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i498, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i498) #5
  br label %if.end56

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i505) #5
  %109 = getelementptr inbounds i8, ptr %msg.i505, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 196607, ptr %109, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %1, align 4
  %conv.i506 = zext i8 %112 to i16
  %113 = ptrtoint ptr %msg.i505 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i506, ptr %msg.i505, align 4
  %flags.i507 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i505, i32 0, i32 1
  %114 = ptrtoint ptr %flags.i507 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i507, align 2
  %buf4.i509 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i505, i32 0, i32 3
  %115 = ptrtoint ptr %buf4.i509 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @tda8290_set_params.adc_head_6, ptr %buf4.i509, align 4
  %116 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adap.i, align 4
  %call.i511 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i505, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i505) #5
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i512) #5
  %118 = getelementptr inbounds i8, ptr %msg.i512, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 196607, ptr %118, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %1, align 4
  %conv.i513 = zext i8 %121 to i16
  %122 = ptrtoint ptr %msg.i512 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i513, ptr %msg.i512, align 4
  %flags.i514 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i512, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i514 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i514, align 2
  %buf4.i516 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i512, i32 0, i32 3
  %124 = ptrtoint ptr %buf4.i516 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @tda8290_set_params.pll_bw_nom, ptr %buf4.i516, align 4
  %125 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adap.i, align 4
  %call.i518 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %msg.i512, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i512) #5
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %for.end
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %127 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool60.not = icmp eq ptr %128, null
  br i1 %tobool60.not, label %if.end59.if.end66_crit_edge, label %if.then61

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %call65 = call i32 %128(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end59.if.end66_crit_edge
  %set_analog_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 7
  %129 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %set_analog_params, align 4
  %tobool68.not = icmp eq ptr %130, null
  br i1 %tobool68.not, label %if.end66.if.end74_crit_edge, label %if.then69

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = call i32 %130(ptr noundef %fe, ptr noundef %params) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end66.if.end74_crit_edge
  %131 = getelementptr inbounds i8, ptr %msg.i519, i32 4
  %flags.i521 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 1, i32 2
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 1, i32 3
  %name129 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i519) #5
  %132 = call ptr @memset(ptr %131, i32 255, i32 16)
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %1, align 4
  %conv.i520 = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i519 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i520, ptr %msg.i519, align 4
  %136 = ptrtoint ptr %flags.i521 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i521, align 2
  %137 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %131, align 4
  %138 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i, align 4
  %139 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i520, ptr %arrayinit.element.i, align 4
  %140 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %flags6.i, align 2
  %141 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %len7.i, align 4
  %142 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i, align 4
  %143 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap.i, align 4
  %call.i523 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i519, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i519) #5
  %145 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %tobool83.not = icmp sgt i8 %145, -1
  br i1 %tobool83.not, label %do.body120, label %if.end74.if.then84_crit_edge

if.end74.if.then84_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then84

if.then84:                                        ; preds = %do.end148.1.if.then84_crit_edge, %do.end148.if.then84_crit_edge, %if.end74.if.then84_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i524) #5
  %146 = getelementptr inbounds i8, ptr %msg.i524, i32 4
  %147 = call ptr @memset(ptr %146, i32 255, i32 16)
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %1, align 4
  %conv.i525 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i524 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i525, ptr %msg.i524, align 4
  %flags.i526 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i526 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i526, align 2
  %152 = ptrtoint ptr %146 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 1, ptr %146, align 4
  %buf.i528 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 0, i32 3
  %153 = ptrtoint ptr %buf.i528 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @tda8290_set_params.addr_adc_sat, ptr %buf.i528, align 4
  %arrayinit.element.i529 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 1
  %154 = ptrtoint ptr %arrayinit.element.i529 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i525, ptr %arrayinit.element.i529, align 4
  %flags6.i530 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 1, i32 1
  %155 = ptrtoint ptr %flags6.i530 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 1, ptr %flags6.i530, align 2
  %len7.i531 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 1, i32 2
  %156 = ptrtoint ptr %len7.i531 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %len7.i531, align 4
  %buf9.i532 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i524, i32 1, i32 3
  %157 = ptrtoint ptr %buf9.i532 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @tda8290_set_params.adc_sat, ptr %buf9.i532, align 4
  %158 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %adap.i, align 4
  %call.i534 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i524, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i524) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i535) #5
  %160 = getelementptr inbounds i8, ptr %msg.i535, i32 4
  %161 = call ptr @memset(ptr %160, i32 255, i32 16)
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %1, align 4
  %conv.i536 = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i535 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i536, ptr %msg.i535, align 4
  %flags.i537 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 0, i32 1
  %165 = ptrtoint ptr %flags.i537 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flags.i537, align 2
  %166 = ptrtoint ptr %160 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 1, ptr %160, align 4
  %buf.i539 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 0, i32 3
  %167 = ptrtoint ptr %buf.i539 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @tda8290_set_params.addr_agc_stat, ptr %buf.i539, align 4
  %arrayinit.element.i540 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 1
  %168 = ptrtoint ptr %arrayinit.element.i540 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i536, ptr %arrayinit.element.i540, align 4
  %flags6.i541 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 1, i32 1
  %169 = ptrtoint ptr %flags6.i541 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %flags6.i541, align 2
  %len7.i542 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 1, i32 2
  %170 = ptrtoint ptr %len7.i542 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 1, ptr %len7.i542, align 4
  %buf9.i543 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i535, i32 1, i32 3
  %171 = ptrtoint ptr %buf9.i543 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @tda8290_set_params.agc_stat, ptr %buf9.i543, align 4
  %172 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %adap.i, align 4
  %call.i545 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %msg.i535, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i535) #5
  %174 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool90.not = icmp eq i32 %174, 0
  br i1 %tobool90.not, label %if.then84.for.end152_crit_edge, label %do.end95

if.then84.for.end152_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end152

do.end95:                                         ; preds = %if.then84
  %175 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name129, align 4
  %177 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %adap.i, align 4
  %tobool101.not = icmp eq ptr %178, null
  br i1 %tobool101.not, label %do.end95.cond.end107_crit_edge, label %cond.true102

do.end95.cond.end107_crit_edge:                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end107

cond.true102:                                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i546 = getelementptr inbounds %struct.i2c_adapter, ptr %178, i32 0, i32 11
  %179 = ptrtoint ptr %nr.i546 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nr.i546, align 4
  br label %cond.end107

cond.end107:                                      ; preds = %cond.true102, %do.end95.cond.end107_crit_edge
  %cond108 = phi i32 [ %180, %cond.true102 ], [ -1, %do.end95.cond.end107_crit_edge ]
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %1, align 4
  %conv111 = zext i8 %182 to i32
  %183 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  %conv112 = zext i8 %183 to i32
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %176, i32 noundef %cond108, i32 noundef %conv111, i32 noundef %conv112) #9
  br label %for.end152

do.body120:                                       ; preds = %if.end74
  %184 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool121.not = icmp eq i32 %184, 0
  br i1 %tobool121.not, label %do.body120.do.end148_crit_edge, label %do.end126

do.body120.do.end148_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end148

do.end126:                                        ; preds = %do.body120
  %185 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %name129, align 4
  %187 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adap.i, align 4
  %tobool132.not = icmp eq ptr %188, null
  br i1 %tobool132.not, label %do.end126.cond.end138_crit_edge, label %cond.true133

do.end126.cond.end138_crit_edge:                  ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end138

cond.true133:                                     ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i547 = getelementptr inbounds %struct.i2c_adapter, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %nr.i547 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %nr.i547, align 4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true133, %do.end126.cond.end138_crit_edge
  %cond139 = phi i32 [ %190, %cond.true133 ], [ -1, %do.end126.cond.end138_crit_edge ]
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %1, align 4
  %conv142 = zext i8 %192 to i32
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %186, i32 noundef %cond139, i32 noundef %conv142) #9
  br label %do.end148

do.end148:                                        ; preds = %cond.end138, %do.body120.do.end148_crit_edge
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i519) #5
  %193 = call ptr @memset(ptr %131, i32 255, i32 16)
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %1, align 4
  %conv.i520.1 = zext i8 %195 to i16
  %196 = ptrtoint ptr %msg.i519 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv.i520.1, ptr %msg.i519, align 4
  %197 = ptrtoint ptr %flags.i521 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %flags.i521, align 2
  %198 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 1, ptr %131, align 4
  %199 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i, align 4
  %200 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.i520.1, ptr %arrayinit.element.i, align 4
  %201 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 1, ptr %flags6.i, align 2
  %202 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 1, ptr %len7.i, align 4
  %203 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i, align 4
  %204 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %adap.i, align 4
  %call.i523.1 = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %msg.i519, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i519) #5
  %206 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %206)
  %tobool83.not.1 = icmp sgt i8 %206, -1
  br i1 %tobool83.not.1, label %do.body120.1, label %do.end148.if.then84_crit_edge

do.end148.if.then84_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then84

do.body120.1:                                     ; preds = %do.end148
  %207 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool121.not.1 = icmp eq i32 %207, 0
  br i1 %tobool121.not.1, label %do.body120.1.do.end148.1_crit_edge, label %do.end126.1

do.body120.1.do.end148.1_crit_edge:               ; preds = %do.body120.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end148.1

do.end126.1:                                      ; preds = %do.body120.1
  %208 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name129, align 4
  %210 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %adap.i, align 4
  %tobool132.not.1 = icmp eq ptr %211, null
  br i1 %tobool132.not.1, label %do.end126.1.cond.end138.1_crit_edge, label %cond.true133.1

do.end126.1.cond.end138.1_crit_edge:              ; preds = %do.end126.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end138.1

cond.true133.1:                                   ; preds = %do.end126.1
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i547.1 = getelementptr inbounds %struct.i2c_adapter, ptr %211, i32 0, i32 11
  %212 = ptrtoint ptr %nr.i547.1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nr.i547.1, align 4
  br label %cond.end138.1

cond.end138.1:                                    ; preds = %cond.true133.1, %do.end126.1.cond.end138.1_crit_edge
  %cond139.1 = phi i32 [ %213, %cond.true133.1 ], [ -1, %do.end126.1.cond.end138.1_crit_edge ]
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %1, align 4
  %conv142.1 = zext i8 %215 to i32
  %call143.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %209, i32 noundef %cond139.1, i32 noundef %conv142.1) #9
  br label %do.end148.1

do.end148.1:                                      ; preds = %cond.end138.1, %do.body120.1.do.end148.1_crit_edge
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i519) #5
  %216 = call ptr @memset(ptr %131, i32 255, i32 16)
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %1, align 4
  %conv.i520.2 = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i519 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv.i520.2, ptr %msg.i519, align 4
  %220 = ptrtoint ptr %flags.i521 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %flags.i521, align 2
  %221 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 1, ptr %131, align 4
  %222 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i, align 4
  %223 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv.i520.2, ptr %arrayinit.element.i, align 4
  %224 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 1, ptr %flags6.i, align 2
  %225 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 1, ptr %len7.i, align 4
  %226 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i, align 4
  %227 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %adap.i, align 4
  %call.i523.2 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %msg.i519, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i519) #5
  %229 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %229)
  %tobool83.not.2 = icmp sgt i8 %229, -1
  br i1 %tobool83.not.2, label %do.body120.2, label %do.end148.1.if.then84_crit_edge

do.end148.1.if.then84_crit_edge:                  ; preds = %do.end148.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then84

do.body120.2:                                     ; preds = %do.end148.1
  %230 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool121.not.2 = icmp eq i32 %230, 0
  br i1 %tobool121.not.2, label %do.body120.2.do.end148.2_crit_edge, label %do.end126.2

do.body120.2.do.end148.2_crit_edge:               ; preds = %do.body120.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end148.2

do.end126.2:                                      ; preds = %do.body120.2
  %231 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name129, align 4
  %233 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %adap.i, align 4
  %tobool132.not.2 = icmp eq ptr %234, null
  br i1 %tobool132.not.2, label %do.end126.2.cond.end138.2_crit_edge, label %cond.true133.2

do.end126.2.cond.end138.2_crit_edge:              ; preds = %do.end126.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end138.2

cond.true133.2:                                   ; preds = %do.end126.2
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i547.2 = getelementptr inbounds %struct.i2c_adapter, ptr %234, i32 0, i32 11
  %235 = ptrtoint ptr %nr.i547.2 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nr.i547.2, align 4
  br label %cond.end138.2

cond.end138.2:                                    ; preds = %cond.true133.2, %do.end126.2.cond.end138.2_crit_edge
  %cond139.2 = phi i32 [ %236, %cond.true133.2 ], [ -1, %do.end126.2.cond.end138.2_crit_edge ]
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %1, align 4
  %conv142.2 = zext i8 %238 to i32
  %call143.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %232, i32 noundef %cond139.2, i32 noundef %conv142.2) #9
  br label %do.end148.2

do.end148.2:                                      ; preds = %cond.end138.2, %do.body120.2.do.end148.2_crit_edge
  call void @msleep(i32 noundef 100) #5
  br label %for.end152

for.end152:                                       ; preds = %do.end148.2, %cond.end107, %if.then84.for.end152_crit_edge
  %239 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %239)
  %cmp154 = icmp ugt i8 %239, 115
  br i1 %cmp154, label %for.end152.do.body163_crit_edge, label %lor.lhs.false

for.end152.do.body163_crit_edge:                  ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

lor.lhs.false:                                    ; preds = %for.end152
  %240 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %240)
  %tobool158.not = icmp sgt i8 %240, -1
  br i1 %tobool158.not, label %land.lhs.true, label %lor.lhs.false.if.end296_crit_edge

lor.lhs.false.if.end296_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end296

land.lhs.true:                                    ; preds = %lor.lhs.false
  %241 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %241)
  %cmp160 = icmp ult i8 %241, 20
  br i1 %cmp160, label %land.lhs.true.do.body163_crit_edge, label %land.lhs.true.if.end296_crit_edge

land.lhs.true.if.end296_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end296

land.lhs.true.do.body163_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

do.body163:                                       ; preds = %land.lhs.true.do.body163_crit_edge, %for.end152.do.body163_crit_edge
  %242 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool164.not = icmp eq i32 %242, 0
  br i1 %tobool164.not, label %do.body163.do.end195_crit_edge, label %do.end169

do.body163.do.end195_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end195

do.end169:                                        ; preds = %do.body163
  %243 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %name129, align 4
  %245 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %adap.i, align 4
  %tobool175.not = icmp eq ptr %246, null
  br i1 %tobool175.not, label %do.end169.cond.end181_crit_edge, label %cond.true176

do.end169.cond.end181_crit_edge:                  ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end181

cond.true176:                                     ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i548 = getelementptr inbounds %struct.i2c_adapter, ptr %246, i32 0, i32 11
  %247 = ptrtoint ptr %nr.i548 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nr.i548, align 4
  br label %cond.end181

cond.end181:                                      ; preds = %cond.true176, %do.end169.cond.end181_crit_edge
  %cond182 = phi i32 [ %248, %cond.true176 ], [ -1, %do.end169.cond.end181_crit_edge ]
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %1, align 4
  %conv185 = zext i8 %250 to i32
  %conv186 = zext i8 %239 to i32
  %251 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  %conv187 = zext i8 %251 to i32
  %252 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %253 = and i8 %252, -128
  %and189 = zext i8 %253 to i32
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %244, i32 noundef %cond182, i32 noundef %conv185, i32 noundef %conv186, i32 noundef %conv187, i32 noundef %and189) #9
  br label %do.end195

do.end195:                                        ; preds = %cond.end181, %do.body163.do.end195_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i549) #5
  %254 = getelementptr inbounds i8, ptr %msg.i549, i32 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 196607, ptr %254, align 4
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %1, align 4
  %conv.i550 = zext i8 %257 to i16
  %258 = ptrtoint ptr %msg.i549 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv.i550, ptr %msg.i549, align 4
  %flags.i551 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 1
  %259 = ptrtoint ptr %flags.i551 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 0, ptr %flags.i551, align 2
  %buf4.i553 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 3
  %260 = ptrtoint ptr %buf4.i553 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @tda8290_set_params.gainset_2, ptr %buf4.i553, align 4
  %261 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %adap.i, align 4
  %call.i555 = call i32 @i2c_transfer(ptr noundef %262, ptr noundef nonnull %msg.i549, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i549) #5
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i556) #5
  %263 = getelementptr inbounds i8, ptr %msg.i556, i32 4
  %264 = call ptr @memset(ptr %263, i32 255, i32 16)
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %1, align 4
  %conv.i557 = zext i8 %266 to i16
  %267 = ptrtoint ptr %msg.i556 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv.i557, ptr %msg.i556, align 4
  %flags.i558 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 0, i32 1
  %268 = ptrtoint ptr %flags.i558 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %flags.i558, align 2
  %269 = ptrtoint ptr %263 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 1, ptr %263, align 4
  %buf.i560 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 0, i32 3
  %270 = ptrtoint ptr %buf.i560 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @tda8290_set_params.addr_agc_stat, ptr %buf.i560, align 4
  %arrayinit.element.i561 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 1
  %271 = ptrtoint ptr %arrayinit.element.i561 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv.i557, ptr %arrayinit.element.i561, align 4
  %flags6.i562 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 1, i32 1
  %272 = ptrtoint ptr %flags6.i562 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 1, ptr %flags6.i562, align 2
  %len7.i563 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 1, i32 2
  %273 = ptrtoint ptr %len7.i563 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 1, ptr %len7.i563, align 4
  %buf9.i564 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i556, i32 1, i32 3
  %274 = ptrtoint ptr %buf9.i564 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @tda8290_set_params.agc_stat, ptr %buf9.i564, align 4
  %275 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %adap.i, align 4
  %call.i566 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %msg.i556, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i556) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i567) #5
  %277 = getelementptr inbounds i8, ptr %msg.i567, i32 4
  %278 = call ptr @memset(ptr %277, i32 255, i32 16)
  %279 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %1, align 4
  %conv.i568 = zext i8 %280 to i16
  %281 = ptrtoint ptr %msg.i567 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv.i568, ptr %msg.i567, align 4
  %flags.i569 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 0, i32 1
  %282 = ptrtoint ptr %flags.i569 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 0, ptr %flags.i569, align 2
  %283 = ptrtoint ptr %277 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 1, ptr %277, align 4
  %buf.i571 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 0, i32 3
  %284 = ptrtoint ptr %buf.i571 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i571, align 4
  %arrayinit.element.i572 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 1
  %285 = ptrtoint ptr %arrayinit.element.i572 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv.i568, ptr %arrayinit.element.i572, align 4
  %flags6.i573 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 1, i32 1
  %286 = ptrtoint ptr %flags6.i573 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 1, ptr %flags6.i573, align 2
  %len7.i574 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 1, i32 2
  %287 = ptrtoint ptr %len7.i574 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 1, ptr %len7.i574, align 4
  %buf9.i575 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i567, i32 1, i32 3
  %288 = ptrtoint ptr %buf9.i575 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i575, align 4
  %289 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %adap.i, align 4
  %call.i577 = call i32 @i2c_transfer(ptr noundef %290, ptr noundef nonnull %msg.i567, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i567) #5
  %291 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %291)
  %cmp203 = icmp ugt i8 %291, 115
  br i1 %cmp203, label %do.end195.do.body210_crit_edge, label %lor.lhs.false205

do.end195.do.body210_crit_edge:                   ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body210

lor.lhs.false205:                                 ; preds = %do.end195
  %292 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %292)
  %tobool208.not = icmp sgt i8 %292, -1
  br i1 %tobool208.not, label %lor.lhs.false205.do.body210_crit_edge, label %lor.lhs.false205.if.end296_crit_edge

lor.lhs.false205.if.end296_crit_edge:             ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end296

lor.lhs.false205.do.body210_crit_edge:            ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body210

do.body210:                                       ; preds = %lor.lhs.false205.do.body210_crit_edge, %do.end195.do.body210_crit_edge
  %293 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool211.not = icmp eq i32 %293, 0
  br i1 %tobool211.not, label %do.body210.do.end241_crit_edge, label %do.end216

do.body210.do.end241_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end241

do.end216:                                        ; preds = %do.body210
  %294 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %name129, align 4
  %296 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %adap.i, align 4
  %tobool222.not = icmp eq ptr %297, null
  br i1 %tobool222.not, label %do.end216.cond.end228_crit_edge, label %cond.true223

do.end216.cond.end228_crit_edge:                  ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end228

cond.true223:                                     ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i578 = getelementptr inbounds %struct.i2c_adapter, ptr %297, i32 0, i32 11
  %298 = ptrtoint ptr %nr.i578 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %nr.i578, align 4
  br label %cond.end228

cond.end228:                                      ; preds = %cond.true223, %do.end216.cond.end228_crit_edge
  %cond229 = phi i32 [ %299, %cond.true223 ], [ -1, %do.end216.cond.end228_crit_edge ]
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %1, align 4
  %conv232 = zext i8 %301 to i32
  %conv233 = zext i8 %291 to i32
  %302 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %303 = and i8 %302, -128
  %and235 = zext i8 %303 to i32
  %call236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %295, i32 noundef %cond229, i32 noundef %conv232, i32 noundef %conv233, i32 noundef %and235) #9
  br label %do.end241

do.end241:                                        ; preds = %cond.end228, %do.body210.do.end241_crit_edge
  %agcf = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 4, i32 4
  %304 = ptrtoint ptr %agcf to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %agcf, align 4
  %tobool243.not = icmp eq ptr %305, null
  br i1 %tobool243.not, label %do.end241.if.end247_crit_edge, label %if.then244

do.end241.if.end247_crit_edge:                    ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.then244:                                       ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #7
  call void %305(ptr noundef %fe) #5
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %do.end241.if.end247_crit_edge
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i579) #5
  %306 = getelementptr inbounds i8, ptr %msg.i579, i32 4
  %307 = call ptr @memset(ptr %306, i32 255, i32 16)
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %1, align 4
  %conv.i580 = zext i8 %309 to i16
  %310 = ptrtoint ptr %msg.i579 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %conv.i580, ptr %msg.i579, align 4
  %flags.i581 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 0, i32 1
  %311 = ptrtoint ptr %flags.i581 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 0, ptr %flags.i581, align 2
  %312 = ptrtoint ptr %306 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 1, ptr %306, align 4
  %buf.i583 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 0, i32 3
  %313 = ptrtoint ptr %buf.i583 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @tda8290_set_params.addr_agc_stat, ptr %buf.i583, align 4
  %arrayinit.element.i584 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 1
  %314 = ptrtoint ptr %arrayinit.element.i584 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 %conv.i580, ptr %arrayinit.element.i584, align 4
  %flags6.i585 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 1, i32 1
  %315 = ptrtoint ptr %flags6.i585 to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 1, ptr %flags6.i585, align 2
  %len7.i586 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 1, i32 2
  %316 = ptrtoint ptr %len7.i586 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 1, ptr %len7.i586, align 4
  %buf9.i587 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i579, i32 1, i32 3
  %317 = ptrtoint ptr %buf9.i587 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr @tda8290_set_params.agc_stat, ptr %buf9.i587, align 4
  %318 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %adap.i, align 4
  %call.i589 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %msg.i579, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i579) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i590) #5
  %320 = getelementptr inbounds i8, ptr %msg.i590, i32 4
  %321 = call ptr @memset(ptr %320, i32 255, i32 16)
  %322 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %1, align 4
  %conv.i591 = zext i8 %323 to i16
  %324 = ptrtoint ptr %msg.i590 to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %conv.i591, ptr %msg.i590, align 4
  %flags.i592 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 0, i32 1
  %325 = ptrtoint ptr %flags.i592 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 0, ptr %flags.i592, align 2
  %326 = ptrtoint ptr %320 to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 1, ptr %320, align 4
  %buf.i594 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 0, i32 3
  %327 = ptrtoint ptr %buf.i594 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i594, align 4
  %arrayinit.element.i595 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 1
  %328 = ptrtoint ptr %arrayinit.element.i595 to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv.i591, ptr %arrayinit.element.i595, align 4
  %flags6.i596 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 1, i32 1
  %329 = ptrtoint ptr %flags6.i596 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 1, ptr %flags6.i596, align 2
  %len7.i597 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 1, i32 2
  %330 = ptrtoint ptr %len7.i597 to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 1, ptr %len7.i597, align 4
  %buf9.i598 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 1, i32 3
  %331 = ptrtoint ptr %buf9.i598 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i598, align 4
  %332 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %adap.i, align 4
  %call.i600 = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %msg.i590, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i590) #5
  %334 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %334)
  %cmp253 = icmp ugt i8 %334, 115
  br i1 %cmp253, label %if.end247.do.body260_crit_edge, label %lor.lhs.false255

if.end247.do.body260_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

lor.lhs.false255:                                 ; preds = %if.end247
  %335 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %335)
  %tobool258.not = icmp sgt i8 %335, -1
  br i1 %tobool258.not, label %lor.lhs.false255.do.body260_crit_edge, label %lor.lhs.false255.if.end296_crit_edge

lor.lhs.false255.if.end296_crit_edge:             ; preds = %lor.lhs.false255
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end296

lor.lhs.false255.do.body260_crit_edge:            ; preds = %lor.lhs.false255
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body260

do.body260:                                       ; preds = %lor.lhs.false255.do.body260_crit_edge, %if.end247.do.body260_crit_edge
  %336 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool261.not = icmp eq i32 %336, 0
  br i1 %tobool261.not, label %do.body260.do.end289_crit_edge, label %do.end266

do.body260.do.end289_crit_edge:                   ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end289

do.end266:                                        ; preds = %do.body260
  %337 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %name129, align 4
  %339 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %adap.i, align 4
  %tobool272.not = icmp eq ptr %340, null
  br i1 %tobool272.not, label %do.end266.cond.end278_crit_edge, label %cond.true273

do.end266.cond.end278_crit_edge:                  ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end278

cond.true273:                                     ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i601 = getelementptr inbounds %struct.i2c_adapter, ptr %340, i32 0, i32 11
  %341 = ptrtoint ptr %nr.i601 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %nr.i601, align 4
  br label %cond.end278

cond.end278:                                      ; preds = %cond.true273, %do.end266.cond.end278_crit_edge
  %cond279 = phi i32 [ %342, %cond.true273 ], [ -1, %do.end266.cond.end278_crit_edge ]
  %343 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %1, align 4
  %conv282 = zext i8 %344 to i32
  %conv283 = zext i8 %334 to i32
  %call284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %338, i32 noundef %cond279, i32 noundef %conv282, i32 noundef %conv283) #9
  br label %do.end289

do.end289:                                        ; preds = %cond.end278, %do.body260.do.end289_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i602) #5
  %345 = getelementptr inbounds i8, ptr %msg.i602, i32 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 196607, ptr %345, align 4
  %347 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %1, align 4
  %conv.i603 = zext i8 %348 to i16
  %349 = ptrtoint ptr %msg.i602 to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %conv.i603, ptr %msg.i602, align 4
  %flags.i604 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i602, i32 0, i32 1
  %350 = ptrtoint ptr %flags.i604 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %flags.i604, align 2
  %buf4.i606 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i602, i32 0, i32 3
  %351 = ptrtoint ptr %buf4.i606 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @tda8290_set_params.adc_head_12, ptr %buf4.i606, align 4
  %352 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %adap.i, align 4
  %call.i608 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %msg.i602, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i602) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i609) #5
  %354 = getelementptr inbounds i8, ptr %msg.i609, i32 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 196607, ptr %354, align 4
  %356 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %1, align 4
  %conv.i610 = zext i8 %357 to i16
  %358 = ptrtoint ptr %msg.i609 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %conv.i610, ptr %msg.i609, align 4
  %flags.i611 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i609, i32 0, i32 1
  %359 = ptrtoint ptr %flags.i611 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 0, ptr %flags.i611, align 2
  %buf4.i613 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i609, i32 0, i32 3
  %360 = ptrtoint ptr %buf4.i613 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr @tda8290_set_params.pll_bw_low, ptr %buf4.i613, align 4
  %361 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %adap.i, align 4
  %call.i615 = call i32 @i2c_transfer(ptr noundef %362, ptr noundef nonnull %msg.i609, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i609) #5
  call void @msleep(i32 noundef 100) #5
  br label %if.end296

if.end296:                                        ; preds = %do.end289, %lor.lhs.false255.if.end296_crit_edge, %lor.lhs.false205.if.end296_crit_edge, %land.lhs.true.if.end296_crit_edge, %lor.lhs.false.if.end296_crit_edge
  %363 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %tda8290_easy_mode, align 4
  %365 = and i8 %364, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool300.not = icmp eq i8 %365, 0
  br i1 %tobool300.not, label %if.end296.if.end348_crit_edge, label %if.then301

if.end296.if.end348_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end348

if.then301:                                       ; preds = %if.end296
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i616) #5
  %366 = getelementptr inbounds i8, ptr %msg.i616, i32 4
  %367 = call ptr @memset(ptr %366, i32 255, i32 16)
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %1, align 4
  %conv.i617 = zext i8 %369 to i16
  %370 = ptrtoint ptr %msg.i616 to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %conv.i617, ptr %msg.i616, align 4
  %flags.i618 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 0, i32 1
  %371 = ptrtoint ptr %flags.i618 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 0, ptr %flags.i618, align 2
  %372 = ptrtoint ptr %366 to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 1, ptr %366, align 4
  %buf.i620 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 0, i32 3
  %373 = ptrtoint ptr %buf.i620 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr @tda8290_set_params.addr_adc_sat, ptr %buf.i620, align 4
  %arrayinit.element.i621 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 1
  %374 = ptrtoint ptr %arrayinit.element.i621 to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %conv.i617, ptr %arrayinit.element.i621, align 4
  %flags6.i622 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 1, i32 1
  %375 = ptrtoint ptr %flags6.i622 to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 1, ptr %flags6.i622, align 2
  %len7.i623 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 1, i32 2
  %376 = ptrtoint ptr %len7.i623 to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 1, ptr %len7.i623, align 4
  %buf9.i624 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i616, i32 1, i32 3
  %377 = ptrtoint ptr %buf9.i624 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr @tda8290_set_params.adc_sat, ptr %buf9.i624, align 4
  %378 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %adap.i, align 4
  %call.i626 = call i32 @i2c_transfer(ptr noundef %379, ptr noundef nonnull %msg.i616, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i616) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i627) #5
  %380 = getelementptr inbounds i8, ptr %msg.i627, i32 4
  %381 = call ptr @memset(ptr %380, i32 255, i32 16)
  %382 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %1, align 4
  %conv.i628 = zext i8 %383 to i16
  %384 = ptrtoint ptr %msg.i627 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %conv.i628, ptr %msg.i627, align 4
  %flags.i629 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 0, i32 1
  %385 = ptrtoint ptr %flags.i629 to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 0, ptr %flags.i629, align 2
  %386 = ptrtoint ptr %380 to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 1, ptr %380, align 4
  %buf.i631 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 0, i32 3
  %387 = ptrtoint ptr %buf.i631 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr @tda8290_set_params.addr_pll_stat, ptr %buf.i631, align 4
  %arrayinit.element.i632 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 1
  %388 = ptrtoint ptr %arrayinit.element.i632 to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %conv.i628, ptr %arrayinit.element.i632, align 4
  %flags6.i633 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 1, i32 1
  %389 = ptrtoint ptr %flags6.i633 to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 1, ptr %flags6.i633, align 2
  %len7.i634 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 1, i32 2
  %390 = ptrtoint ptr %len7.i634 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 1, ptr %len7.i634, align 4
  %buf9.i635 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627, i32 1, i32 3
  %391 = ptrtoint ptr %buf9.i635 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr @tda8290_set_params.pll_stat, ptr %buf9.i635, align 4
  %392 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %adap.i, align 4
  %call.i637 = call i32 @i2c_transfer(ptr noundef %393, ptr noundef nonnull %msg.i627, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i627) #5
  %394 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %394)
  %cmp307 = icmp ugt i8 %394, 20
  br i1 %cmp307, label %if.then301.do.body314_crit_edge, label %lor.lhs.false309

if.then301.do.body314_crit_edge:                  ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body314

lor.lhs.false309:                                 ; preds = %if.then301
  %395 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %395)
  %tobool312.not = icmp sgt i8 %395, -1
  br i1 %tobool312.not, label %lor.lhs.false309.do.body314_crit_edge, label %lor.lhs.false309.if.end348_crit_edge

lor.lhs.false309.if.end348_crit_edge:             ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end348

lor.lhs.false309.do.body314_crit_edge:            ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body314

do.body314:                                       ; preds = %lor.lhs.false309.do.body314_crit_edge, %if.then301.do.body314_crit_edge
  %396 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %tobool315.not = icmp eq i32 %396, 0
  br i1 %tobool315.not, label %do.body314.do.end342_crit_edge, label %do.end320

do.body314.do.end342_crit_edge:                   ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end342

do.end320:                                        ; preds = %do.body314
  %397 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %name129, align 4
  %399 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %adap.i, align 4
  %tobool326.not = icmp eq ptr %400, null
  br i1 %tobool326.not, label %do.end320.cond.end332_crit_edge, label %cond.true327

do.end320.cond.end332_crit_edge:                  ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end332

cond.true327:                                     ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i638 = getelementptr inbounds %struct.i2c_adapter, ptr %400, i32 0, i32 11
  %401 = ptrtoint ptr %nr.i638 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %nr.i638, align 4
  br label %cond.end332

cond.end332:                                      ; preds = %cond.true327, %do.end320.cond.end332_crit_edge
  %cond333 = phi i32 [ %402, %cond.true327 ], [ -1, %do.end320.cond.end332_crit_edge ]
  %403 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %1, align 4
  %conv336 = zext i8 %404 to i32
  %call337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %398, i32 noundef %cond333, i32 noundef %conv336) #9
  br label %do.end342

do.end342:                                        ; preds = %cond.end332, %do.body314.do.end342_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i639) #5
  %405 = getelementptr inbounds i8, ptr %msg.i639, i32 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 196607, ptr %405, align 4
  %407 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %1, align 4
  %conv.i640 = zext i8 %408 to i16
  %409 = ptrtoint ptr %msg.i639 to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 %conv.i640, ptr %msg.i639, align 4
  %flags.i641 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i639, i32 0, i32 1
  %410 = ptrtoint ptr %flags.i641 to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 0, ptr %flags.i641, align 2
  %buf4.i643 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i639, i32 0, i32 3
  %411 = ptrtoint ptr %buf4.i643 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr @tda8290_set_params.agc_rst_on, ptr %buf4.i643, align 4
  %412 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %adap.i, align 4
  %call.i645 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %msg.i639, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i639) #5
  call void @msleep(i32 noundef 40) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i646) #5
  %414 = getelementptr inbounds i8, ptr %msg.i646, i32 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 196607, ptr %414, align 4
  %416 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %1, align 4
  %conv.i647 = zext i8 %417 to i16
  %418 = ptrtoint ptr %msg.i646 to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %conv.i647, ptr %msg.i646, align 4
  %flags.i648 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i646, i32 0, i32 1
  %419 = ptrtoint ptr %flags.i648 to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 0, ptr %flags.i648, align 2
  %buf4.i650 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i646, i32 0, i32 3
  %420 = ptrtoint ptr %buf4.i650 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr @tda8290_set_params.agc_rst_off, ptr %buf4.i650, align 4
  %421 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %adap.i, align 4
  %call.i652 = call i32 @i2c_transfer(ptr noundef %422, ptr noundef nonnull %msg.i646, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i646) #5
  br label %if.end348

if.end348:                                        ; preds = %do.end342, %lor.lhs.false309.if.end348_crit_edge, %if.end296.if.end348_crit_edge
  %423 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool352.not = icmp eq ptr %424, null
  br i1 %tobool352.not, label %if.end348.if.end358_crit_edge, label %if.then353

if.end348.if.end358_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end358

if.then353:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #7
  %call357 = call i32 %424(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end358

if.end358:                                        ; preds = %if.then353, %if.end348.if.end358_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i653) #5
  %425 = getelementptr inbounds i8, ptr %msg.i653, i32 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 196607, ptr %425, align 4
  %427 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %1, align 4
  %conv.i654 = zext i8 %428 to i16
  %429 = ptrtoint ptr %msg.i653 to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %conv.i654, ptr %msg.i653, align 4
  %flags.i655 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i653, i32 0, i32 1
  %430 = ptrtoint ptr %flags.i655 to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 0, ptr %flags.i655, align 2
  %buf4.i657 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i653, i32 0, i32 3
  %431 = ptrtoint ptr %buf4.i657 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr @tda8290_set_params.if_agc_set, ptr %buf4.i657, align 4
  %432 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %adap.i, align 4
  %call.i659 = call i32 @i2c_transfer(ptr noundef %433, ptr noundef nonnull %msg.i653, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i653) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %easy_mode) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8290_has_signal(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %i2c_get_afc = alloca [1 x i8], align 1
  %afc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_get_afc) #5
  %2 = ptrtoint ptr %i2c_get_afc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 27, ptr %i2c_get_afc, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %afc) #5
  %3 = ptrtoint ptr %afc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %afc, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i2c_get_afc, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %afc, ptr %buf9.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  %18 = ptrtoint ptr %afc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %afc, align 1
  %.lobit = ashr i8 %19, 7
  %20 = sext i8 %.lobit to i16
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %signal, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %afc) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_get_afc) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8290_standby(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %tda827x_addr = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tda827x_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tda827x_addr, align 1
  %conv = zext i8 %5 to i16
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
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tda8290_standby.cb1, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ver = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ver, align 2
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i8 -112, ptr getelementptr inbounds ([2 x i8], ptr @tda8290_standby.cb1, i32 0, i32 1), align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 4
  %call8 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #5
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end7.if.end18_crit_edge, label %if.then13

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 %18(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end7.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %conv.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tda8290_standby.tda8290_agc_tri, ptr %buf4.i, align 4
  %26 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #5
  %28 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 4
  %conv.i35 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i35, ptr %msg.i34, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i36, align 2
  %buf4.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %34 = ptrtoint ptr %buf4.i38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tda8290_standby.tda8290_standby, ptr %buf4.i38, align 4
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i34, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8290_i2c_bridge(ptr nocapture noundef readonly %fe, i32 noundef %close) #0 align 64 {
entry:
  %msg.i5 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %close)
  %tobool.not = icmp eq i32 %close, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196607, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tda8290_i2c_bridge.enable, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @msleep(i32 noundef 20) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5) #5
  %11 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 4
  %conv.i6 = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i6, ptr %msg.i5, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i7, align 2
  %buf4.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %17 = ptrtoint ptr %buf4.i9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tda8290_i2c_bridge.disable, ptr %buf4.i9, align 4
  %adap.i10 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adap.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap.i10, align 4
  %call.i11 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i5, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and = and i64 %3, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %tda8290_easy_mode, align 4
  br label %if.end43

if.else:                                          ; preds = %entry
  %and2 = and i64 %3, 65539
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode5 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tda8290_easy_mode5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %tda8290_easy_mode5, align 4
  br label %if.end43

if.else6:                                         ; preds = %if.else
  %and8 = and i64 %3, 786444
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode11 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tda8290_easy_mode11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %tda8290_easy_mode11, align 4
  br label %if.end43

if.else12:                                        ; preds = %if.else6
  %and14 = and i64 %3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode17 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %tda8290_easy_mode17 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %tda8290_easy_mode17, align 4
  br label %if.end43

if.else18:                                        ; preds = %if.else12
  %and20 = and i64 %3, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode23 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %tda8290_easy_mode23 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %tda8290_easy_mode23, align 4
  br label %if.end43

if.else24:                                        ; preds = %if.else18
  %and26 = and i64 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  %tda8290_easy_mode29 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %tda8290_easy_mode29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %tda8290_easy_mode29, align 4
  br label %if.end43

if.else30:                                        ; preds = %if.else24
  %and32 = and i64 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  %tda8290_easy_mode37 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  br i1 %tobool33.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %tda8290_easy_mode37 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %tda8290_easy_mode37, align 4
  br label %if.end43

if.else36:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %tda8290_easy_mode37 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %tda8290_easy_mode37, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else36, %if.then34, %if.then28, %if.then22, %if.then16, %if.then10, %if.then4, %if.then
  %mode.0 = phi ptr [ @.str.37, %if.then ], [ @.str.38, %if.then4 ], [ @.str.39, %if.then10 ], [ @.str.40, %if.then16 ], [ @.str.41, %if.then22 ], [ @.str.42, %if.then28 ], [ @.str.43, %if.then34 ], [ @.str.44, %if.else36 ]
  %mode44 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %mode44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then45, label %do.body68

if.then45:                                        ; preds = %if.end43
  %ver = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ver, align 2
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp eq i8 %16, 0
  %conv48 = select i1 %tobool47.not, i8 1, i8 -128
  %tda8290_easy_mode49 = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %tda8290_easy_mode49 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv48, ptr %tda8290_easy_mode49, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool50.not = icmp eq i32 %18, 0
  br i1 %tobool50.not, label %if.then45.if.end97_crit_edge, label %do.end

if.then45.if.end97_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end:                                           ; preds = %if.then45
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 4
  %tobool55.not = icmp eq ptr %22, null
  br i1 %tobool55.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond58 = phi i32 [ %24, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 4
  %conv60 = zext i8 %26 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %20, i32 noundef %cond58, i32 noundef %conv60) #9
  br label %if.end97

do.body68:                                        ; preds = %if.end43
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool69.not = icmp eq i32 %27, 0
  br i1 %tobool69.not, label %do.body68.if.end97_crit_edge, label %do.end74

do.body68.if.end97_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end74:                                         ; preds = %do.body68
  %name77 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %name77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name77, align 4
  %adap79 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %adap79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap79, align 4
  %tobool80.not = icmp eq ptr %31, null
  br i1 %tobool80.not, label %do.end74.cond.end86_crit_edge, label %cond.true81

do.end74.cond.end86_crit_edge:                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.true81:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i123 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %nr.i123 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr.i123, align 4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.true81, %do.end74.cond.end86_crit_edge
  %cond87 = phi i32 [ %33, %cond.true81 ], [ -1, %do.end74.cond.end86_crit_edge ]
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 4
  %conv90 = zext i8 %35 to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %29, i32 noundef %cond87, i32 noundef %conv90, ptr noundef nonnull %mode.0) #9
  br label %if.end97

if.end97:                                         ; preds = %cond.end86, %do.body68.if.end97_crit_edge, %cond.end, %if.then45.if.end97_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8295_set_params(ptr noundef %fe, ptr noundef %params) #0 align 64 {
entry:
  %msg.i.i169 = alloca [2 x %struct.i2c_msg], align 4
  %hvpll_stat.i = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %msg.i164 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %msg.i.i149 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i150 = alloca [2 x i8], align 2
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  %blanking_mode = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %blanking_mode) #5
  %2 = ptrtoint ptr %blanking_mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 7424, ptr %blanking_mode, align 2
  tail call fastcc void @set_audio(ptr noundef %fe, ptr noundef %params)
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %5, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.57, i32 noundef %13) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %14 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 12288, ptr %buf.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %15, align 4
  %conv.i.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %17, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %26 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %27 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %28 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx1.i, ptr %buf9.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %15, i32 0, i32 1
  %29 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #5
  %32 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %15, align 4
  %conv.i8.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i8.i, ptr %msg.i7.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i9.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %39 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap.i.i, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %41 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i150) #5
  %43 = ptrtoint ptr %buf.i150 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 512, ptr %buf.i150, align 2
  %arrayidx1.i152 = getelementptr inbounds [2 x i8], ptr %buf.i150, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i149) #5
  %44 = getelementptr inbounds i8, ptr %msg.i.i149, i32 4
  %45 = call ptr @memset(ptr %44, i32 255, i32 16)
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %42, align 4
  %conv.i.i153 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i.i149 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i153, ptr %msg.i.i149, align 4
  %flags.i.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i154 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i154, align 2
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %44, align 4
  %buf.i.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i.i155 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i150, ptr %buf.i.i155, align 4
  %arrayinit.element.i.i156 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i.i156 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i.i153, ptr %arrayinit.element.i.i156, align 4
  %flags6.i.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i.i157 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i.i157, align 2
  %len7.i.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i.i158 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i.i158, align 4
  %buf9.i.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i149, i32 1, i32 3
  %55 = ptrtoint ptr %buf9.i.i159 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx1.i152, ptr %buf9.i.i159, align 4
  %adap.i.i160 = getelementptr inbounds %struct.tuner_i2c_props, ptr %42, i32 0, i32 1
  %56 = ptrtoint ptr %adap.i.i160 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adap.i.i160, align 4
  %call.i.i161 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i.i149, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i149) #5
  %58 = ptrtoint ptr %arrayidx1.i152 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx1.i152, align 1
  %60 = and i8 %59, -65
  store i8 %60, ptr %arrayidx1.i152, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #5
  %61 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %63 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %42, align 4
  %conv.i11.i = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i11.i, ptr %msg.i10.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i12.i, align 2
  %buf4.i.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %67 = ptrtoint ptr %buf4.i.i162 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i150, ptr %buf4.i.i162, align 4
  %68 = ptrtoint ptr %adap.i.i160 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adap.i.i160, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i150) #5
  %arrayidx14 = getelementptr inbounds [2 x i8], ptr %blanking_mode, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %70 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 255, i32 16)
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %1, align 4
  %conv.i = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i, align 2
  %76 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %70, align 4
  %buf.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %77 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %blanking_mode, ptr %buf.i163, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %78 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %79 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %80 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %81 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx14, ptr %buf9.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call fastcc void @tda8295_set_video_std(ptr noundef %fe)
  %84 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %arrayidx14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i164) #5
  %85 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %85, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %1, align 4
  %conv.i165 = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i165, ptr %msg.i164, align 4
  %flags.i166 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i166 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i166, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %91 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %blanking_mode, ptr %buf4.i, align 4
  %92 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adap.i, align 4
  %call.i168 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i164, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #5
  call void @msleep(i32 noundef 20) #5
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 7
  %94 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool19.not = icmp eq ptr %95, null
  br i1 %tobool19.not, label %do.end12.if.end25_crit_edge, label %if.then20

do.end12.if.end25_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then20:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call i32 %95(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.end12.if.end25_crit_edge
  %set_analog_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 7
  %96 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_analog_params, align 4
  %tobool27.not = icmp eq ptr %97, null
  br i1 %tobool27.not, label %if.end25.if.end33_crit_edge, label %if.then28

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = call i32 %97(ptr noundef %fe, ptr noundef %params) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end25.if.end33_crit_edge
  %agcf = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 4, i32 4
  %98 = ptrtoint ptr %agcf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %agcf, align 4
  %tobool34.not = icmp eq ptr %99, null
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  call void %99(ptr noundef %fe) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end33.if.end38_crit_edge
  %100 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hvpll_stat.i) #5
  %102 = ptrtoint ptr %hvpll_stat.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 38, ptr %hvpll_stat.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #5
  %103 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %ret.i, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i169) #5
  %104 = getelementptr inbounds i8, ptr %msg.i.i169, i32 4
  %105 = call ptr @memset(ptr %104, i32 255, i32 16)
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %101, align 4
  %conv.i.i171 = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i.i169 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i.i171, ptr %msg.i.i169, align 4
  %flags.i.i172 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i.i172 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i.i172, align 2
  %110 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %104, align 4
  %buf.i.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 0, i32 3
  %111 = ptrtoint ptr %buf.i.i173 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %hvpll_stat.i, ptr %buf.i.i173, align 4
  %arrayinit.element.i.i174 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 1
  %112 = ptrtoint ptr %arrayinit.element.i.i174 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i.i171, ptr %arrayinit.element.i.i174, align 4
  %flags6.i.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 1, i32 1
  %113 = ptrtoint ptr %flags6.i.i175 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %flags6.i.i175, align 2
  %len7.i.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 1, i32 2
  %114 = ptrtoint ptr %len7.i.i176 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %len7.i.i176, align 4
  %buf9.i.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i169, i32 1, i32 3
  %115 = ptrtoint ptr %buf9.i.i177 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %ret.i, ptr %buf9.i.i177, align 4
  %adap.i.i178 = getelementptr inbounds %struct.tuner_i2c_props, ptr %101, i32 0, i32 1
  %116 = ptrtoint ptr %adap.i.i178 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adap.i.i178, align 4
  %call.i.i179 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i.i169, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i169) #5
  %118 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ret.i, align 1
  %120 = and i8 %119, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hvpll_stat.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool40.not = icmp eq i8 %120, 0
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool72.not = icmp eq i32 %121, 0
  br i1 %tobool40.not, label %do.body71, label %do.body42

do.body42:                                        ; preds = %if.end38
  br i1 %tobool72.not, label %do.body42.if.end100_crit_edge, label %do.end48

do.body42.if.end100_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

do.end48:                                         ; preds = %do.body42
  %name51 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %122 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name51, align 4
  %124 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adap.i, align 4
  %tobool54.not = icmp eq ptr %125, null
  br i1 %tobool54.not, label %do.end48.cond.end60_crit_edge, label %cond.true55

do.end48.cond.end60_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end60

cond.true55:                                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i180 = getelementptr inbounds %struct.i2c_adapter, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %nr.i180 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr.i180, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true55, %do.end48.cond.end60_crit_edge
  %cond61 = phi i32 [ %127, %cond.true55 ], [ -1, %do.end48.cond.end60_crit_edge ]
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %1, align 4
  %conv64 = zext i8 %129 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %123, i32 noundef %cond61, i32 noundef %conv64) #9
  br label %if.end100

do.body71:                                        ; preds = %if.end38
  br i1 %tobool72.not, label %do.body71.if.end100_crit_edge, label %do.end77

do.body71.if.end100_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

do.end77:                                         ; preds = %do.body71
  %name80 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %130 = ptrtoint ptr %name80 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name80, align 4
  %132 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adap.i, align 4
  %tobool83.not = icmp eq ptr %133, null
  br i1 %tobool83.not, label %do.end77.cond.end89_crit_edge, label %cond.true84

do.end77.cond.end89_crit_edge:                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89

cond.true84:                                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #7
  %nr.i181 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %nr.i181 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nr.i181, align 4
  br label %cond.end89

cond.end89:                                       ; preds = %cond.true84, %do.end77.cond.end89_crit_edge
  %cond90 = phi i32 [ %135, %cond.true84 ], [ -1, %do.end77.cond.end89_crit_edge ]
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %1, align 4
  %conv93 = zext i8 %137 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %131, i32 noundef %cond90, i32 noundef %conv93) #9
  br label %if.end100

if.end100:                                        ; preds = %cond.end89, %do.body71.if.end100_crit_edge, %cond.end60, %do.body42.if.end100_crit_edge
  %138 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool104.not = icmp eq ptr %139, null
  br i1 %tobool104.not, label %if.end100.if.end110_crit_edge, label %if.then105

if.end100.if.end110_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  %call109 = call i32 %139(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end100.if.end110_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %blanking_mode) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8295_has_signal(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %hvpll_stat = alloca i8, align 1
  %ret = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hvpll_stat) #5
  %2 = ptrtoint ptr %hvpll_stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 38, ptr %hvpll_stat, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret) #5
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ret, align 1, !annotation !269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hvpll_stat, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ret, ptr %buf9.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ret, align 1
  %20 = and i8 %19, 1
  %sext = sub nsw i8 0, %20
  %conv1 = sext i8 %sext to i16
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv1, ptr %signal, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hvpll_stat) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8295_standby(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %msg.i.i2 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i3 = alloca [2 x i8], align 2
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %buf.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  %conv.i.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %3, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx1.i, ptr %buf9.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  %storemerge.i = or i8 %18, 64
  store i8 %storemerge.i, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 196607, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %conv.i11.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i11.i, ptr %msg.i10.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i12.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %26 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap.i.i, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %28 = ptrtoint ptr %analog_demod_priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %analog_demod_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #5
  %30 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 12288, ptr %buf.i3, align 2
  %arrayidx1.i5 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i2) #5
  %31 = getelementptr inbounds i8, ptr %msg.i.i2, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %29, align 4
  %conv.i.i6 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i.i2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i6, ptr %msg.i.i2, align 4
  %flags.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i7 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i.i7, align 2
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %31, align 4
  %buf.i.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i3, ptr %buf.i.i8, align 4
  %arrayinit.element.i.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 1
  %39 = ptrtoint ptr %arrayinit.element.i.i9 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i6, ptr %arrayinit.element.i.i9, align 4
  %flags6.i.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i.i10 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i.i10, align 2
  %len7.i.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i.i11 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i.i11, align 4
  %buf9.i.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2, i32 1, i32 3
  %42 = ptrtoint ptr %buf9.i.i12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx1.i5, ptr %buf9.i.i12, align 4
  %adap.i.i13 = getelementptr inbounds %struct.tuner_i2c_props, ptr %29, i32 0, i32 1
  %43 = ptrtoint ptr %adap.i.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap.i.i13, align 4
  %call.i.i14 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i2, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i2) #5
  %45 = ptrtoint ptr %arrayidx1.i5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %arrayidx1.i5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #5
  %46 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %29, align 4
  %conv.i8.i = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i8.i, ptr %msg.i7.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i9.i, align 2
  %buf4.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %52 = ptrtoint ptr %buf4.i.i15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i3, ptr %buf4.i.i15, align 4
  %53 = ptrtoint ptr %adap.i.i13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap.i.i13, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8295_i2c_bridge(ptr nocapture noundef readonly %fe, i32 noundef %close) #0 align 64 {
entry:
  %msg.i32 = alloca %struct.i2c_msg, align 4
  %msg.i25 = alloca %struct.i2c_msg, align 4
  %msg.i20 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %close)
  %tobool.not = icmp eq i32 %close, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196607, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tda8295_i2c_bridge.enable, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @msleep(i32 noundef 20) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i20) #5
  %11 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 4
  %conv.i21 = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i21, ptr %msg.i20, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i22, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tda8295_i2c_bridge.disable, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i21, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 1
  %20 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 2
  %21 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 3
  %22 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), ptr %buf9.i, align 4
  %adap.i23 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %adap.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap.i23, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i20, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i20) #5
  %25 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  %26 = and i8 %25, -5
  store i8 %26, ptr getelementptr inbounds ([3 x i8], ptr @tda8295_i2c_bridge.buf, i32 0, i32 2), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25) #5
  %27 = getelementptr inbounds i8, ptr %msg.i25, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262143, ptr %27, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %conv.i26 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i26, ptr %msg.i25, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i27, align 2
  %buf4.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tda8295_i2c_bridge.buf, ptr %buf4.i29, align 4
  %34 = ptrtoint ptr %adap.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap.i23, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i25, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25) #5
  call void @msleep(i32 noundef 5) #5
  %36 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  %37 = or i8 %36, 4
  store i8 %37, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32) #5
  %38 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %38, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 4
  %conv.i33 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i33, ptr %msg.i32, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i34, align 2
  %buf4.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %44 = ptrtoint ptr %buf4.i36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @tda8295_i2c_bridge.disable, ptr %buf4.i36, align 4
  %45 = ptrtoint ptr %adap.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap.i23, align 4
  %call.i38 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i32, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda8295_set_video_std(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %msg.i7.i4 = alloca %struct.i2c_msg, align 4
  %msg.i.i5 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i6 = alloca [2 x i8], align 2
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf, align 1
  %tda8290_easy_mode = getelementptr inbounds %struct.tda8290_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tda8290_easy_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tda8290_easy_mode, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  %16 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %buf.i, align 2
  %arrayidx1.i = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %17, align 4
  %conv.i.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %19, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %27 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %29 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %30 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx1.i, ptr %buf9.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %17, i32 0, i32 1
  %31 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #5
  %34 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %17, align 4
  %conv.i8.i = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i8.i, ptr %msg.i7.i, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i9.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %41 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adap.i.i, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @msleep(i32 noundef 20) #5
  %43 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %analog_demod_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i6) #5
  %45 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 256, ptr %buf.i6, align 2
  %arrayidx1.i8 = getelementptr inbounds [2 x i8], ptr %buf.i6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i5) #5
  %46 = getelementptr inbounds i8, ptr %msg.i.i5, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %44, align 4
  %conv.i.i9 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i.i5 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i9, ptr %msg.i.i5, align 4
  %flags.i.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i10 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i10, align 2
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %46, align 4
  %buf.i.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i6, ptr %buf.i.i11, align 4
  %arrayinit.element.i.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 1
  %54 = ptrtoint ptr %arrayinit.element.i.i12 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i9, ptr %arrayinit.element.i.i12, align 4
  %flags6.i.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 1, i32 1
  %55 = ptrtoint ptr %flags6.i.i13 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags6.i.i13, align 2
  %len7.i.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 1, i32 2
  %56 = ptrtoint ptr %len7.i.i14 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %len7.i.i14, align 4
  %buf9.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i5, i32 1, i32 3
  %57 = ptrtoint ptr %buf9.i.i15 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx1.i8, ptr %buf9.i.i15, align 4
  %adap.i.i16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %44, i32 0, i32 1
  %58 = ptrtoint ptr %adap.i.i16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adap.i.i16, align 4
  %call.i.i17 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i5, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i5) #5
  %60 = ptrtoint ptr %arrayidx1.i8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx1.i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i4) #5
  %61 = getelementptr inbounds i8, ptr %msg.i7.i4, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %63 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %44, align 4
  %conv.i8.i18 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i7.i4 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i8.i18, ptr %msg.i7.i4, align 4
  %flags.i9.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i4, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i9.i19 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i9.i19, align 2
  %buf4.i.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i4, i32 0, i32 3
  %67 = ptrtoint ptr %buf4.i.i20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i6, ptr %buf4.i.i20, align 4
  %68 = ptrtoint ptr %adap.i.i16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adap.i.i16, align 4
  %call.i11.i21 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i7.i4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i6) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !184, !185, !186, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda8290.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda8290.c", i32 22, i32 1}
!5 = !{ptr @__param_deemphasis_50, !6, !"__param_deemphasis_50", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda8290.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_deemphasis_50type292, !6, !"__UNIQUE_ID_deemphasis_50type292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_deemphasis_50293, !9, !"__UNIQUE_ID_deemphasis_50293", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tda8290.c", i32 26, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda8290.c", i32 744, i32 29}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/tda8290.c", i32 773, i32 10}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda8290.c", i32 776, i32 10}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tda8290.c", i32 779, i32 10}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tda8290.c", i32 782, i32 10}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tda8290.c", i32 785, i32 10}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/tda8290.c", i32 788, i32 10}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/tda8290.c", i32 791, i32 10}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda8290.c", i32 794, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda8290.c", i32 799, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tda829x_attach._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @tda829x_attach._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_tda829x_attach, !35, !"__ksymtab_tda829x_attach", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda8290.c", i32 818, i32 1}
!36 = !{ptr @tda829x_probe.soft_reset, !37, !"soft_reset", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/tda8290.c", i32 827, i32 23}
!38 = !{ptr @tda829x_probe.easy_mode_b, !39, !"easy_mode_b", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tda8290.c", i32 828, i32 23}
!40 = !{ptr @tda829x_probe.easy_mode_g, !41, !"easy_mode_g", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda8290.c", i32 829, i32 23}
!42 = !{ptr @tda829x_probe.restore_9886, !43, !"restore_9886", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/tda8290.c", i32 830, i32 23}
!44 = !{ptr @tda829x_probe.addr_dto_lsb, !45, !"addr_dto_lsb", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/tda8290.c", i32 831, i32 23}
!46 = !{ptr @__ksymtab_tda829x_probe, !47, !"__ksymtab_tda829x_probe", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tda8290.c", i32 869, i32 1}
!48 = !{ptr @__UNIQUE_ID_description294, !49, !"__UNIQUE_ID_description294", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tda8290.c", i32 871, i32 1}
!50 = !{ptr @__UNIQUE_ID_author295, !51, !"__UNIQUE_ID_author295", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda8290.c", i32 872, i32 1}
!52 = !{ptr @__UNIQUE_ID_file296, !53, !"__UNIQUE_ID_file296", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tda8290.c", i32 873, i32 1}
!54 = !{ptr @__UNIQUE_ID_license297, !53, !"__UNIQUE_ID_license297", i1 false, i1 false}
!55 = !{ptr @debug, !56, !"debug", i1 false, i1 false}
!56 = !{!"../drivers/media/tuners/tda8290.c", i32 20, i32 12}
!57 = !{ptr @deemphasis_50, !58, !"deemphasis_50", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tda8290.c", i32 24, i32 12}
!59 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!60 = !{ptr @__param_str_deemphasis_50, !6, !"__param_str_deemphasis_50", i1 false, i1 false}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/tda8290.c", i32 669, i32 3}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tda8290_probe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @tda8290_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/tda8290.c", i32 676, i32 4}
!68 = !{ptr @tda8290_probe._entry.14, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tda8290_probe._entry_ptr.16, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tda8290_ops, !71, !"tda8290_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/tda8290.c", i32 714, i32 38}
!72 = !{ptr @tda8290_set_params.soft_reset, !73, !"soft_reset", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/tda8290.c", i32 169, i32 23}
!74 = !{ptr @tda8290_set_params.expert_mode, !75, !"expert_mode", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/tda8290.c", i32 171, i32 23}
!76 = !{ptr @tda8290_set_params.agc_out_on, !77, !"agc_out_on", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/tda8290.c", i32 172, i32 23}
!78 = !{ptr @tda8290_set_params.gainset_off, !79, !"gainset_off", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/tda8290.c", i32 173, i32 23}
!80 = !{ptr @tda8290_set_params.if_agc_spd, !81, !"if_agc_spd", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/tda8290.c", i32 174, i32 23}
!82 = !{ptr @tda8290_set_params.adc_head_6, !83, !"adc_head_6", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/tda8290.c", i32 175, i32 23}
!84 = !{ptr @tda8290_set_params.adc_head_9, !85, !"adc_head_9", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/tda8290.c", i32 176, i32 23}
!86 = !{ptr @tda8290_set_params.adc_head_12, !87, !"adc_head_12", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/tda8290.c", i32 177, i32 23}
!88 = !{ptr @tda8290_set_params.pll_bw_nom, !89, !"pll_bw_nom", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/tda8290.c", i32 178, i32 23}
!90 = !{ptr @tda8290_set_params.pll_bw_low, !91, !"pll_bw_low", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/tda8290.c", i32 179, i32 23}
!92 = !{ptr @tda8290_set_params.gainset_2, !93, !"gainset_2", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/tda8290.c", i32 180, i32 23}
!94 = !{ptr @tda8290_set_params.agc_rst_on, !95, !"agc_rst_on", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/tda8290.c", i32 181, i32 23}
!96 = !{ptr @tda8290_set_params.agc_rst_off, !97, !"agc_rst_off", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/tda8290.c", i32 182, i32 23}
!98 = !{ptr @tda8290_set_params.if_agc_set, !99, !"if_agc_set", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/tda8290.c", i32 183, i32 23}
!100 = !{ptr @tda8290_set_params.addr_adc_sat, !101, !"addr_adc_sat", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/tda8290.c", i32 184, i32 23}
!102 = !{ptr @tda8290_set_params.addr_agc_stat, !103, !"addr_agc_stat", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/tda8290.c", i32 185, i32 23}
!104 = !{ptr @tda8290_set_params.addr_pll_stat, !105, !"addr_pll_stat", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/tda8290.c", i32 186, i32 23}
!106 = !{ptr @tda8290_set_params.adc_sat, !107, !"adc_sat", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/tda8290.c", i32 187, i32 23}
!108 = !{ptr @tda8290_set_params.agc_stat, !109, !"agc_stat", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/tda8290.c", i32 187, i32 36}
!110 = !{ptr @tda8290_set_params.pll_stat, !111, !"pll_stat", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/tda8290.c", i32 188, i32 9}
!112 = !{ptr @.str.17, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/tuners/tda8290.c", i32 194, i32 3}
!114 = !{ptr @.str.18, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tda8290_set_params._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @tda8290_set_params._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/tda8290.c", i32 241, i32 4}
!119 = !{ptr @tda8290_set_params._entry.19, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tda8290_set_params._entry_ptr.21, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.23, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/tuners/tda8290.c", i32 244, i32 4}
!123 = !{ptr @tda8290_set_params._entry.22, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tda8290_set_params._entry_ptr.24, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.26, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/tuners/tda8290.c", i32 250, i32 3}
!127 = !{ptr @tda8290_set_params._entry.25, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @tda8290_set_params._entry_ptr.27, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.29, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/tuners/tda8290.c", i32 259, i32 4}
!131 = !{ptr @tda8290_set_params._entry.28, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @tda8290_set_params._entry_ptr.30, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.32, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/tuners/tda8290.c", i32 271, i32 5}
!135 = !{ptr @tda8290_set_params._entry.31, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @tda8290_set_params._entry_ptr.33, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/tuners/tda8290.c", i32 288, i32 4}
!139 = !{ptr @tda8290_set_params._entry.34, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @tda8290_set_params._entry_ptr.36, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/tuners/tda8290.c", i32 111, i32 10}
!143 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/tuners/tda8290.c", i32 114, i32 10}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/tuners/tda8290.c", i32 117, i32 10}
!147 = !{ptr @.str.40, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/tuners/tda8290.c", i32 120, i32 10}
!149 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/tuners/tda8290.c", i32 123, i32 10}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/tuners/tda8290.c", i32 126, i32 10}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/tuners/tda8290.c", i32 129, i32 10}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/tuners/tda8290.c", i32 132, i32 10}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/tuners/tda8290.c", i32 138, i32 3}
!159 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @set_audio._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @set_audio._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.48, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/tda8290.c", i32 140, i32 3}
!164 = !{ptr @set_audio._entry.47, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @set_audio._entry_ptr.49, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @fm_mode, !167, !"fm_mode", i1 false, i1 false}
!167 = !{!"../drivers/media/tuners/tda8290.c", i32 146, i32 3}
!168 = !{ptr @tda8290_standby.cb1, !169, !"cb1", i1 false, i1 false}
!169 = !{!"../drivers/media/tuners/tda8290.c", i32 459, i32 23}
!170 = !{ptr @tda8290_standby.tda8290_standby, !171, !"tda8290_standby", i1 false, i1 false}
!171 = !{!"../drivers/media/tuners/tda8290.c", i32 460, i32 23}
!172 = !{ptr @tda8290_standby.tda8290_agc_tri, !173, !"tda8290_agc_tri", i1 false, i1 false}
!173 = !{!"../drivers/media/tuners/tda8290.c", i32 461, i32 23}
!174 = !{ptr @tda8290_i2c_bridge.enable, !175, !"enable", i1 false, i1 false}
!175 = !{!"../drivers/media/tuners/tda8290.c", i32 54, i32 24}
!176 = !{ptr @tda8290_i2c_bridge.disable, !177, !"disable", i1 false, i1 false}
!177 = !{!"../drivers/media/tuners/tda8290.c", i32 55, i32 23}
!178 = !{ptr @.str.50, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/tuners/tda8290.c", i32 696, i32 3}
!180 = !{ptr @tda8295_probe._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tda8295_probe._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.52, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/tuners/tda8290.c", i32 703, i32 4}
!184 = !{ptr @tda8295_probe._entry.51, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tda8295_probe._entry_ptr.53, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.54, !183, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.55, !183, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tda8295_ops, !189, !"tda8295_ops", i1 false, i1 false}
!189 = !{!"../drivers/media/tuners/tda8290.c", i32 722, i32 38}
!190 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/tuners/tda8290.c", i32 405, i32 2}
!192 = !{ptr @.str.57, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @tda8295_set_params._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @tda8295_set_params._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.59, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/tuners/tda8290.c", i32 430, i32 3}
!197 = !{ptr @tda8295_set_params._entry.58, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @tda8295_set_params._entry_ptr.60, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.62, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/tuners/tda8290.c", i32 432, i32 3}
!201 = !{ptr @tda8295_set_params._entry.61, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @tda8295_set_params._entry_ptr.63, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @tda8295_i2c_bridge.enable, !204, !"enable", i1 false, i1 false}
!204 = !{!"../drivers/media/tuners/tda8290.c", i32 75, i32 24}
!205 = !{ptr @tda8295_i2c_bridge.disable, !206, !"disable", i1 false, i1 false}
!206 = !{!"../drivers/media/tuners/tda8290.c", i32 76, i32 23}
!207 = !{ptr @tda8295_i2c_bridge.buf, !208, !"buf", i1 false, i1 false}
!208 = !{!"../drivers/media/tuners/tda8290.c", i32 77, i32 23}
!209 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/tuners/tda8290.c", i32 610, i32 3}
!211 = !{ptr @.str.65, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @tda829x_find_tuner._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @tda829x_find_tuner._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.67, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/tuners/tda8290.c", i32 614, i32 3}
!216 = !{ptr @tda829x_find_tuner._entry.66, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tda829x_find_tuner._entry_ptr.68, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.70, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/tuners/tda8290.c", i32 624, i32 3}
!220 = !{ptr @tda829x_find_tuner._entry.69, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tda829x_find_tuner._entry_ptr.71, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.72, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/tuners/tda8290.c", i32 634, i32 3}
!224 = !{ptr @.str.73, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.75, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @tda829x_find_tuner._entry.74, !223, !"_entry", i1 false, i1 false}
!227 = !{ptr @tda829x_find_tuner._entry_ptr.76, !223, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.77, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/tuners/tda8290.c", i32 642, i32 3}
!230 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @tda829x_find_tuner._entry.79, !229, !"_entry", i1 false, i1 false}
!233 = !{ptr @tda829x_find_tuner._entry_ptr.81, !229, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @tda829x_tda18271_config, !235, !"tda829x_tda18271_config", i1 false, i1 false}
!235 = !{!"../drivers/media/tuners/tda8290.c", i32 564, i32 31}
!236 = !{ptr @tda8290_init_tuner.tda8275_init, !237, !"tda8275_init", i1 false, i1 false}
!237 = !{!"../drivers/media/tuners/tda8290.c", i32 530, i32 23}
!238 = !{ptr @tda8290_init_tuner.tda8275a_init, !239, !"tda8275a_init", i1 false, i1 false}
!239 = !{!"../drivers/media/tuners/tda8290.c", i32 533, i32 23}
!240 = !{ptr @tda8290_init_if.set_VS, !241, !"set_VS", i1 false, i1 false}
!241 = !{!"../drivers/media/tuners/tda8290.c", i32 486, i32 23}
!242 = !{ptr @tda8290_init_if.set_GP00_CF, !243, !"set_GP00_CF", i1 false, i1 false}
!243 = !{!"../drivers/media/tuners/tda8290.c", i32 487, i32 23}
!244 = !{ptr @tda8290_init_if.set_GP01_CF, !245, !"set_GP01_CF", i1 false, i1 false}
!245 = !{!"../drivers/media/tuners/tda8290.c", i32 488, i32 23}
!246 = !{ptr @tda8295_init_if.set_adc_ctl, !247, !"set_adc_ctl", i1 false, i1 false}
!247 = !{!"../drivers/media/tuners/tda8290.c", i32 502, i32 23}
!248 = !{ptr @tda8295_init_if.set_adc_ctl2, !249, !"set_adc_ctl2", i1 false, i1 false}
!249 = !{!"../drivers/media/tuners/tda8290.c", i32 503, i32 23}
!250 = !{ptr @tda8295_init_if.set_pll_reg6, !251, !"set_pll_reg6", i1 false, i1 false}
!251 = !{!"../drivers/media/tuners/tda8290.c", i32 504, i32 23}
!252 = !{ptr @tda8295_init_if.set_pll_reg0, !253, !"set_pll_reg0", i1 false, i1 false}
!253 = !{!"../drivers/media/tuners/tda8290.c", i32 505, i32 23}
!254 = !{ptr @tda8295_init_if.set_pll_reg7, !255, !"set_pll_reg7", i1 false, i1 false}
!255 = !{!"../drivers/media/tuners/tda8290.c", i32 506, i32 23}
!256 = !{ptr @tda8295_init_if.set_pll_reg10, !257, !"set_pll_reg10", i1 false, i1 false}
!257 = !{!"../drivers/media/tuners/tda8290.c", i32 507, i32 23}
!258 = !{ptr @tda8295_init_if.set_gpio_reg0, !259, !"set_gpio_reg0", i1 false, i1 false}
!259 = !{!"../drivers/media/tuners/tda8290.c", i32 508, i32 23}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{!"auto-init"}
