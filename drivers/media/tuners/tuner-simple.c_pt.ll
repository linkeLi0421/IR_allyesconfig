; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tuner-simple.c_pt.bc'
source_filename = "../drivers/media/tuners/tuner-simple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+simple_tuner_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_simple_tuner_attach\09\09\09\09"
module asm "\09.long\09__crc_simple_tuner_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_tuner_attach\22\09\09\09\09\09"
module asm "__kstrtabns_simple_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tunertype = type { ptr, i32, ptr, i16, i16, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tuner_simple_priv = type { i32, i16, %struct.tuner_i2c_props, %struct.list_head, i32, ptr, i32, i32, i8 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.tuner_params = type { i32, i32, i16, i16, i32, ptr }
%struct.tuner_range = type { i16, i8, i8 }

@__param_str_debug = internal constant [19 x i8] c"tuner_simple.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [32 x i8] c"tuner_simple.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [54 x i8] c"tuner_simple.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_offset = internal constant [20 x i8] c"tuner_simple.offset\00", align 1
@offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_offset = internal constant %struct.kernel_param { ptr @__param_str_offset, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.76 { ptr @offset } }, section "__param", align 4
@__UNIQUE_ID_offsettype294 = internal constant [33 x i8] c"tuner_simple.parmtype=offset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_offset295 = internal constant [63 x i8] c"tuner_simple.parm=offset:Allows to specify an offset for tuner\00", section ".modinfo", align 1
@__param_str_atv_input = internal constant [23 x i8] c"tuner_simple.atv_input\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_atv_input = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @atv_input }, align 4
@__param_atv_input = internal constant %struct.kernel_param { ptr @__param_str_atv_input, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_atv_input } }, section "__param", align 4
@__UNIQUE_ID_atv_inputtype296 = internal constant [45 x i8] c"tuner_simple.parmtype=atv_input:array of int\00", section ".modinfo", align 1
@__param_str_dtv_input = internal constant [23 x i8] c"tuner_simple.dtv_input\00", align 1
@__param_arr_dtv_input = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @dtv_input }, align 4
@__param_dtv_input = internal constant %struct.kernel_param { ptr @__param_str_dtv_input, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_dtv_input } }, section "__param", align 4
@__UNIQUE_ID_dtv_inputtype297 = internal constant [45 x i8] c"tuner_simple.parmtype=dtv_input:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_atv_input298 = internal constant [67 x i8] c"tuner_simple.parm=atv_input:specify atv rf input, 0 for autoselect\00", section ".modinfo", align 1
@__UNIQUE_ID_dtv_input299 = internal constant [67 x i8] c"tuner_simple.parm=dtv_input:specify dtv rf input, 0 for autoselect\00", section ".modinfo", align 1
@tuner_count = external dso_local local_unnamed_addr constant i32, align 4
@simple_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: invalid tuner type: %d (max: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/tuners/tuner-simple.c\00", [60 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr = internal global ptr @simple_tuner_attach._entry, section ".printk_index", align 4
@simple_tuner_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014tuner-simple %d-%04x: unable to probe %s, proceeding anyway.\00", [33 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.5 = internal global ptr @simple_tuner_attach._entry.3, section ".printk_index", align 4
@tuners = external dso_local global [0 x %struct.tunertype], align 4
@tuner_simple_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tuner_simple_list_mutex, i64 52), ptr getelementptr (i8, ptr @tuner_simple_list_mutex, i64 52) }, ptr @tuner_simple_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.8 = internal global ptr @simple_tuner_attach._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tuner-simple\00", [19 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.12 = internal global ptr @simple_tuner_attach._entry.10, section ".printk_index", align 4
@simple_devcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@simple_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @simple_release, ptr @simple_init, ptr @simple_sleep, ptr null, ptr null, ptr @simple_dvb_set_params, ptr @simple_set_params, ptr null, ptr @simple_get_frequency, ptr @simple_get_bandwidth, ptr null, ptr @simple_get_status, ptr @simple_get_rf_strength, ptr null, ptr @simple_dvb_calc_regs, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s %d-%04x: couldn't set type to %d. Using %d (%s) instead\0A\00", [34 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.15 = internal global ptr @simple_tuner_attach._entry.13, section ".printk_index", align 4
@simple_tuner_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: type set to %d (%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.18 = internal global ptr @simple_tuner_attach._entry.16, section ".printk_index", align 4
@atv_input = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@dtv_input = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@simple_tuner_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s %d-%04x: tuner %d atv rf input will be autoselected\0A\00", [38 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.21 = internal global ptr @simple_tuner_attach._entry.19, section ".printk_index", align 4
@simple_tuner_attach._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016%s %d-%04x: tuner %d atv rf input will be set to input %d (insmod option)\0A\00", [51 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.24 = internal global ptr @simple_tuner_attach._entry.22, section ".printk_index", align 4
@simple_tuner_attach._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s %d-%04x: tuner %d dtv rf input will be autoselected\0A\00", [38 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.27 = internal global ptr @simple_tuner_attach._entry.25, section ".printk_index", align 4
@simple_tuner_attach._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016%s %d-%04x: tuner %d dtv rf input will be set to input %d (insmod option)\0A\00", [51 x i8] zeroinitializer }, align 32
@simple_tuner_attach._entry_ptr.30 = internal global ptr @simple_tuner_attach._entry.28, section ".printk_index", align 4
@__kstrtab_simple_tuner_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_tuner_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_tuner_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_tuner_attach to i32), ptr @__kstrtab_simple_tuner_attach, ptr @__kstrtabns_simple_tuner_attach }, section "___ksymtab_gpl+simple_tuner_attach", align 4
@__UNIQUE_ID_description300 = internal constant [67 x i8] c"tuner_simple.description=Simple 4-control-bytes style tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [61 x i8] c"tuner_simple.author=Ralph Metzler, Gerd Knorr, Gunther Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [52 x i8] c"tuner_simple.file=drivers/media/tuners/tuner-simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"tuner_simple.license=GPL\00", section ".modinfo", align 1
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tuner_simple_list_mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tuner_simple_list_mutex\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@simple_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"simple_release\00", [17 x i8] zeroinitializer }, align 32
@simple_release._entry_ptr = internal global ptr @simple_release._entry, section ".printk_index", align 4
@simple_dvb_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013%s %d-%04x: attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"simple_dvb_configure\00", [43 x i8] zeroinitializer }, align 32
@simple_dvb_configure._entry_ptr = internal global ptr @simple_dvb_configure._entry, section ".printk_index", align 4
@simple_dvb_configure._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s %d-%04x: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@simple_dvb_configure._entry_ptr.39 = internal global ptr @simple_dvb_configure._entry.37, section ".printk_index", align 4
@simple_tuner_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s %d-%04x: desired params (%s) undefined for tuner %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_params\00", [44 x i8] zeroinitializer }, align 32
@simple_tuner_params._entry_ptr = internal global ptr @simple_tuner_params._entry, section ".printk_index", align 4
@simple_tuner_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: using tuner params #%d (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@simple_tuner_params._entry_ptr.44 = internal global ptr @simple_tuner_params._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pal\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"secam\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ntsc\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@simple_config_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s %d-%04x: frequency out of range (%d > %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"simple_config_lookup\00", [43 x i8] zeroinitializer }, align 32
@simple_config_lookup._entry_ptr = internal global ptr @simple_config_lookup._entry, section ".printk_index", align 4
@simple_config_lookup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s %d-%04x: freq = %d.%02d (%d), range = %d, config = 0x%02x, cb = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@simple_config_lookup._entry_ptr.55 = internal global ptr @simple_config_lookup._entry.53, section ".printk_index", align 4
@simple_set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s %d-%04x: Unsupported radio_if value %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"simple_set_radio_freq\00", [42 x i8] zeroinitializer }, align 32
@simple_set_radio_freq._entry_ptr = internal global ptr @simple_set_radio_freq._entry, section ".printk_index", align 4
@simple_set_radio_freq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s %d-%04x: radio 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@simple_set_radio_freq._entry_ptr.60 = internal global ptr @simple_set_radio_freq._entry.58, section ".printk_index", align 4
@simple_set_radio_freq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 4)\0A\00", [43 x i8] zeroinitializer }, align 32
@simple_set_radio_freq._entry_ptr.63 = internal global ptr @simple_set_radio_freq._entry.61, section ".printk_index", align 4
@simple_set_radio_freq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_set_radio_freq._entry_ptr.65 = internal global ptr @simple_set_radio_freq._entry.64, section ".printk_index", align 4
@simple_radio_bandswitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s %d-%04x: This tuner doesn't have FM. Most cards have a TEA5767 for FM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"simple_radio_bandswitch\00", [40 x i8] zeroinitializer }, align 32
@simple_radio_bandswitch._entry_ptr = internal global ptr @simple_radio_bandswitch._entry, section ".printk_index", align 4
@simple_radio_bandswitch._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: This tuner doesn't have FM\0A\00", [54 x i8] zeroinitializer }, align 32
@simple_radio_bandswitch._entry_ptr.70 = internal global ptr @simple_radio_bandswitch._entry.68, section ".printk_index", align 4
@simple_set_tv_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017%s %d-%04x: Freq= %d.%02d MHz, V_IF=%d.%02d MHz, Offset=%d.%02d MHz, div=%0d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"simple_set_tv_freq\00", [45 x i8] zeroinitializer }, align 32
@simple_set_tv_freq._entry_ptr = internal global ptr @simple_set_tv_freq._entry, section ".printk_index", align 4
@simple_set_tv_freq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: tv 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@simple_set_tv_freq._entry_ptr.75 = internal global ptr @simple_set_tv_freq._entry.73, section ".printk_index", align 4
@simple_set_tv_freq._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.72, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_set_tv_freq._entry_ptr.77 = internal global ptr @simple_set_tv_freq._entry.76, section ".printk_index", align 4
@simple_std_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 2)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"simple_std_setup\00", [47 x i8] zeroinitializer }, align 32
@simple_std_setup._entry_ptr = internal global ptr @simple_std_setup._entry, section ".printk_index", align 4
@simple_std_setup._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_std_setup._entry_ptr.81 = internal global ptr @simple_std_setup._entry.80, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@simple_post_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s %d-%04x: i2c i/o read error: rc == %d (should be 1)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"simple_post_tune\00", [47 x i8] zeroinitializer }, align 32
@simple_post_tune._entry_ptr = internal global ptr @simple_post_tune._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@simple_post_tune._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.83, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_post_tune._entry_ptr.85 = internal global ptr @simple_post_tune._entry.84, section ".printk_index", align 4
@simple_post_tune._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.83, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_post_tune._entry_ptr.87 = internal global ptr @simple_post_tune._entry.86, section ".printk_index", align 4
@simple_set_aux_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s %d-%04x: setting aux byte: 0x%02x 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_set_aux_byte\00", [44 x i8] zeroinitializer }, align 32
@simple_set_aux_byte._entry_ptr = internal global ptr @simple_set_aux_byte._entry, section ".printk_index", align 4
@simple_set_aux_byte._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.89, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_set_aux_byte._entry_ptr.91 = internal global ptr @simple_set_aux_byte._entry.90, section ".printk_index", align 4
@simple_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d-%04x: AFC Status: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simple_get_status\00", [46 x i8] zeroinitializer }, align 32
@simple_get_status._entry_ptr = internal global ptr @simple_get_status._entry, section ".printk_index", align 4
@simple_get_rf_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"simple_get_rf_strength\00", [41 x i8] zeroinitializer }, align 32
@simple_get_rf_strength._entry_ptr = internal global ptr @simple_get_rf_strength._entry, section ".printk_index", align 4
@switch.table.simple_set_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 171200, i32 532800, i32 660800], [20 x i8] zeroinitializer }, align 32
@switch.table.simple_tuner_params = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@switch.table.simple_tuner_params.96 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [17 x i64] [i64 15, i64 32, i64 28, i64 38, i64 43, i64 47, i64 51, i64 59, i64 60, i64 61, i64 63, i64 69, i64 77, i64 78, i64 79, i64 80, i64 85]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 22, i64 24, i64 42, i64 49, i64 68]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 42, i64 68]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 49, i64 64, i64 80]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [8 x i64] [i64 6, i64 32, i64 38, i64 43, i64 47, i64 51, i64 77, i64 79]
@__sancov_gen_cov_switch_values.109 = internal global [7 x i64] [i64 5, i64 32, i64 42, i64 63, i64 67, i64 68, i64 78]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 42, i64 68]
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 17, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 24, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1057, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1077, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [24 x i8] c"tuner_simple_list_mutex\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 105, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1087, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"simple_devcount\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 22, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"simple_tuner_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1035, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1113, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1116, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"atv_input\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 28, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"dtv_input\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 30, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1122, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1125, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1128, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1131, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 104, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1014, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 861, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 881, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 248, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 253, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 214, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 217, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 220, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 223, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 226, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 229, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 272, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 279, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 696, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 723, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 753, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 762, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 502, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 528, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 588, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 652, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 657, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 407, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 411, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 466, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 481, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 486, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 431, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 435, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 184, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private constant [39 x i8] c"../drivers/media/tuners/tuner-simple.c\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 201, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [31 x i8] c"switch.table.simple_set_params\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [33 x i8] c"switch.table.simple_tuner_params\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [36 x i8] c"switch.table.simple_tuner_params.96\00", align 1
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_atv_input298, ptr @__UNIQUE_ID_atv_inputtype296, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_dtv_input299, ptr @__UNIQUE_ID_dtv_inputtype297, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__UNIQUE_ID_offset295, ptr @__UNIQUE_ID_offsettype294, ptr @__ksymtab_simple_tuner_attach, ptr @__param_atv_input, ptr @__param_debug, ptr @__param_dtv_input, ptr @__param_offset, ptr @simple_config_lookup._entry, ptr @simple_config_lookup._entry.53, ptr @simple_config_lookup._entry_ptr, ptr @simple_config_lookup._entry_ptr.55, ptr @simple_dvb_configure._entry, ptr @simple_dvb_configure._entry.37, ptr @simple_dvb_configure._entry_ptr, ptr @simple_dvb_configure._entry_ptr.39, ptr @simple_get_rf_strength._entry, ptr @simple_get_rf_strength._entry_ptr, ptr @simple_get_status._entry, ptr @simple_get_status._entry_ptr, ptr @simple_post_tune._entry, ptr @simple_post_tune._entry.84, ptr @simple_post_tune._entry.86, ptr @simple_post_tune._entry_ptr, ptr @simple_post_tune._entry_ptr.85, ptr @simple_post_tune._entry_ptr.87, ptr @simple_radio_bandswitch._entry, ptr @simple_radio_bandswitch._entry.68, ptr @simple_radio_bandswitch._entry_ptr, ptr @simple_radio_bandswitch._entry_ptr.70, ptr @simple_release._entry, ptr @simple_release._entry_ptr, ptr @simple_set_aux_byte._entry, ptr @simple_set_aux_byte._entry.90, ptr @simple_set_aux_byte._entry_ptr, ptr @simple_set_aux_byte._entry_ptr.91, ptr @simple_set_radio_freq._entry, ptr @simple_set_radio_freq._entry.58, ptr @simple_set_radio_freq._entry.61, ptr @simple_set_radio_freq._entry.64, ptr @simple_set_radio_freq._entry_ptr, ptr @simple_set_radio_freq._entry_ptr.60, ptr @simple_set_radio_freq._entry_ptr.63, ptr @simple_set_radio_freq._entry_ptr.65, ptr @simple_set_tv_freq._entry, ptr @simple_set_tv_freq._entry.73, ptr @simple_set_tv_freq._entry.76, ptr @simple_set_tv_freq._entry_ptr, ptr @simple_set_tv_freq._entry_ptr.75, ptr @simple_set_tv_freq._entry_ptr.77, ptr @simple_std_setup._entry, ptr @simple_std_setup._entry.80, ptr @simple_std_setup._entry_ptr, ptr @simple_std_setup._entry_ptr.81, ptr @simple_tuner_attach._entry, ptr @simple_tuner_attach._entry.10, ptr @simple_tuner_attach._entry.13, ptr @simple_tuner_attach._entry.16, ptr @simple_tuner_attach._entry.19, ptr @simple_tuner_attach._entry.22, ptr @simple_tuner_attach._entry.25, ptr @simple_tuner_attach._entry.28, ptr @simple_tuner_attach._entry.3, ptr @simple_tuner_attach._entry.6, ptr @simple_tuner_attach._entry_ptr, ptr @simple_tuner_attach._entry_ptr.12, ptr @simple_tuner_attach._entry_ptr.15, ptr @simple_tuner_attach._entry_ptr.18, ptr @simple_tuner_attach._entry_ptr.21, ptr @simple_tuner_attach._entry_ptr.24, ptr @simple_tuner_attach._entry_ptr.27, ptr @simple_tuner_attach._entry_ptr.30, ptr @simple_tuner_attach._entry_ptr.5, ptr @simple_tuner_attach._entry_ptr.8, ptr @simple_tuner_params._entry, ptr @simple_tuner_params._entry.42, ptr @simple_tuner_params._entry_ptr, ptr @simple_tuner_params._entry_ptr.44, ptr @debug, ptr @offset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @tuner_simple_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @simple_devcount, ptr @simple_tuner_ops, ptr @.str.14, ptr @.str.17, ptr @atv_input, ptr @dtv_input, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.88, ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @switch.table.simple_set_params, ptr @switch.table.simple_tuner_params, ptr @switch.table.simple_tuner_params.96], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_simple_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_devcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atv_input to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv_input to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_attach._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_dvb_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_dvb_configure._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_tuner_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_config_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_config_lookup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_radio_freq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_radio_freq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_radio_freq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_radio_bandswitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_radio_bandswitch._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_tv_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_tv_freq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_tv_freq._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_std_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_std_setup._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_post_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_post_tune._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_post_tune._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_aux_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_set_aux_byte._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_get_rf_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.simple_set_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.simple_tuner_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.simple_tuner_params.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @simple_tuner_attach(ptr noundef %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr, i32 noundef %type) #0 align 64 {
entry:
  %b = alloca [1 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tuner_count to i32))
  %0 = load i32, ptr @tuner_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %type)
  %cmp.not = icmp ugt i32 %0, %type
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %0, -1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %type, i32 noundef %sub) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq ptr %i2c_adap, null
  br i1 %cmp1.not, label %if.end.if.end28_crit_edge, label %if.then2

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #7
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %b, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %conv = zext i8 %i2c_addr to i16
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b, ptr %buf, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then2.if.end7_crit_edge, label %if.then3

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 %9(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then2.if.end7_crit_edge
  %call8 = call i32 @i2c_transfer(ptr noundef nonnull %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 1
  br i1 %cmp9.not, label %if.end7.if.end19_crit_edge, label %do.end14

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %10 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr.i, align 4
  %conv17 = zext i8 %i2c_addr to i32
  %arrayidx = getelementptr [0 x %struct.tunertype], ptr @tuners, i32 0, i32 %type
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %conv17, ptr noundef %13) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %if.end7.if.end19_crit_edge
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end19.if.end27_crit_edge, label %if.then23

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 %15(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end19.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #7
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end.if.end28_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @tuner_simple_list_mutex, i32 noundef 0) #7
  %.pn465 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp30.not466 = icmp eq ptr %.pn465, @hybrid_tuner_instance_list
  br i1 %cmp30.not466, label %if.end28.if.then81_crit_edge, label %for.body.lr.ph

if.end28.if.then81_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

for.body.lr.ph:                                   ; preds = %if.end28
  %nr.i444 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn467 = phi ptr [ %.pn465, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i2c_props = getelementptr i8, ptr %.pn467, i32 -16
  %adap = getelementptr i8, ptr %.pn467, i32 -12
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true34

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true
  %nr.i443 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %nr.i443 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr.i443, align 4
  %20 = ptrtoint ptr %nr.i444 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i444, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp39 = icmp eq i32 %19, %21
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %22 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_props, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %i2c_addr)
  %cmp46 = icmp eq i8 %23, %i2c_addr
  br i1 %cmp46, label %for.end, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true41.for.inc_crit_edge, %land.lhs.true34.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn467 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn467, align 4
  %cmp30.not = icmp eq ptr %.pn, @hybrid_tuner_instance_list
  br i1 %cmp30.not, label %for.inc.if.then81_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then81_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

for.end:                                          ; preds = %land.lhs.true41
  %priv.0.le = getelementptr i8, ptr %.pn467, i32 -24
  %name56 = getelementptr i8, ptr %.pn467, i32 -4
  %25 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name56, align 4
  %conv65 = zext i8 %i2c_addr to i32
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %26, i32 noundef %19, i32 noundef %conv65) #10
  %count = getelementptr i8, ptr %.pn467, i32 -8
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp79 = icmp eq i32 %inc, 0
  br i1 %cmp79, label %for.end.if.then81_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fail

