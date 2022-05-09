; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dp_cec.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_dp_cec_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dp_cec_irq\09\09\09\09"
module asm "\09.long\09__crc_drm_dp_cec_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_cec_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_cec_irq\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_cec_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dp_cec_set_edid\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dp_cec_set_edid\09\09\09\09"
module asm "\09.long\09__crc_drm_dp_cec_set_edid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_cec_set_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_cec_set_edid\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_cec_set_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dp_cec_unset_edid\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dp_cec_unset_edid\09\09\09\09"
module asm "\09.long\09__crc_drm_dp_cec_unset_edid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_cec_unset_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_cec_unset_edid\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_cec_unset_edid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dp_cec_register_connector\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dp_cec_register_connector\09\09\09\09"
module asm "\09.long\09__crc_drm_dp_cec_register_connector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_cec_register_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_cec_register_connector\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_cec_register_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_dp_cec_unregister_connector\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_dp_cec_unregister_connector\09\09\09\09"
module asm "\09.long\09__crc_drm_dp_cec_unregister_connector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_cec_unregister_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_cec_unregister_connector\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_cec_unregister_connector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.cec_connector_info = type { i32, %union.anon.88 }
%union.anon.88 = type { [16 x i32] }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }

@__param_str_drm_dp_cec_unregister_delay = internal constant [43 x i8] c"drm_kms_helper.drm_dp_cec_unregister_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@drm_dp_cec_unregister_delay = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_drm_dp_cec_unregister_delay = internal constant %struct.kernel_param { ptr @__param_str_drm_dp_cec_unregister_delay, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @drm_dp_cec_unregister_delay } }, section "__param", align 4
@__UNIQUE_ID_drm_dp_cec_unregister_delaytype302 = internal constant [57 x i8] c"drm_kms_helper.parmtype=drm_dp_cec_unregister_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_drm_dp_cec_unregister_delay303 = internal constant [120 x i8] c"drm_kms_helper.parm=drm_dp_cec_unregister_delay:CEC unregister delay in seconds, 0: no delay, >= 1000: never unregister\00", section ".modinfo", align 1
@__kstrtab_drm_dp_cec_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_cec_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_cec_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_cec_irq to i32), ptr @__kstrtab_drm_dp_cec_irq, ptr @__kstrtabns_drm_dp_cec_irq }, section "___ksymtab+drm_dp_cec_irq", align 4
@drm_dp_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @drm_dp_cec_adap_enable, ptr @drm_dp_cec_adap_monitor_all_enable, ptr null, ptr @drm_dp_cec_adap_log_addr, ptr @drm_dp_cec_adap_transmit, ptr @drm_dp_cec_adap_status, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_drm_dp_cec_set_edid = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_cec_set_edid = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_cec_set_edid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_cec_set_edid to i32), ptr @__kstrtab_drm_dp_cec_set_edid, ptr @__kstrtabns_drm_dp_cec_set_edid }, section "___ksymtab+drm_dp_cec_set_edid", align 4
@__kstrtab_drm_dp_cec_unset_edid = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_cec_unset_edid = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_cec_unset_edid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_cec_unset_edid to i32), ptr @__kstrtab_drm_dp_cec_unset_edid, ptr @__kstrtabns_drm_dp_cec_unset_edid }, section "___ksymtab+drm_dp_cec_unset_edid", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/drm_dp_cec.c\00", [35 x i8] zeroinitializer }, align 32
@drm_dp_cec_register_connector.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&aux->cec.unregister_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@drm_dp_cec_register_connector.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&aux->cec.unregister_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_drm_dp_cec_register_connector = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_cec_register_connector = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_cec_register_connector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_cec_register_connector to i32), ptr @__kstrtab_drm_dp_cec_register_connector, ptr @__kstrtabns_drm_dp_cec_register_connector }, section "___ksymtab+drm_dp_cec_register_connector", align 4
@__kstrtab_drm_dp_cec_unregister_connector = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_cec_unregister_connector = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_cec_unregister_connector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_cec_unregister_connector to i32), ptr @__kstrtab_drm_dp_cec_unregister_connector, ptr @__kstrtabns_drm_dp_cec_unregister_connector }, section "___ksymtab+drm_dp_cec_unregister_connector", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OUI: %*phD\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ID: %*pE\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HW Rev: %d.%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FW/SW Rev: %d.%d (0x%02x.0x%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.8 = private unnamed_addr constant [28 x i8] c"drm_dp_cec_unregister_delay\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 87, i32 21 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"drm_dp_cec_adap_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 181, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 430, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 434, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 166, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 168, i32 19 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 171, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [32 x i8] c"../drivers/gpu/drm/drm_dp_cec.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 176, i32 19 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_drm_dp_cec_unregister_delay303, ptr @__UNIQUE_ID_drm_dp_cec_unregister_delaytype302, ptr @__ksymtab_drm_dp_cec_irq, ptr @__ksymtab_drm_dp_cec_register_connector, ptr @__ksymtab_drm_dp_cec_set_edid, ptr @__ksymtab_drm_dp_cec_unregister_connector, ptr @__ksymtab_drm_dp_cec_unset_edid, ptr @__param_drm_dp_cec_unregister_delay, ptr @drm_dp_cec_unregister_delay, ptr @drm_dp_cec_adap_ops, ptr @.str, ptr @drm_dp_cec_register_connector.__key, ptr @.str.1, ptr @drm_dp_cec_register_connector.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_cec_unregister_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_cec_register_connector.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_dp_cec_register_connector.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_cec_irq(ptr noundef %aux) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.cec_msg, align 8
  %rx_msg_info.i.i = alloca i8, align 1
  %flags.i = alloca i8, align 1
  %cec_irq = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cec_irq) #5
  %0 = ptrtoint ptr %cec_irq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cec_irq, align 1, !annotation !44
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 8
  %1 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %transfer, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cec = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cec, i32 noundef 0) #5
  %adap = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end4:                                          ; preds = %if.end
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 8196, ptr noundef nonnull %cec_irq, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end4.unlock_crit_edge, label %lor.lhs.false

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end4
  %5 = ptrtoint ptr %cec_irq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cec_irq, align 1
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false.unlock_crit_edge, label %if.end7

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end7:                                          ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags.i) #5
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %flags.i, align 1, !annotation !44
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 12292, ptr noundef nonnull %flags.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end7.drm_dp_cec_handle_irq.exit_crit_edge, label %if.end.i

