; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/otg_fsm.c_pt.bc'
source_filename = "../drivers/usb/chipidea/otg_fsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.otg_fsm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }

@ci_otg_ops = internal global { %struct.otg_fsm_ops, [52 x i8] } { %struct.otg_fsm_ops { ptr null, ptr @ci_otg_drv_vbus, ptr @ci_otg_loc_conn, ptr @ci_otg_loc_sof, ptr @ci_otg_start_pulse, ptr null, ptr null, ptr @ci_otg_fsm_add_timer, ptr @ci_otg_fsm_del_timer, ptr @ci_otg_start_host, ptr @ci_otg_start_gadget }, [52 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_fsm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ci->fsm.lock\00", [18 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_fsm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't init OTG timers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ci_hdrc_otg_fsm_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/chipidea/otg_fsm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_fsm_init._entry_ptr = internal global ptr @ci_hdrc_otg_fsm_init._entry, section ".printk_index", align 4
@inputs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.10, ptr null, ptr null, ptr @inputs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ci_hdrc_otg_fsm_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ci_hdrc\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't register sysfs attr group: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@otg_timer_ms = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 100, i32 1000, i32 10000, i32 5000, i32 155, i32 500, i32 20, i32 1000, i32 6000, i32 0, i32 10, i32 1500], [48 x i8] zeroinitializer }, align 32
@ci_otg_drv_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to enable vbus regulator, ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ci_otg_drv_vbus\00", [16 x i8] zeroinitializer }, align 32
@ci_otg_drv_vbus._entry_ptr = internal global ptr @ci_otg_drv_vbus._entry, section ".printk_index", align 4
@otg_timer_handlers = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @a_wait_vrise_tmout, ptr @a_wait_vfall_tmout, ptr @a_wait_bcon_tmout, ptr @a_aidl_bdis_tmout, ptr @b_ase0_brst_tmout, ptr @a_bidl_adis_tmout, ptr @b_aidl_bdis_tmout, ptr @b_se0_srp_tmout, ptr @b_srp_fail_tmout, ptr null, ptr @b_data_pls_tmout, ptr @b_ssend_srp_tmout], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inputs\00", [25 x i8] zeroinitializer }, align 32
@inputs_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_a_bus_req, ptr @dev_attr_a_bus_drop, ptr @dev_attr_b_bus_req, ptr @dev_attr_a_clr_err, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_a_bus_req = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @a_bus_req_show, ptr @a_bus_req_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_a_bus_drop = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @a_bus_drop_show, ptr @a_bus_drop_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_b_bus_req = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b_bus_req_show, ptr @b_bus_req_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_a_clr_err = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @a_clr_err_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_bus_req\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a_bus_drop\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"b_bus_req\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a_clr_err\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"ci_otg_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 570, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 809, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 813, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"inputs_attr_group\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 192, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 821, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"otg_timer_ms\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 201, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 468, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"otg_timer_handlers\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 363, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 193, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"inputs_attrs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 184, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"dev_attr_a_bus_req\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"dev_attr_a_bus_drop\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"dev_attr_b_bus_req\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"dev_attr_a_clr_err\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 78, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 40, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 118, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 162, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [34 x i8] c"../drivers/usb/chipidea/otg_fsm.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 182, i32 8 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @ci_hdrc_otg_fsm_init._entry, ptr @ci_hdrc_otg_fsm_init._entry_ptr, ptr @ci_otg_drv_vbus._entry, ptr @ci_otg_drv_vbus._entry_ptr, ptr @ci_otg_ops, ptr @ci_hdrc_otg_fsm_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @inputs_attr_group, ptr @.str.6, ptr @.str.7, ptr @otg_timer_ms, ptr @.str.8, ptr @.str.9, ptr @otg_timer_handlers, ptr @.str.10, ptr @inputs_attrs, ptr @dev_attr_a_bus_req, ptr @dev_attr_a_bus_drop, ptr @dev_attr_b_bus_req, ptr @dev_attr_a_clr_err, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_otg_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_otg_fsm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_otg_fsm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_timer_ms to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_otg_drv_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_timer_handlers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_bus_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_bus_drop to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_b_bus_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_a_clr_err to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_otg_fsm_work(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp ult i32 %7, 6
  br i1 %cmp, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %call5 = tail call i32 @otg_statemachine(ptr noundef %fsm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end51_crit_edge, label %if.then7

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then7:                                         ; preds = %if.end
  %otg9 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %10 = ptrtoint ptr %otg9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg9, align 4
  %state10 = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state10, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then7.if.end51_crit_edge [
    i32 6, label %if.then12
    i32 1, label %if.then32
    i32 9, label %if.then44
  ]

if.then7.if.end51_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then12:                                        ; preds = %if.then7
  %15 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fsm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.then12.if.then20_crit_edge

if.then12.if.then20_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then12
  %id_event = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 39
  %17 = ptrtoint ptr %id_event to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id_event, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %power_up = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %power_up to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_up, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %if.else, label %lor.lhs.false17.if.then20_crit_edge

lor.lhs.false17.if.then20_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %if.then12.if.then20_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %22) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %23 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.then20.if.end21_crit_edge, label %if.then.i

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %26) #8
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hw_write(ptr noundef %ci, i32 noundef 12, i32 noundef 4138, i32 noundef 0)
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 4194304, i32 noundef 4194304) #8
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 1073741824, i32 noundef 1073741824) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then.i, %if.then20.if.end21_crit_edge
  %id_event22 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 39
  %27 = ptrtoint ptr %id_event22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id_event22, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not = icmp eq i8 %28, 0
  br i1 %tobool23.not, label %if.end21.if.end51_crit_edge, label %if.then24

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %id_event22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %id_event22, align 4
  br label %if.end51

if.then32:                                        ; preds = %if.then7
  %b_sess_vld = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 11
  %30 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_sess_vld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool34.not = icmp eq i32 %31, 0
  br i1 %tobool34.not, label %if.then32.if.end51_crit_edge, label %if.then35

if.then32.if.end51_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then35:                                        ; preds = %if.then32
  %power_up37 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 2
  %32 = ptrtoint ptr %power_up37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %power_up37, align 8
  %irq.i76 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %33 = ptrtoint ptr %irq.i76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i76, align 8
  tail call void @disable_irq_nosync(i32 noundef %34) #8
  %wq.i77 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %35 = ptrtoint ptr %wq.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wq.i77, align 8
  %work.i78 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i79 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work.i78) #8
  br i1 %call.i.i79, label %if.then35.if.end51_crit_edge, label %if.then.i80