for.end.if.then81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.then81:                                        ; preds = %for.end.if.then81_crit_edge, %for.inc.if.then81_crit_edge, %if.end28.if.then81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 52) #11
  %tobool83.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool83.not, label %if.then81.sw.default_crit_edge, label %if.end85

if.then81.sw.default_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.end85:                                         ; preds = %if.then81
  %i2c_props86 = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %i2c_props86 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %i2c_addr, ptr %i2c_props86, align 8
  %adap89 = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %adap89 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %i2c_adap, ptr %adap89, align 4
  %name91 = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %name91 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.9, ptr %name91, align 4
  br i1 %cmp1.not, label %if.end85.cond.end108_crit_edge, label %cond.true103

if.end85.cond.end108_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end108

cond.true103:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i446 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i446 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i446, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.true103, %if.end85.cond.end108_crit_edge
  %cond109 = phi i32 [ %34, %cond.true103 ], [ -1, %if.end85.cond.end108_crit_edge ]
  %conv112 = zext i8 %i2c_addr to i32
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %cond109, i32 noundef %conv112) #10
  %hybrid_tuner_instance_list118 = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 3
  %35 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list118, ptr noundef %35, ptr noundef nonnull @hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end108.list_add_tail.exit_crit_edge

cond.end108.list_add_tail.exit_crit_edge:         ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %hybrid_tuner_instance_list118, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %36 = ptrtoint ptr %hybrid_tuner_instance_list118 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list118, align 8
  %prev3.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %hybrid_tuner_instance_list118, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end108.list_add_tail.exit_crit_edge
  %count120 = getelementptr inbounds %struct.tuner_simple_priv, ptr %call7.i.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %count120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count120, align 8
  %inc121 = add i32 %40, 1
  store i32 %inc121, ptr %count120, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc121, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0.le, %for.end.__fail_crit_edge ]
  %41 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb126
  ]

__fail.sw.default_crit_edge:                      ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #7
  br label %cleanup

sw.bb126:                                         ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %42 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %priv.1, ptr %tuner_priv, align 4
  %type127 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1, i32 0, i32 4
  %43 = ptrtoint ptr %type127 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %type, ptr %type127, align 4
  %arrayidx128 = getelementptr [0 x %struct.tunertype], ptr @tuners, i32 0, i32 %type
  %tun = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1, i32 0, i32 5
  %44 = ptrtoint ptr %tun to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx128, ptr %tun, align 4
  %45 = load i32, ptr @simple_devcount, align 4
  %inc129 = add i32 %45, 1
  store i32 %inc129, ptr @simple_devcount, align 4
  %46 = ptrtoint ptr %priv.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %priv.1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %__fail.sw.default_crit_edge, %if.then81.sw.default_crit_edge
  %priv.1457 = phi ptr [ %priv.1, %__fail.sw.default_crit_edge ], [ null, %if.then81.sw.default_crit_edge ]
  %tuner_priv130 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %47 = ptrtoint ptr %tuner_priv130 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %priv.1457, ptr %tuner_priv130, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb126
  %priv.1458 = phi ptr [ %priv.1457, %sw.default ], [ %priv.1, %sw.bb126 ]
  call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #7
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %48 = call ptr @memcpy(ptr %tuner_ops, ptr @simple_tuner_ops, i32 220)
  %type132 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 4
  %49 = ptrtoint ptr %type132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %type)
  %cmp133.not = icmp eq i32 %50, %type
  %i2c_props171 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2
  %name172 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %name172 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name172, align 4
  %adap174 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %adap174 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap174, align 4
  %tobool175.not = icmp eq ptr %54, null
  br i1 %cmp133.not, label %do.end169, label %do.end140

do.end140:                                        ; preds = %sw.epilog
  br i1 %tobool175.not, label %do.end140.cond.end152_crit_edge, label %cond.true147

do.end140.cond.end152_crit_edge:                  ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end152

cond.true147:                                     ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i447 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %nr.i447 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr.i447, align 4
  br label %cond.end152

cond.end152:                                      ; preds = %cond.true147, %do.end140.cond.end152_crit_edge
  %cond153 = phi i32 [ %56, %cond.true147 ], [ -1, %do.end140.cond.end152_crit_edge ]
  %57 = ptrtoint ptr %i2c_props171 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i2c_props171, align 4
  %conv156 = zext i8 %58 to i32
  %tun158 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 5
  %59 = ptrtoint ptr %tun158 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tun158, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %52, i32 noundef %cond153, i32 noundef %conv156, i32 noundef %type, i32 noundef %50, ptr noundef %62) #10
  br label %if.end194

do.end169:                                        ; preds = %sw.epilog
  br i1 %tobool175.not, label %do.end169.cond.end181_crit_edge, label %cond.true176

do.end169.cond.end181_crit_edge:                  ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end181

cond.true176:                                     ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i448 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %63 = ptrtoint ptr %nr.i448 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i448, align 4
  br label %cond.end181

cond.end181:                                      ; preds = %cond.true176, %do.end169.cond.end181_crit_edge
  %cond182 = phi i32 [ %64, %cond.true176 ], [ -1, %do.end169.cond.end181_crit_edge ]
  %65 = ptrtoint ptr %i2c_props171 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %i2c_props171, align 4
  %conv185 = zext i8 %66 to i32
  %tun187 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 5
  %67 = ptrtoint ptr %tun187 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tun187, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %52, i32 noundef %cond182, i32 noundef %conv185, i32 noundef %type, ptr noundef %70) #10
  br label %if.end194

if.end194:                                        ; preds = %cond.end181, %cond.end152
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool195.not = icmp eq i32 %71, 0
  br i1 %tobool195.not, label %lor.lhs.false, label %if.end194.if.then205_crit_edge

if.end194.if.then205_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then205

lor.lhs.false:                                    ; preds = %if.end194
  %72 = ptrtoint ptr %priv.1458 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %priv.1458, align 4
  %arrayidx197 = getelementptr [64 x i32], ptr @atv_input, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp198.not = icmp eq i32 %75, 0
  br i1 %cmp198.not, label %lor.lhs.false200, label %lor.lhs.false.if.then205_crit_edge

lor.lhs.false.if.then205_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then205

lor.lhs.false200:                                 ; preds = %lor.lhs.false
  %arrayidx202 = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %73
  %76 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp203.not = icmp eq i32 %77, 0
  br i1 %cmp203.not, label %lor.lhs.false200.if.end332_crit_edge, label %lor.lhs.false200.if.then205_crit_edge

lor.lhs.false200.if.then205_crit_edge:            ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then205

lor.lhs.false200.if.end332_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end332

if.then205:                                       ; preds = %lor.lhs.false200.if.then205_crit_edge, %lor.lhs.false.if.then205_crit_edge, %if.end194.if.then205_crit_edge
  %78 = ptrtoint ptr %priv.1458 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %priv.1458, align 4
  %arrayidx207 = getelementptr [64 x i32], ptr @atv_input, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp208 = icmp eq i32 %81, 0
  %i2c_props217 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2
  %name218 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %name218 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name218, align 4
  %adap220 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %adap220 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adap220, align 4
  %tobool221.not = icmp eq ptr %85, null
  br i1 %cmp208, label %do.end215, label %do.end243

do.end215:                                        ; preds = %if.then205
  br i1 %tobool221.not, label %do.end215.cond.end227_crit_edge, label %cond.true222

do.end215.cond.end227_crit_edge:                  ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end227

cond.true222:                                     ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i449 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %nr.i449 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr.i449, align 4
  br label %cond.end227

cond.end227:                                      ; preds = %cond.true222, %do.end215.cond.end227_crit_edge
  %cond228 = phi i32 [ %87, %cond.true222 ], [ -1, %do.end215.cond.end227_crit_edge ]
  %88 = ptrtoint ptr %i2c_props217 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %i2c_props217, align 4
  %conv231 = zext i8 %89 to i32
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %83, i32 noundef %cond228, i32 noundef %conv231, i32 noundef %79) #10
  br label %if.end268

do.end243:                                        ; preds = %if.then205
  br i1 %tobool221.not, label %do.end243.cond.end255_crit_edge, label %cond.true250

do.end243.cond.end255_crit_edge:                  ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end255

cond.true250:                                     ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i450 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 11
  %90 = ptrtoint ptr %nr.i450 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr.i450, align 4
  br label %cond.end255

cond.end255:                                      ; preds = %cond.true250, %do.end243.cond.end255_crit_edge
  %cond256 = phi i32 [ %91, %cond.true250 ], [ -1, %do.end243.cond.end255_crit_edge ]
  %92 = ptrtoint ptr %i2c_props217 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_props217, align 4
  %conv259 = zext i8 %93 to i32
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %83, i32 noundef %cond256, i32 noundef %conv259, i32 noundef %79, i32 noundef %81) #10
  br label %if.end268

if.end268:                                        ; preds = %cond.end255, %cond.end227
  %94 = ptrtoint ptr %priv.1458 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %priv.1458, align 4
  %arrayidx270 = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp271 = icmp eq i32 %97, 0
  %i2c_props280 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2
  %name281 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %name281 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name281, align 4
  %adap283 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %adap283 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adap283, align 4
  %tobool284.not = icmp eq ptr %101, null
  br i1 %cmp271, label %do.end278, label %do.end306

do.end278:                                        ; preds = %if.end268
  br i1 %tobool284.not, label %do.end278.cond.end290_crit_edge, label %cond.true285

do.end278.cond.end290_crit_edge:                  ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end290

cond.true285:                                     ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i451 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %nr.i451 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr.i451, align 4
  br label %cond.end290

cond.end290:                                      ; preds = %cond.true285, %do.end278.cond.end290_crit_edge
  %cond291 = phi i32 [ %103, %cond.true285 ], [ -1, %do.end278.cond.end290_crit_edge ]
  %104 = ptrtoint ptr %i2c_props280 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_props280, align 4
  %conv294 = zext i8 %105 to i32
  %call296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %99, i32 noundef %cond291, i32 noundef %conv294, i32 noundef %95) #10
  br label %if.end332

do.end306:                                        ; preds = %if.end268
  br i1 %tobool284.not, label %do.end306.cond.end318_crit_edge, label %cond.true313

do.end306.cond.end318_crit_edge:                  ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end318

cond.true313:                                     ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i452 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 11
  %106 = ptrtoint ptr %nr.i452 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nr.i452, align 4
  br label %cond.end318

cond.end318:                                      ; preds = %cond.true313, %do.end306.cond.end318_crit_edge
  %cond319 = phi i32 [ %107, %cond.true313 ], [ -1, %do.end306.cond.end318_crit_edge ]
  %108 = ptrtoint ptr %i2c_props280 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %i2c_props280, align 4
  %conv322 = zext i8 %109 to i32
  %call326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %99, i32 noundef %cond319, i32 noundef %conv322, i32 noundef %95, i32 noundef %97) #10
  br label %if.end332

if.end332:                                        ; preds = %cond.end318, %cond.end290, %lor.lhs.false200.if.end332_crit_edge
  %tun337 = getelementptr inbounds %struct.tuner_simple_priv, ptr %priv.1458, i32 0, i32 5
  %110 = ptrtoint ptr %tun337 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tun337, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call339 = call i32 @strscpy(ptr noundef %tuner_ops, ptr noundef %113, i32 noundef 128) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end332, %sw.bb, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %fe, %if.end332 ], [ null, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tuner_simple_list_mutex, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %count = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %5, i32 noundef %cond, i32 noundef %conv) #10
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end21

if.end21:                                         ; preds = %list_del.exit, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #7
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_init(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end:                                           ; preds = %entry
  %tun = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tun, align 4
  %initdata = getelementptr inbounds %struct.tunertype, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %initdata, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then1

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then1:                                         ; preds = %if.end
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then1.if.end6_crit_edge, label %if.then3

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %9(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then1.if.end6_crit_edge
  %10 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tun, align 4
  %initdata9 = getelementptr inbounds %struct.tunertype, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %initdata9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %initdata9, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_props, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %conv3.i = zext i8 %15 to i16
  store i16 %conv3.i, ptr %16, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %buf4.i, align 4
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i, i32 %conv, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tun, align 4
  %initdata14 = getelementptr inbounds %struct.tunertype, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %initdata14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %initdata14, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv16 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.call.i, i32 %conv16)
  %cmp17.not = icmp eq i32 %len.call.i, %conv16
  br i1 %cmp17.not, label %if.end6.if.end21_crit_edge, label %if.end6.cleanup22_crit_edge

if.end6.cleanup22_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.end6.if.end21_crit_edge, %if.end.if.end21_crit_edge
  br label %cleanup22

cleanup22:                                        ; preds = %if.end21, %if.end6.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ 0, %if.end21 ], [ %len.call.i, %if.end6.cleanup22_crit_edge ], [ -22, %entry.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end:                                           ; preds = %entry
  %tun = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tun, align 4
  %sleepdata = getelementptr inbounds %struct.tunertype, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %sleepdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleepdata, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then1

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then1:                                         ; preds = %if.end
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then1.if.end6_crit_edge, label %if.then3

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %9(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then1.if.end6_crit_edge
  %10 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tun, align 4
  %sleepdata9 = getelementptr inbounds %struct.tunertype, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %sleepdata9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sleepdata9, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_props, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %conv3.i = zext i8 %15 to i16
  store i16 %conv3.i, ptr %16, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %buf4.i, align 4
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i, i32 %conv, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tun, align 4
  %sleepdata14 = getelementptr inbounds %struct.tunertype, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %sleepdata14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sleepdata14, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv16 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.call.i, i32 %conv16)
  %cmp17.not = icmp eq i32 %len.call.i, %conv16
  br i1 %cmp17.not, label %if.end6.if.end21_crit_edge, label %if.end6.cleanup22_crit_edge

if.end6.cleanup22_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup22

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.end6.if.end21_crit_edge, %if.end.if.end21_crit_edge
  br label %cleanup22

cleanup22:                                        ; preds = %if.end21, %if.end6.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ 0, %if.end21 ], [ %len.call.i, %if.end6.cleanup22_crit_edge ], [ -22, %entry.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_dvb_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %8 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 1
  %9 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency2 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %frequency2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency2, align 4
  %bandwidth = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth, align 4
  %call = call fastcc i32 @simple_dvb_configure(ptr noundef %fe, ptr noundef %8, i32 noundef %1, i32 noundef %5, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %16 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_props, align 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %buf, align 1
  %19 = ptrtoint ptr %frequency2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %frequency2, align 4
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %3, ptr %bandwidth, align 4
  %standby = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 5
  %21 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %standby, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end5.if.end13_crit_edge, label %if.then9

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %fe) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end5.if.end13_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %23 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 %24(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 327679, ptr %25, align 4
  %27 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i2c_props, align 4
  %conv.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %8, ptr %buf4.i, align 4
  %32 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i, i32 4, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i)
  %cmp25.not = icmp eq i32 %len.call.i, 4
  br i1 %cmp25.not, label %if.end20.cleanup_crit_edge, label %fail

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail:                                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %frequency2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %13, ptr %frequency2, align 4
  %35 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %15, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call.i, %fail ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_set_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef %params) #0 align 64 {