if.end7.drm_dp_cec_handle_irq.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_dp_cec_handle_irq.exit

if.end.i:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %16 = call ptr @memset(ptr %msg.i.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_msg_info.i.i) #5
  %17 = ptrtoint ptr %rx_msg_info.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %rx_msg_info.i.i, align 1, !annotation !44
  %call.i.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 12290, ptr noundef nonnull %rx_msg_info.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2.i.drm_dp_cec_received.exit.i_crit_edge, label %if.end.i.i

if.then2.i.drm_dp_cec_received.exit.i_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_dp_cec_received.exit.i

if.end.i.i:                                       ; preds = %if.then2.i
  %18 = ptrtoint ptr %rx_msg_info.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rx_msg_info.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.drm_dp_cec_received.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.drm_dp_cec_received.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_dp_cec_received.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %and5.i.i = and i32 %conv.i.i, 15
  %add.i.i = add nuw nsw i32 %and5.i.i, 1
  %len.i.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i.i, ptr %len.i.i, align 8
  %msg6.i.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i.i, i32 0, i32 6
  %call8.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 12304, ptr noundef %msg6.i.i, i32 noundef %add.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end3.i.i.drm_dp_cec_received.exit.i_crit_edge, label %if.end12.i.i

if.end3.i.i.drm_dp_cec_received.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_dp_cec_received.exit.i

if.end12.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1.i.i = call i64 @ktime_get() #5
  call void @cec_received_msg_ts(ptr noundef %15, ptr noundef nonnull %msg.i.i, i64 noundef %call.i1.i.i) #5
  br label %drm_dp_cec_received.exit.i

drm_dp_cec_received.exit.i:                       ; preds = %if.end12.i.i, %if.end3.i.i.drm_dp_cec_received.exit.i_crit_edge, %if.end.i.i.drm_dp_cec_received.exit.i_crit_edge, %if.then2.i.drm_dp_cec_received.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_msg_info.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %drm_dp_cec_received.exit.i, %if.end.i.if.end4.i_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i, align 1
  %conv5.i = zext i8 %22 to i32
  %and6.i = and i32 %conv5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.end4.i.if.end20.sink.split.i_crit_edge

if.end4.i.if.end20.sink.split.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split.i

if.else.i:                                        ; preds = %if.end4.i
  %and10.i = and i32 %conv5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.else.i.if.end20.sink.split.i_crit_edge

if.else.i.if.end20.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split.i