if.then35.if.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then.i80:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %irq.i76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i76, align 8
  tail call void @enable_irq(i32 noundef %38) #8
  br label %if.end51

if.then44:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ci, align 8
  %call.i82 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i82, ptr %last_busy.i, align 8
  %42 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ci, align 8
  %call.i83 = tail call i32 @__pm_runtime_suspend(ptr noundef %43, i32 noundef 13) #8
  br label %return

if.end51:                                         ; preds = %if.then.i80, %if.then35.if.end51_crit_edge, %if.then32.if.end51_crit_edge, %if.then24, %if.end21.if.end51_crit_edge, %if.then7.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %44 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ci, align 8
  %call.i84 = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 4) #8
  br label %return

return:                                           ; preds = %if.end51, %if.then44, %land.lhs.true2.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @otg_statemachine(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_write(ptr nocapture noundef readonly %ci, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  %imx28_write_fix.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %3 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imx28_write_fix.i, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.__hw_write.exit_crit_edge

entry.__hw_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hw_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %neg = xor i32 %mask, -1
  %and = and i32 %7, %neg
  %and2 = and i32 %data, %mask
  %or = or i32 %and, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #8, !srcloc !59
  br label %__hw_write.exit

__hw_write.exit:                                  ; preds = %if.else.i, %entry.__hw_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_write_otgsc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_otg_fsm_irq(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm2 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8
  %call = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef -1) #8
  %and = and i32 %call, 8323072
  %shr = lshr i32 %call, 8
  %and3 = and i32 %and, %shr
  %and4.lobit = and i32 %shr, 1
  %0 = ptrtoint ptr %fsm2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and4.lobit, ptr %fsm2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool5.not = icmp eq i32 %and3, 0
  br i1 %tobool5.not, label %if.end43, label %if.then

if.then:                                          ; preds = %entry
  %and6 = and i32 %and3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 4194304, i32 noundef 4194304) #8
  %a_srp_det = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %a_srp_det to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %a_srp_det, align 4
  %a_bus_drop = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %a_bus_drop, align 4
  br label %if.end42

if.else:                                          ; preds = %if.then
  %and9 = and i32 %and3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.else
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 65536, i32 noundef 65536) #8
  %3 = ptrtoint ptr %fsm2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsm2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then13, label %if.then11.if.end42_crit_edge

if.then11.if.end42_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %a_bus_drop14 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 13
  %5 = ptrtoint ptr %a_bus_drop14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %a_bus_drop14, align 4
  %a_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 14
  %6 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %a_bus_req, align 4
  %id_event = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 39
  %7 = ptrtoint ptr %id_event to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %id_event, align 4
  br label %if.end42

if.else15:                                        ; preds = %if.else
  %and16 = and i32 %and3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else29, label %if.then18

if.then18:                                        ; preds = %if.else15
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 524288, i32 noundef 524288) #8
  %and19 = and i32 %call, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %b_sess_vld23 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 11
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %b_sess_vld23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %b_sess_vld23, align 4
  tail call fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef 11)
  tail call fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef 8)
  %b_ssend_srp = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 10
  %9 = ptrtoint ptr %b_ssend_srp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %b_ssend_srp, align 4
  br label %if.end42

if.else22:                                        ; preds = %if.then18
  %10 = ptrtoint ptr %b_sess_vld23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %b_sess_vld23, align 4
  %11 = ptrtoint ptr %fsm2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsm2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.else22.if.end42_crit_edge, label %if.then26

if.else22.if.end42_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ci_otg_add_timer(ptr noundef %ci, i32 noundef 11)
  br label %if.end42

if.else29:                                        ; preds = %if.else15
  %and30 = and i32 %and3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else29.if.end42_crit_edge, label %if.then32

if.else29.if.end42_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then32:                                        ; preds = %if.else29
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 131072, i32 noundef 131072) #8
  %and33 = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %a_vbus_vld37 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 4
  br i1 %tobool34.not, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %a_vbus_vld37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %a_vbus_vld37, align 4
  br label %if.end42

if.else36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %a_vbus_vld37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %a_vbus_vld37, align 4
  %b_conn = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %b_conn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %b_conn, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.then35, %if.else29.if.end42_crit_edge, %if.then26, %if.else22.if.end42_crit_edge, %if.then21, %if.then13, %if.then11.if.end42_crit_edge, %if.then8
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %17) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %18 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end42.cleanup_crit_edge, label %if.then.i

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %21) #8
  br label %cleanup

if.end43:                                         ; preds = %entry
  %call.i = tail call i32 @hw_read_intr_status(ptr noundef %ci) #8
  %call2.i = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef 2048) #8
  %arrayidx.i.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 12
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !56
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  %and.i.i = and i32 %25, 1
  %otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %26 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %29, label %if.end43.cleanup_crit_edge [
    i32 8, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 3, label %sw.bb12.i
    i32 5, label %sw.bb28.i
    i32 11, label %sw.bb35.i
    i32 10, label %sw.bb53.i
    i32 9, label %sw.bb64.i
    i32 4, label %sw.bb72.i
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.then.i78

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i78:                                      ; preds = %sw.bb.i
  %b_conn.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 5
  %31 = ptrtoint ptr %b_conn.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %b_conn.i, align 4
  %a_bus_req.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 14
  %32 = ptrtoint ptr %a_bus_req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %a_bus_req.i, align 4
  %irq.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %33 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %34) #8
  %wq.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %35 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wq.i.i, align 8
  %work.i.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work.i.i) #8
  br i1 %call.i.i.i, label %if.then.i78.cleanup_crit_edge, label %if.then.i.i

if.then.i78.cleanup_crit_edge:                    ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i.i, align 8
  tail call void @enable_irq(i32 noundef %38) #8
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not.i = icmp eq i32 %call2.i, 0
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool7.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i = icmp eq i32 %and.i.i, 0
  %or.cond125.i = select i1 %or.cond.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond125.i, label %sw.bb5.i.cleanup_crit_edge, label %if.then10.i