entry:
  %msg.i2.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i12.i = alloca %struct.i2c_msg, align 4
  %status_byte.i.i = alloca i8, align 1
  %msg.i.i21 = alloca %struct.i2c_msg, align 4
  %msg.i1.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buffer.i.i = alloca [4 x i8], align 4
  %config.i22 = alloca i8, align 1
  %cb.i = alloca i8, align 1
  %buffer.i23 = alloca [4 x i8], align 4
  %tda9887_cfg.i24 = alloca %struct.v4l2_priv_tun_config, align 4
  %tda_config.i = alloca i32, align 4
  %msg.i6.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buffer.i = alloca [4 x i8], align 4
  %config111.i = alloca i32, align 4
  %tda9887_cfg.i = alloca %struct.v4l2_priv_tun_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 3, label %if.end.sw.bb2_crit_edge71
  ]

if.end.sw.bb2_crit_edge71:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %radio_mode = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %radio_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %radio_mode, align 4
  %8 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #7
  %10 = getelementptr inbounds [4 x i8], ptr %buffer.i, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %buffer.i, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %buffer.i, i32 0, i32 3
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %buffer.i, align 4
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 8
  %audmode.i = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %audmode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %audmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp ne i32 %17, 0
  %tun1.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 5
  %18 = ptrtoint ptr %tun1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tun1.i, align 4
  %count.i = getelementptr inbounds %struct.tunertype, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i, align 4
  %params3.i = getelementptr inbounds %struct.tunertype, ptr %19, i32 0, i32 2
  %22 = add i32 %21, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %22, i32 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb
  %j.0.in.i = phi i32 [ %21, %sw.bb ], [ %j.0.i, %for.body.i.for.cond.i_crit_edge ]
  %j.0.i = add i32 %j.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.i)
  %cmp2.i = icmp sgt i32 %j.0.i, 0
  br i1 %cmp2.i, label %for.body.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %23 = ptrtoint ptr %params3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params3.i, align 4
  %arrayidx.i = getelementptr %struct.tuner_params, ptr %24, i32 %j.0.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq i32 %26, 0
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %j.0.i, %for.body.i.for.end.i_crit_edge ], [ %smin.i, %for.cond.i.for.end.i_crit_edge ]
  %27 = ptrtoint ptr %params3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params3.i, align 4
  %radio_if.i = getelementptr %struct.tuner_params, ptr %28, i32 %j.0.lcssa.i, i32 1
  %29 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i = load i32, ptr %radio_if.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i)
  %.not = icmp eq i32 %bf.clear.i, 3
  br i1 %.not, label %do.end.i, label %switch.lookup

do.end.i:                                         ; preds = %for.end.i
  %i2c_props.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %35, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %36 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_props.i, align 4
  %conv.i = zext i8 %37 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %31, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %bf.clear.i) #10
  br label %simple_set_radio_freq.exit

switch.lookup:                                    ; preds = %for.end.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.simple_set_params, i32 0, i32 %bf.clear.i
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ranges.i = getelementptr %struct.tuner_params, ptr %28, i32 %j.0.lcssa.i, i32 5
  %39 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ranges.i, align 4
  %config.i = getelementptr inbounds %struct.tuner_range, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %config.i, align 2
  %43 = and i8 %42, -7
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %11, align 2
  %type.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 4
  %45 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %46, label %sw.default.i.i [
    i32 61, label %switch.lookup.do.body.i.i_crit_edge
    i32 59, label %switch.lookup.do.body.i.i_crit_edge72
    i32 38, label %switch.lookup.if.end34.i_crit_edge
    i32 43, label %switch.lookup.if.end34.i_crit_edge73
    i32 63, label %switch.lookup.if.end34.i_crit_edge74
    i32 78, label %switch.lookup.if.end34.i_crit_edge75
    i32 47, label %switch.lookup.if.end34.i_crit_edge76
    i32 51, label %switch.lookup.if.end34.i_crit_edge77
    i32 77, label %switch.lookup.if.end34.i_crit_edge78
    i32 79, label %sw.bb14.i.i
    i32 69, label %sw.bb17.i.i
    i32 28, label %sw.bb19.i.i
    i32 60, label %sw.bb21.i.i
    i32 80, label %switch.lookup.do.end28.i.i_crit_edge
    i32 85, label %switch.lookup.do.end28.i.i_crit_edge79
  ]

switch.lookup.do.end28.i.i_crit_edge79:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i.i

switch.lookup.do.end28.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i.i

switch.lookup.if.end34.i_crit_edge78:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge77:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge76:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge75:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge74:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge73:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.if.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

switch.lookup.do.body.i.i_crit_edge72:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

switch.lookup.do.body.i.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %switch.lookup.do.body.i.i_crit_edge, %switch.lookup.do.body.i.i_crit_edge72
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.simple_set_radio_freq.exit_crit_edge, label %do.end.i.i

do.body.i.i.simple_set_radio_freq.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_radio_freq.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  %i2c_props.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adap.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %54, %cond.true.i.i ], [ -1, %do.end.i.i.cond.end.i.i_crit_edge ]
  %55 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %i2c_props.i.i, align 4
  %conv.i.i = zext i8 %56 to i32
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %50, i32 noundef %cond.i.i, i32 noundef %conv.i.i) #10
  br label %simple_set_radio_freq.exit

sw.bb14.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -120, ptr %11, align 2
  br label %if.end34.i

sw.bb17.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

sw.bb19.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

sw.bb21.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end28.i.i:                                     ; preds = %switch.lookup.do.end28.i.i_crit_edge, %switch.lookup.do.end28.i.i_crit_edge79
  %i2c_props30.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2
  %name31.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %name31.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name31.i.i, align 4
  %adap33.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %adap33.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap33.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %61, null
  br i1 %tobool34.not.i.i, label %do.end28.i.i.cond.end40.i.i_crit_edge, label %cond.true35.i.i

do.end28.i.i.cond.end40.i.i_crit_edge:            ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end40.i.i

cond.true35.i.i:                                  ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i69.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %nr.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr.i69.i.i, align 4
  br label %cond.end40.i.i

cond.end40.i.i:                                   ; preds = %cond.true35.i.i, %do.end28.i.i.cond.end40.i.i_crit_edge
  %cond41.i.i = phi i32 [ %63, %cond.true35.i.i ], [ -1, %do.end28.i.i.cond.end40.i.i_crit_edge ]
  %64 = ptrtoint ptr %i2c_props30.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_props30.i.i, align 4
  %conv44.i.i = zext i8 %65 to i32
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %59, i32 noundef %cond41.i.i, i32 noundef %conv44.i.i) #10
  br label %if.end34.i

sw.default.i.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %sw.default.i.i, %cond.end40.i.i, %sw.bb21.i.i, %sw.bb19.i.i, %sw.bb17.i.i, %sw.bb14.i.i, %switch.lookup.if.end34.i_crit_edge, %switch.lookup.if.end34.i_crit_edge73, %switch.lookup.if.end34.i_crit_edge74, %switch.lookup.if.end34.i_crit_edge75, %switch.lookup.if.end34.i_crit_edge76, %switch.lookup.if.end34.i_crit_edge77, %switch.lookup.if.end34.i_crit_edge78
  %.sink20.i = phi i8 [ -92, %sw.default.i.i ], [ 1, %cond.end40.i.i ], [ 57, %sw.bb21.i.i ], [ -91, %sw.bb19.i.i ], [ 17, %sw.bb17.i.i ], [ 9, %sw.bb14.i.i ], [ 25, %switch.lookup.if.end34.i_crit_edge ], [ 25, %switch.lookup.if.end34.i_crit_edge73 ], [ 25, %switch.lookup.if.end34.i_crit_edge74 ], [ 25, %switch.lookup.if.end34.i_crit_edge75 ], [ 25, %switch.lookup.if.end34.i_crit_edge76 ], [ 25, %switch.lookup.if.end34.i_crit_edge77 ], [ 25, %switch.lookup.if.end34.i_crit_edge78 ]
  %66 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink20.i, ptr %12, align 1
  %add10.i = add i32 %15, 400
  %add35.i = add i32 %add10.i, %switch.load
  %div36.i = udiv i32 %add35.i, 800
  %conv37.i = trunc i32 %div36.i to i16
  %67 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load38.i = load i32, ptr %radio_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load38.i)
  %tobool40.not.i = icmp sgt i32 %bf.load38.i, -1
  br i1 %tobool40.not.i, label %if.end34.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end34.i.if.else.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %conv41.i = and i32 %div36.i, 65535
  %last_div.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 1
  %68 = ptrtoint ptr %last_div.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %last_div.i, align 4
  %conv42.i = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41.i, i32 %conv42.i)
  %cmp43.i = icmp ult i32 %conv41.i, %conv42.i
  br i1 %cmp43.i, label %if.then45.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %11, align 2
  %72 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %buffer.i, align 4
  %73 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink20.i, ptr %10, align 1
  %74 = lshr i32 %div36.i, 8
  %75 = trunc i32 %74 to i8
  %conv52.i = and i8 %75, 127
  store i8 %conv52.i, ptr %11, align 2
  br label %do.body68.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end34.i.if.else.i_crit_edge
  %76 = lshr i32 %div36.i, 8
  %77 = trunc i32 %76 to i8
  %conv61.i = and i8 %77, 127
  %78 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv61.i, ptr %buffer.i, align 4
  br label %do.body68.i

do.body68.i:                                      ; preds = %if.else.i, %if.then45.i
  %.sink21.i = phi ptr [ %12, %if.then45.i ], [ %10, %if.else.i ]
  %conv56.i = trunc i32 %div36.i to i8
  %79 = ptrtoint ptr %.sink21.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv56.i, ptr %.sink21.i, align 1
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool69.not.i = icmp eq i32 %80, 0
  br i1 %tobool69.not.i, label %do.body68.i.do.end104.i_crit_edge, label %do.end74.i

do.body68.i.do.end104.i_crit_edge:                ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104.i

do.end74.i:                                       ; preds = %do.body68.i
  %i2c_props76.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2
  %name77.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %name77.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name77.i, align 4
  %adap79.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %adap79.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adap79.i, align 4
  %tobool80.not.i = icmp eq ptr %84, null
  br i1 %tobool80.not.i, label %do.end74.i.cond.end86.i_crit_edge, label %cond.true81.i

do.end74.i.cond.end86.i_crit_edge:                ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end86.i

cond.true81.i:                                    ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i2.i = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %nr.i2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr.i2.i, align 4
  br label %cond.end86.i

cond.end86.i:                                     ; preds = %cond.true81.i, %do.end74.i.cond.end86.i_crit_edge
  %cond87.i = phi i32 [ %86, %cond.true81.i ], [ -1, %do.end74.i.cond.end86.i_crit_edge ]
  %87 = ptrtoint ptr %i2c_props76.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i2c_props76.i, align 4
  %conv90.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buffer.i, align 4
  %conv92.i = zext i8 %90 to i32
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %10, align 1
  %conv94.i = zext i8 %92 to i32
  %93 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %11, align 2
  %conv96.i = zext i8 %94 to i32
  %95 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %12, align 1
  %conv98.i = zext i8 %96 to i32
  %call99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %82, i32 noundef %cond87.i, i32 noundef %conv90.i, i32 noundef %conv92.i, i32 noundef %conv94.i, i32 noundef %conv96.i, i32 noundef %conv98.i) #10
  br label %do.end104.i

do.end104.i:                                      ; preds = %cond.end86.i, %do.body68.i.do.end104.i_crit_edge
  %last_div105.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 1
  %97 = ptrtoint ptr %last_div105.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv37.i, ptr %last_div105.i, align 4
  %98 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load106.i = load i32, ptr %radio_if.i, align 4
  %99 = and i32 %bf.load106.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool109.not.i = icmp eq i32 %99, 0
  br i1 %tobool109.not.i, label %do.end104.i.if.end172.i_crit_edge, label %if.then110.i

do.end104.i.if.end172.i_crit_edge:                ; preds = %do.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172.i

if.then110.i:                                     ; preds = %do.end104.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config111.i) #7
  %100 = ptrtoint ptr %config111.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %config111.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg.i) #7
  %101 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg.i, i32 0, i32 1
  %102 = ptrtoint ptr %tda9887_cfg.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 74, ptr %tda9887_cfg.i, align 4
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %config111.i, ptr %101, align 4
  %104 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load113.i = load i32, ptr %radio_if.i, align 4
  %105 = and i32 %bf.load113.i, 570425344
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %105)
  %106 = icmp eq i32 %105, 33554432
  br i1 %106, label %if.then122.i, label %if.then110.i.if.end124.i_crit_edge

if.then110.i.if.end124.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

if.then122.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %config111.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 32, ptr %config111.i, align 4
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then122.i, %if.then110.i.if.end124.i_crit_edge
  %108 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load125.i = load i32, ptr %radio_if.i, align 4
  %109 = and i32 %bf.load125.i, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %109)
  %110 = icmp eq i32 %109, 16777216
  br i1 %110, label %if.then134.i, label %if.end124.i.if.end136.i_crit_edge

if.end124.i.if.end136.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then134.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %config111.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config111.i, align 4
  %or135.i = or i32 %112, 64
  store i32 %or135.i, ptr %config111.i, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then134.i, %if.end124.i.if.end136.i_crit_edge
  %113 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load137.i = load i32, ptr %radio_if.i, align 4
  %114 = and i32 %bf.load137.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool140.not.i = icmp eq i32 %114, 0
  br i1 %tobool140.not.i, label %if.end136.i.if.end143.i_crit_edge, label %if.then141.i

if.end136.i.if.end143.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.i

if.then141.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %config111.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %config111.i, align 4
  %or142.i = or i32 %116, 16
  store i32 %or142.i, ptr %config111.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then141.i, %if.end136.i.if.end143.i_crit_edge
  %117 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load144.i = load i32, ptr %radio_if.i, align 4
  %118 = and i32 %bf.load144.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool147.not.i = icmp eq i32 %118, 0
  %brmerge.i = select i1 %tobool147.not.i, i1 true, i1 %cmp.i
  br i1 %brmerge.i, label %if.end143.i.if.end153.i_crit_edge, label %if.then151.i

if.end143.i.if.end153.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

if.then151.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %config111.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %config111.i, align 4
  %and152.i = and i32 %120, -33
  store i32 %and152.i, ptr %config111.i, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then151.i, %if.end143.i.if.end153.i_crit_edge
  %121 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load154.i = load i32, ptr %radio_if.i, align 4
  %122 = and i32 %bf.load154.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool157.not.i = icmp eq i32 %122, 0
  br i1 %tobool157.not.i, label %if.end153.i.if.end160.i_crit_edge, label %if.then158.i

if.end153.i.if.end160.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160.i

if.then158.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %config111.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %config111.i, align 4
  %or159.i = or i32 %124, 1048576
  store i32 %or159.i, ptr %config111.i, align 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then158.i, %if.end153.i.if.end160.i_crit_edge
  %125 = ptrtoint ptr %radio_if.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load162.i = load i32, ptr %radio_if.i, align 4
  %126 = and i32 %bf.load162.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %126)
  %cmp165.i = icmp eq i32 %126, 524288
  br i1 %cmp165.i, label %if.then167.i, label %if.end160.i.if.end169.i_crit_edge

if.end160.i.if.end169.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169.i

if.then167.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %config111.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %config111.i, align 4
  %or168.i = or i32 %128, 2097152
  store i32 %or168.i, ptr %config111.i, align 4
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then167.i, %if.end160.i.if.end169.i_crit_edge
  %adap171.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %adap171.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adap171.i, align 4
  call void @i2c_clients_command(ptr noundef %130, i32 noundef 1074291804, ptr noundef nonnull %tda9887_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config111.i) #7
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end169.i, %do.end104.i.if.end172.i_crit_edge
  %i2c_props173.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %131 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 327679, ptr %131, align 4
  %133 = ptrtoint ptr %i2c_props173.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %i2c_props173.i, align 4
  %conv.i3.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i3.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buffer.i, ptr %buf4.i.i, align 4
  %adap.i4.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 1
  %138 = ptrtoint ptr %adap.i4.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adap.i4.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %140 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call.i.i, label %do.end182.i [
    i32 4, label %if.end172.i.if.end204.i_crit_edge
    i32 1, label %if.end172.i.if.end204.i_crit_edge80
  ]

if.end172.i.if.end204.i_crit_edge80:              ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204.i

if.end172.i.if.end204.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204.i

do.end182.i:                                      ; preds = %if.end172.i
  %name185.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %141 = ptrtoint ptr %name185.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name185.i, align 4
  %143 = ptrtoint ptr %adap.i4.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap.i4.i, align 4
  %tobool188.not.i = icmp eq ptr %144, null
  br i1 %tobool188.not.i, label %do.end182.i.cond.end194.i_crit_edge, label %cond.true189.i