if.else13.i:                                      ; preds = %if.else.i
  %and15.i = and i32 %conv5.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else13.i.if.end20.i_crit_edge, label %if.else13.i.if.end20.sink.split.i_crit_edge

if.else13.i.if.end20.sink.split.i_crit_edge:      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.sink.split.i

if.else13.i.if.end20.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %if.else13.i.if.end20.sink.split.i_crit_edge, %if.else.i.if.end20.sink.split.i_crit_edge, %if.end4.i.if.end20.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end4.i.if.end20.sink.split.i_crit_edge ], [ 48, %if.else.i.if.end20.sink.split.i_crit_edge ], [ 36, %if.else13.i.if.end20.sink.split.i_crit_edge ]
  %call.i29.i = call i64 @ktime_get() #5
  call void @cec_transmit_attempt_done_ts(ptr noundef %9, i8 noundef zeroext %.sink.i, i64 noundef %call.i29.i) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %if.else13.i.if.end20.i_crit_edge
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #5
  %25 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %value.addr.i.i, align 1
  %call.i31.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 12292, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #5
  br label %drm_dp_cec_handle_irq.exit

drm_dp_cec_handle_irq.exit:                       ; preds = %if.end20.i, %if.end7.drm_dp_cec_handle_irq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %26 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %value.addr.i, align 1
  %call.i18 = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 8196, ptr noundef nonnull %value.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  br label %unlock

unlock:                                           ; preds = %drm_dp_cec_handle_irq.exit, %lor.lhs.false.unlock_crit_edge, %if.end4.unlock_crit_edge, %if.end.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %cec) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cec_irq) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_cec_set_edid(ptr noundef %aux, ptr noundef %edid) #0 align 64 {
entry:
  %cap.i = alloca i8, align 1
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cec = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11
  %connector1 = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #5
  %2 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 8
  %3 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %unregister_work = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %unregister_work) #5
  tail call void @mutex_lock_nested(ptr noundef %cec, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cap.i) #5
  %5 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cap.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 12288, ptr noundef nonnull %cap.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cap.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then5_crit_edge, label %if.end9

lor.lhs.false.i.if.then5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #5
  %adap = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  call void @cec_unregister_adapter(ptr noundef %10) #5
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %adap, align 4
  br label %unlock

if.end9:                                          ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #5
  %12 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool10.not, i32 350, i32 382
  %13 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %num_las.0 = select i1 %tobool15.not, i32 1, i32 4
  %adap19 = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %adap19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap19, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.end9.if.end36_crit_edge, label %if.then21

if.end9.if.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then21:                                        ; preds = %if.end9
  %capabilities = getelementptr inbounds %struct.cec_adapter, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capabilities, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.select)
  %cmp = icmp eq i32 %17, %spec.select
  br i1 %cmp, label %land.lhs.true, label %if.then21.if.end33_crit_edge

if.then21.if.end33_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then21
  %available_log_addrs = getelementptr inbounds %struct.cec_adapter, ptr %15, i32 0, i32 17
  %18 = ptrtoint ptr %available_log_addrs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %available_log_addrs, align 4
  %conv27 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_las.0, i32 %conv27)
  %cmp28 = icmp eq i32 %num_las.0, %conv27
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @cec_s_phys_addr_from_edid(ptr noundef nonnull %15, ptr noundef %edid) #5
  br label %unlock

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.then21.if.end33_crit_edge
  call void @cec_unregister_adapter(ptr noundef nonnull %15) #5
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end9.if.end36_crit_edge
  %name = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %conv37 = trunc i32 %num_las.0 to i8
  %call38 = call ptr @cec_allocate_adapter(ptr noundef nonnull @drm_dp_cec_adap_ops, ptr noundef %aux, ptr noundef %21, i32 noundef %spec.select, i8 noundef zeroext %conv37) #5
  %22 = ptrtoint ptr %adap19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38, ptr %adap19, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %adap19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %adap19, align 4
  br label %unlock