sw.bb5.i.cleanup_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i:                                      ; preds = %sw.bb5.i
  %b_sess_vld.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 11
  %39 = ptrtoint ptr %b_sess_vld.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %b_sess_vld.i, align 4
  %irq.i132.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %40 = ptrtoint ptr %irq.i132.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i132.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %41) #8
  %wq.i133.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %42 = ptrtoint ptr %wq.i133.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wq.i133.i, align 8
  %work.i134.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i135.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work.i134.i) #8
  br i1 %call.i.i135.i, label %if.then10.i.cleanup_crit_edge, label %if.then.i136.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i136.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %irq.i132.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i132.i, align 8
  tail call void @enable_irq(i32 noundef %45) #8
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.end43
  %and13.i = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i = icmp eq i32 %and.i.i, 0
  %or.cond126.i = select i1 %tobool14.not.i, i1 true, i1 %tobool16.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool18.not.i = icmp eq i32 %call2.i, 0
  %or.cond127.i = select i1 %or.cond126.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond127.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ci_otg_add_timer(ptr noundef %ci, i32 noundef 6) #8
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb12.i
  %and20.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else.i.cleanup_crit_edge, label %if.then22.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.i:                                      ; preds = %if.else.i
  tail call fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef 6) #8
  %a_bus_suspend.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 7
  %46 = ptrtoint ptr %a_bus_suspend.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %a_bus_suspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i = icmp eq i32 %47, 1
  br i1 %cmp.i, label %if.then23.i, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %a_bus_suspend.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %a_bus_suspend.i, align 4
  br label %cleanup

sw.bb28.i:                                        ; preds = %if.end43
  %and29.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp ne i32 %and29.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i, 0
  %or.cond128.i = select i1 %tobool30.not.i, i1 %tobool32.not.i, i1 false
  br i1 %or.cond128.i, label %if.then33.i, label %sw.bb28.i.cleanup_crit_edge

sw.bb28.i.cleanup_crit_edge:                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33.i:                                      ; preds = %sw.bb28.i
  %a_conn.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 8
  %49 = ptrtoint ptr %a_conn.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %a_conn.i, align 4
  %b_bus_req.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 15
  %50 = ptrtoint ptr %b_bus_req.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %b_bus_req.i, align 4
  %irq.i138.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %51 = ptrtoint ptr %irq.i138.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq.i138.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %52) #8
  %wq.i139.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %53 = ptrtoint ptr %wq.i139.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wq.i139.i, align 8
  %work.i140.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i141.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work.i140.i) #8
  br i1 %call.i.i141.i, label %if.then33.i.cleanup_crit_edge, label %if.then.i142.i

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i142.i:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %irq.i138.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i138.i, align 8
  tail call void @enable_irq(i32 noundef %56) #8
  br label %cleanup

sw.bb35.i:                                        ; preds = %if.end43
  %and36.i = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %sw.bb35.i.if.end39.i_crit_edge, label %if.then38.i

sw.bb35.i.if.end39.i_crit_edge:                   ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then38.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_bus_suspend.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 18
  %57 = ptrtoint ptr %b_bus_suspend.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %b_bus_suspend.i, align 4
  tail call fastcc void @ci_otg_add_timer(ptr noundef %ci, i32 noundef 5) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %sw.bb35.i.if.end39.i_crit_edge
  %and40.i = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end43.i_crit_edge, label %if.then42.i

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef 5) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end43.i_crit_edge
  %and44.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.cleanup_crit_edge, label %if.then46.i

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46.i:                                      ; preds = %if.end43.i
  %b_bus_suspend47.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 18
  %58 = ptrtoint ptr %b_bus_suspend47.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %b_bus_suspend47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp48.i = icmp eq i32 %59, 1
  br i1 %cmp48.i, label %if.then49.i, label %if.then46.i.cleanup_crit_edge

if.then46.i.cleanup_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef 5) #8
  %60 = ptrtoint ptr %b_bus_suspend47.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %b_bus_suspend47.i, align 4
  br label %cleanup

sw.bb53.i:                                        ; preds = %if.end43
  %and54.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp ne i32 %and54.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not.i = icmp eq i32 %and.i.i, 0
  %or.cond129.i = select i1 %tobool55.not.i, i1 %tobool57.not.i, i1 false
  br i1 %or.cond129.i, label %if.then58.i, label %sw.bb53.i.cleanup_crit_edge

sw.bb53.i.cleanup_crit_edge:                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then58.i:                                      ; preds = %sw.bb53.i
  %b_conn59.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 5
  %61 = ptrtoint ptr %b_conn59.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %b_conn59.i, align 4
  %driver.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 19
  %62 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver.i, align 8
  %tobool60.not.i = icmp eq ptr %63, null
  br i1 %tobool60.not.i, label %if.then58.i.if.end62.i_crit_edge, label %if.then61.i

if.then58.i.if.end62.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_a_peripheral.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 17
  %64 = ptrtoint ptr %is_a_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %is_a_peripheral.i, align 4
  %bf.set.i = or i32 %bf.load.i, 536870912
  store i32 %bf.set.i, ptr %is_a_peripheral.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %if.then58.i.if.end62.i_crit_edge
  %irq.i144.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %65 = ptrtoint ptr %irq.i144.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i144.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %66) #8
  %wq.i145.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %67 = ptrtoint ptr %wq.i145.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wq.i145.i, align 8
  %work.i146.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i147.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %work.i146.i) #8
  br i1 %call.i.i147.i, label %if.end62.i.cleanup_crit_edge, label %if.then.i148.i

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i148.i:                                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %irq.i144.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq.i144.i, align 8
  tail call void @enable_irq(i32 noundef %70) #8
  br label %cleanup

sw.bb64.i:                                        ; preds = %if.end43
  %and65.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp ne i32 %and65.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool68.not.i = icmp eq i32 %and.i.i, 0
  %or.cond130.i = select i1 %tobool66.not.i, i1 %tobool68.not.i, i1 false
  br i1 %or.cond130.i, label %if.then69.i, label %sw.bb64.i.cleanup_crit_edge