do.end182.i.cond.end194.i_crit_edge:              ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end194.i

cond.true189.i:                                   ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %nr.i5.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr.i5.i, align 4
  br label %cond.end194.i

cond.end194.i:                                    ; preds = %cond.true189.i, %do.end182.i.cond.end194.i_crit_edge
  %cond195.i = phi i32 [ %146, %cond.true189.i ], [ -1, %do.end182.i.cond.end194.i_crit_edge ]
  %147 = ptrtoint ptr %i2c_props173.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %i2c_props173.i, align 4
  %conv198.i = zext i8 %148 to i32
  %call199.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %142, i32 noundef %cond195.i, i32 noundef %conv198.i, i32 noundef %call.i.i) #10
  br label %if.end204.i

if.end204.i:                                      ; preds = %cond.end194.i, %if.end172.i.if.end204.i_crit_edge, %if.end172.i.if.end204.i_crit_edge80
  %149 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %150)
  %cond251.i = icmp eq i32 %150, 38
  br i1 %cond251.i, label %sw.bb206.i, label %if.end204.i.simple_set_radio_freq.exit_crit_edge

if.end204.i.simple_set_radio_freq.exit_crit_edge: ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_radio_freq.exit

sw.bb206.i:                                       ; preds = %if.end204.i
  %151 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -104, ptr %11, align 2
  %152 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 32, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i6.i) #7
  %153 = getelementptr inbounds i8, ptr %msg.i6.i, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 327679, ptr %153, align 4
  %155 = ptrtoint ptr %i2c_props173.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %i2c_props173.i, align 4
  %conv.i7.i = zext i8 %156 to i16
  %157 = ptrtoint ptr %msg.i6.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv.i7.i, ptr %msg.i6.i, align 4
  %flags.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %flags.i8.i, align 2
  %buf4.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i6.i, i32 0, i32 3
  %159 = ptrtoint ptr %buf4.i10.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %buffer.i, ptr %buf4.i10.i, align 4
  %160 = ptrtoint ptr %adap.i4.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %adap.i4.i, align 4
  %call.i12.i = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i6.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i6.i) #7
  %162 = zext i32 %call.i12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call.i12.i, label %do.end219.i [
    i32 4, label %sw.bb206.i.simple_set_radio_freq.exit_crit_edge
    i32 1, label %sw.bb206.i.simple_set_radio_freq.exit_crit_edge81
  ]

sw.bb206.i.simple_set_radio_freq.exit_crit_edge81: ; preds = %sw.bb206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_radio_freq.exit

sw.bb206.i.simple_set_radio_freq.exit_crit_edge:  ; preds = %sw.bb206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_radio_freq.exit

do.end219.i:                                      ; preds = %sw.bb206.i
  %name222.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %9, i32 0, i32 2, i32 3
  %163 = ptrtoint ptr %name222.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %name222.i, align 4
  %165 = ptrtoint ptr %adap.i4.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adap.i4.i, align 4
  %tobool225.not.i = icmp eq ptr %166, null
  br i1 %tobool225.not.i, label %do.end219.i.cond.end231.i_crit_edge, label %cond.true226.i

do.end219.i.cond.end231.i_crit_edge:              ; preds = %do.end219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end231.i

cond.true226.i:                                   ; preds = %do.end219.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i15.i = getelementptr inbounds %struct.i2c_adapter, ptr %166, i32 0, i32 11
  %167 = ptrtoint ptr %nr.i15.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %nr.i15.i, align 4
  br label %cond.end231.i

cond.end231.i:                                    ; preds = %cond.true226.i, %do.end219.i.cond.end231.i_crit_edge
  %cond232.i = phi i32 [ %168, %cond.true226.i ], [ -1, %do.end219.i.cond.end231.i_crit_edge ]
  %169 = ptrtoint ptr %i2c_props173.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %i2c_props173.i, align 4
  %conv235.i = zext i8 %170 to i32
  %call236.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %164, i32 noundef %cond232.i, i32 noundef %conv235.i, i32 noundef %call.i12.i) #10
  br label %simple_set_radio_freq.exit

simple_set_radio_freq.exit:                       ; preds = %cond.end231.i, %sw.bb206.i.simple_set_radio_freq.exit_crit_edge, %sw.bb206.i.simple_set_radio_freq.exit_crit_edge81, %if.end204.i.simple_set_radio_freq.exit_crit_edge, %cond.end.i.i, %do.body.i.i.simple_set_radio_freq.exit_crit_edge, %cond.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #7
  %171 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %params, align 8
  %mul = mul i32 %172, 125
  %div20 = lshr i32 %mul, 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge71
  %radio_mode3 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 8
  %173 = ptrtoint ptr %radio_mode3 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %radio_mode3, align 4
  %174 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config.i22) #7
  %176 = ptrtoint ptr %config.i22 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %config.i22, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb.i) #7
  %177 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %cb.i, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i23) #7
  %178 = getelementptr inbounds [4 x i8], ptr %buffer.i23, i32 0, i32 1
  %179 = getelementptr inbounds [4 x i8], ptr %buffer.i23, i32 0, i32 2
  %180 = getelementptr inbounds [4 x i8], ptr %buffer.i23, i32 0, i32 3
  %std.i = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %181 = ptrtoint ptr %buffer.i23 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -1, ptr %buffer.i23, align 4
  %182 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %std.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %183)
  %cmp.i26 = icmp eq i64 %183, 8192
  br i1 %cmp.i26, label %sw.bb2.if.end12.i_crit_edge, label %if.else.i28

sw.bb2.if.end12.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i28:                                      ; preds = %sw.bb2
  %and.i = and i64 %183, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i27 = icmp ne i64 %and.i, 0
  %and3.i = and i64 %183, -46849
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %or.cond.i = and i1 %tobool.not.i27, %tobool4.not.i
  br i1 %or.cond.i, label %if.else.i28.if.end12.i_crit_edge, label %if.else6.i

if.else.i28.if.end12.i_crit_edge:                 ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %183)
  %cmp8.i = icmp eq i64 %183, 8388608
  %..i = select i1 %cmp8.i, i32 543, i32 623
  %.9.i = select i1 %cmp8.i, i32 2, i32 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else6.i, %if.else.i28.if.end12.i_crit_edge, %sw.bb2.if.end12.i_crit_edge
  %IFPCoff.0.i = phi i32 [ 940, %sw.bb2.if.end12.i_crit_edge ], [ 732, %if.else.i28.if.end12.i_crit_edge ], [ %..i, %if.else6.i ]
  %desired_type.0.i = phi i32 [ 3, %sw.bb2.if.end12.i_crit_edge ], [ 3, %if.else.i28.if.end12.i_crit_edge ], [ %.9.i, %if.else6.i ]
  %call.i = tail call fastcc ptr @simple_tuner_params(ptr noundef %fe, i32 noundef %desired_type.0.i) #7
  %call13.i = call fastcc i32 @simple_config_lookup(ptr noundef %fe, ptr noundef %call.i, ptr noundef %params, ptr noundef nonnull %config.i22, ptr noundef nonnull %cb.i) #7
  %184 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %params, align 8
  %add.i = add i32 %185, %IFPCoff.0.i
  %186 = load i32, ptr @offset, align 4
  %add15.i = add i32 %add.i, %186
  %conv.i29 = trunc i32 %add15.i to i16
  %187 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool16.not.i = icmp eq i32 %187, 0
  br i1 %tobool16.not.i, label %if.end12.i.do.end45.i_crit_edge, label %do.end.i33

if.end12.i.do.end45.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45.i

do.end.i33:                                       ; preds = %if.end12.i
  %i2c_props.i30 = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2
  %name.i31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 3
  %188 = ptrtoint ptr %name.i31 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %name.i31, align 4
  %adap.i32 = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 1
  %190 = ptrtoint ptr %adap.i32 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %adap.i32, align 4
  %tobool21.not.i = icmp eq ptr %191, null
  br i1 %tobool21.not.i, label %do.end.i33.cond.end.i37_crit_edge, label %cond.true.i35

do.end.i33.cond.end.i37_crit_edge:                ; preds = %do.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i37

cond.true.i35:                                    ; preds = %do.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %191, i32 0, i32 11
  %192 = ptrtoint ptr %nr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nr.i.i34, align 4
  br label %cond.end.i37

cond.end.i37:                                     ; preds = %cond.true.i35, %do.end.i33.cond.end.i37_crit_edge
  %cond.i36 = phi i32 [ %193, %cond.true.i35 ], [ -1, %do.end.i33.cond.end.i37_crit_edge ]
  %194 = ptrtoint ptr %i2c_props.i30 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %i2c_props.i30, align 4
  %conv26.i = zext i8 %195 to i32
  %div285.i = lshr i32 %185, 4
  %rem.i = and i32 %185, 15
  %mul.i = mul nuw nsw i32 %rem.i, 100
  %div306.i = lshr i32 %mul.i, 4
  %div317.i = lshr i32 %IFPCoff.0.i, 4
  %rem32.i = and i32 %IFPCoff.0.i, 15
  %mul33.i = mul nuw nsw i32 %rem32.i, 100
  %div348.i = lshr i32 %mul33.i, 4
  %.frozen = freeze i32 %186
  %div35.i = sdiv i32 %.frozen, 16
  %196 = mul i32 %div35.i, 16
  %rem36.i.decomposed = sub i32 %.frozen, %196
  %197 = trunc i32 %rem36.i.decomposed to i16
  %div38.lhs.trunc.i = mul nsw i16 %197, 100
  %div3831.i = sdiv i16 %div38.lhs.trunc.i, 16
  %div38.sext.i = sext i16 %div3831.i to i32
  %conv39.i = and i32 %add15.i, 65535
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %189, i32 noundef %cond.i36, i32 noundef %conv26.i, i32 noundef %div285.i, i32 noundef %div306.i, i32 noundef %div317.i, i32 noundef %div348.i, i32 noundef %div35.i, i32 noundef %div38.sext.i, i32 noundef %conv39.i) #10
  br label %do.end45.i

do.end45.i:                                       ; preds = %cond.end.i37, %if.end12.i.do.end45.i_crit_edge
  %198 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tuner_priv, align 4
  %type.i.i38 = getelementptr inbounds %struct.tuner_simple_priv, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %type.i.i38 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %type.i.i38, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %201, label %do.end45.i.sw.epilog.i.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 22, label %sw.bb17.i.i40
    i32 24, label %sw.bb56.i.i
    i32 42, label %sw.bb86.i.i
    i32 49, label %sw.bb98.i.i
    i32 68, label %sw.bb102.i.i
  ]

do.end45.i.sw.epilog.i.i_crit_edge:               ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %do.end45.i
  %203 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cb.i, align 1
  %205 = and i8 %204, -4
  %206 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %std.i, align 8
  %and2.i.i = and i64 %207, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i39 = icmp eq i64 %and2.i.i, 0
  br i1 %tobool.not.i.i39, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = or i8 %204, 3
  %209 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  %and6.i.i = and i64 %207, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.i)
  %tobool7.not.i.i = icmp eq i64 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else12.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = or i8 %205, 2
  %211 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %212 = or i8 %205, 1
  %213 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %cb.i, align 1
  br label %sw.epilog.i.i

sw.bb17.i.i40:                                    ; preds = %do.end45.i
  %214 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %cb.i, align 1
  %216 = and i8 %215, -16
  store i8 %216, ptr %cb.i, align 1
  %217 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %std.i, align 8
  %and22.i.i = and i64 %218, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i.i)
  %tobool23.not.i.i = icmp eq i64 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.else28.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %sw.bb17.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  %219 = or i8 %216, 12
  %220 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else28.i.i:                                    ; preds = %sw.bb17.i.i40
  %and30.i.i = and i64 %218, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i.i)
  %tobool31.not.i.i = icmp eq i64 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else36.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = or i8 %216, 5
  %222 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else36.i.i:                                    ; preds = %if.else28.i.i
  %and38.i.i = and i64 %218, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38.i.i)
  %tobool39.not.i.i = icmp eq i64 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.else44.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.else36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %223 = or i8 %216, 9
  %224 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else44.i.i:                                    ; preds = %if.else36.i.i
  %and46.i.i = and i64 %218, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46.i.i)
  %tobool47.not.i.i = icmp eq i64 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.else44.i.i.sw.epilog.i.i_crit_edge, label %if.then48.i.i

if.else44.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.then48.i.i:                                    ; preds = %if.else44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %225 = or i8 %216, 10
  %226 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %cb.i, align 1
  br label %sw.epilog.i.i

sw.bb56.i.i:                                      ; preds = %do.end45.i
  %227 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %cb.i, align 1
  %229 = and i8 %228, -16
  store i8 %229, ptr %cb.i, align 1
  %230 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %std.i, align 8
  %and61.i.i = and i64 %231, 231
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61.i.i)
  %tobool62.not.i.i = icmp eq i64 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.else67.i.i, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %sw.bb56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = or i8 %229, 9
  %233 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else67.i.i:                                    ; preds = %sw.bb56.i.i
  %and69.i.i = and i64 %231, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69.i.i)
  %tobool70.not.i.i = icmp eq i64 %and69.i.i, 0
  br i1 %tobool70.not.i.i, label %if.else75.i.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %234 = or i8 %229, 1
  %235 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %cb.i, align 1
  br label %sw.epilog.i.i

if.else75.i.i:                                    ; preds = %if.else67.i.i
  %and77.i.i = and i64 %231, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77.i.i)
  %tobool78.not.i.i = icmp eq i64 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.else75.i.i.sw.epilog.i.i_crit_edge, label %if.then79.i.i

if.else75.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.then79.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = or i8 %229, 11
  %237 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %cb.i, align 1
  br label %sw.epilog.i.i

sw.bb86.i.i:                                      ; preds = %do.end45.i
  %238 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %cb.i, align 1
  %240 = and i8 %239, -4
  store i8 %240, ptr %cb.i, align 1
  %241 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %std.i, align 8
  %and91.i.i = and i64 %242, 50331648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and91.i.i)
  %tobool92.not.i.i = icmp eq i64 %and91.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then93.i.i, label %sw.bb86.i.i.sw.epilog.i.i_crit_edge

sw.bb86.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.then93.i.i:                                    ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = or i8 %240, 2
  %244 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %cb.i, align 1
  br label %sw.epilog.i.i

sw.bb98.i.i:                                      ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %config.i22 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %config.i22, align 1
  %247 = or i8 %246, 64
  store i8 %247, ptr %config.i22, align 1
  br label %sw.epilog.i.i

sw.bb102.i.i:                                     ; preds = %do.end45.i
  %i2c_props.i.i41 = getelementptr inbounds %struct.tuner_simple_priv, ptr %199, i32 0, i32 2
  %i2c.sroa.713.0.i2c_props.sroa_idx.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %199, i32 0, i32 2, i32 1
  %248 = ptrtoint ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %i2c.sroa.713.0.copyload14.i.i = load ptr, ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i.i) #7
  %249 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 335550208, ptr %buffer.i.i, align 4
  %250 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %cb.i, align 1
  %252 = and i8 %251, -65
  store i8 %252, ptr %cb.i, align 1
  %253 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %std.i, align 8
  %and107.i.i = and i64 %254, 50331648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and107.i.i)
  %tobool108.not.i.i = icmp eq i64 %and107.i.i, 0
  br i1 %tobool108.not.i.i, label %sw.bb102.i.i.if.end113.i.i_crit_edge, label %if.then109.i.i

sw.bb102.i.i.if.end113.i.i_crit_edge:             ; preds = %sw.bb102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i.i

if.then109.i.i:                                   ; preds = %sw.bb102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %255 = or i8 %251, 64
  %256 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %cb.i, align 1
  %arrayidx.i.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i, i32 0, i32 1
  %257 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 4, ptr %arrayidx.i.i, align 1
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.then109.i.i, %sw.bb102.i.i.if.end113.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %258 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 196607, ptr %258, align 4
  %260 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 10, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %261 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %262 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %buffer.i.i, ptr %buf4.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %i2c.sroa.713.0.copyload14.i.i, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %263 = add i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %263)
  %264 = icmp ult i32 %263, 2
  br i1 %264, label %if.end113.i.i.if.end133.i.i_crit_edge, label %do.end.i.i43

if.end113.i.i.if.end133.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i.i

do.end.i.i43:                                     ; preds = %if.end113.i.i
  %name.i.i42 = getelementptr inbounds %struct.tuner_simple_priv, ptr %199, i32 0, i32 2, i32 3
  %265 = ptrtoint ptr %name.i.i42 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %name.i.i42, align 4
  %267 = ptrtoint ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i, align 4
  %tobool121.not.i.i = icmp eq ptr %268, null
  br i1 %tobool121.not.i.i, label %do.end.i.i43.cond.end.i.i47_crit_edge, label %cond.true.i.i45

do.end.i.i43.cond.end.i.i47_crit_edge:            ; preds = %do.end.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i47

cond.true.i.i45:                                  ; preds = %do.end.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i.i44 = getelementptr inbounds %struct.i2c_adapter, ptr %268, i32 0, i32 11
  %269 = ptrtoint ptr %nr.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %nr.i.i.i44, align 4
  br label %cond.end.i.i47