if.end47:                                         ; preds = %if.end36
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef %1) #5
  %24 = ptrtoint ptr %adap19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap19, align 4
  call void @cec_s_conn_info(ptr noundef %25, ptr noundef nonnull %conn_info) #5
  %26 = ptrtoint ptr %adap19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap19, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %dev52 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev52, align 4
  %call53 = call i32 @cec_register_adapter(ptr noundef %27, ptr noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  %32 = ptrtoint ptr %adap19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap19, align 4
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void @cec_delete_adapter(ptr noundef %33) #5
  %34 = ptrtoint ptr %adap19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %adap19, align 4
  br label %unlock

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void @cec_s_phys_addr_from_edid(ptr noundef %33, ptr noundef %edid) #5
  br label %unlock

unlock:                                           ; preds = %if.else, %if.then55, %if.then44, %if.then30, %if.then5
  call void @mutex_unlock(ptr noundef %cec) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_cec_unset_edid(ptr noundef %aux) #0 align 64 {
entry:
  %cap.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 8
  %0 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %cec = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11
  %unregister_work = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %unregister_work) #5
  tail call void @mutex_lock_nested(ptr noundef %cec, i32 noundef 0) #5
  %adap = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.unlock_crit_edge, label %if.end5

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end5:                                          ; preds = %if.end
  tail call void @cec_s_phys_addr(ptr noundef nonnull %3, i16 noundef zeroext -1, i1 noundef zeroext false) #5
  %4 = load i32, ptr @drm_dp_cec_unregister_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp = icmp ult i32 %4, 1000
  br i1 %cmp, label %land.lhs.true, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

land.lhs.true:                                    ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cap.i) #5
  %5 = ptrtoint ptr %cap.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cap.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 12288, ptr noundef nonnull %cap.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.if.then9_crit_edge

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %6 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cap.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then9_crit_edge, label %drm_dp_cec_cap.exit

lor.lhs.false.i.if.then9_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

drm_dp_cec_cap.exit:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #5
  br label %unlock

if.then9:                                         ; preds = %lor.lhs.false.i.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap.i) #5
  %9 = load i32, ptr @drm_dp_cec_unregister_delay, align 4
  %mul = mul i32 %9, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %unregister_work, i32 noundef %mul) #5
  br label %unlock

unlock:                                           ; preds = %if.then9, %drm_dp_cec_cap.exit, %if.end5.unlock_crit_edge, %if.end.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %cec) #5
  br label %return

return:                                           ; preds = %unlock, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_cec_register_connector(ptr noundef %aux, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !45

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 8
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer, align 8
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %do.end39, label %if.end55.critedge, !prof !46

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %do.end82

if.end55.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %connector57 = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %connector57 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %connector, ptr %connector57, align 4
  %unregister_work = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3
  tail call void @__init_work(ptr noundef %unregister_work, i32 noundef 0) #5
  %5 = ptrtoint ptr %unregister_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %unregister_work, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_dp_cec_register_connector.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry70 = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry70, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @drm_dp_cec_unregister_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @drm_dp_cec_register_connector.__key.2) #5
  br label %do.end82

do.end82:                                         ; preds = %if.end55.critedge, %do.end39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_dp_cec_unregister_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cec = getelementptr i8, ptr %work, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %cec, i32 noundef 0) #5
  %adap = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %1) #5
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %adap, align 4
  tail call void @mutex_unlock(ptr noundef %cec) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_dp_cec_unregister_connector(ptr noundef %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unregister_work = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 11, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %unregister_work) #5
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %3) #5
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %adap, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_dp_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %conv = zext i1 %enable to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 12289, ptr noundef nonnull %value.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %or.cond = select i1 %enable, i1 %cmp, i1 false
  %cond5 = select i1 %or.cond, i32 %call.i, i32 0
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_dp_cec_adap_monitor_all_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !44
  %capabilities = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 16
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capabilities, align 8
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %1, i32 noundef 12289, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = and i8 %6, -3
  %masksel = select i1 %enable, i8 2, i8 0
  %storemerge = or i8 %7, %masksel
  store i8 %storemerge, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %8 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %value.addr.i, align 1
  %call.i23 = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 12289, ptr noundef nonnull %value.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.end.if.end11_crit_edge
  %err.0 = phi i32 [ %call.i23, %if.then2 ], [ %call.i, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp14 = icmp slt i32 %err.0, 0
  %or.cond = select i1 %enable, i1 %cmp14, i1 false
  %cond = select i1 %or.cond, i32 %err.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_dp_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #0 align 64 {
entry:
  %mask = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mask) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr)
  %cmp.not = icmp eq i8 %addr, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %addr to i32
  %log_addr_mask = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 31, i32 1
  %2 = ptrtoint ptr %log_addr_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %log_addr_mask, align 4
  %conv2 = zext i16 %3 to i32
  %shl = shl nuw i32 1, %conv
  %shl.masked = and i32 %shl, 32767
  %or.masked = or i32 %shl.masked, %conv2
  %phi.cast = or i32 %or.masked, 32768
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %la_mask.0 = phi i32 [ %phi.cast, %if.then ], [ 32768, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds [2 x i8], ptr %mask, i32 0, i32 1
  %conv8 = trunc i32 %la_mask.0 to i8
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %mask, align 1
  %6 = lshr i32 %la_mask.0, 8
  %conv10 = trunc i32 %6 to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %4, align 1
  %call12 = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 12302, ptr noundef nonnull %mask, i32 noundef 2) #5
  %cmp.not.not = xor i1 %cmp.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp16 = icmp slt i32 %call12, 0
  %or.cond = select i1 %cmp.not.not, i1 %cmp16, i1 false
  %cond = select i1 %or.cond, i32 %call12, i32 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mask) #5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_dp_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr noundef %msg) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %msg2 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  %call3 = tail call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 12320, ptr noundef %msg2, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %attempts)
  %cmp = icmp ugt i8 %attempts, 6
  %conv = zext i8 %attempts to i32
  %sub = shl nuw nsw i32 %conv, 4
  %phi.bo = add nuw nsw i32 %sub, 112
  %cond = select i1 %cmp, i32 80, i32 %phi.bo
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 8
  %sub7 = add i32 %5, 127
  %or = or i32 %sub7, %cond
  %6 = trunc i32 %or to i8
  %conv9 = or i8 %6, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %7 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %1, i32 noundef 12291, ptr noundef nonnull %value.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  %8 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_dp_cec_adap_status(ptr nocapture noundef readonly %adap, ptr noundef %file) #0 align 64 {