sw.bb64.i.cleanup_crit_edge:                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then69.i:                                      ; preds = %sw.bb64.i
  %b_conn70.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 5
  %71 = ptrtoint ptr %b_conn70.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %b_conn70.i, align 4
  %irq.i150.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %72 = ptrtoint ptr %irq.i150.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq.i150.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %73) #8
  %wq.i151.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %74 = ptrtoint ptr %wq.i151.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wq.i151.i, align 8
  %work.i152.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i153.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %work.i152.i) #8
  br i1 %call.i.i153.i, label %if.then69.i.cleanup_crit_edge, label %if.then.i154.i

if.then69.i.cleanup_crit_edge:                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i154.i:                                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %irq.i150.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq.i150.i, align 8
  tail call void @enable_irq(i32 noundef %77) #8
  br label %cleanup

sw.bb72.i:                                        ; preds = %if.end43
  %and73.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool76.not.i = icmp eq i32 %and.i.i, 0
  %or.cond131.i = select i1 %tobool74.not.i, i1 true, i1 %tobool76.not.i
  br i1 %or.cond131.i, label %sw.bb72.i.cleanup_crit_edge, label %if.then77.i

sw.bb72.i.cleanup_crit_edge:                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77.i:                                      ; preds = %sw.bb72.i
  %a_conn78.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 8
  %78 = ptrtoint ptr %a_conn78.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %a_conn78.i, align 4
  %irq.i156.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %79 = ptrtoint ptr %irq.i156.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq.i156.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %80) #8
  %wq.i157.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %81 = ptrtoint ptr %wq.i157.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wq.i157.i, align 8
  %work.i158.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i159.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %work.i158.i) #8
  br i1 %call.i.i159.i, label %if.then77.i.cleanup_crit_edge, label %if.then.i160.i

if.then77.i.cleanup_crit_edge:                    ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i160.i:                                   ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %irq.i156.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq.i156.i, align 8
  tail call void @enable_irq(i32 noundef %84) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i160.i, %if.then77.i.cleanup_crit_edge, %sw.bb72.i.cleanup_crit_edge, %if.then.i154.i, %if.then69.i.cleanup_crit_edge, %sw.bb64.i.cleanup_crit_edge, %if.then.i148.i, %if.end62.i.cleanup_crit_edge, %sw.bb53.i.cleanup_crit_edge, %if.then49.i, %if.then46.i.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.then.i142.i, %if.then33.i.cleanup_crit_edge, %sw.bb28.i.cleanup_crit_edge, %if.then23.i, %if.then22.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then19.i, %if.then.i136.i, %if.then10.i.cleanup_crit_edge, %sw.bb5.i.cleanup_crit_edge, %if.then.i.i, %if.then.i78.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then.i, %if.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end42.cleanup_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %if.then.i78.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %sw.bb5.i.cleanup_crit_edge ], [ 0, %if.then10.i.cleanup_crit_edge ], [ 0, %if.then.i136.i ], [ 0, %if.then19.i ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then22.i.cleanup_crit_edge ], [ 0, %if.then23.i ], [ 0, %sw.bb28.i.cleanup_crit_edge ], [ 0, %if.then33.i.cleanup_crit_edge ], [ 0, %if.then.i142.i ], [ 0, %if.end43.i.cleanup_crit_edge ], [ 0, %if.then46.i.cleanup_crit_edge ], [ 0, %if.then49.i ], [ 0, %sw.bb53.i.cleanup_crit_edge ], [ 0, %if.end62.i.cleanup_crit_edge ], [ 0, %if.then.i148.i ], [ 0, %sw.bb64.i.cleanup_crit_edge ], [ 0, %if.then69.i.cleanup_crit_edge ], [ 0, %if.then.i154.i ], [ 0, %sw.bb72.i.cleanup_crit_edge ], [ 0, %if.then77.i.cleanup_crit_edge ], [ 0, %if.then.i160.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_otgsc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_otg_del_timer(ptr noundef %ci, i32 noundef %t) unnamed_addr #0 align 64 {
entry:
  %enabled_timer_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_timer_bits) #8
  %0 = ptrtoint ptr %enabled_timer_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled_timer_bits, align 4, !annotation !60
  %enabled_otg_timer_bits = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 11
  %1 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled_otg_timer_bits, align 8
  %shl = shl nuw i32 1, %t
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %neg = xor i32 %shl, -1
  %3 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enabled_otg_timer_bits, align 8
  %and8 = and i32 %4, %neg
  store i32 %and8, ptr %enabled_otg_timer_bits, align 8
  %next_otg_timer = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 12
  %5 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_otg_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %t)
  %cmp9 = icmp eq i32 %6, %t
  br i1 %cmp9, label %if.then11, label %do.body1.if.end41_crit_edge

do.body1.if.end41_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp13 = icmp eq i32 %and8, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %otg_fsm_hrtimer = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 9
  %call16 = tail call i32 @hrtimer_cancel(ptr noundef %otg_fsm_hrtimer) #8
  %7 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %next_otg_timer, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then11
  %8 = ptrtoint ptr %enabled_timer_bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and8, ptr %enabled_timer_bits, align 4
  %call19 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled_timer_bits, i32 noundef 12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call19)
  %cmp2071 = icmp ult i32 %call19, 12
  br i1 %cmp2071, label %if.else.for.body_crit_edge, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %next_timer.075 = phi i32 [ %next_timer.1, %for.inc.for.body_crit_edge ], [ 12, %if.else.for.body_crit_edge ]
  %cur_timer.072 = phi i32 [ %call31, %for.inc.for.body_crit_edge ], [ %call19, %if.else.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %next_timer.075)
  %cmp22 = icmp eq i32 %next_timer.075, 12
  br i1 %cmp22, label %for.body.if.then29_crit_edge, label %lor.lhs.false24

for.body.if.then29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false24:                                  ; preds = %for.body
  %arrayidx = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 10, i32 %next_timer.075
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %arrayidx26 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 10, i32 %cur_timer.072
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.i.i = icmp slt i64 %10, %12
  br i1 %cmp.i.i, label %lor.lhs.false24.if.then29_crit_edge, label %lor.lhs.false24.for.inc_crit_edge