cond.end.i.i47:                                   ; preds = %cond.true.i.i45, %do.end.i.i43.cond.end.i.i47_crit_edge
  %cond.i.i46 = phi i32 [ %270, %cond.true.i.i45 ], [ -1, %do.end.i.i43.cond.end.i.i47_crit_edge ]
  %271 = ptrtoint ptr %i2c_props.i.i41 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %i2c_props.i.i41, align 4
  %conv127.i.i = zext i8 %272 to i32
  %call128.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %266, i32 noundef %cond.i.i46, i32 noundef %conv127.i.i, i32 noundef %call.i.i.i) #10
  br label %if.end133.i.i

if.end133.i.i:                                    ; preds = %cond.end.i.i47, %if.end113.i.i.if.end133.i.i_crit_edge
  %arrayidx134.i.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i.i) #7
  %273 = getelementptr inbounds i8, ptr %msg.i1.i.i, i32 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 196607, ptr %273, align 4
  %275 = ptrtoint ptr %msg.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 10, ptr %msg.i1.i.i, align 4
  %flags.i3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 1
  %276 = ptrtoint ptr %flags.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 0, ptr %flags.i3.i.i, align 2
  %buf4.i5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i.i, i32 0, i32 3
  %277 = ptrtoint ptr %buf4.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %arrayidx134.i.i, ptr %buf4.i5.i.i, align 4
  %call.i7.i.i = call i32 @i2c_transfer(ptr noundef %i2c.sroa.713.0.copyload14.i.i, ptr noundef nonnull %msg.i1.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i.i) #7
  %278 = add i32 %call.i7.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %278)
  %279 = icmp ult i32 %278, 2
  br i1 %279, label %if.end133.i.i.if.end165.i.i_crit_edge, label %do.end143.i.i

if.end133.i.i.if.end165.i.i_crit_edge:            ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i.i

do.end143.i.i:                                    ; preds = %if.end133.i.i
  %name146.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %199, i32 0, i32 2, i32 3
  %280 = ptrtoint ptr %name146.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %name146.i.i, align 4
  %282 = ptrtoint ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %i2c.sroa.713.0.i2c_props.sroa_idx.i.i, align 4
  %tobool149.not.i.i = icmp eq ptr %283, null
  br i1 %tobool149.not.i.i, label %do.end143.i.i.cond.end155.i.i_crit_edge, label %cond.true150.i.i

do.end143.i.i.cond.end155.i.i_crit_edge:          ; preds = %do.end143.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end155.i.i

cond.true150.i.i:                                 ; preds = %do.end143.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i10.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %283, i32 0, i32 11
  %284 = ptrtoint ptr %nr.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %nr.i10.i.i, align 4
  br label %cond.end155.i.i

cond.end155.i.i:                                  ; preds = %cond.true150.i.i, %do.end143.i.i.cond.end155.i.i_crit_edge
  %cond156.i.i = phi i32 [ %285, %cond.true150.i.i ], [ -1, %do.end143.i.i.cond.end155.i.i_crit_edge ]
  %286 = ptrtoint ptr %i2c_props.i.i41 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %i2c_props.i.i41, align 4
  %conv159.i.i = zext i8 %287 to i32
  %call160.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %281, i32 noundef %cond156.i.i, i32 noundef %conv159.i.i, i32 noundef %call.i7.i.i) #10
  br label %if.end165.i.i

if.end165.i.i:                                    ; preds = %cond.end155.i.i, %if.end133.i.i.if.end165.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end165.i.i, %sw.bb98.i.i, %if.then93.i.i, %sw.bb86.i.i.sw.epilog.i.i_crit_edge, %if.then79.i.i, %if.else75.i.i.sw.epilog.i.i_crit_edge, %if.then71.i.i, %if.then63.i.i, %if.then48.i.i, %if.else44.i.i.sw.epilog.i.i_crit_edge, %if.then40.i.i, %if.then32.i.i, %if.then24.i.i, %if.else12.i.i, %if.then8.i.i, %if.then.i.i, %do.end45.i.sw.epilog.i.i_crit_edge
  %288 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %199, align 4
  %arrayidx166.i.i = getelementptr [64 x i32], ptr @atv_input, i32 0, i32 %289
  %290 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx166.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool167.not.i.i = icmp eq i32 %291, 0
  br i1 %tobool167.not.i.i, label %sw.epilog.i.i.simple_std_setup.exit.i_crit_edge, label %if.then168.i.i

sw.epilog.i.i.simple_std_setup.exit.i_crit_edge:  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_std_setup.exit.i

if.then168.i.i:                                   ; preds = %sw.epilog.i.i
  %292 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %tuner_priv, align 4
  %type.i.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %293, i32 0, i32 4
  %294 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %type.i.i.i, align 4
  %296 = zext i32 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %295, label %if.then168.i.i.simple_std_setup.exit.i_crit_edge [
    i32 68, label %sw.bb.i.i.i
    i32 42, label %sw.bb5.i.i.i
  ]

if.then168.i.i.simple_std_setup.exit.i_crit_edge: ; preds = %if.then168.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_std_setup.exit.i

sw.bb.i.i.i:                                      ; preds = %if.then168.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %291)
  %cond17.i.i.i = icmp eq i32 %291, 1
  %297 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %cb.i, align 1
  br i1 %cond17.i.i.i, label %sw.bb1.i.i.i, label %sw.default.i.i.i

sw.bb1.i.i.i:                                     ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %299 = or i8 %298, 8
  br label %sw.epilog16.sink.split.i.i.i

sw.default.i.i.i:                                 ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %300 = and i8 %298, -9
  br label %sw.epilog16.sink.split.i.i.i

sw.bb5.i.i.i:                                     ; preds = %if.then168.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %291)
  %cond.i.i.i = icmp eq i32 %291, 1
  %301 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %cb.i, align 1
  br i1 %cond.i.i.i, label %sw.bb6.i.i.i, label %sw.default10.i.i.i

sw.bb6.i.i.i:                                     ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %303 = or i8 %302, 1
  br label %sw.epilog16.sink.split.i.i.i

sw.default10.i.i.i:                               ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %304 = and i8 %302, -2
  br label %sw.epilog16.sink.split.i.i.i

sw.epilog16.sink.split.i.i.i:                     ; preds = %sw.default10.i.i.i, %sw.bb6.i.i.i, %sw.default.i.i.i, %sw.bb1.i.i.i
  %.sink.i.i.i = phi i8 [ %303, %sw.bb6.i.i.i ], [ %304, %sw.default10.i.i.i ], [ %299, %sw.bb1.i.i.i ], [ %300, %sw.default.i.i.i ]
  %305 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %.sink.i.i.i, ptr %cb.i, align 1
  br label %simple_std_setup.exit.i

simple_std_setup.exit.i:                          ; preds = %sw.epilog16.sink.split.i.i.i, %if.then168.i.i.simple_std_setup.exit.i_crit_edge, %sw.epilog.i.i.simple_std_setup.exit.i_crit_edge
  %cb_first_if_lower_freq.i = getelementptr inbounds %struct.tuner_params, ptr %call.i, i32 0, i32 1
  %306 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %bf.load.i48 = load i32, ptr %cb_first_if_lower_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i48)
  %tobool47.not.i = icmp sgt i32 %bf.load.i48, -1
  br i1 %tobool47.not.i, label %simple_std_setup.exit.i.if.else63.i_crit_edge, label %land.lhs.true48.i

simple_std_setup.exit.i.if.else63.i_crit_edge:    ; preds = %simple_std_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

land.lhs.true48.i:                                ; preds = %simple_std_setup.exit.i
  %conv49.i = and i32 %add15.i, 65535
  %last_div.i49 = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 1
  %307 = ptrtoint ptr %last_div.i49 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %last_div.i49, align 4
  %conv50.i = zext i16 %308 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv49.i, i32 %conv50.i)
  %cmp51.i = icmp ult i32 %conv49.i, %conv50.i
  br i1 %cmp51.i, label %if.then53.i, label %land.lhs.true48.i.if.else63.i_crit_edge

land.lhs.true48.i.if.else63.i_crit_edge:          ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

if.then53.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %config.i22 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %config.i22, align 1
  %311 = ptrtoint ptr %buffer.i23 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %310, ptr %buffer.i23, align 4
  %312 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %cb.i, align 1
  %314 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %313, ptr %178, align 1
  %315 = lshr i32 %add15.i, 8
  %316 = trunc i32 %315 to i8
  %conv57.i = and i8 %316, 127
  %317 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv57.i, ptr %179, align 2
  %conv61.i50 = trunc i32 %add15.i to i8
  br label %if.end75.i

if.else63.i:                                      ; preds = %land.lhs.true48.i.if.else63.i_crit_edge, %simple_std_setup.exit.i.if.else63.i_crit_edge
  %318 = lshr i32 %add15.i, 8
  %319 = trunc i32 %318 to i8
  %conv67.i = and i8 %319, 127
  %320 = ptrtoint ptr %buffer.i23 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %conv67.i, ptr %buffer.i23, align 4
  %conv71.i = trunc i32 %add15.i to i8
  %321 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv71.i, ptr %178, align 1
  %322 = ptrtoint ptr %config.i22 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %config.i22, align 1
  %324 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %179, align 2
  %325 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %cb.i, align 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else63.i, %if.then53.i
  %storemerge.i = phi i8 [ %326, %if.else63.i ], [ %conv61.i50, %if.then53.i ]
  %327 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %storemerge.i, ptr %180, align 1
  %last_div76.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 1
  %328 = ptrtoint ptr %last_div76.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv.i29, ptr %last_div76.i, align 4
  %329 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %bf.load77.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %330 = and i32 %bf.load77.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool79.not.i = icmp eq i32 %330, 0
  br i1 %tobool79.not.i, label %if.end75.i.do.body257.i_crit_edge, label %if.then80.i

if.end75.i.do.body257.i_crit_edge:                ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body257.i

if.then80.i:                                      ; preds = %if.end75.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg.i24) #7
  %331 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg.i24, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tda_config.i) #7
  %332 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %tda_config.i, align 4
  %333 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %std.i, align 8
  %and82.i = and i64 %334, 12582912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and82.i)
  %tobool83.not.i = icmp ne i64 %and82.i, 0
  %and85.i = and i64 %334, -12582913
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85.i)
  %tobool86.not.i = icmp eq i64 %and85.i, 0
  %335 = and i1 %tobool83.not.i, %tobool86.not.i
  %336 = ptrtoint ptr %tda9887_cfg.i24 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 74, ptr %tda9887_cfg.i24, align 4
  %337 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %tda_config.i, ptr %331, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %334)
  %cmp89.i = icmp eq i64 %334, 8388608
  %338 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %bf.load92.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  br i1 %cmp89.i, label %if.then91.i, label %if.else112.i

if.then91.i:                                      ; preds = %if.then80.i
  %bf.lshr93.i = lshr i32 %bf.load92.i, 25
  %bf.lshr96.i = lshr i32 %bf.load92.i, 23
  %bf.clear943.i = xor i32 %bf.lshr93.i, %bf.lshr96.i
  %xor.i = and i32 %bf.clear943.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool98.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool98.not.i, label %if.then91.i.if.end100.i_crit_edge, label %if.then99.i

if.then91.i.if.end100.i_crit_edge:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i

if.then99.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %339 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 32, ptr %tda_config.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then99.i, %if.then91.i.if.end100.i_crit_edge
  %340 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %bf.load101.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %bf.lshr102.i = lshr i32 %bf.load101.i, 24
  %bf.lshr105.i = lshr i32 %bf.load101.i, 22
  %bf.clear1034.i = xor i32 %bf.lshr102.i, %bf.lshr105.i
  %xor107.i = and i32 %bf.clear1034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor107.i)
  %tobool108.not.i = icmp eq i32 %xor107.i, 0
  br i1 %tobool108.not.i, label %if.end100.i.if.end129.i_crit_edge, label %if.then109.i

if.end100.i.if.end129.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then109.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  %341 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %tda_config.i, align 4
  %or110.i = or i32 %342, 64
  store i32 %or110.i, ptr %tda_config.i, align 4
  br label %if.end129.i

if.else112.i:                                     ; preds = %if.then80.i
  %343 = and i32 %bf.load92.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool117.not.i = icmp eq i32 %343, 0
  br i1 %tobool117.not.i, label %if.else112.i.if.end120.i_crit_edge, label %if.then118.i

if.else112.i.if.end120.i_crit_edge:               ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then118.i:                                     ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #9
  %344 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 32, ptr %tda_config.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then118.i, %if.else112.i.if.end120.i_crit_edge
  %345 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %bf.load122.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %346 = and i32 %bf.load122.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool125.not.i = icmp eq i32 %346, 0
  br i1 %tobool125.not.i, label %if.end120.i.if.end129.i_crit_edge, label %if.then126.i

if.end120.i.if.end129.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then126.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  %347 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %tda_config.i, align 4
  %or127.i = or i32 %348, 64
  store i32 %or127.i, ptr %tda_config.i, align 4
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then126.i, %if.end120.i.if.end129.i_crit_edge, %if.then109.i, %if.end100.i.if.end129.i_crit_edge
  %349 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %bf.load130.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %350 = and i32 %bf.load130.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool133.not.i = icmp eq i32 %350, 0
  br i1 %tobool133.not.i, label %if.end129.i.if.end136.i53_crit_edge, label %if.then134.i52

if.end129.i.if.end136.i53_crit_edge:              ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i53

if.then134.i52:                                   ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  %351 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %tda_config.i, align 4
  %or135.i51 = or i32 %352, 16
  store i32 %or135.i51, ptr %tda_config.i, align 4
  br label %if.end136.i53

if.end136.i53:                                    ; preds = %if.then134.i52, %if.end129.i.if.end136.i53_crit_edge
  br i1 %335, label %if.then138.i, label %if.else192.i

if.then138.i:                                     ; preds = %if.end136.i53
  %353 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call13.i, label %if.then138.i.if.else172.i_crit_edge [
    i32 0, label %land.lhs.true141.i
    i32 1, label %land.lhs.true156.i
  ]

if.then138.i.if.else172.i_crit_edge:              ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else172.i

land.lhs.true141.i:                               ; preds = %if.then138.i
  %default_top_secam_low.i = getelementptr inbounds %struct.tuner_params, ptr %call.i, i32 0, i32 2
  %354 = ptrtoint ptr %default_top_secam_low.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %bf.load142.i = load i16, ptr %default_top_secam_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load142.i)
  %tobool143.not.i = icmp ult i16 %bf.load142.i, 2048
  br i1 %tobool143.not.i, label %land.lhs.true141.i.if.else172.i_crit_edge, label %if.then144.i

land.lhs.true141.i.if.else172.i_crit_edge:        ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else172.i

if.then144.i:                                     ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #9
  %355 = lshr i16 %bf.load142.i, 3
  %narrow2.i = and i16 %355, 7936
  %356 = add nuw nsw i16 %narrow2.i, 4096
  %357 = or i16 %356, 8192
  %or151.i = zext i16 %357 to i32
  %358 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %tda_config.i, align 4
  %or152.i = or i32 %359, %or151.i
  store i32 %or152.i, ptr %tda_config.i, align 4
  br label %if.end246.i

land.lhs.true156.i:                               ; preds = %if.then138.i
  %default_top_secam_mid.i = getelementptr inbounds %struct.tuner_params, ptr %call.i, i32 0, i32 2
  %360 = ptrtoint ptr %default_top_secam_mid.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %bf.load157.i = load i16, ptr %default_top_secam_mid.i, align 4
  %bf.shl.i = shl i16 %bf.load157.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.shl.i)
  %tobool160.not.i = icmp ult i16 %bf.shl.i, 2048
  br i1 %tobool160.not.i, label %land.lhs.true156.i.if.else172.i_crit_edge, label %if.then161.i

land.lhs.true156.i.if.else172.i_crit_edge:        ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else172.i

if.then161.i:                                     ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #9
  %361 = lshr exact i16 %bf.shl.i, 3
  %narrow1.i = and i16 %361, 7936
  %362 = add nuw nsw i16 %narrow1.i, 4096
  %363 = or i16 %362, 8192
  %or170.i = zext i16 %363 to i32
  %364 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %tda_config.i, align 4
  %or171.i = or i32 %365, %or170.i
  store i32 %or171.i, ptr %tda_config.i, align 4
  br label %if.end246.i

if.else172.i:                                     ; preds = %land.lhs.true156.i.if.else172.i_crit_edge, %land.lhs.true141.i.if.else172.i_crit_edge, %if.then138.i.if.else172.i_crit_edge
  %default_top_secam_high.i = getelementptr inbounds %struct.tuner_params, ptr %call.i, i32 0, i32 2
  %366 = ptrtoint ptr %default_top_secam_high.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %bf.load173.i = load i16, ptr %default_top_secam_high.i, align 4
  %bf.shl174.i = shl i16 %bf.load173.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.shl174.i)
  %tobool177.not.i = icmp ult i16 %bf.shl174.i, 2048
  br i1 %tobool177.not.i, label %if.else172.i.if.end246.i_crit_edge, label %if.then178.i

if.else172.i.if.end246.i_crit_edge:               ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246.i

if.then178.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #9
  %367 = lshr exact i16 %bf.shl174.i, 3
  %narrow.i = and i16 %367, 7936
  %368 = add nuw nsw i16 %narrow.i, 4096
  %369 = or i16 %368, 8192
  %or187.i = zext i16 %369 to i32
  %370 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %tda_config.i, align 4
  %or188.i = or i32 %371, %or187.i
  store i32 %or188.i, ptr %tda_config.i, align 4
  br label %if.end246.i

if.else192.i:                                     ; preds = %if.end136.i53
  %372 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call13.i, label %if.else192.i.if.else228.i_crit_edge [
    i32 0, label %land.lhs.true195.i
    i32 1, label %land.lhs.true213.i
  ]