entry:
  %desc = alloca %struct.drm_dp_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #5
  %2 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %call1 = call i32 @drm_dp_read_desc(ptr noundef %1, ptr noundef nonnull %desc, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %desc, i32 0, i32 4
  %4 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %desc, i32 0, i32 3
  %5 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %desc, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %desc, i32 0, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull %desc) #5
  %call3 = call i32 @strnlen(ptr noundef %6, i32 noundef 6) #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.5, i32 noundef %call3, ptr noundef %6) #5
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %5, align 1
  %conv = zext i8 %8 to i32
  %9 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.6, i32 noundef %9, i32 noundef %and) #5
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %4, align 2
  %conv8 = zext i8 %11 to i32
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 1
  %conv9 = zext i8 %13 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv8, i32 noundef %conv9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_desc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__param_drm_dp_cec_unregister_delay, !1, !"__param_drm_dp_cec_unregister_delay", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 88, i32 1}
!2 = !{ptr @__UNIQUE_ID_drm_dp_cec_unregister_delaytype302, !1, !"__UNIQUE_ID_drm_dp_cec_unregister_delaytype302", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_drm_dp_cec_unregister_delay303, !4, !"__UNIQUE_ID_drm_dp_cec_unregister_delay303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 89, i32 1}
!5 = !{ptr @__ksymtab_drm_dp_cec_irq, !6, !"__ksymtab_drm_dp_cec_irq", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 265, i32 1}
!7 = !{ptr @__ksymtab_drm_dp_cec_set_edid, !8, !"__ksymtab_drm_dp_cec_set_edid", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 378, i32 1}
!9 = !{ptr @__ksymtab_drm_dp_cec_unset_edid, !10, !"__ksymtab_drm_dp_cec_unset_edid", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 415, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 430, i32 2}
!13 = !{ptr @drm_dp_cec_register_connector.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 434, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @drm_dp_cec_register_connector.__key.2, !14, !"__key", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_drm_dp_cec_register_connector, !19, !"__ksymtab_drm_dp_cec_register_connector", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 437, i32 1}
!20 = !{ptr @__ksymtab_drm_dp_cec_unregister_connector, !21, !"__ksymtab_drm_dp_cec_unregister_connector", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 451, i32 1}
!22 = !{ptr @__param_str_drm_dp_cec_unregister_delay, !1, !"__param_str_drm_dp_cec_unregister_delay", i1 false, i1 false}
!23 = !{ptr @drm_dp_cec_unregister_delay, !24, !"drm_dp_cec_unregister_delay", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 87, i32 21}
!25 = !{ptr @drm_dp_cec_adap_ops, !26, !"drm_dp_cec_adap_ops", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 181, i32 34}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 166, i32 19}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 168, i32 19}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 171, i32 19}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/drm_dp_cec.c", i32 176, i32 19}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!"branch_weights", i32 1, i32 2000}