lor.lhs.false24.for.inc_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false24.if.then29_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false24.if.then29_crit_edge, %for.body.if.then29_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %lor.lhs.false24.for.inc_crit_edge
  %next_timer.1 = phi i32 [ %cur_timer.072, %if.then29 ], [ %next_timer.075, %lor.lhs.false24.for.inc_crit_edge ]
  %add = add nuw nsw i32 %cur_timer.072, 1
  %call31 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled_timer_bits, i32 noundef 12, i32 noundef %add) #8
  %cmp20 = icmp ult i32 %call31, 12
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %if.then36

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then36:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %next_timer.1, ptr %next_otg_timer, align 4
  %otg_fsm_hrtimer38 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 9
  %arrayidx40 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 10, i32 %next_timer.1
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx40, align 8
  call void @hrtimer_start_range_ns(ptr noundef %otg_fsm_hrtimer38, i64 noundef %15, i64 noundef 1000000, i32 noundef 0) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.else.if.end41_crit_edge, %if.then15, %do.body1.if.end41_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_timer_bits) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_otg_add_timer(ptr noundef %ci, i32 noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %arrayidx = getelementptr [12 x i32], ptr @otg_timer_ms, i32 0, i32 %t
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %.frozen, 1000
  %2 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %2
  %mul = mul nuw nsw i32 %rem.decomposed, 1000000
  %call7 = tail call i64 @ktime_get() #8
  %conv8 = zext i32 %div to i64
  %mul.i = mul nuw nsw i64 %conv8, 1000000000
  %conv.i = zext i32 %mul to i64
  %add.i = add i64 %call7, %conv.i
  %add = add i64 %add.i, %mul.i
  %arrayidx10 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 10, i32 %t
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %arrayidx10, align 8
  %shl = shl nuw i32 1, %t
  %enabled_otg_timer_bits = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 11
  %4 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled_otg_timer_bits, align 8
  %or = or i32 %5, %shl
  store i32 %or, ptr %enabled_otg_timer_bits, align 8
  %next_otg_timer = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 12
  %6 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_otg_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp11 = icmp eq i32 %7, 12
  br i1 %cmp11, label %entry.if.then20_crit_edge, label %lor.lhs.false

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %entry
  %arrayidx15 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx15, align 8
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp3.i.i = icmp sgt i64 %9, %11
  br i1 %cmp3.i.i, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %entry.if.then20_crit_edge
  %12 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %t, ptr %next_otg_timer, align 4
  %otg_fsm_hrtimer = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx10, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %otg_fsm_hrtimer, i64 noundef %14, i64 noundef 1000000, i32 noundef 0) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %lor.lhs.false.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_otg_fsm_start(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %1) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 15
  %2 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work.i) #8
  br i1 %call.i.i, label %entry.ci_otg_queue_work.exit_crit_edge, label %if.then.i

entry.ci_otg_queue_work.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_otg_queue_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %5) #8
  br label %ci_otg_queue_work.exit

ci_otg_queue_work.exit:                           ; preds = %if.then.i, %entry.ci_otg_queue_work.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_otg_fsm_init(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phy3 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %phy3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %phy3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 37
  %3 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_phy, align 4
  %usb_phy5 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %usb_phy5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %usb_phy5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gadget = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18
  %otg6 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7
  %gadget7 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7, i32 4
  %6 = ptrtoint ptr %gadget7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gadget, ptr %gadget7, align 4
  %fsm = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8
  %otg9 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %7 = ptrtoint ptr %otg9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %otg6, ptr %otg9, align 4
  %power_up = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %power_up to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %power_up, align 8
  %call = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool11.not to i32
  %9 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %fsm, align 8
  %10 = ptrtoint ptr %otg9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg9, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %ops = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 40
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ci_otg_ops, ptr %ops, align 8
  %hnp_polling_support = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 18, i32 17
  %14 = ptrtoint ptr %hnp_polling_support to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %hnp_polling_support, align 4
  %bf.set = or i32 %bf.load, 33554432
  store i32 %bf.set, ptr %hnp_polling_support, align 4
  %15 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ci, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 1, i32 noundef 3520) #8
  %host_req_flag = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 44
  %17 = ptrtoint ptr %host_req_flag to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %host_req_flag, align 8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 43
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ci_hdrc_otg_fsm_init.__key) #8
  %otg_fsm_hrtimer.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %otg_fsm_hrtimer.i, i32 noundef 1, i32 noundef 0) #8
  %function.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ci_otg_hrtimer_func, ptr %function.i, align 8
  %enabled_otg_timer_bits = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 11
  %19 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %enabled_otg_timer_bits, align 8
  %next_otg_timer = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 12
  %20 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %next_otg_timer, align 4
  %21 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ci, align 8
  %call34 = tail call i32 @sysfs_create_group(ptr noundef %22, ptr noundef nonnull @inputs_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.body36, label %if.end46

do.body36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_hdrc_otg_fsm_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_hdrc_otg_fsm_init, %if.then41)) #8
          to label %cleanup [label %if.then41], !srcloc !61

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ci_hdrc_otg_fsm_init.__UNIQUE_ID_ddebug293, ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef %call34) #8
  br label %cleanup