if.else192.i.if.else228.i_crit_edge:              ; preds = %if.else192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228.i

land.lhs.true195.i:                               ; preds = %if.else192.i
  %373 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %bf.load196.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %bf.shl197.i = shl i32 %bf.load196.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %bf.shl197.i)
  %tobool199.not.i = icmp ult i32 %bf.shl197.i, 134217728
  br i1 %tobool199.not.i, label %land.lhs.true195.i.if.else228.i_crit_edge, label %if.then200.i

land.lhs.true195.i.if.else228.i_crit_edge:        ; preds = %land.lhs.true195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228.i

if.then200.i:                                     ; preds = %land.lhs.true195.i
  call void @__sanitizer_cov_trace_pc() #9
  %374 = lshr i32 %bf.shl197.i, 19
  %add205.i = and i32 %374, 7936
  %and206.i = add nuw nsw i32 %add205.i, 4096
  %375 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %tda_config.i, align 4
  %or208.i = or i32 %and206.i, %376
  %or209.i = or i32 %or208.i, 8192
  store i32 %or209.i, ptr %tda_config.i, align 4
  br label %if.end246.i

land.lhs.true213.i:                               ; preds = %if.else192.i
  %377 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %bf.load214.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %378 = and i32 %bf.load214.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool217.not.i = icmp eq i32 %378, 0
  br i1 %tobool217.not.i, label %land.lhs.true213.i.if.else228.i_crit_edge, label %if.then218.i

land.lhs.true213.i.if.else228.i_crit_edge:        ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228.i

if.then218.i:                                     ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #9
  %and224.i = add nuw nsw i32 %378, 4096
  %379 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %tda_config.i, align 4
  %or226.i = or i32 %and224.i, %380
  %or227.i = or i32 %or226.i, 8192
  store i32 %or227.i, ptr %tda_config.i, align 4
  br label %if.end246.i

if.else228.i:                                     ; preds = %land.lhs.true213.i.if.else228.i_crit_edge, %land.lhs.true195.i.if.else228.i_crit_edge, %if.else192.i.if.else228.i_crit_edge
  %381 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %bf.load229.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %bf.shl230.i = shl i32 %bf.load229.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %bf.shl230.i)
  %tobool232.not.i = icmp ult i32 %bf.shl230.i, 134217728
  br i1 %tobool232.not.i, label %if.else228.i.if.end246.i_crit_edge, label %if.then233.i

if.else228.i.if.end246.i_crit_edge:               ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246.i

if.then233.i:                                     ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #9
  %382 = lshr exact i32 %bf.shl230.i, 19
  %add238.i = and i32 %382, 7936
  %and239.i = add nuw nsw i32 %add238.i, 4096
  %383 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %tda_config.i, align 4
  %or241.i = or i32 %and239.i, %384
  %or242.i = or i32 %or241.i, 8192
  store i32 %or242.i, ptr %tda_config.i, align 4
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.then233.i, %if.else228.i.if.end246.i_crit_edge, %if.then218.i, %if.then200.i, %if.then178.i, %if.else172.i.if.end246.i_crit_edge, %if.then161.i, %if.then144.i
  %385 = ptrtoint ptr %cb_first_if_lower_freq.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %bf.load247.i = load i32, ptr %cb_first_if_lower_freq.i, align 4
  %386 = and i32 %bf.load247.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool250.not.i = icmp eq i32 %386, 0
  br i1 %tobool250.not.i, label %if.end246.i.if.end253.i_crit_edge, label %if.then251.i

if.end246.i.if.end253.i_crit_edge:                ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253.i

if.then251.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #9
  %387 = ptrtoint ptr %tda_config.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %tda_config.i, align 4
  %or252.i = or i32 %388, 524288
  store i32 %or252.i, ptr %tda_config.i, align 4
  br label %if.end253.i

if.end253.i:                                      ; preds = %if.then251.i, %if.end246.i.if.end253.i_crit_edge
  %adap255.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 1
  %389 = ptrtoint ptr %adap255.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %adap255.i, align 4
  call void @i2c_clients_command(ptr noundef %390, i32 noundef 1074291804, ptr noundef nonnull %tda9887_cfg.i24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tda_config.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg.i24) #7
  br label %do.body257.i

do.body257.i:                                     ; preds = %if.end253.i, %if.end75.i.do.body257.i_crit_edge
  %391 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool258.not.i = icmp eq i32 %391, 0
  br i1 %tobool258.not.i, label %do.body257.i.do.end293.i_crit_edge, label %do.end263.i

do.body257.i.do.end293.i_crit_edge:               ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end293.i

do.end263.i:                                      ; preds = %do.body257.i
  %i2c_props265.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2
  %name266.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 3
  %392 = ptrtoint ptr %name266.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %name266.i, align 4
  %adap268.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 1
  %394 = ptrtoint ptr %adap268.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %adap268.i, align 4
  %tobool269.not.i = icmp eq ptr %395, null
  br i1 %tobool269.not.i, label %do.end263.i.cond.end275.i_crit_edge, label %cond.true270.i

do.end263.i.cond.end275.i_crit_edge:              ; preds = %do.end263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end275.i

cond.true270.i:                                   ; preds = %do.end263.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i10.i = getelementptr inbounds %struct.i2c_adapter, ptr %395, i32 0, i32 11
  %396 = ptrtoint ptr %nr.i10.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %nr.i10.i, align 4
  br label %cond.end275.i

cond.end275.i:                                    ; preds = %cond.true270.i, %do.end263.i.cond.end275.i_crit_edge
  %cond276.i = phi i32 [ %397, %cond.true270.i ], [ -1, %do.end263.i.cond.end275.i_crit_edge ]
  %398 = ptrtoint ptr %i2c_props265.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %i2c_props265.i, align 4
  %conv279.i = zext i8 %399 to i32
  %400 = ptrtoint ptr %buffer.i23 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %buffer.i23, align 4
  %conv281.i = zext i8 %401 to i32
  %402 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %178, align 1
  %conv283.i = zext i8 %403 to i32
  %404 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %179, align 2
  %conv285.i = zext i8 %405 to i32
  %406 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %180, align 1
  %conv287.i = zext i8 %407 to i32
  %call288.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %393, i32 noundef %cond276.i, i32 noundef %conv279.i, i32 noundef %conv281.i, i32 noundef %conv283.i, i32 noundef %conv285.i, i32 noundef %conv287.i) #10
  br label %do.end293.i

do.end293.i:                                      ; preds = %cond.end275.i, %do.body257.i.do.end293.i_crit_edge
  %i2c_props294.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i21) #7
  %408 = getelementptr inbounds i8, ptr %msg.i.i21, i32 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 327679, ptr %408, align 4
  %410 = ptrtoint ptr %i2c_props294.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %i2c_props294.i, align 4
  %conv.i.i54 = zext i8 %411 to i16
  %412 = ptrtoint ptr %msg.i.i21 to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 %conv.i.i54, ptr %msg.i.i21, align 4
  %flags.i.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21, i32 0, i32 1
  %413 = ptrtoint ptr %flags.i.i55 to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 0, ptr %flags.i.i55, align 2
  %buf4.i.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21, i32 0, i32 3
  %414 = ptrtoint ptr %buf4.i.i56 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %buffer.i23, ptr %buf4.i.i56, align 4
  %adap.i.i57 = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 1
  %415 = ptrtoint ptr %adap.i.i57 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %adap.i.i57, align 4
  %call.i.i58 = call i32 @i2c_transfer(ptr noundef %416, ptr noundef nonnull %msg.i.i21, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i21) #7
  %417 = zext i32 %call.i.i58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %417, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call.i.i58, label %do.end303.i [
    i32 4, label %do.end293.i.if.end325.i_crit_edge
    i32 1, label %do.end293.i.if.end325.i_crit_edge82
  ]

do.end293.i.if.end325.i_crit_edge82:              ; preds = %do.end293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end325.i

do.end293.i.if.end325.i_crit_edge:                ; preds = %do.end293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end325.i

do.end303.i:                                      ; preds = %do.end293.i
  %name306.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %175, i32 0, i32 2, i32 3
  %418 = ptrtoint ptr %name306.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %name306.i, align 4
  %420 = ptrtoint ptr %adap.i.i57 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %adap.i.i57, align 4
  %tobool309.not.i = icmp eq ptr %421, null
  br i1 %tobool309.not.i, label %do.end303.i.cond.end315.i_crit_edge, label %cond.true310.i

do.end303.i.cond.end315.i_crit_edge:              ; preds = %do.end303.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end315.i

cond.true310.i:                                   ; preds = %do.end303.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i11.i = getelementptr inbounds %struct.i2c_adapter, ptr %421, i32 0, i32 11
  %422 = ptrtoint ptr %nr.i11.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %nr.i11.i, align 4
  br label %cond.end315.i

cond.end315.i:                                    ; preds = %cond.true310.i, %do.end303.i.cond.end315.i_crit_edge
  %cond316.i = phi i32 [ %423, %cond.true310.i ], [ -1, %do.end303.i.cond.end315.i_crit_edge ]
  %424 = ptrtoint ptr %i2c_props294.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %i2c_props294.i, align 4
  %conv319.i = zext i8 %425 to i32
  %call320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %419, i32 noundef %cond316.i, i32 noundef %conv319.i, i32 noundef %call.i.i58) #10
  br label %if.end325.i

if.end325.i:                                      ; preds = %cond.end315.i, %do.end293.i.if.end325.i_crit_edge, %do.end293.i.if.end325.i_crit_edge82
  %426 = ptrtoint ptr %config.i22 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %config.i22, align 1
  %428 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %cb.i, align 1
  %430 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %tuner_priv, align 4
  %type.i14.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 4
  %432 = ptrtoint ptr %type.i14.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %type.i14.i, align 4
  %434 = zext i32 %433 to i64
  call void @__sanitizer_cov_trace_switch(i64 %434, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %433, label %if.end325.i.simple_set_tv_freq.exit_crit_edge [
    i32 64, label %sw.bb.i15.i
    i32 80, label %sw.bb1.i.i
    i32 49, label %sw.bb3.i.i
  ]

if.end325.i.simple_set_tv_freq.exit_crit_edge:    ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_tv_freq.exit

sw.bb.i15.i:                                      ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @simple_set_aux_byte(ptr noundef %fe, i8 noundef zeroext %427, i8 noundef zeroext 32) #7
  br label %simple_set_tv_freq.exit

sw.bb1.i.i:                                       ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @simple_set_aux_byte(ptr noundef %fe, i8 noundef zeroext %427, i8 noundef zeroext 96) #7
  br label %simple_set_tv_freq.exit

sw.bb3.i.i:                                       ; preds = %if.end325.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %435 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %435, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_byte.i.i) #7
  %436 = ptrtoint ptr %status_byte.i.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 0, ptr %status_byte.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %437 = load volatile i32, ptr @jiffies, align 128
  %sub18.i.i = sub i32 %add.i.i, %437
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i.i)
  %cmp19.i.i = icmp slt i32 %sub18.i.i, 0
  br i1 %cmp19.i.i, label %sw.bb3.i.i.cleanup108.critedge.i.i_crit_edge, label %if.end.lr.ph.i.i

sw.bb3.i.i.cleanup108.critedge.i.i_crit_edge:     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108.critedge.i.i

if.end.lr.ph.i.i:                                 ; preds = %sw.bb3.i.i
  %i2c_props.i16.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 2
  %438 = getelementptr inbounds i8, ptr %msg.i.i12.i, i32 4
  %flags.i.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 0, i32 1
  %buf4.i.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 0, i32 3
  %adap.i.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 2, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end25.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i12.i) #7
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 131071, ptr %438, align 4
  %440 = ptrtoint ptr %i2c_props.i16.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %i2c_props.i16.i, align 4
  %conv.i.i.i = zext i8 %441 to i16
  %442 = ptrtoint ptr %msg.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %conv.i.i.i, ptr %msg.i.i12.i, align 4
  %443 = ptrtoint ptr %flags.i.i17.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 1, ptr %flags.i.i17.i, align 2
  %444 = ptrtoint ptr %buf4.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %status_byte.i.i, ptr %buf4.i.i18.i, align 4
  %445 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i19.i = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %msg.i.i12.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i19.i)
  %cmp6.not.i.i = icmp eq i32 %call.i.i19.i, 1
  br i1 %cmp6.not.i.i, label %if.end21.i.i, label %do.end.i22.i

do.end.i22.i:                                     ; preds = %if.end.i.i
  %name.i20.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 2, i32 3
  %447 = ptrtoint ptr %name.i20.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %name.i20.i, align 4
  %449 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %adap.i.i.i, align 4
  %tobool.not.i21.i = icmp eq ptr %450, null
  br i1 %tobool.not.i21.i, label %do.end.i22.i.cond.end.i27.i_crit_edge, label %cond.true.i24.i

do.end.i22.i.cond.end.i27.i_crit_edge:            ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i27.i

cond.true.i24.i:                                  ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i23.i = getelementptr inbounds %struct.i2c_adapter, ptr %450, i32 0, i32 11
  %451 = ptrtoint ptr %nr.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %nr.i.i23.i, align 4
  br label %cond.end.i27.i

cond.end.i27.i:                                   ; preds = %cond.true.i24.i, %do.end.i22.i.cond.end.i27.i_crit_edge
  %cond.i25.i = phi i32 [ %452, %cond.true.i24.i ], [ -1, %do.end.i22.i.cond.end.i27.i_crit_edge ]
  %453 = ptrtoint ptr %i2c_props.i16.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %i2c_props.i16.i, align 4
  %conv.i26.i = zext i8 %454 to i32
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %448, i32 noundef %cond.i25.i, i32 noundef %conv.i26.i, i32 noundef %call.i.i19.i) #10
  br label %for.end.i.i

if.end21.i.i:                                     ; preds = %if.end.i.i
  %455 = ptrtoint ptr %status_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %status_byte.i.i, align 1
  %457 = and i8 %456, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool23.not.i28.i = icmp eq i8 %457, 0
  br i1 %tobool23.not.i28.i, label %if.end25.i.i, label %if.end21.i.i.for.end.i.i_crit_edge

if.end21.i.i.for.end.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %458 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %458(i32 noundef 2147480) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %459 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %459
  %cmp.i29.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i29.i, label %if.end25.i.i.cleanup108.critedge.i.i_crit_edge, label %if.end25.i.i.if.end.i.i_crit_edge

if.end25.i.i.if.end.i.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end25.i.i.cleanup108.critedge.i.i_crit_edge:   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108.critedge.i.i

for.end.i.i:                                      ; preds = %if.end21.i.i.for.end.i.i_crit_edge, %cond.end.i27.i
  %460 = and i8 %427, -65
  %461 = lshr i32 %add15.i, 8
  %462 = trunc i32 %461 to i8
  %conv31.i.i = and i8 %462, 127
  %463 = ptrtoint ptr %buffer.i23 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %conv31.i.i, ptr %buffer.i23, align 4
  %conv34.i.i = trunc i32 %add15.i to i8
  %464 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %conv34.i.i, ptr %178, align 1
  %465 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %460, ptr %179, align 2
  %466 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %429, ptr %180, align 1
  %467 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %tobool39.not.i30.i = icmp eq i32 %467, 0
  br i1 %tobool39.not.i30.i, label %for.end.i.i.do.end74.i.i_crit_edge, label %do.end44.i.i

for.end.i.i.do.end74.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end74.i.i

do.end44.i.i:                                     ; preds = %for.end.i.i
  %name47.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 2, i32 3
  %468 = ptrtoint ptr %name47.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %name47.i.i, align 4
  %470 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %adap.i.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %471, null
  br i1 %tobool50.not.i.i, label %do.end44.i.i.cond.end56.i.i_crit_edge, label %cond.true51.i.i

do.end44.i.i.cond.end56.i.i_crit_edge:            ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end56.i.i

cond.true51.i.i:                                  ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i1.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %471, i32 0, i32 11
  %472 = ptrtoint ptr %nr.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %nr.i1.i.i, align 4
  br label %cond.end56.i.i

cond.end56.i.i:                                   ; preds = %cond.true51.i.i, %do.end44.i.i.cond.end56.i.i_crit_edge
  %cond57.i.i = phi i32 [ %473, %cond.true51.i.i ], [ -1, %do.end44.i.i.cond.end56.i.i_crit_edge ]
  %474 = ptrtoint ptr %i2c_props.i16.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %i2c_props.i16.i, align 4
  %conv60.i.i = zext i8 %475 to i32
  %conv62.i.i = zext i8 %conv31.i.i to i32
  %conv34.mask.i.i = and i32 %add15.i, 255
  %conv66.i.i = zext i8 %460 to i32
  %conv68.i.i = zext i8 %429 to i32
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %469, i32 noundef %cond57.i.i, i32 noundef %conv60.i.i, i32 noundef %conv62.i.i, i32 noundef %conv34.mask.i.i, i32 noundef %conv66.i.i, i32 noundef %conv68.i.i) #10
  br label %do.end74.i.i