if.end46:                                         ; preds = %do.body
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 33554432, i32 noundef 33554432) #8
  %25 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.then50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef 2048) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %cond53 = zext i1 %tobool52.not to i32
  %b_ssend_srp = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 10
  %27 = ptrtoint ptr %b_ssend_srp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond53, ptr %b_ssend_srp, align 8
  %call55 = tail call i32 @hw_read_otgsc(ptr noundef %ci, i32 noundef 2048) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp ne i32 %call55, 0
  %cond57 = zext i1 %tobool56.not to i32
  %b_sess_vld = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 11
  %28 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond57, ptr %b_sess_vld, align 4
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 134217728, i32 noundef 134217728) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end46.cleanup_crit_edge, %if.then41, %do.body36, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call34, %if.then41 ], [ 0, %if.then50 ], [ 0, %if.end46.cleanup_crit_edge ], [ %call34, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_otg_fsm_remove(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @inputs_attr_group) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_drv_vbus(ptr noundef %fsm, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fsm, i32 -288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %fsm, i32 -168
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  %imx28_write_fix.i.i = getelementptr i8, ptr %fsm, i32 4910
  %3 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imx28_write_fix.i.i, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.hw_write.exit_crit_edge

if.then.hw_write.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %hw_write.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %7 = and i32 %2, -705691649
  %8 = or i32 %7, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #8, !srcloc !59
  br label %hw_write.exit

hw_write.exit:                                    ; preds = %if.else.i.i, %if.then.hw_write.exit_crit_edge
  %platdata = getelementptr i8, ptr %fsm, i32 4876
  %9 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platdata, align 4
  %reg_vbus = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %reg_vbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_vbus, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %hw_write.exit.if.end7_crit_edge, label %if.then2

hw_write.exit.if.end7_crit_edge:                  ; preds = %hw_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %hw_write.exit
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then2.if.end7_crit_edge, label %do.end

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %call) #11
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %hw_write.exit.if.end7_crit_edge
  tail call void @hw_write_otgsc(ptr noundef %add.ptr, i32 noundef 1073741824, i32 noundef 0) #8
  %a_srp_det = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 3
  %15 = ptrtoint ptr %a_srp_det to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %a_srp_det, align 4
  %power_up = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 2
  %16 = ptrtoint ptr %power_up to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %power_up, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %platdata8 = getelementptr i8, ptr %fsm, i32 4876
  %17 = ptrtoint ptr %platdata8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platdata8, align 4
  %reg_vbus9 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %reg_vbus9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_vbus9, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @regulator_disable(ptr noundef nonnull %20) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge
  %a_bus_drop = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %21 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %a_bus_drop, align 4
  %a_bus_req = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 14
  %22 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %a_bus_req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_loc_conn(ptr nocapture noundef readonly %fsm, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %arrayidx.i2 = getelementptr i8, ptr %fsm, i32 -200
  %0 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i2, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %imx28_write_fix.i.i3 = getelementptr i8, ptr %fsm, i32 4910
  %3 = ptrtoint ptr %imx28_write_fix.i.i3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %imx28_write_fix.i.i3, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i4 = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i4, label %if.else.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i2, align 4
  %7 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %7) #8, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i4, label %if.else.i.i6, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.i6:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i2, align 4
  %10 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #8, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.else.i.i6, %if.else.if.end_crit_edge, %if.else.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_loc_sof(ptr nocapture noundef readonly %fsm, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %otg = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 41
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_hub, align 4
  %call = tail call ptr @usb_hub_find_child(ptr noundef %5, i32 noundef 1) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool6.not = icmp eq i32 %on, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_disable_autosuspend(ptr noundef nonnull %call) #8
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_device, ptr %call, i32 0, i32 15
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 0) #8
  tail call void @usb_enable_autosuspend(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_start_pulse(ptr noundef %fsm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fsm, i32 -288
  tail call void @hw_write_otgsc(ptr noundef %add.ptr, i32 noundef 64, i32 noundef 64) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #8
  tail call fastcc void @ci_otg_add_timer(ptr noundef %add.ptr, i32 noundef 10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_fsm_add_timer(ptr noundef %fsm, i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %t)
  %cmp = icmp ult i32 %t, 12
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %fsm, i32 -288
  tail call fastcc void @ci_otg_add_timer(ptr noundef %add.ptr, i32 noundef %t)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_otg_fsm_del_timer(ptr noundef %fsm, i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %t)
  %cmp = icmp ult i32 %t, 12
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %fsm, i32 -288
  tail call fastcc void @ci_otg_del_timer(ptr noundef %add.ptr, i32 noundef %t)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_otg_start_host(ptr noundef %fsm, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fsm, i32 -288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %role1.i6 = getelementptr i8, ptr %fsm, i32 -52
  %0 = ptrtoint ptr %role1.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role1.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i7 = icmp eq i32 %1, 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i7, label %if.then.ci_role_stop.exit_crit_edge, label %if.end.i

if.then.ci_role_stop.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_role_stop.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %role1.i6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %role1.i6, align 4
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %add.ptr, i32 0, i32 4, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %stop.i = getelementptr inbounds %struct.ci_role_driver, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop.i, align 4
  tail call void %6(ptr noundef %add.ptr) #8
  br label %ci_role_stop.exit

ci_role_stop.exit:                                ; preds = %if.end.i, %if.then.ci_role_stop.exit_crit_edge
  %arrayidx.i5 = getelementptr i8, ptr %fsm, i32 -60
  %7 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i5, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %ci_role_stop.exit.if.end_crit_edge, label %if.end2.i

ci_role_stop.exit.if.end_crit_edge:               ; preds = %ci_role_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end2.i:                                        ; preds = %ci_role_stop.exit
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i = tail call i32 %10(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.if.end.sink.split_crit_edge, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end2.i.if.end.sink.split_crit_edge:            ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  br i1 %cmp.i7, label %if.else.ci_role_stop.exit11_crit_edge, label %if.end.i10

if.else.ci_role_stop.exit11_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_role_stop.exit11

if.end.i10:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %role1.i6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %role1.i6, align 4
  %arrayidx.i8 = getelementptr %struct.ci_hdrc, ptr %add.ptr, i32 0, i32 4, i32 %1
  %12 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i8, align 4
  %stop.i9 = getelementptr inbounds %struct.ci_role_driver, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stop.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop.i9, align 4
  tail call void %15(ptr noundef %add.ptr) #8
  br label %ci_role_stop.exit11

ci_role_stop.exit11:                              ; preds = %if.end.i10, %if.else.ci_role_stop.exit11_crit_edge
  %arrayidx.i12 = getelementptr i8, ptr %fsm, i32 -56
  %16 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i12, align 4
  %tobool.not.i13 = icmp eq ptr %17, null
  br i1 %tobool.not.i13, label %ci_role_stop.exit11.if.end_crit_edge, label %if.end2.i16

ci_role_stop.exit11.if.end_crit_edge:             ; preds = %ci_role_stop.exit11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end2.i16:                                      ; preds = %ci_role_stop.exit11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i14 = tail call i32 %19(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool5.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool5.not.i15, label %if.end2.i16.if.end.sink.split_crit_edge, label %if.end2.i16.if.end_crit_edge

if.end2.i16.if.end_crit_edge:                     ; preds = %if.end2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end2.i16.if.end.sink.split_crit_edge:          ; preds = %if.end2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end2.i16.if.end.sink.split_crit_edge, %if.end2.i.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end2.i.if.end.sink.split_crit_edge ], [ 1, %if.end2.i16.if.end.sink.split_crit_edge ]
  %20 = ptrtoint ptr %role1.i6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %role1.i6, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end2.i16.if.end_crit_edge, %ci_role_stop.exit11.if.end_crit_edge, %if.end2.i.if.end_crit_edge, %ci_role_stop.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_otg_start_gadget(ptr noundef %fsm, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %gadget1 = getelementptr i8, ptr %fsm, i32 592
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @usb_gadget_vbus_connect(ptr noundef %gadget1) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %gadget1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_otg_hrtimer_func(ptr noundef %t) #0 align 64 {
entry:
  %enabled_timer_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -664
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_timer_bits) #8
  %lock = getelementptr i8, ptr %t, i32 -660
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %enabled_otg_timer_bits = getelementptr i8, ptr %t, i32 144
  %0 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled_otg_timer_bits, align 8
  %2 = ptrtoint ptr %enabled_timer_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %enabled_timer_bits, align 4
  %next_otg_timer = getelementptr i8, ptr %t, i32 148
  %3 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %next_otg_timer, align 4
  %call6 = tail call i64 @ktime_get() #8
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled_timer_bits, i32 noundef 12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call7)
  %cmp864 = icmp ult i32 %call7, 12
  br i1 %cmp864, label %for.body.lr.ph, label %if.end36.thread

if.end36.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %if.end40

for.body.lr.ph:                                   ; preds = %entry
  %hr_timeouts = getelementptr i8, ptr %t, i32 48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.068 = phi i32 [ -22, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %next_timer.067 = phi i32 [ 12, %for.body.lr.ph ], [ %next_timer.1, %for.inc.for.body_crit_edge ]
  %cur_timer.065 = phi i32 [ %call7, %for.body.lr.ph ], [ %call29, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x i64], ptr %hr_timeouts, i32 0, i32 %cur_timer.065
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %5)
  %cmp.i.not = icmp slt i64 %call6, %5
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %shl = shl nuw nsw i32 1, %cur_timer.065
  %neg = xor i32 %shl, -1
  %6 = ptrtoint ptr %enabled_otg_timer_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled_otg_timer_bits, align 8
  %and = and i32 %7, %neg
  store i32 %and, ptr %enabled_otg_timer_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %cur_timer.065)
  %tobool.not = icmp eq i32 %cur_timer.065, 9
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then15

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14 = getelementptr [12 x ptr], ptr @otg_timer_handlers, i32 0, i32 %cur_timer.065
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %call17 = call i32 %9(ptr noundef %add.ptr) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %next_timer.067)
  %cmp18 = icmp eq i32 %next_timer.067, 12
  br i1 %cmp18, label %if.else.if.then26_crit_edge, label %lor.lhs.false

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx23 = getelementptr [12 x i64], ptr %hr_timeouts, i32 0, i32 %next_timer.067
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %11)
  %cmp.i.i = icmp slt i64 %5, %11
  br i1 %cmp.i.i, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.else.if.then26_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %lor.lhs.false.for.inc_crit_edge, %if.then15, %if.then.for.inc_crit_edge
  %next_timer.1 = phi i32 [ %next_timer.067, %if.then15 ], [ %next_timer.067, %if.then.for.inc_crit_edge ], [ %cur_timer.065, %if.then26 ], [ %next_timer.067, %lor.lhs.false.for.inc_crit_edge ]
  %ret.1 = phi i32 [ %call17, %if.then15 ], [ %ret.068, %if.then.for.inc_crit_edge ], [ %ret.068, %if.then26 ], [ %ret.068, %lor.lhs.false.for.inc_crit_edge ]
  %add = add nuw nsw i32 %cur_timer.065, 1
  %call29 = call i32 @_find_next_bit_be(ptr noundef nonnull %enabled_timer_bits, i32 noundef 12, i32 noundef %add) #8
  %cmp8 = icmp ult i32 %call29, 12
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %next_timer.1)
  %cmp30 = icmp ult i32 %next_timer.1, 12
  br i1 %cmp30, label %if.then32, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %hr_timeouts33 = getelementptr i8, ptr %t, i32 48
  %arrayidx34 = getelementptr [12 x i64], ptr %hr_timeouts33, i32 0, i32 %next_timer.1
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx34, align 8
  call void @hrtimer_start_range_ns(ptr noundef %t, i64 noundef %13, i64 noundef 1000000, i32 noundef 0) #8
  %14 = ptrtoint ptr %next_otg_timer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %next_timer.1, ptr %next_otg_timer, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.end.if.end36_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool38.not = icmp eq i32 %ret.1, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  %irq.i = getelementptr i8, ptr %t, i32 -440
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 8
  call void @disable_irq_nosync(i32 noundef %16) #8
  %wq.i = getelementptr i8, ptr %t, i32 200
  %17 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr i8, ptr %t, i32 156
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.then39.if.end40_crit_edge, label %if.then.i

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 8
  call void @enable_irq(i32 noundef %20) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then.i, %if.then39.if.end40_crit_edge, %if.end36.if.end40_crit_edge, %if.end36.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_timer_bits) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @a_wait_vrise_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_wait_vrise_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 34
  %0 = ptrtoint ptr %a_wait_vrise_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_wait_vrise_tmout, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @a_wait_vfall_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_wait_vfall_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 35
  %0 = ptrtoint ptr %a_wait_vfall_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_wait_vfall_tmout, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @a_wait_bcon_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_wait_bcon_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 36
  %0 = ptrtoint ptr %a_wait_bcon_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_wait_bcon_tmout, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @a_aidl_bdis_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_aidl_bdis_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 37
  %0 = ptrtoint ptr %a_aidl_bdis_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_aidl_bdis_tmout, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @b_ase0_brst_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ase0_brst_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 38
  %0 = ptrtoint ptr %b_ase0_brst_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %b_ase0_brst_tmout, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @a_bidl_adis_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_bidl_adis_tmout = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 39
  %0 = ptrtoint ptr %a_bidl_adis_tmout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_bidl_adis_tmout, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @b_aidl_bdis_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_bus_suspend = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %a_bus_suspend to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %a_bus_suspend, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @b_se0_srp_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_se0_srp = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %b_se0_srp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %b_se0_srp, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @b_srp_fail_tmout(ptr nocapture noundef writeonly %ci) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_srp_done = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 26
  %0 = ptrtoint ptr %b_srp_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %b_srp_done, align 8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_data_pls_tmout(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_srp_done = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 26
  %0 = ptrtoint ptr %b_srp_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %b_srp_done, align 8
  %b_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 15
  %1 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %b_bus_req, align 4
  %power_up = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %power_up to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_up, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %power_up to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_up, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hw_write_otgsc(ptr noundef %ci, i32 noundef 128, i32 noundef 0) #8
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b_ssend_srp_tmout(ptr nocapture noundef %ci) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ssend_srp = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %b_ssend_srp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %b_ssend_srp, align 8
  %otg = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 8, i32 41
  %1 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ne i32 %4, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_req_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %a_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_bus_req, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_req_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %3, label %if.end.if.end25_crit_edge [
    i8 48, label %if.then3
    i8 49, label %if.then9
  ]

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %a_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %5 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %a_bus_req, align 8
  br label %if.end25

if.then9:                                         ; preds = %if.end
  %a_bus_drop = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %6 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a_bus_drop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end14, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then9
  %a_bus_req16 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %8 = ptrtoint ptr %a_bus_req16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %a_bus_req16, align 8
  %otg = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 41
  %9 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp18 = icmp eq i32 %12, 11
  br i1 %cmp18, label %if.then20, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %host_request_flag = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 17
  %13 = ptrtoint ptr %host_request_flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %host_request_flag, align 4
  %bf.set = or i32 %bf.load, 16777216
  store i32 %bf.set, ptr %host_request_flag, align 4
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end14.if.end25_crit_edge, %if.then3, %if.end.if.end25_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %15) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end25.cleanup.sink.split_crit_edge, label %if.then.i

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %19) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %if.end25.cleanup.sink.split_crit_edge, %if.then20, %if.then9.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_drop_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %a_bus_drop = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_bus_drop, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_bus_drop_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %3, label %if.end.if.end14_crit_edge [
    i8 48, label %if.then3
    i8 49, label %if.then9
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %a_bus_drop = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %5 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %a_bus_drop, align 4
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %a_bus_drop11 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 13
  %6 = ptrtoint ptr %a_bus_drop11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %a_bus_drop11, align 4
  %a_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 14
  %7 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %a_bus_req, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then3, %if.end.if.end14_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %9) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end14.ci_otg_queue_work.exit_crit_edge, label %if.then.i

if.end14.ci_otg_queue_work.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_otg_queue_work.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %13) #8
  br label %ci_otg_queue_work.exit

ci_otg_queue_work.exit:                           ; preds = %if.then.i, %if.end14.ci_otg_queue_work.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %ci_otg_queue_work.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ci_otg_queue_work.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_bus_req_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %b_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_bus_req, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_bus_req_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %3, label %if.end.if.end20_crit_edge [
    i8 48, label %if.then3
    i8 49, label %if.then9
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_bus_req = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b_bus_req, align 4
  br label %if.end20

if.then9:                                         ; preds = %if.end
  %b_bus_req11 = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %b_bus_req11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %b_bus_req11, align 4
  %otg = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 41
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp13 = icmp eq i32 %10, 3
  br i1 %cmp13, label %if.then15, label %if.then9.if.end20_crit_edge

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %host_request_flag = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 18, i32 17
  %11 = ptrtoint ptr %host_request_flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %host_request_flag, align 4
  %bf.set = or i32 %bf.load, 16777216
  store i32 %bf.set, ptr %host_request_flag, align 4
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.then9.if.end20_crit_edge, %if.then3, %if.end.if.end20_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %13) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end20.cleanup.sink.split_crit_edge, label %if.then.i

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %17) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %if.end20.cleanup.sink.split_crit_edge, %if.then15
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a_clr_err_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %3)
  %cmp1 = icmp eq i8 %3, 49
  br i1 %cmp1, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %a_clr_err = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 8, i32 28
  %4 = ptrtoint ptr %a_clr_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %a_clr_err, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %irq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %6) #8
  %wq.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq.i, align 8
  %work.i = getelementptr inbounds %struct.ci_hdrc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end5.ci_otg_queue_work.exit_crit_edge, label %if.then.i