do.end74.i.i:                                     ; preds = %cond.end56.i.i, %for.end.i.i.do.end74.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i.i) #7
  %476 = getelementptr inbounds i8, ptr %msg.i2.i.i, i32 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 327679, ptr %476, align 4
  %478 = ptrtoint ptr %i2c_props.i16.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %i2c_props.i16.i, align 4
  %conv.i3.i.i = zext i8 %479 to i16
  %480 = ptrtoint ptr %msg.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %conv.i3.i.i, ptr %msg.i2.i.i, align 4
  %flags.i4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 1
  %481 = ptrtoint ptr %flags.i4.i.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 0, ptr %flags.i4.i.i, align 2
  %buf4.i6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 3
  %482 = ptrtoint ptr %buf4.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %buffer.i23, ptr %buf4.i6.i.i, align 4
  %483 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %adap.i.i.i, align 4
  %call.i8.i.i = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %msg.i2.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i.i) #7
  %485 = zext i32 %call.i8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %485, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call.i8.i.i, label %do.end84.i.i [
    i32 4, label %do.end74.i.i.cleanup.i.i_crit_edge
    i32 1, label %do.end74.i.i.cleanup.i.i_crit_edge83
  ]

do.end74.i.i.cleanup.i.i_crit_edge83:             ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

do.end74.i.i.cleanup.i.i_crit_edge:               ; preds = %do.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

do.end84.i.i:                                     ; preds = %do.end74.i.i
  %name87.i.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %431, i32 0, i32 2, i32 3
  %486 = ptrtoint ptr %name87.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %name87.i.i, align 4
  %488 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %adap.i.i.i, align 4
  %tobool90.not.i.i = icmp eq ptr %489, null
  br i1 %tobool90.not.i.i, label %do.end84.i.i.cond.end96.i.i_crit_edge, label %cond.true91.i.i

do.end84.i.i.cond.end96.i.i_crit_edge:            ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end96.i.i

cond.true91.i.i:                                  ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i9.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %489, i32 0, i32 11
  %490 = ptrtoint ptr %nr.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %nr.i9.i.i, align 4
  br label %cond.end96.i.i

cond.end96.i.i:                                   ; preds = %cond.true91.i.i, %do.end84.i.i.cond.end96.i.i_crit_edge
  %cond97.i.i = phi i32 [ %491, %cond.true91.i.i ], [ -1, %do.end84.i.i.cond.end96.i.i_crit_edge ]
  %492 = ptrtoint ptr %i2c_props.i16.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %i2c_props.i16.i, align 4
  %conv100.i.i = zext i8 %493 to i32
  %call101.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %487, i32 noundef %cond97.i.i, i32 noundef %conv100.i.i, i32 noundef %call.i8.i.i) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cond.end96.i.i, %do.end74.i.i.cleanup.i.i_crit_edge, %do.end74.i.i.cleanup.i.i_crit_edge83
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_byte.i.i) #7
  br label %simple_set_tv_freq.exit

cleanup108.critedge.i.i:                          ; preds = %if.end25.i.i.cleanup108.critedge.i.i_crit_edge, %sw.bb3.i.i.cleanup108.critedge.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_byte.i.i) #7
  br label %simple_set_tv_freq.exit

simple_set_tv_freq.exit:                          ; preds = %cleanup108.critedge.i.i, %cleanup.i.i, %sw.bb1.i.i, %sw.bb.i15.i, %if.end325.i.simple_set_tv_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i23) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config.i22) #7
  %494 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %params, align 8
  %mul6 = mul i32 %495, 62500
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %simple_set_tv_freq.exit, %simple_set_radio_freq.exit
  %mul6.sink = phi i32 [ %mul6, %simple_set_tv_freq.exit ], [ %div20, %simple_set_radio_freq.exit ]
  %frequency7 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 6
  %496 = ptrtoint ptr %frequency7 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %mul6.sink, ptr %frequency7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %bandwidth = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 7
  %497 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 0, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @simple_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @simple_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #7
  %4 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte.i, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131071, ptr %5, align 4
  %7 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_props, align 4
  %conv.i.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %byte.i, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %tuner_read_status.exit, label %tuner_read_status.exit.thread

tuner_read_status.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #7
  br label %if.end3

tuner_read_status.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %byte.i, align 1
  %conv.i = zext i8 %13 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #7
  %and.i = lshr i32 %conv.i, 6
  %and.i.lobit = and i32 %and.i, 1
  br label %if.end3

if.end3:                                          ; preds = %tuner_read_status.exit, %tuner_read_status.exit.thread
  %storemerge = phi i32 [ 0, %tuner_read_status.exit.thread ], [ %and.i.lobit, %tuner_read_status.exit ]
  %retval.0.i45 = phi i32 [ 0, %tuner_read_status.exit.thread ], [ %conv.i, %tuner_read_status.exit ]
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %status, align 4
  %type = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %16, label %sw.default.i [
    i32 38, label %if.end3.sw.bb.i_crit_edge
    i32 43, label %if.end3.sw.bb.i_crit_edge52
    i32 51, label %if.end3.sw.bb.i_crit_edge53
    i32 47, label %if.end3.sw.bb.i_crit_edge54
    i32 77, label %if.end3.sw.bb.i_crit_edge55
    i32 79, label %if.end3.if.then6_crit_edge
  ]

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end3.sw.bb.i_crit_edge55:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end3.sw.bb.i_crit_edge54:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end3.sw.bb.i_crit_edge53:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end3.sw.bb.i_crit_edge52:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end3.sw.bb.i_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end3.sw.bb.i_crit_edge, %if.end3.sw.bb.i_crit_edge52, %if.end3.sw.bb.i_crit_edge53, %if.end3.sw.bb.i_crit_edge54, %if.end3.sw.bb.i_crit_edge55
  %and.i38 = and i32 %retval.0.i45, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i38)
  %cmp.i = icmp eq i32 %and.i38, 4
  %conv.i39 = zext i1 %cmp.i to i32
  br label %tuner_stereo.exit

sw.default.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i32 %retval.0.i45, 16
  br label %tuner_stereo.exit

tuner_stereo.exit:                                ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i40 = phi i32 [ %and2.i, %sw.default.i ], [ %conv.i39, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i40)
  %tobool5.not = icmp eq i32 %retval.0.i40, 0
  br i1 %tobool5.not, label %tuner_stereo.exit.do.body_crit_edge, label %tuner_stereo.exit.if.then6_crit_edge

tuner_stereo.exit.if.then6_crit_edge:             ; preds = %tuner_stereo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

tuner_stereo.exit.do.body_crit_edge:              ; preds = %tuner_stereo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %tuner_stereo.exit.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %or = or i32 %19, 2
  store i32 %or, ptr %status, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %tuner_stereo.exit.do.body_crit_edge
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 4
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %26, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %27 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %28 to i32
  %and.i41 = and i32 %retval.0.i45, 7
  %sub.i = add nsw i32 %and.i41, -2
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %22, i32 noundef %cond, i32 noundef %conv, i32 noundef %sub.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_get_rf_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %radio_mode = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %radio_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_mode, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #7
  %6 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %byte.i, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 131071, ptr %7, align 4
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 4
  %conv.i.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %byte.i, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end.tuner_read_status.exit_crit_edge

if.end.tuner_read_status.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tuner_read_status.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byte.i, align 1
  %conv.i = zext i8 %15 to i32
  %phi.bo = shl nuw nsw i32 %conv.i, 13
  %phi.bo29 = and i32 %phi.bo, 57344
  br label %tuner_read_status.exit

tuner_read_status.exit:                           ; preds = %if.end.i, %if.end.tuner_read_status.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo29, %if.end.i ], [ 0, %if.end.tuner_read_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #7
  %conv = trunc i32 %retval.0.i to i16
  %16 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %strength, align 2
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %tuner_read_status.exit.cleanup_crit_edge, label %do.end

tuner_read_status.exit.cleanup_crit_edge:         ; preds = %tuner_read_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %tuner_read_status.exit
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %23, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %24 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i2c_props, align 4
  %conv14 = zext i8 %25 to i32
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %19, i32 noundef %cond, i32 noundef %conv14, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %tuner_read_status.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %tuner_read_status.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_dvb_calc_regs(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf, i32 noundef %buf_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buf_len)
  %cmp = icmp slt i32 %buf_len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call fastcc i32 @simple_dvb_configure(ptr noundef %fe, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_props, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %buf, align 1
  %frequency5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %frequency5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %frequency5, align 4
  %12 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_dvb_configure(ptr nocapture noundef readonly %fe, ptr nocapture noundef %buf, i32 noundef %delsys, i32 noundef %freq, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %config = alloca i8, align 1
  %cb = alloca i8, align 1
  %frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tun1 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tun1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tun1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config) #7
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %config, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cb) #7
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cb, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frequency) #7
  %div2 = udiv i32 %freq, 62500
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div2, ptr %frequency, align 4
  %stepsize = getelementptr inbounds %struct.tunertype, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %stepsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stepsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %14, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %15 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %16 to i32
  %type = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %10, i32 noundef %cond, i32 noundef %conv, i32 noundef %18, ptr noundef %20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call17 = tail call fastcc ptr @simple_tuner_params(ptr noundef %fe, i32 noundef 4)
  %call18 = call fastcc i32 @simple_config_lookup(ptr noundef %fe, ptr noundef %call17, ptr noundef nonnull %frequency, ptr noundef nonnull %config, ptr noundef nonnull %cb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %21 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frequency, align 4
  %iffreq = getelementptr inbounds %struct.tuner_params, ptr %call17, i32 0, i32 3
  %23 = ptrtoint ptr %iffreq to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %iffreq, align 2
  %conv22 = zext i16 %24 to i32
  %add = add i32 %22, %conv22
  %mul = mul i32 %add, 62500
  %25 = load i32, ptr @offset, align 4
  %add23 = add i32 %mul, %25
  %26 = ptrtoint ptr %stepsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stepsize, align 4
  %div25115 = lshr i32 %27, 1
  %add26 = add i32 %add23, %div25115
  %div28 = udiv i32 %add26, %27
  %shr = lshr i32 %div28, 8
  %conv29 = trunc i32 %shr to i8
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv29, ptr %buf, align 1
  %conv30 = trunc i32 %div28 to i8
  %arrayidx31 = getelementptr i8, ptr %buf, i32 1
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv30, ptr %arrayidx31, align 1
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config, align 1
  %arrayidx32 = getelementptr i8, ptr %buf, i32 2
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx32, align 1
  %33 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cb, align 1
  %arrayidx33 = getelementptr i8, ptr %buf, i32 3
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx33, align 1
  %36 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tuner_priv, align 4
  %type.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %39, label %if.end21.simple_set_dvb.exit_crit_edge [
    i32 63, label %if.end21.sw.bb.i_crit_edge
    i32 78, label %if.end21.sw.bb.i_crit_edge117
    i32 67, label %sw.bb3.i
    i32 68, label %if.end21.sw.bb21.i_crit_edge
    i32 42, label %if.end21.sw.bb21.i_crit_edge118
  ]

if.end21.sw.bb21.i_crit_edge118:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21.i

if.end21.sw.bb21.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21.i

if.end21.sw.bb.i_crit_edge117:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end21.sw.bb.i_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end21.simple_set_dvb.exit_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_dvb.exit

sw.bb.i:                                          ; preds = %if.end21.sw.bb.i_crit_edge, %if.end21.sw.bb.i_crit_edge117
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %bw)
  %cmp.i = icmp eq i32 %bw, 8000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 158869999, i32 %freq)
  %cmp1.i = icmp ugt i32 %freq, 158869999
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %sw.bb.i.simple_set_dvb.exit_crit_edge

sw.bb.i.simple_set_dvb.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_dvb.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = or i8 %34, 8
  br label %simple_set_dvb.exit.sink.split

sw.bb3.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 161000000, i32 %freq)
  %cmp4.i = icmp ult i32 %freq, 161000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 444000000, i32 %freq)
  %cmp6.i = icmp ult i32 %freq, 444000000
  %cond.i = select i1 %cmp6.i, i8 2, i8 4
  %cond8.i = select i1 %cmp4.i, i8 1, i8 %cond.i
  %or11.i = or i8 %34, %cond8.i
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or11.i, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %bw)
  %cmp13.i = icmp eq i32 %bw, 8000000
  br i1 %cmp13.i, label %if.then15.i, label %sw.bb3.i.simple_set_dvb.exit_crit_edge

sw.bb3.i.simple_set_dvb.exit_crit_edge:           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_dvb.exit

if.then15.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = or i8 %or11.i, 8
  br label %simple_set_dvb.exit.sink.split

sw.bb21.i:                                        ; preds = %if.end21.sw.bb21.i_crit_edge, %if.end21.sw.bb21.i_crit_edge118
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %37, align 4
  %arrayidx22.i = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %delsys)
  %cond33.i = icmp eq i32 %delsys, 2
  %..i = zext i1 %cond33.i to i32
  %new_rf.0.i = select i1 %tobool.not.i, i32 %..i, i32 %47
  %48 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %39, label %sw.bb21.i.simple_set_dvb.exit_crit_edge [
    i32 68, label %sw.bb.i.i
    i32 42, label %sw.bb5.i.i
  ]

sw.bb21.i.simple_set_dvb.exit_crit_edge:          ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %simple_set_dvb.exit

sw.bb.i.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_rf.0.i)
  %cond17.i.i = icmp eq i32 %new_rf.0.i, 1
  br i1 %cond17.i.i, label %sw.bb1.i.i, label %sw.default.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = or i8 %34, 8
  br label %simple_set_dvb.exit.sink.split

sw.default.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = and i8 %34, -9
  br label %simple_set_dvb.exit.sink.split

sw.bb5.i.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_rf.0.i)
  %cond.i.i = icmp eq i32 %new_rf.0.i, 1
  br i1 %cond.i.i, label %sw.bb6.i.i, label %sw.default10.i.i

sw.bb6.i.i:                                       ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = or i8 %34, 1
  br label %simple_set_dvb.exit.sink.split

sw.default10.i.i:                                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = and i8 %34, -2
  br label %simple_set_dvb.exit.sink.split

simple_set_dvb.exit.sink.split:                   ; preds = %sw.default10.i.i, %sw.bb6.i.i, %sw.default.i.i, %sw.bb1.i.i, %if.then15.i, %if.then.i
  %.sink = phi i8 [ %41, %if.then.i ], [ %43, %if.then15.i ], [ %51, %sw.bb6.i.i ], [ %52, %sw.default10.i.i ], [ %49, %sw.bb1.i.i ], [ %50, %sw.default.i.i ]
  %53 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink, ptr %arrayidx33, align 1
  br label %simple_set_dvb.exit

simple_set_dvb.exit:                              ; preds = %simple_set_dvb.exit.sink.split, %sw.bb21.i.simple_set_dvb.exit_crit_edge, %sw.bb3.i.simple_set_dvb.exit_crit_edge, %sw.bb.i.simple_set_dvb.exit_crit_edge, %if.end21.simple_set_dvb.exit_crit_edge
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not = icmp eq i32 %54, 0
  br i1 %tobool35.not, label %simple_set_dvb.exit.do.end71_crit_edge, label %do.end40

simple_set_dvb.exit.do.end71_crit_edge:           ; preds = %simple_set_dvb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

do.end40:                                         ; preds = %simple_set_dvb.exit
  %i2c_props42 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name43 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name43, align 4
  %adap45 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %adap45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adap45, align 4
  %tobool46.not = icmp eq ptr %58, null
  br i1 %tobool46.not, label %do.end40.cond.end52_crit_edge, label %cond.true47

do.end40.cond.end52_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end52

cond.true47:                                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i116 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %nr.i116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr.i116, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true47, %do.end40.cond.end52_crit_edge
  %cond53 = phi i32 [ %60, %cond.true47 ], [ -1, %do.end40.cond.end52_crit_edge ]
  %61 = ptrtoint ptr %i2c_props42 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %i2c_props42, align 4
  %conv56 = zext i8 %62 to i32
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %conv59 = and i32 %shr, 255
  %conv61 = and i32 %div28, 255
  %conv63 = zext i8 %31 to i32
  %65 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx33, align 1
  %conv65 = zext i8 %66 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %56, i32 noundef %cond53, i32 noundef %conv56, ptr noundef %64, i32 noundef %div28, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv65) #10
  br label %do.end71

do.end71:                                         ; preds = %cond.end52, %simple_set_dvb.exit.do.end71_crit_edge
  %67 = ptrtoint ptr %stepsize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stepsize, align 4
  %mul73 = mul i32 %68, %div28
  %69 = ptrtoint ptr %iffreq to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %iffreq, align 2
  %conv75 = zext i16 %70 to i32
  %sub = sub i32 %mul73, %conv75
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.end.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %sub, %do.end71 ], [ 0, %cond.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frequency) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cb) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @simple_tuner_params(ptr nocapture noundef readonly %fe, i32 noundef %desired_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tun1 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tun1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tun1, align 4
  %count = getelementptr inbounds %struct.tunertype, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp90.not = icmp eq i32 %5, 0
  br i1 %cmp90.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %params = getelementptr inbounds %struct.tunertype, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tuner_params, ptr %7, i32 %i.091
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %desired_type)
  %cmp2 = icmp eq i32 %9, %desired_type
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.091, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp4 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp4, label %for.end.do.body_crit_edge, label %for.end.do.body23_crit_edge

for.end.do.body23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.do.body_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.end55_crit_edge, label %do.end

do.body.do.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end:                                           ; preds = %do.body
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %17 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %desired_type)
  %19 = icmp ult i32 %desired_type, 5
  br i1 %19, label %switch.lookup, label %cond.end.tuner_param_name.exit_crit_edge

cond.end.tuner_param_name.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tuner_param_name.exit

switch.lookup:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.simple_tuner_params, i32 0, i32 %desired_type
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tuner_param_name.exit

tuner_param_name.exit:                            ; preds = %switch.lookup, %cond.end.tuner_param_name.exit_crit_edge
  %name.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %cond.end.tuner_param_name.exit_crit_edge ]
  %type15 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %type15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %12, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull %name.0.i, i32 noundef %22) #10
  br label %do.body23

do.body23:                                        ; preds = %tuner_param_name.exit, %for.end.do.body23_crit_edge
  %i.1.ph = phi i32 [ 0, %tuner_param_name.exit ], [ %i.0.lcssa, %for.end.do.body23_crit_edge ]
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool24.not = icmp eq i32 %.pr, 0
  br i1 %tobool24.not, label %do.body23.do.end55_crit_edge, label %do.end29

do.body23.do.end55_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end29:                                         ; preds = %do.body23
  %i2c_props31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name32 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name32, align 4
  %adap34 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %adap34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap34, align 4
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %do.end29.cond.end41_crit_edge, label %cond.true36

do.end29.cond.end41_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end41

cond.true36:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i79 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %nr.i79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i79, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true36, %do.end29.cond.end41_crit_edge
  %cond42 = phi i32 [ %28, %cond.true36 ], [ -1, %do.end29.cond.end41_crit_edge ]
  %29 = ptrtoint ptr %i2c_props31 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_props31, align 4
  %conv45 = zext i8 %30 to i32
  %params46 = getelementptr inbounds %struct.tunertype, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %params46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params46, align 4
  %arrayidx47 = getelementptr %struct.tuner_params, ptr %32, i32 %i.1.ph
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %35 = icmp ult i32 %34, 5
  br i1 %35, label %switch.lookup99, label %cond.end41.tuner_param_name.exit86_crit_edge

cond.end41.tuner_param_name.exit86_crit_edge:     ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %tuner_param_name.exit86

switch.lookup99:                                  ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep100 = getelementptr inbounds [5 x ptr], ptr @switch.table.simple_tuner_params.96, i32 0, i32 %34
  %36 = ptrtoint ptr %switch.gep100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load101 = load ptr, ptr %switch.gep100, align 4
  br label %tuner_param_name.exit86

tuner_param_name.exit86:                          ; preds = %switch.lookup99, %cond.end41.tuner_param_name.exit86_crit_edge
  %name.0.i85 = phi ptr [ %switch.load101, %switch.lookup99 ], [ @.str.50, %cond.end41.tuner_param_name.exit86_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %24, i32 noundef %cond42, i32 noundef %conv45, i32 noundef %i.1.ph, ptr noundef nonnull %name.0.i85) #10
  br label %do.end55

do.end55:                                         ; preds = %tuner_param_name.exit86, %do.body23.do.end55_crit_edge, %do.body.do.end55_crit_edge
  %i.189 = phi i32 [ %i.1.ph, %tuner_param_name.exit86 ], [ %i.1.ph, %do.body23.do.end55_crit_edge ], [ 0, %do.body.do.end55_crit_edge ]
  %params56 = getelementptr inbounds %struct.tunertype, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %params56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params56, align 4
  %arrayidx57 = getelementptr %struct.tuner_params, ptr %38, i32 %i.189
  ret ptr %arrayidx57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_config_lookup(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %t_params, ptr nocapture noundef %frequency, ptr nocapture noundef %config, ptr nocapture noundef %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %count = getelementptr inbounds %struct.tuner_params, ptr %t_params, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp102.not = icmp eq i32 %3, 0
  br i1 %cmp102.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %ranges = getelementptr inbounds %struct.tuner_params, ptr %t_params, i32 0, i32 5
  %6 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ranges, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tuner_range, ptr %7, i32 %i.0103
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp1 = icmp ugt i32 %5, %conv
  br i1 %cmp1, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.0103, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp4 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp4, label %for.end.do.body_crit_edge, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.inc.do.body_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.end25_crit_edge, label %do.end

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add i32 %3, -1
  br label %do.end25

do.end:                                           ; preds = %do.body
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %17 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_props, align 4
  %conv15 = zext i8 %18 to i32
  %19 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frequency, align 4
  %ranges16 = getelementptr inbounds %struct.tuner_params, ptr %t_params, i32 0, i32 5
  %21 = ptrtoint ptr %ranges16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ranges16, align 4
  %sub = add i32 %3, -1
  %arrayidx17 = getelementptr %struct.tuner_range, ptr %22, i32 %sub
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx17, align 2
  %conv19 = zext i16 %24 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %12, i32 noundef %cond, i32 noundef %conv15, i32 noundef %20, i32 noundef %conv19) #10
  br label %do.end25

do.end25:                                         ; preds = %cond.end, %do.body.do.end25_crit_edge
  %dec.pre-phi = phi i32 [ %.pre, %do.body.do.end25_crit_edge ], [ %sub, %cond.end ]
  %ranges26 = getelementptr inbounds %struct.tuner_params, ptr %t_params, i32 0, i32 5
  %25 = ptrtoint ptr %ranges26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ranges26, align 4
  %arrayidx27 = getelementptr %struct.tuner_range, ptr %26, i32 %dec.pre-phi
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx27, align 2
  %conv29 = zext i16 %28 to i32
  %29 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv29, ptr %frequency, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end25, %for.end.if.end30_crit_edge
  %i.1 = phi i32 [ %dec.pre-phi, %do.end25 ], [ %i.0.lcssa, %for.end.if.end30_crit_edge ]
  %ranges31 = getelementptr inbounds %struct.tuner_params, ptr %t_params, i32 0, i32 5
  %30 = ptrtoint ptr %ranges31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ranges31, align 4
  %config33 = getelementptr %struct.tuner_range, ptr %31, i32 %i.1, i32 1
  %32 = ptrtoint ptr %config33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %config33, align 2
  %34 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %config, align 1
  %35 = load ptr, ptr %ranges31, align 4
  %cb36 = getelementptr %struct.tuner_range, ptr %35, i32 %i.1, i32 2
  %36 = ptrtoint ptr %cb36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cb36, align 1
  %38 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %cb, align 1
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.end30.do.end68_crit_edge, label %do.end43

if.end30.do.end68_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

do.end43:                                         ; preds = %if.end30
  %i2c_props45 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name46 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name46, align 4
  %adap48 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %adap48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adap48, align 4
  %tobool49.not = icmp eq ptr %43, null
  br i1 %tobool49.not, label %do.end43.cond.end55_crit_edge, label %cond.true50

do.end43.cond.end55_crit_edge:                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end55

cond.true50:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i101 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i101, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true50, %do.end43.cond.end55_crit_edge
  %cond56 = phi i32 [ %45, %cond.true50 ], [ -1, %do.end43.cond.end55_crit_edge ]
  %46 = ptrtoint ptr %i2c_props45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_props45, align 4
  %conv59 = zext i8 %47 to i32
  %48 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frequency, align 4
  %div99 = lshr i32 %49, 4
  %rem = and i32 %49, 15
  %mul = mul nuw nsw i32 %rem, 100
  %div60100 = lshr i32 %mul, 4
  %50 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %config, align 1
  %conv61 = zext i8 %51 to i32
  %conv62 = zext i8 %37 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %41, i32 noundef %cond56, i32 noundef %conv59, i32 noundef %div99, i32 noundef %div60100, i32 noundef %49, i32 noundef %i.1, i32 noundef %conv61, i32 noundef %conv62) #10
  br label %do.end68

do.end68:                                         ; preds = %cond.end55, %if.end30.do.end68_crit_edge
  ret i32 %i.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_clients_command(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @simple_set_aux_byte(ptr nocapture noundef readonly %fe, i8 noundef zeroext %config, i8 noundef zeroext %aux) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %3 = and i8 %config, -57
  %4 = or i8 %3, 24
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %buffer, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %aux, ptr %2, align 1
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %14 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_props, align 4
  %conv10 = zext i8 %15 to i32
  %conv12 = zext i8 %4 to i32
  %conv14 = zext i8 %aux to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %9, i32 noundef %cond, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #10
  br label %do.end19

do.end19:                                         ; preds = %cond.end, %entry.do.end19_crit_edge
  %i2c_props20 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %18 = ptrtoint ptr %i2c_props20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_props20, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffer, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %do.end19.cond.end55_crit_edge, label %do.end28

do.end19.cond.end55_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end55

do.end28:                                         ; preds = %do.end19
  %name31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %1, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name31, align 4
  %29 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap.i, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %do.end28.cond.end40_crit_edge, label %cond.true35

do.end28.cond.end40_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end40

cond.true35:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i2 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %nr.i2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i2, align 4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true35, %do.end28.cond.end40_crit_edge
  %cond41 = phi i32 [ %32, %cond.true35 ], [ -1, %do.end28.cond.end40_crit_edge ]
  %33 = ptrtoint ptr %i2c_props20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c_props20, align 4
  %conv44 = zext i8 %34 to i32
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %28, i32 noundef %cond41, i32 noundef %conv44, i32 noundef %call.i) #10
  br label %cond.end55

cond.end55:                                       ; preds = %cond.end40, %do.end19.cond.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !71, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !185, !187, !188, !190, !191, !193, !194, !195, !196, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tuner-simple.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tuner-simple.c", i32 19, i32 1}
!5 = !{ptr @__param_offset, !6, !"__param_offset", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tuner-simple.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_offsettype294, !6, !"__UNIQUE_ID_offsettype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_offset295, !9, !"__UNIQUE_ID_offset295", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tuner-simple.c", i32 26, i32 1}
!10 = !{ptr @__param_atv_input, !11, !"__param_atv_input", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tuner-simple.c", i32 32, i32 1}
!12 = !{ptr @__UNIQUE_ID_atv_inputtype296, !11, !"__UNIQUE_ID_atv_inputtype296", i1 false, i1 false}
!13 = !{ptr @__param_dtv_input, !14, !"__param_dtv_input", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/tuner-simple.c", i32 33, i32 1}
!15 = !{ptr @__UNIQUE_ID_dtv_inputtype297, !14, !"__UNIQUE_ID_dtv_inputtype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_atv_input298, !17, !"__UNIQUE_ID_atv_input298", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tuner-simple.c", i32 34, i32 1}
!18 = !{ptr @__UNIQUE_ID_dtv_input299, !19, !"__UNIQUE_ID_dtv_input299", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tuner-simple.c", i32 35, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1057, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @simple_tuner_attach._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @simple_tuner_attach._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1077, i32 4}
!28 = !{ptr @simple_tuner_attach._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @simple_tuner_attach._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1087, i32 13}
!32 = !{ptr @simple_tuner_attach._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @simple_tuner_attach._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @simple_tuner_attach._entry.10, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @simple_tuner_attach._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1113, i32 3}
!40 = !{ptr @simple_tuner_attach._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @simple_tuner_attach._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1116, i32 3}
!44 = !{ptr @simple_tuner_attach._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @simple_tuner_attach._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1122, i32 4}
!48 = !{ptr @simple_tuner_attach._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @simple_tuner_attach._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1125, i32 4}
!52 = !{ptr @simple_tuner_attach._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @simple_tuner_attach._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1128, i32 4}
!56 = !{ptr @simple_tuner_attach._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @simple_tuner_attach._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1131, i32 4}
!60 = !{ptr @simple_tuner_attach._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @simple_tuner_attach._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__ksymtab_simple_tuner_attach, !63, !"__ksymtab_simple_tuner_attach", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1140, i32 1}
!64 = !{ptr @__UNIQUE_ID_description300, !65, !"__UNIQUE_ID_description300", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1142, i32 1}
!66 = !{ptr @__UNIQUE_ID_author301, !67, !"__UNIQUE_ID_author301", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1143, i32 1}
!68 = !{ptr @__UNIQUE_ID_file302, !69, !"__UNIQUE_ID_file302", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1144, i32 1}
!70 = !{ptr @__UNIQUE_ID_license303, !69, !"__UNIQUE_ID_license303", i1 false, i1 false}
!71 = !{ptr @debug, !72, !"debug", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/tuner-simple.c", i32 17, i32 12}
!73 = !{ptr @simple_devcount, !74, !"simple_devcount", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/tuner-simple.c", i32 22, i32 21}
!75 = !{ptr @offset, !76, !"offset", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/tuner-simple.c", i32 24, i32 12}
!77 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!78 = !{ptr @__param_str_offset, !6, !"__param_str_offset", i1 false, i1 false}
!79 = !{ptr @__param_str_atv_input, !11, !"__param_str_atv_input", i1 false, i1 false}
!80 = !{ptr @__param_arr_atv_input, !11, !"__param_arr_atv_input", i1 false, i1 false}
!81 = !{ptr @__param_str_dtv_input, !14, !"__param_str_dtv_input", i1 false, i1 false}
!82 = !{ptr @__param_arr_dtv_input, !14, !"__param_arr_dtv_input", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/tuner-simple.c", i32 104, i32 8}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tuner_simple_list_mutex, !84, !"tuner_simple_list_mutex", i1 false, i1 false}
!87 = !{ptr @hybrid_tuner_instance_list, !88, !"hybrid_tuner_instance_list", i1 false, i1 false}
!88 = !{!"../drivers/media/tuners/tuner-simple.c", i32 105, i32 8}
!89 = !{ptr @simple_tuner_ops, !90, !"simple_tuner_ops", i1 false, i1 false}
!90 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1035, i32 35}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/tuner-simple.c", i32 1014, i32 3}
!93 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @simple_release._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @simple_release._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/tuner-simple.c", i32 861, i32 3}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @simple_dvb_configure._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @simple_dvb_configure._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/tuner-simple.c", i32 881, i32 2}
!103 = !{ptr @simple_dvb_configure._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @simple_dvb_configure._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/tuner-simple.c", i32 248, i32 3}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @simple_tuner_params._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @simple_tuner_params._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/tuner-simple.c", i32 253, i32 2}
!112 = !{ptr @simple_tuner_params._entry.42, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @simple_tuner_params._entry_ptr.44, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/tuner-simple.c", i32 214, i32 10}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/tuners/tuner-simple.c", i32 217, i32 10}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/tuners/tuner-simple.c", i32 220, i32 10}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/tuners/tuner-simple.c", i32 223, i32 10}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/tuner-simple.c", i32 226, i32 10}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/tuners/tuner-simple.c", i32 229, i32 10}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/tuner-simple.c", i32 272, i32 3}
!128 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @simple_config_lookup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @simple_config_lookup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/tuner-simple.c", i32 279, i32 2}
!133 = !{ptr @simple_config_lookup._entry.53, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @simple_config_lookup._entry_ptr.55, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/tuners/tuner-simple.c", i32 696, i32 3}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @simple_set_radio_freq._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @simple_set_radio_freq._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/tuner-simple.c", i32 723, i32 2}
!142 = !{ptr @simple_set_radio_freq._entry.58, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @simple_set_radio_freq._entry_ptr.60, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/tuners/tuner-simple.c", i32 753, i32 3}
!146 = !{ptr @simple_set_radio_freq._entry.61, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @simple_set_radio_freq._entry_ptr.63, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @simple_set_radio_freq._entry.64, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/media/tuners/tuner-simple.c", i32 762, i32 4}
!150 = !{ptr @simple_set_radio_freq._entry_ptr.65, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/tuners/tuner-simple.c", i32 502, i32 3}
!153 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @simple_radio_bandswitch._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @simple_radio_bandswitch._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/tuners/tuner-simple.c", i32 528, i32 3}
!158 = !{ptr @simple_radio_bandswitch._entry.68, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @simple_radio_bandswitch._entry_ptr.70, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/tuners/tuner-simple.c", i32 588, i32 2}
!162 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @simple_set_tv_freq._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @simple_set_tv_freq._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/tuners/tuner-simple.c", i32 652, i32 2}
!167 = !{ptr @simple_set_tv_freq._entry.73, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @simple_set_tv_freq._entry_ptr.75, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @simple_set_tv_freq._entry.76, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/tuners/tuner-simple.c", i32 657, i32 3}
!171 = !{ptr @simple_set_tv_freq._entry_ptr.77, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/tuners/tuner-simple.c", i32 407, i32 4}
!174 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @simple_std_setup._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @simple_std_setup._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @simple_std_setup._entry.80, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/tuners/tuner-simple.c", i32 411, i32 4}
!179 = !{ptr @simple_std_setup._entry_ptr.81, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/tuners/tuner-simple.c", i32 466, i32 5}
!182 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @simple_post_tune._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @simple_post_tune._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @simple_post_tune._entry.84, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/tuners/tuner-simple.c", i32 481, i32 3}
!187 = !{ptr @simple_post_tune._entry_ptr.85, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @simple_post_tune._entry.86, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/tuners/tuner-simple.c", i32 486, i32 4}
!190 = !{ptr @simple_post_tune._entry_ptr.87, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/tuners/tuner-simple.c", i32 431, i32 2}
!193 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @simple_set_aux_byte._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @simple_set_aux_byte._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @simple_set_aux_byte._entry.90, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/media/tuners/tuner-simple.c", i32 435, i32 3}
!198 = !{ptr @simple_set_aux_byte._entry_ptr.91, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/tuners/tuner-simple.c", i32 184, i32 2}
!201 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @simple_get_status._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @simple_get_status._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/tuners/tuner-simple.c", i32 201, i32 2}
!206 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @simple_get_rf_strength._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @simple_get_rf_strength._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @atv_input, !210, !"atv_input", i1 false, i1 false}
!210 = !{!"../drivers/media/tuners/tuner-simple.c", i32 28, i32 21}
!211 = !{ptr @dtv_input, !212, !"dtv_input", i1 false, i1 false}
!212 = !{!"../drivers/media/tuners/tuner-simple.c", i32 30, i32 21}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{!"auto-init"}
!223 = !{i8 0, i8 2}