if.end5.ci_otg_queue_work.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_otg_queue_work.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 8
  tail call void @enable_irq(i32 noundef %10) #8
  br label %ci_otg_queue_work.exit

ci_otg_queue_work.exit:                           ; preds = %if.then.i, %if.end5.ci_otg_queue_work.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %ci_otg_queue_work.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ci_otg_queue_work.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @ci_hdrc_otg_fsm_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 809, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 813, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ci_hdrc_otg_fsm_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @ci_hdrc_otg_fsm_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 821, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ci_hdrc_otg_fsm_init.__UNIQUE_ID_ddebug293, !12, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!15 = !{ptr @otg_timer_ms, !16, !"otg_timer_ms", i1 false, i1 false}
!16 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 201, i32 17}
!17 = !{ptr @ci_otg_ops, !18, !"ci_otg_ops", i1 false, i1 false}
!18 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 570, i32 27}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 468, i32 5}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ci_otg_drv_vbus._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ci_otg_drv_vbus._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @otg_timer_handlers, !25, !"otg_timer_handlers", i1 false, i1 false}
!25 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 363, i32 14}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 193, i32 10}
!28 = !{ptr @inputs_attr_group, !29, !"inputs_attr_group", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 192, i32 37}
!30 = !{ptr @inputs_attrs, !31, !"inputs_attrs", i1 false, i1 false}
!31 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 184, i32 26}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 78, i32 8}
!34 = !{ptr @dev_attr_a_bus_req, !33, !"dev_attr_a_bus_req", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 40, i32 28}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 118, i32 8}
!39 = !{ptr @dev_attr_a_bus_drop, !38, !"dev_attr_a_bus_drop", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 162, i32 8}
!42 = !{ptr @dev_attr_b_bus_req, !41, !"dev_attr_b_bus_req", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/chipidea/otg_fsm.c", i32 182, i32 8}
!45 = !{ptr @dev_attr_a_clr_err, !44, !"dev_attr_a_clr_err", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{i64 5949384}
!57 = !{i64 2153482243}
!58 = !{i64 2153483598}
!59 = !{i64 5948966}
!60 = !{!"auto-init"}
!61 = !{i64 2148892341, i64 2148892346, i64 2148892359, i64 2148892403, i64 2148892437, i64 2148892458}
