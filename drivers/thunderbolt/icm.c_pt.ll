; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/icm.c_pt.bc'
source_filename = "../drivers/thunderbolt/icm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tb_cm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.icm_fr_pkg_get_topology = type { %struct.icm_pkg_header }
%struct.icm_pkg_header = type { i8, i8, i8, i8 }
%struct.icm_fr_pkg_get_topology_response = type { %struct.icm_pkg_header, i32, i32, i8, i8, i8, i8, [2 x i32], [16 x i32], [16 x i32] }
%struct.icm_fr_pkg_driver_ready_response = type { %struct.icm_pkg_header, i8, i8, i16 }
%struct.icm_pkg_driver_ready = type { %struct.icm_pkg_header }
%struct.icm_fr_event_device_connected = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16, [55 x i32] }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_xdomain = type { %struct.device, ptr, ptr, ptr, i64, i16, i16, i32, i32, %struct.mutex, ptr, ptr, i32, i32, i8, i8, %struct.ida, %struct.ida, %struct.ida, ptr, i32, i32, ptr, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, i8, i8 }
%struct.ep_name_entry = type { i8, i8, [0 x i8] }
%struct.icm_fr_event_device_disconnected = type { %struct.icm_pkg_header, i16, i16 }
%struct.icm_fr_event_xdomain_connected = type { %struct.icm_pkg_header, i16, i16, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, i32 }
%struct.icm_fr_event_xdomain_disconnected = type { %struct.icm_pkg_header, i16, i16, %struct.uuid_t }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.icm_ar_pkg_get_route_response = type { %struct.icm_pkg_header, i16, i16, i32, i32 }
%struct.icm_ar_pkg_get_route = type { %struct.icm_pkg_header, i16, i16 }
%struct.icm_ar_pkg_driver_ready_response = type { %struct.icm_pkg_header, i8, i8, i16 }
%struct.icm_tr_pkg_driver_ready_response = type { %struct.icm_pkg_header, i16, i16, i32, i16, i16 }
%struct.icm_tr_event_device_disconnected = type { %struct.icm_pkg_header, i32, i32 }
%struct.icm_tr_event_xdomain_connected = type { %struct.icm_pkg_header, i16, i16, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, i32 }
%struct.icm_tr_event_xdomain_disconnected = type { %struct.icm_pkg_header, i32, i32, %struct.uuid_t }
%struct.icm_icl_event_rtd3_veto = type { %struct.icm_pkg_header, i32 }
%struct.tb_cfg_result = type { i64, i32, i32, i32 }
%struct.tb_cfg_request = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.work_struct, %struct.tb_cfg_result, %struct.list_head }
%struct.ctl_pkg = type { ptr, ptr, %struct.ring_frame }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }
%struct.icm_notification = type { %struct.work_struct, ptr, ptr }
%struct.icm_fr_pkg_approve_device = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16 }
%struct.icm_fr_pkg_add_device_key = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16, [8 x i32] }
%struct.icm_fr_pkg_add_device_key_response = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16 }
%struct.icm_fr_pkg_challenge_device = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16, [8 x i32] }
%struct.icm_fr_pkg_challenge_device_response = type { %struct.icm_pkg_header, %struct.uuid_t, i8, i8, i16, [8 x i32], [8 x i32] }
%struct.icm_fr_pkg_approve_xdomain_response = type { %struct.icm_pkg_header, i16, i16, %struct.uuid_t, i16, i16, i16, i16 }
%struct.icm_fr_pkg_approve_xdomain = type { %struct.icm_pkg_header, i16, i16, %struct.uuid_t, i16, i16, i16, i16 }
%struct.icm = type { %struct.mutex, %struct.delayed_work, ptr, i32, i8, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.icm_ar_pkg_preboot_acl_response = type { %struct.icm_pkg_header, [16 x %struct.icm_ar_boot_acl_entry] }
%struct.icm_ar_boot_acl_entry = type { i32, i32 }
%struct.icm_ar_pkg_preboot_acl = type { %struct.icm_pkg_header, [16 x %struct.icm_ar_boot_acl_entry] }
%struct.icm_tr_event_device_connected = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, i8, i16, [55 x i32] }
%struct.icm_tr_pkg_approve_device = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, [3 x i8] }
%struct.icm_tr_pkg_add_device_key_response = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, [3 x i8] }
%struct.icm_tr_pkg_add_device_key = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, [3 x i8], [8 x i32] }
%struct.icm_tr_pkg_challenge_device_response = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, [3 x i8], [8 x i32], [8 x i32] }
%struct.icm_tr_pkg_challenge_device = type { %struct.icm_pkg_header, %struct.uuid_t, i32, i32, i8, [3 x i8], [8 x i32] }
%struct.icm_tr_pkg_approve_xdomain_response = type { %struct.icm_pkg_header, i32, i32, %struct.uuid_t, i16, i16, i16, i16 }
%struct.icm_tr_pkg_approve_xdomain = type { %struct.icm_pkg_header, i32, i32, %struct.uuid_t, i16, i16, i16, i16 }
%struct.icm_tr_pkg_disconnect_xdomain_response = type { %struct.icm_pkg_header, i8, [3 x i8], i32, i32, %struct.uuid_t }
%struct.icm_tr_pkg_disconnect_xdomain = type { %struct.icm_pkg_header, i8, [3 x i8], i32, i32, %struct.uuid_t }
%struct.icm_usb4_switch_op_response = type { %struct.icm_pkg_header, i32, i32, i32, i16, i16, [16 x i32] }
%struct.icm_usb4_switch_op = type { %struct.icm_pkg_header, i32, i32, i32, i16, i16, [16 x i32] }
%struct.usb4_switch_nvm_auth = type { %struct.icm_usb4_switch_op_response, %struct.icm_usb4_switch_op, ptr }

@__param_str_start_icm = internal constant [22 x i8] c"thunderbolt.start_icm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@start_icm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_start_icm = internal constant %struct.kernel_param { ptr @__param_str_start_icm, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @start_icm } }, section "__param", align 4
@__UNIQUE_ID_start_icmtype237 = internal constant [36 x i8] c"thunderbolt.parmtype=start_icm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_start_icm238 = internal constant [84 x i8] c"thunderbolt.parm=start_icm:start ICM firmware if it is not running (default: false)\00", section ".modinfo", align 1
@icm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&icm->rescan_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@icm_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&icm->rescan_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@icm_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&icm->request_lock\00", [45 x i8] zeroinitializer }, align 32
@icm_fr_ops = internal constant { %struct.tb_cm_ops, [60 x i8] } { %struct.tb_cm_ops { ptr @icm_driver_ready, ptr @icm_start, ptr @icm_stop, ptr null, ptr null, ptr @icm_suspend, ptr null, ptr null, ptr @icm_complete, ptr null, ptr null, ptr null, ptr null, ptr @icm_handle_event, ptr null, ptr null, ptr null, ptr @icm_fr_approve_switch, ptr @icm_fr_add_switch_key, ptr @icm_fr_challenge_switch_key, ptr @icm_disconnect_pcie_paths, ptr @icm_fr_approve_xdomain_paths, ptr @icm_fr_disconnect_xdomain_paths, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@icm_ar_ops = internal constant { %struct.tb_cm_ops, [60 x i8] } { %struct.tb_cm_ops { ptr @icm_driver_ready, ptr @icm_start, ptr @icm_stop, ptr null, ptr null, ptr @icm_suspend, ptr null, ptr null, ptr @icm_complete, ptr @icm_runtime_suspend, ptr @icm_runtime_resume, ptr @icm_runtime_suspend_switch, ptr @icm_runtime_resume_switch, ptr @icm_handle_event, ptr @icm_ar_get_boot_acl, ptr @icm_ar_set_boot_acl, ptr null, ptr @icm_fr_approve_switch, ptr @icm_fr_add_switch_key, ptr @icm_fr_challenge_switch_key, ptr @icm_disconnect_pcie_paths, ptr @icm_fr_approve_xdomain_paths, ptr @icm_fr_disconnect_xdomain_paths, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@icm_tr_ops = internal constant { %struct.tb_cm_ops, [60 x i8] } { %struct.tb_cm_ops { ptr @icm_driver_ready, ptr @icm_start, ptr @icm_stop, ptr null, ptr null, ptr @icm_suspend, ptr null, ptr null, ptr @icm_complete, ptr @icm_runtime_suspend, ptr @icm_runtime_resume, ptr @icm_runtime_suspend_switch, ptr @icm_runtime_resume_switch, ptr @icm_handle_event, ptr @icm_ar_get_boot_acl, ptr @icm_ar_set_boot_acl, ptr null, ptr @icm_tr_approve_switch, ptr @icm_tr_add_switch_key, ptr @icm_tr_challenge_switch_key, ptr @icm_disconnect_pcie_paths, ptr @icm_tr_approve_xdomain_paths, ptr @icm_tr_disconnect_xdomain_paths, ptr @icm_usb4_switch_op, ptr @icm_usb4_switch_nvm_authenticate_status }, [60 x i8] zeroinitializer }, align 32
@icm_icl_ops = internal constant { %struct.tb_cm_ops, [60 x i8] } { %struct.tb_cm_ops { ptr @icm_driver_ready, ptr @icm_start, ptr @icm_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icm_complete, ptr @icm_runtime_suspend, ptr @icm_runtime_resume, ptr null, ptr null, ptr @icm_handle_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icm_tr_approve_xdomain_paths, ptr @icm_tr_disconnect_xdomain_paths, ptr @icm_usb4_switch_op, ptr @icm_usb4_switch_nvm_authenticate_status }, [60 x i8] zeroinitializer }, align 32
@icm_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 2, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"icm_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/icm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ICM not supported on this controller\0A\00", [58 x i8] zeroinitializer }, align 32
@icm_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 2, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using firmware connection manager\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_bus_type = external dso_local global %struct.bus_type, align 4
@tb_switch_type = external dso_local global %struct.device_type, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@icm_fr_device_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 750, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"switch at %u.%u was rejected by ICM firmware because topology limit exceeded\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"icm_fr_device_connected\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@icm_fr_device_connected._entry_ptr = internal global ptr @icm_fr_device_connected._entry, section ".printk_index", align 4
@icm_fr_device_connected._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.7, i32 780, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to update route string for switch at %u.%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@icm_fr_device_connected._entry_ptr.17 = internal global ptr @icm_fr_device_connected._entry.14, section ".printk_index", align 4
@icm_fr_device_connected._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.7, i32 832, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to find parent switch for %u.%u\0A\00", [56 x i8] zeroinitializer }, align 32
@icm_fr_device_connected._entry_ptr.20 = internal global ptr @icm_fr_device_connected._entry.18, section ".printk_index", align 4
@icm_fr_device_connected._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.7, i32 839, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to find route string for switch at %u.%u\0A\00", [47 x i8] zeroinitializer }, align 32
@icm_fr_device_connected._entry_ptr.23 = internal global ptr @icm_fr_device_connected._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/tb.h\00", [39 x i8] zeroinitializer }, align 32
@alloc_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 617, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate switch at %llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc_switch\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@alloc_switch._entry_ptr = internal global ptr @alloc_switch._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@icm_fr_device_disconnected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 882, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid topology %u.%u, ignoring\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"icm_fr_device_disconnected\00", [37 x i8] zeroinitializer }, align 32
@icm_fr_device_disconnected._entry_ptr = internal global ptr @icm_fr_device_disconnected._entry, section ".printk_index", align 4
@icm_fr_device_disconnected._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.7, i32 889, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no switch exists at %u.%u, ignoring\0A\00", [59 x i8] zeroinitializer }, align 32
@icm_fr_device_disconnected._entry_ptr.33 = internal global ptr @icm_fr_device_disconnected._entry.31, section ".printk_index", align 4
@icm_fr_xdomain_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.7, i32 918, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"icm_fr_xdomain_connected\00", [39 x i8] zeroinitializer }, align 32
@icm_fr_xdomain_connected._entry_ptr = internal global ptr @icm_fr_xdomain_connected._entry, section ".printk_index", align 4
@icm_fr_xdomain_connected._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.34, ptr @.str.7, i32 980, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@icm_fr_xdomain_connected._entry_ptr.36 = internal global ptr @icm_fr_xdomain_connected._entry.35, section ".printk_index", align 4
@icm_driver_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 1969, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Thunderbolt host controller is in safe mode.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"icm_driver_ready\00", [47 x i8] zeroinitializer }, align 32
@icm_driver_ready._entry_ptr = internal global ptr @icm_driver_ready._entry, section ".printk_index", align 4
@icm_driver_ready._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 1970, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"You need to update NVM firmware of the controller before it can be used.\0A\00", [54 x i8] zeroinitializer }, align 32
@icm_driver_ready._entry_ptr.41 = internal global ptr @icm_driver_ready._entry.39, section ".printk_index", align 4
@icm_driver_ready._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.7, i32 1971, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"For latest updates check https://thunderbolttechnology.net/updates.\0A\00", [59 x i8] zeroinitializer }, align 32
@icm_driver_ready._entry_ptr.44 = internal global ptr @icm_driver_ready._entry.42, section ".printk_index", align 4
@icm_driver_ready.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.45, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB4 proxy operations supported\0A\00", [63 x i8] zeroinitializer }, align 32
@icm_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 1919, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not start ICM firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icm_firmware_init\00", [46 x i8] zeroinitializer }, align 32
@icm_firmware_init._entry_ptr = internal global ptr @icm_firmware_init._entry, section ".printk_index", align 4
@icm_firmware_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 1940, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ICM firmware is in wrong mode: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@icm_firmware_init._entry_ptr.50 = internal global ptr @icm_firmware_init._entry.48, section ".printk_index", align 4
@icm_firmware_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.7, i32 1951, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to reset links on port0\0A\00", [32 x i8] zeroinitializer }, align 32
@icm_firmware_init._entry_ptr.53 = internal global ptr @icm_firmware_init._entry.51, section ".printk_index", align 4
@icm_firmware_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.7, i32 1954, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to reset links on port1\0A\00", [32 x i8] zeroinitializer }, align 32
@icm_firmware_init._entry_ptr.56 = internal global ptr @icm_firmware_init._entry.54, section ".printk_index", align 4
@icm_firmware_start.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.57, ptr @.str.7, ptr @.str.58, i8 1, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"icm_firmware_start\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"starting ICM firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__icm_driver_ready._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.7, i32 1767, ptr @.str.16, ptr @.str.13 }, align 1
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send driver ready to ICM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__icm_driver_ready\00", [45 x i8] zeroinitializer }, align 32
@__icm_driver_ready._entry_ptr = internal global ptr @__icm_driver_ready._entry, section ".printk_index", align 4
@__icm_driver_ready._entry.61 = internal constant %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.7, i32 1787, ptr @.str.16, ptr @.str.13 }, align 1
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to read root switch config space, giving up\0A\00", [44 x i8] zeroinitializer }, align 32
@__icm_driver_ready._entry_ptr.63 = internal global ptr @__icm_driver_ready._entry.61, section ".printk_index", align 4
@icm_handle_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&n->work)\00", [36 x i8] zeroinitializer }, align 32
@icm_fr_approve_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 496, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCIe tunnel creation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icm_fr_approve_switch\00", [42 x i8] zeroinitializer }, align 32
@icm_fr_approve_switch._entry_ptr = internal global ptr @icm_fr_approve_switch._entry, section ".printk_index", align 4
@icm_fr_add_switch_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.7, i32 523, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adding key to switch failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icm_fr_add_switch_key\00", [42 x i8] zeroinitializer }, align 32
@icm_fr_add_switch_key._entry_ptr = internal global ptr @icm_fr_add_switch_key._entry, section ".printk_index", align 4
@icm_ar_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.7, i32 1482, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ICM firmware not authenticated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"icm_ar_get_mode\00", [16 x i8] zeroinitializer }, align 32
@icm_ar_get_mode._entry_ptr = internal global ptr @icm_ar_get_mode._entry, section ".printk_index", align 4
@icm_runtime_resume_switch.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.7, ptr @.str.72, i8 2, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"icm_runtime_resume_switch\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"runtime resuming timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@__icm_tr_device_connected._entry = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 1231, ptr @.str.12, ptr @.str.13 }, align 1
@.str.73 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"switch at %llx was rejected by ICM firmware because topology limit exceeded\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__icm_tr_device_connected\00", [38 x i8] zeroinitializer }, align 32
@__icm_tr_device_connected._entry_ptr = internal global ptr @__icm_tr_device_connected._entry, section ".printk_index", align 4
@__icm_tr_device_connected._entry.75 = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.7, i32 1266, ptr @.str.16, ptr @.str.13 }, align 1
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to find parent switch for %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@__icm_tr_device_connected._entry_ptr.77 = internal global ptr @__icm_tr_device_connected._entry.75, section ".printk_index", align 4
@icm_tr_device_disconnected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.7, i32 1313, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no switch exists at %llx, ignoring\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"icm_tr_device_disconnected\00", [37 x i8] zeroinitializer }, align 32
@icm_tr_device_disconnected._entry_ptr = internal global ptr @icm_tr_device_disconnected._entry, section ".printk_index", align 4
@icm_tr_xdomain_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.80, ptr @.str.7, i32 1372, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"icm_tr_xdomain_connected\00", [39 x i8] zeroinitializer }, align 32
@icm_tr_xdomain_connected._entry_ptr = internal global ptr @icm_tr_xdomain_connected._entry, section ".printk_index", align 4
@icm_tr_approve_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.81, ptr @.str.7, i32 1063, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icm_tr_approve_switch\00", [42 x i8] zeroinitializer }, align 32
@icm_tr_approve_switch._entry_ptr = internal global ptr @icm_tr_approve_switch._entry, section ".printk_index", align 4
@icm_tr_add_switch_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.82, ptr @.str.7, i32 1091, ptr @.str.27, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"icm_tr_add_switch_key\00", [42 x i8] zeroinitializer }, align 32
@icm_tr_add_switch_key._entry_ptr = internal global ptr @icm_tr_add_switch_key._entry, section ".printk_index", align 4
@icm_usb4_switch_nvm_authenticate.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.7, ptr @.str.84, i8 2, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"icm_usb4_switch_nvm_authenticate\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NVM_AUTH request for %llx\0A\00", [37 x i8] zeroinitializer }, align 32
@icm_usb4_switch_nvm_auth_complete.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.7, ptr @.str.86, i8 2, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"icm_usb4_switch_nvm_auth_complete\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NVM_AUTH response for %llx flags %#x status %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@icm_usb4_switch_nvm_authenticate_status.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.87, ptr @.str.7, ptr @.str.88, i8 2, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"icm_usb4_switch_nvm_authenticate_status\00", [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NVM_AUTH found for %llx flags %#x status %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@icm_icl_rtd3_veto.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.89, ptr @.str.7, ptr @.str.90, i8 1, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icm_icl_rtd3_veto\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ICM rtd3 veto=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 16, i64 4407, i64 5482, i64 5484, i64 5493, i64 5495, i64 5567, i64 5586, i64 5593, i64 5608, i64 5611, i64 17982, i64 18029, i64 35341, i64 35351, i64 39451, i64 39453, i64 39455, i64 39457]
@__sancov_gen_cov_switch_values.91 = internal global [9 x i64] [i64 7, i64 16, i64 5494, i64 5496, i64 5568, i64 5587, i64 5594, i64 5607, i64 5610]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 6, i64 7, i64 10]
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"start_icm\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 47, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2441, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2442, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"icm_fr_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2353, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"icm_ar_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2369, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"icm_tr_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2391, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"icm_icl_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2416, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2543, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2548, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 749, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 779, i32 6 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 831, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 838, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"../drivers/thunderbolt/tb.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 538, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 617, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 87, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 882, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 888, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 918, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 979, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1969, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1970, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1971, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1988, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1919, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1940, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1951, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1954, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1824, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1767, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1787, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1750, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 496, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 523, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1482, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2133, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1230, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1266, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1313, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1372, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1063, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1091, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2243, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2199, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2338, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [29 x i8] c"../drivers/thunderbolt/icm.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1670, i32 2 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_start_icm238, ptr @__UNIQUE_ID_start_icmtype237, ptr @__icm_driver_ready._entry, ptr @__icm_driver_ready._entry.61, ptr @__icm_driver_ready._entry_ptr, ptr @__icm_driver_ready._entry_ptr.63, ptr @__icm_tr_device_connected._entry, ptr @__icm_tr_device_connected._entry.75, ptr @__icm_tr_device_connected._entry_ptr, ptr @__icm_tr_device_connected._entry_ptr.77, ptr @__param_start_icm, ptr @alloc_switch._entry, ptr @alloc_switch._entry_ptr, ptr @icm_ar_get_mode._entry, ptr @icm_ar_get_mode._entry_ptr, ptr @icm_driver_ready._entry, ptr @icm_driver_ready._entry.39, ptr @icm_driver_ready._entry.42, ptr @icm_driver_ready._entry_ptr, ptr @icm_driver_ready._entry_ptr.41, ptr @icm_driver_ready._entry_ptr.44, ptr @icm_firmware_init._entry, ptr @icm_firmware_init._entry.48, ptr @icm_firmware_init._entry.51, ptr @icm_firmware_init._entry.54, ptr @icm_firmware_init._entry_ptr, ptr @icm_firmware_init._entry_ptr.50, ptr @icm_firmware_init._entry_ptr.53, ptr @icm_firmware_init._entry_ptr.56, ptr @icm_fr_add_switch_key._entry, ptr @icm_fr_add_switch_key._entry_ptr, ptr @icm_fr_approve_switch._entry, ptr @icm_fr_approve_switch._entry_ptr, ptr @icm_fr_device_connected._entry, ptr @icm_fr_device_connected._entry.14, ptr @icm_fr_device_connected._entry.18, ptr @icm_fr_device_connected._entry.21, ptr @icm_fr_device_connected._entry_ptr, ptr @icm_fr_device_connected._entry_ptr.17, ptr @icm_fr_device_connected._entry_ptr.20, ptr @icm_fr_device_connected._entry_ptr.23, ptr @icm_fr_device_disconnected._entry, ptr @icm_fr_device_disconnected._entry.31, ptr @icm_fr_device_disconnected._entry_ptr, ptr @icm_fr_device_disconnected._entry_ptr.33, ptr @icm_fr_xdomain_connected._entry, ptr @icm_fr_xdomain_connected._entry.35, ptr @icm_fr_xdomain_connected._entry_ptr, ptr @icm_fr_xdomain_connected._entry_ptr.36, ptr @icm_tr_add_switch_key._entry, ptr @icm_tr_add_switch_key._entry_ptr, ptr @icm_tr_approve_switch._entry, ptr @icm_tr_approve_switch._entry_ptr, ptr @icm_tr_device_disconnected._entry, ptr @icm_tr_device_disconnected._entry_ptr, ptr @icm_tr_xdomain_connected._entry, ptr @icm_tr_xdomain_connected._entry_ptr, ptr @start_icm, ptr @icm_probe.__key, ptr @.str, ptr @icm_probe.__key.1, ptr @.str.2, ptr @icm_probe.__key.3, ptr @.str.4, ptr @icm_fr_ops, ptr @icm_ar_ops, ptr @icm_tr_ops, ptr @icm_icl_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @icm_handle_event.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_icm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_ar_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_tr_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_icl_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_connected._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_connected._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_connected._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_disconnected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_device_disconnected._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_xdomain_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_xdomain_connected._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_driver_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_driver_ready._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_driver_ready._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_firmware_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_firmware_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_firmware_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_handle_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_approve_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_fr_add_switch_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_ar_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_tr_device_disconnected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_tr_xdomain_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_tr_approve_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_tr_add_switch_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @icm_probe(ptr noundef %nhi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tb_domain_alloc(ptr noundef %nhi, i32 noundef 5000, i32 noundef 268) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 10
  %rescan_work = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  tail call void @__init_work(ptr noundef %rescan_work, i32 noundef 0) #12
  %0 = ptrtoint ptr %rescan_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %rescan_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @icm_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry9 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 3
  %1 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @icm_rescan_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @icm_probe.__key.1) #12
  tail call void @__mutex_init(ptr noundef %privdata.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @icm_probe.__key.3) #12
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.end.sw.epilog_crit_edge [
    i16 5482, label %if.end.sw.bb_crit_edge
    i16 5484, label %if.end.sw.bb_crit_edge187
    i16 5493, label %if.end.sw.bb21_crit_edge
    i16 5495, label %if.end.sw.bb21_crit_edge188
    i16 5567, label %if.end.sw.bb21_crit_edge189
    i16 5586, label %if.end.sw.bb21_crit_edge190
    i16 5593, label %if.end.sw.bb21_crit_edge191
    i16 5608, label %if.end.sw.bb32_crit_edge
    i16 5611, label %if.end.sw.bb32_crit_edge192
    i16 -30185, label %if.end.sw.bb44_crit_edge
    i16 -30195, label %if.end.sw.bb44_crit_edge193
    i16 -26085, label %if.end.sw.bb52_crit_edge
    i16 -26083, label %if.end.sw.bb52_crit_edge194
    i16 -26081, label %if.end.sw.bb52_crit_edge195
    i16 -26079, label %if.end.sw.bb52_crit_edge196
    i16 17982, label %if.end.sw.bb52_crit_edge197
    i16 18029, label %if.end.sw.bb52_crit_edge198
    i16 4407, label %sw.bb62
  ]

if.end.sw.bb52_crit_edge198:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb52_crit_edge197:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb52_crit_edge196:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb52_crit_edge195:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb52_crit_edge194:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb52_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb52

if.end.sw.bb44_crit_edge193:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44

if.end.sw.bb44_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44

if.end.sw.bb32_crit_edge192:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

if.end.sw.bb21_crit_edge191:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end.sw.bb21_crit_edge190:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end.sw.bb21_crit_edge189:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end.sw.bb21_crit_edge188:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end.sw.bb_crit_edge187:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge187
  %can_upgrade_nvm = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %can_upgrade_nvm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %can_upgrade_nvm, align 1
  %is_supported = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %is_supported to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @icm_fr_is_supported, ptr %is_supported, align 4
  %get_route = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %get_route to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @icm_fr_get_route, ptr %get_route, align 4
  %save_devices = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %save_devices to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @icm_fr_save_devices, ptr %save_devices, align 4
  %driver_ready = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %13 = ptrtoint ptr %driver_ready to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @icm_fr_driver_ready, ptr %driver_ready, align 4
  %device_connected = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %14 = ptrtoint ptr %device_connected to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @icm_fr_device_connected, ptr %device_connected, align 4
  %device_disconnected = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %15 = ptrtoint ptr %device_disconnected to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @icm_fr_device_disconnected, ptr %device_disconnected, align 4
  %xdomain_connected = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %16 = ptrtoint ptr %xdomain_connected to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @icm_fr_xdomain_connected, ptr %xdomain_connected, align 4
  %xdomain_disconnected = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %17 = ptrtoint ptr %xdomain_disconnected to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @icm_fr_xdomain_disconnected, ptr %xdomain_disconnected, align 4
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge188, %if.end.sw.bb21_crit_edge189, %if.end.sw.bb21_crit_edge190, %if.end.sw.bb21_crit_edge191
  %max_boot_acl = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %18 = ptrtoint ptr %max_boot_acl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %max_boot_acl, align 4
  %can_upgrade_nvm22 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 4
  %19 = ptrtoint ptr %can_upgrade_nvm22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %can_upgrade_nvm22, align 1
  %is_supported23 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %is_supported23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @icm_ar_is_supported, ptr %is_supported23, align 4
  %cio_reset = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %cio_reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @icm_ar_cio_reset, ptr %cio_reset, align 4
  %get_mode = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 3, i32 1
  %22 = ptrtoint ptr %get_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @icm_ar_get_mode, ptr %get_mode, align 4
  %get_route24 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %get_route24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @icm_ar_get_route, ptr %get_route24, align 4
  %save_devices25 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5
  %24 = ptrtoint ptr %save_devices25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @icm_fr_save_devices, ptr %save_devices25, align 4
  %driver_ready26 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %25 = ptrtoint ptr %driver_ready26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @icm_ar_driver_ready, ptr %driver_ready26, align 4
  %device_connected27 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %26 = ptrtoint ptr %device_connected27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @icm_fr_device_connected, ptr %device_connected27, align 4
  %device_disconnected28 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %27 = ptrtoint ptr %device_disconnected28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @icm_fr_device_disconnected, ptr %device_disconnected28, align 4
  %xdomain_connected29 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %28 = ptrtoint ptr %xdomain_connected29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @icm_fr_xdomain_connected, ptr %xdomain_connected29, align 4
  %xdomain_disconnected30 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %29 = ptrtoint ptr %xdomain_disconnected30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @icm_fr_xdomain_disconnected, ptr %xdomain_disconnected30, align 4
  br label %sw.epilog.sink.split

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge192
  %max_boot_acl33 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %30 = ptrtoint ptr %max_boot_acl33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %max_boot_acl33, align 4
  %can_upgrade_nvm34 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 4, i32 4
  %31 = ptrtoint ptr %can_upgrade_nvm34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %can_upgrade_nvm34, align 1
  %is_supported35 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %is_supported35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @icm_ar_is_supported, ptr %is_supported35, align 4
  %cio_reset36 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %cio_reset36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @icm_tr_cio_reset, ptr %cio_reset36, align 4
  %get_mode37 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 3, i32 1
  %34 = ptrtoint ptr %get_mode37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @icm_ar_get_mode, ptr %get_mode37, align 4
  %driver_ready38 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %35 = ptrtoint ptr %driver_ready38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @icm_tr_driver_ready, ptr %driver_ready38, align 4
  %device_connected39 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %36 = ptrtoint ptr %device_connected39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @icm_tr_device_connected, ptr %device_connected39, align 4
  %device_disconnected40 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %37 = ptrtoint ptr %device_disconnected40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @icm_tr_device_disconnected, ptr %device_disconnected40, align 4
  %xdomain_connected41 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %38 = ptrtoint ptr %xdomain_connected41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @icm_tr_xdomain_connected, ptr %xdomain_connected41, align 4
  %xdomain_disconnected42 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %39 = ptrtoint ptr %xdomain_disconnected42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @icm_tr_xdomain_disconnected, ptr %xdomain_disconnected42, align 4
  br label %sw.epilog.sink.split

sw.bb44:                                          ; preds = %if.end.sw.bb44_crit_edge, %if.end.sw.bb44_crit_edge193
  %is_supported45 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %is_supported45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @icm_fr_is_supported, ptr %is_supported45, align 4
  %driver_ready46 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %41 = ptrtoint ptr %driver_ready46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @icm_icl_driver_ready, ptr %driver_ready46, align 4
  %set_uuid = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %42 = ptrtoint ptr %set_uuid to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @icm_icl_set_uuid, ptr %set_uuid, align 4
  %device_connected47 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %43 = ptrtoint ptr %device_connected47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @icm_icl_device_connected, ptr %device_connected47, align 4
  %device_disconnected48 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %44 = ptrtoint ptr %device_disconnected48 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @icm_tr_device_disconnected, ptr %device_disconnected48, align 4
  %xdomain_connected49 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %45 = ptrtoint ptr %xdomain_connected49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @icm_tr_xdomain_connected, ptr %xdomain_connected49, align 4
  %xdomain_disconnected50 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %46 = ptrtoint ptr %xdomain_disconnected50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @icm_tr_xdomain_disconnected, ptr %xdomain_disconnected50, align 4
  %rtd3_veto = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 10
  %47 = ptrtoint ptr %rtd3_veto to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @icm_icl_rtd3_veto, ptr %rtd3_veto, align 4
  br label %sw.epilog.sink.split

sw.bb52:                                          ; preds = %if.end.sw.bb52_crit_edge, %if.end.sw.bb52_crit_edge194, %if.end.sw.bb52_crit_edge195, %if.end.sw.bb52_crit_edge196, %if.end.sw.bb52_crit_edge197, %if.end.sw.bb52_crit_edge198
  %is_supported53 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %48 = ptrtoint ptr %is_supported53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @icm_tgl_is_supported, ptr %is_supported53, align 4
  %driver_ready54 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %49 = ptrtoint ptr %driver_ready54 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @icm_icl_driver_ready, ptr %driver_ready54, align 4
  %set_uuid55 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %set_uuid55 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @icm_icl_set_uuid, ptr %set_uuid55, align 4
  %device_connected56 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %51 = ptrtoint ptr %device_connected56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @icm_icl_device_connected, ptr %device_connected56, align 4
  %device_disconnected57 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %52 = ptrtoint ptr %device_disconnected57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @icm_tr_device_disconnected, ptr %device_disconnected57, align 4
  %xdomain_connected58 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %53 = ptrtoint ptr %xdomain_connected58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @icm_tr_xdomain_connected, ptr %xdomain_connected58, align 4
  %xdomain_disconnected59 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %54 = ptrtoint ptr %xdomain_disconnected59 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @icm_tr_xdomain_disconnected, ptr %xdomain_disconnected59, align 4
  %rtd3_veto60 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 10
  %55 = ptrtoint ptr %rtd3_veto60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @icm_icl_rtd3_veto, ptr %rtd3_veto60, align 4
  br label %sw.epilog.sink.split

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %is_supported63 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %56 = ptrtoint ptr %is_supported63 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @icm_tgl_is_supported, ptr %is_supported63, align 4
  %get_mode64 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 3, i32 1
  %57 = ptrtoint ptr %get_mode64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @icm_ar_get_mode, ptr %get_mode64, align 4
  %driver_ready65 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 1
  %58 = ptrtoint ptr %driver_ready65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @icm_tr_driver_ready, ptr %driver_ready65, align 4
  %device_connected66 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 2
  %59 = ptrtoint ptr %device_connected66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @icm_tr_device_connected, ptr %device_connected66, align 4
  %device_disconnected67 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 3
  %60 = ptrtoint ptr %device_disconnected67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @icm_tr_device_disconnected, ptr %device_disconnected67, align 4
  %xdomain_connected68 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 6
  %61 = ptrtoint ptr %xdomain_connected68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @icm_tr_xdomain_connected, ptr %xdomain_connected68, align 4
  %xdomain_disconnected69 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 5, i32 7
  %62 = ptrtoint ptr %xdomain_disconnected69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @icm_tr_xdomain_disconnected, ptr %xdomain_disconnected69, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb62, %sw.bb52, %sw.bb44, %sw.bb32, %sw.bb21, %sw.bb
  %icm_tr_ops.sink = phi ptr [ @icm_tr_ops, %sw.bb62 ], [ @icm_icl_ops, %sw.bb52 ], [ @icm_icl_ops, %sw.bb44 ], [ @icm_tr_ops, %sw.bb32 ], [ @icm_ar_ops, %sw.bb21 ], [ @icm_fr_ops, %sw.bb ]
  %cm_ops70 = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 6
  %63 = ptrtoint ptr %cm_ops70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %icm_tr_ops.sink, ptr %cm_ops70, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %is_supported71 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 9, i32 2
  %64 = ptrtoint ptr %is_supported71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %is_supported71, align 4
  %tobool72.not = icmp eq ptr %65, null
  br i1 %tobool72.not, label %sw.epilog.do.body76_crit_edge, label %lor.lhs.false

sw.epilog.do.body76_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76

lor.lhs.false:                                    ; preds = %sw.epilog
  %call74 = tail call zeroext i1 %65(ptr noundef nonnull %call) #12
  br i1 %call74, label %do.body87, label %lor.lhs.false.do.body76_crit_edge

lor.lhs.false.do.body76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76

do.body76:                                        ; preds = %lor.lhs.false.do.body76_crit_edge, %sw.epilog.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_probe, %if.then81)) #12
          to label %do.end85 [label %if.then81], !srcloc !199

if.then81:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body76
  tail call void @put_device(ptr noundef nonnull %call) #12
  br label %cleanup

do.body87:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_probe, %if.then99)) #12
          to label %cleanup [label %if.then99], !srcloc !199

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %nhi100 = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 2
  %68 = ptrtoint ptr %nhi100 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nhi100, align 4
  %pdev101 = getelementptr inbounds %struct.tb_nhi, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %pdev101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev102, ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body87, %do.end85, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end85 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.then99 ], [ %call, %do.body87 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_domain_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_rescan_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %root_switch = getelementptr i8, ptr %work, i32 -116
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @icm_free_unplugged_children(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @icm_fr_is_supported(ptr nocapture noundef readnone %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_get_route(ptr noundef %tb, i8 noundef zeroext %link, i8 noundef zeroext %depth, ptr nocapture noundef writeonly %route) #0 align 64 {
entry:
  %request = alloca %struct.icm_fr_pkg_get_topology, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #12
  %0 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %request, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2128) #15
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup34

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %call7.i.i.i, i32 noundef 152, i32 noundef 14, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end4:                                          ; preds = %if.end
  %idxprom = zext i8 %link to i32
  %arrayidx5 = getelementptr %struct.icm_fr_pkg_get_topology_response, ptr %call7.i.i.i, i32 0, i32 8, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %and.i = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp ne i32 %and.i, 1
  %shr.i = lshr i32 %3, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i)
  %cmp1.not.i = icmp eq i32 %shr.i, 255
  %spec.select.i = select i1 %cmp1.not.i, i32 0, i32 %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool7.not72 = icmp eq i32 %spec.select.i, 0
  %tobool7.not = select i1 %cmp.not.i, i1 true, i1 %tobool7.not72
  br i1 %tobool7.not, label %if.end4.err_free_crit_edge, label %if.end9

if.end4.err_free_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end9:                                          ; preds = %if.end4
  %arrayidx10 = getelementptr %struct.icm_fr_pkg_get_topology_response, ptr %call7.i.i.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %depth)
  %cmp75 = icmp ugt i8 %depth, 1
  br i1 %cmp75, label %if.end9.for.body_crit_edge, label %if.end9.for.end32_crit_edge

if.end9.for.end32_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.077 = phi i8 [ %inc31, %for.inc30.for.body_crit_edge ], [ 1, %if.end9.for.body_crit_edge ]
  %sw.076 = phi ptr [ %sw.2.ph, %for.inc30.for.body_crit_edge ], [ %arrayidx10, %if.end9.for.body_crit_edge ]
  %first_data = getelementptr inbounds %struct.icm_fr_pkg_get_topology_response, ptr %sw.076, i32 0, i32 3
  %4 = ptrtoint ptr %first_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first_data, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %for.body.err_free_crit_edge, label %for.cond17.preheader

for.body.err_free_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

for.cond17.preheader:                             ; preds = %for.body
  %switch_index = getelementptr inbounds %struct.icm_fr_pkg_get_topology_response, ptr %sw.076, i32 0, i32 6
  %7 = ptrtoint ptr %switch_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %switch_index, align 1
  %conv24 = zext i8 %8 to i32
  br label %for.body20

for.cond17:                                       ; preds = %for.body20
  %inc = add nuw nsw i32 %j.074, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond17.for.inc30_crit_edge, label %for.cond17.for.body20_crit_edge

for.cond17.for.body20_crit_edge:                  ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

for.cond17.for.inc30_crit_edge:                   ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.body20:                                       ; preds = %for.cond17.for.body20_crit_edge, %for.cond17.preheader
  %j.074 = phi i32 [ 0, %for.cond17.preheader ], [ %inc, %for.cond17.for.body20_crit_edge ]
  %arrayidx22 = getelementptr %struct.icm_fr_pkg_get_topology_response, ptr %sw.076, i32 0, i32 8, i32 %j.074
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx22, align 4
  %and.i60 = and i32 %10, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i60)
  %cmp.not.i61 = icmp eq i32 %and.i60, 1
  %shr.i62 = lshr i32 %10, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.i62)
  %cmp1.not.i63 = icmp eq i32 %shr.i62, 255
  %spec.select.i64 = select i1 %cmp1.not.i63, i32 0, i32 %shr.i62
  %retval.0.i65 = select i1 %cmp.not.i61, i32 %spec.select.i64, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i65, i32 %conv24)
  %cmp25 = icmp ugt i32 %retval.0.i65, %conv24
  br i1 %cmp25, label %if.then27, label %for.cond17

if.then27:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx28 = getelementptr %struct.icm_fr_pkg_get_topology_response, ptr %call7.i.i.i, i32 %retval.0.i65
  br label %for.inc30

for.inc30:                                        ; preds = %if.then27, %for.cond17.for.inc30_crit_edge
  %sw.2.ph = phi ptr [ %arrayidx28, %if.then27 ], [ %sw.076, %for.cond17.for.inc30_crit_edge ]
  %inc31 = add nuw i8 %i.077, 1
  %cmp = icmp ult i8 %inc31, %depth
  br i1 %cmp, label %for.inc30.for.body_crit_edge, label %for.inc30.for.end32_crit_edge

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.end9.for.end32_crit_edge
  %sw.0.lcssa = phi ptr [ %arrayidx10, %if.end9.for.end32_crit_edge ], [ %sw.2.ph, %for.inc30.for.end32_crit_edge ]
  %route_hi = getelementptr inbounds %struct.icm_fr_pkg_get_topology_response, ptr %sw.0.lcssa, i32 0, i32 2
  %11 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_fr_pkg_get_topology_response, ptr %sw.0.lcssa, i32 0, i32 1
  %13 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo, align 4
  %conv.i = zext i32 %12 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %14 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %15 = ptrtoint ptr %route to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or.i, ptr %route, align 8
  br label %err_free

err_free:                                         ; preds = %for.end32, %for.body.err_free_crit_edge, %if.end4.err_free_crit_edge, %if.end.err_free_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err_free_crit_edge ], [ 0, %for.end32 ], [ -19, %if.end4.err_free_crit_edge ], [ -19, %for.body.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup34

cleanup34:                                        ; preds = %err_free, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free ], [ -12, %entry.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_fr_save_devices(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %call = tail call i32 @nhi_mailbox_cmd(ptr noundef %1, i32 noundef 5, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_driver_ready(ptr noundef %tb, ptr noundef writeonly %security_level, ptr nocapture noundef readnone %proto_version, ptr nocapture noundef readnone %nboot_acl, ptr nocapture noundef readnone %rpm) #0 align 64 {
entry:
  %reply = alloca %struct.icm_fr_pkg_driver_ready_response, align 8
  %request = alloca %struct.icm_pkg_driver_ready, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #12
  %0 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 50331648, ptr %request, align 4
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %reply, align 8
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %reply, i32 noundef 8, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq ptr %security_level, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.icm_fr_pkg_driver_ready_response, ptr %reply, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, 15
  %and = zext i16 %5 to i32
  %6 = ptrtoint ptr %security_level to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %security_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_fr_device_connected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  %route = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %route) #12
  %0 = ptrtoint ptr %route to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %route, align 8, !annotation !200
  %rescan_work.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %1 = ptrtoint ptr %rescan_work.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %rescan_work.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.icm_postpone_rescan.exit_crit_edge, label %if.then.i

entry.icm_postpone_rescan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_postpone_rescan.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %3 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rescan_work.i, i32 noundef 50) #12
  br label %icm_postpone_rescan.exit

icm_postpone_rescan.exit:                         ; preds = %if.then.i, %entry.icm_postpone_rescan.exit_crit_edge
  %link_info = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 4
  %5 = ptrtoint ptr %link_info to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_info, align 2
  %conv = zext i16 %6 to i32
  %7 = trunc i16 %6 to i8
  %conv1 = and i8 %7, 7
  %8 = lshr i8 %7, 4
  %and8 = and i32 %conv, 256
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %hdr, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %conv10 = zext i8 %10 to i32
  %and11 = lshr i32 %conv10, 3
  %shr12 = and i32 %and11, 3
  %and15 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16 = icmp ne i32 %and15, 0
  %and15.lobit = lshr exact i32 %and15, 10
  %11 = trunc i32 %and15.lobit to i8
  %and21 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and27 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and32 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end, label %do.end

do.end:                                           ; preds = %icm_postpone_rescan.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %12 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv34 = zext i8 %conv1 to i32
  %conv35 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv34, i32 noundef %conv35) #16
  br label %cleanup166

if.end:                                           ; preds = %icm_postpone_rescan.exit
  %ep_uuid = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 1
  %call36 = tail call ptr @tb_switch_find_by_uuid(ptr noundef %tb, ptr noundef %ep_uuid) #12
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end.if.end88_crit_edge, label %if.then38

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then38:                                        ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, ptr %call36, i32 0, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %19, @tb_switch_type
  %dev..i = select i1 %cmp.i.i, ptr %17, ptr null
  %link41 = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 33
  %20 = ptrtoint ptr %link41 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link41, align 2
  %conv45 = zext i8 %conv1 to i32
  %depth48 = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 34
  %22 = ptrtoint ptr %depth48 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %depth48, align 1
  %conv50 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %8)
  %cmp = icmp eq i8 %23, %8
  br i1 %cmp, label %land.lhs.true, label %if.then38.if.end86_crit_edge

if.then38.if.end86_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.lhs.true:                                    ; preds = %if.then38
  %sub.i278 = add nuw nsw i32 %conv45, 511
  %conv42 = zext i8 %21 to i32
  %sub.i = add nuw nsw i32 %conv42, 511
  %div1.i350 = xor i32 %sub.i, %sub.i278
  %24 = and i32 %div1.i350, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54 = icmp eq i32 %24, 0
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.lhs.true56:                                  ; preds = %land.lhs.true
  %authorized57 = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 27
  %25 = ptrtoint ptr %authorized57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %authorized57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool58 = icmp ne i32 %26, 0
  %lnot.ext = zext i1 %tobool58 to i32
  %and8.lobit277 = lshr exact i32 %and8, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and8.lobit277, i32 %lnot.ext)
  %cmp62 = icmp eq i32 %and8.lobit277, %lnot.ext
  br i1 %cmp62, label %if.then64, label %land.lhs.true56.if.end86_crit_edge

land.lhs.true56.if.end86_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then64:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %conv1)
  %cmp68.not = icmp eq i8 %21, %conv1
  br i1 %cmp68.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.then64
  %get_route = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %get_route to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_route, align 4
  %call71 = call i32 %28(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %8, ptr noundef nonnull %route) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.if.end84_crit_edge, label %do.end76

if.then70.if.end84_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %nhi77 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %29 = ptrtoint ptr %nhi77 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nhi77, align 4
  %pdev78 = getelementptr inbounds %struct.tb_nhi, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev78, align 4
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.15, i32 noundef %conv45, i32 noundef %conv50) #16
  call void @put_device(ptr noundef nonnull %call36) #12
  br label %cleanup166

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %34 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %34, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %36 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %37 = ptrtoint ptr %route to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or.i, ptr %route, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then70.if.end84_crit_edge
  %38 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %route, align 8
  %connection_id = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 3
  %40 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %connection_id, align 1
  %connection_key = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 2
  %42 = ptrtoint ptr %connection_key to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %connection_key, align 4
  call fastcc void @update_switch(ptr noundef %dev..i, ptr noundef nonnull %call36, i64 noundef %39, i8 noundef zeroext %41, i8 noundef zeroext %43, i8 noundef zeroext %conv1, i8 noundef zeroext %8, i1 noundef zeroext %tobool16)
  call void @put_device(ptr noundef nonnull %call36) #12
  br label %cleanup166

if.end86:                                         ; preds = %land.lhs.true56.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %if.then38.if.end86_crit_edge
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %45 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %45, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %call36, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %47 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i5.i = load i32, ptr %depth.i.i, align 4
  %49 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i = and i32 %49, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %or.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i280 = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i280, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %50 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %51, i32 %conv1.i.i
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call36) #12
  tail call void @put_device(ptr noundef nonnull %call36) #12
  br label %if.end88

if.end88:                                         ; preds = %remove_switch.exit, %if.end.if.end88_crit_edge
  %call89 = tail call ptr @tb_switch_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %8) #12
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.then91, label %if.end88.if.then99_crit_edge

if.end88.if.then99_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then99

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool.not.i281 = icmp eq i8 %conv1, 0
  %sub.i282 = add nsw i8 %conv1, -1
  %xor.i = xor i8 %sub.i282, 1
  %add.i = add nsw i8 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i)
  %tobool93.not349 = icmp eq i8 %add.i, 0
  %tobool93.not = select i1 %tobool.not.i281, i1 true, i1 %tobool93.not349
  br i1 %tobool93.not, label %if.then91.if.end100_crit_edge, label %if.end97

if.then91.if.end100_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.end97:                                         ; preds = %if.then91
  %call95 = tail call ptr @tb_switch_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %add.i, i8 noundef zeroext %8) #12
  %tobool98.not = icmp eq ptr %call95, null
  br i1 %tobool98.not, label %if.end97.if.end100_crit_edge, label %if.end97.if.then99_crit_edge

if.end97.if.then99_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then99

if.end97.if.end100_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then99:                                        ; preds = %if.end97.if.then99_crit_edge, %if.end88.if.then99_crit_edge
  %sw.1346 = phi ptr [ %call95, %if.end97.if.then99_crit_edge ], [ %call89, %if.end88.if.then99_crit_edge ]
  %parent.i283 = getelementptr inbounds %struct.device, ptr %sw.1346, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i283 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i283, align 8
  %type.i.i.i284 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %type.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %type.i.i.i284, align 4
  %cmp.i.i.i285 = icmp eq ptr %56, @tb_switch_type
  %dev..i.i286 = select i1 %cmp.i.i.i285, ptr %54, ptr null
  %route_hi.i.i287 = getelementptr inbounds %struct.tb_switch, ptr %sw.1346, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %route_hi.i.i287 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %bf.load.i.i288 = load i64, ptr %route_hi.i.i287, align 4
  %58 = lshr i64 %bf.load.i.i288, 1
  %shl.i.i289 = and i64 %58, 9223372032559808512
  %route_lo.i.i290 = getelementptr inbounds %struct.tb_switch, ptr %sw.1346, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %route_lo.i.i290 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %route_lo.i.i290, align 8
  %conv2.i.i291 = zext i32 %60 to i64
  %or.i.i292 = or i64 %shl.i.i289, %conv2.i.i291
  %depth.i.i293 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i286, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %depth.i.i293 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i5.i294 = load i32, ptr %depth.i.i293, align 4
  %62 = lshr i32 %bf.load.i5.i294, 6
  %mul.i.i295 = and i32 %62, 56
  %sh_prom.i.i296 = zext i32 %mul.i.i295 to i64
  %shr.i.i297 = lshr i64 %or.i.i292, %sh_prom.i.i296
  %conv.i.i298 = trunc i64 %shr.i.i297 to i32
  %conv1.i.i299 = and i32 %conv.i.i298, 255
  %bf.lshr4.i.i300 = lshr i32 %bf.load.i5.i294, 12
  %bf.clear5.i.i301 = and i32 %bf.lshr4.i.i300, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i299, i32 %bf.clear5.i.i301)
  %cmp.i.i302 = icmp ugt i32 %conv1.i.i299, %bf.clear5.i.i301
  br i1 %cmp.i.i302, label %do.end.i.i303, label %if.end27.i.i306, !prof !201

do.end.i.i303:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit309

if.end27.i.i306:                                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i304 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i286, i32 0, i32 2
  %63 = ptrtoint ptr %ports.i.i304 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ports.i.i304, align 4
  %arrayidx.i.i305 = getelementptr %struct.tb_port, ptr %64, i32 %conv1.i.i299
  br label %remove_switch.exit309

remove_switch.exit309:                            ; preds = %if.end27.i.i306, %do.end.i.i303
  %retval.0.i.i307 = phi ptr [ null, %do.end.i.i303 ], [ %arrayidx.i.i305, %if.end27.i.i306 ]
  %remote.i308 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i307, i32 0, i32 2
  %65 = ptrtoint ptr %remote.i308 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %remote.i308, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %sw.1346) #12
  tail call void @put_device(ptr noundef nonnull %sw.1346) #12
  br label %if.end100

if.end100:                                        ; preds = %remove_switch.exit309, %if.end97.if.end100_crit_edge, %if.then91.if.end100_crit_edge
  %call101 = tail call ptr @tb_xdomain_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %8) #12
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.end100.if.end104_crit_edge, label %if.then103

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then103:                                       ; preds = %if.end100
  %parent.i310 = getelementptr inbounds %struct.device, ptr %call101, i32 0, i32 1
  %66 = ptrtoint ptr %parent.i310 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent.i310, align 8
  %type.i.i.i311 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %type.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type.i.i.i311, align 4
  %cmp.i.i.i312 = icmp eq ptr %69, @tb_switch_type
  %dev..i.i313 = select i1 %cmp.i.i.i312, ptr %67, ptr null
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %call101, i32 0, i32 4
  %70 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %route.i, align 8
  %depth.i.i314 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i313, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %depth.i.i314 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load.i.i315 = load i32, ptr %depth.i.i314, align 4
  %73 = lshr i32 %bf.load.i.i315, 6
  %mul.i.i316 = and i32 %73, 56
  %sh_prom.i.i317 = zext i32 %mul.i.i316 to i64
  %shr.i.i318 = lshr i64 %71, %sh_prom.i.i317
  %conv.i.i319 = trunc i64 %shr.i.i318 to i32
  %conv1.i.i320 = and i32 %conv.i.i319, 255
  %bf.lshr4.i.i321 = lshr i32 %bf.load.i.i315, 12
  %bf.clear5.i.i322 = and i32 %bf.lshr4.i.i321, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i320, i32 %bf.clear5.i.i322)
  %cmp.i.i323 = icmp ugt i32 %conv1.i.i320, %bf.clear5.i.i322
  br i1 %cmp.i.i323, label %do.end.i.i324, label %if.end27.i.i327, !prof !201

do.end.i.i324:                                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit

if.end27.i.i327:                                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i325 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i313, i32 0, i32 2
  %74 = ptrtoint ptr %ports.i.i325 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ports.i.i325, align 4
  %arrayidx.i.i326 = getelementptr %struct.tb_port, ptr %75, i32 %conv1.i.i320
  br label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.end27.i.i327, %do.end.i.i324
  %retval.0.i.i328 = phi ptr [ null, %do.end.i.i324 ], [ %arrayidx.i.i326, %if.end27.i.i327 ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i328, i32 0, i32 3
  %76 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call101) #12
  tail call void @put_device(ptr noundef nonnull %call101) #12
  br label %if.end104

if.end104:                                        ; preds = %tb_xdomain_put.exit, %if.end100.if.end104_crit_edge
  %conv105 = zext i8 %8 to i32
  %sub = add nsw i8 %8, -1
  %call107 = tail call ptr @tb_switch_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %sub) #12
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %do.end112, label %if.end118

do.end112:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %nhi113 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %77 = ptrtoint ptr %nhi113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nhi113, align 4
  %pdev114 = getelementptr inbounds %struct.tb_nhi, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %pdev114 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev114, align 4
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %conv116 = zext i8 %conv1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev115, ptr noundef nonnull @.str.19, i32 noundef %conv116, i32 noundef %conv105) #16
  br label %cleanup166

if.end118:                                        ; preds = %if.end104
  %get_route119 = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 4
  %81 = ptrtoint ptr %get_route119 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_route119, align 4
  %call120 = call i32 %82(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %8, ptr noundef nonnull %route) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end131, label %do.end125

do.end125:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %nhi126 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %83 = ptrtoint ptr %nhi126 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nhi126, align 4
  %pdev127 = getelementptr inbounds %struct.tb_nhi, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %pdev127 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev127, align 4
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %conv129 = zext i8 %conv1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.22, i32 noundef %conv129, i32 noundef %conv105) #16
  call void @put_device(ptr noundef nonnull %call107) #12
  br label %cleanup166

if.end131:                                        ; preds = %if.end118
  %call.i = call i32 @__pm_runtime_resume(ptr noundef nonnull %call107, i32 noundef 4) #12
  %87 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %route, align 8
  %tb1.i = getelementptr inbounds %struct.tb_switch, ptr %call107, i32 0, i32 5
  %89 = ptrtoint ptr %tb1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tb1.i, align 8
  %call.i331 = call ptr @tb_switch_alloc(ptr noundef %90, ptr noundef nonnull %call107, i64 noundef %88) #12
  %cmp.i.i332 = icmp ugt ptr %call.i331, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i332, label %alloc_switch.exit.thread353, label %if.end.i

alloc_switch.exit.thread353:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %nhi.i = getelementptr inbounds %struct.tb, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.25, i64 noundef %88) #16
  br label %if.end162

if.end.i:                                         ; preds = %if.end131
  %call4.i = call ptr @kmemdup(ptr noundef %ep_uuid, i32 noundef 16, i32 noundef 3264) #12
  %uuid5.i = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 7
  %95 = ptrtoint ptr %uuid5.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call4.i, ptr %uuid5.i, align 8
  %tobool.not.i333 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i333, label %alloc_switch.exit.thread, label %if.then137

alloc_switch.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @put_device(ptr noundef %call.i331) #12
  br label %if.end162

if.then137:                                       ; preds = %if.end.i
  %rpm_complete.i = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 35
  %96 = ptrtoint ptr %rpm_complete.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %rpm_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 35, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #12
  %connection_id138 = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 3
  %97 = ptrtoint ptr %connection_id138 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %connection_id138, align 1
  %connection_id139 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 31
  %99 = ptrtoint ptr %connection_id139 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %connection_id139, align 8
  %connection_key140 = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 2
  %100 = ptrtoint ptr %connection_key140 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %connection_key140, align 4
  %connection_key141 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 32
  %102 = ptrtoint ptr %connection_key141 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %connection_key141, align 1
  %link142 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 33
  %103 = ptrtoint ptr %link142 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv1, ptr %link142, align 2
  %depth143 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 34
  %104 = ptrtoint ptr %depth143 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %8, ptr %depth143, align 1
  %and8.lobit = lshr exact i32 %and8, 8
  %authorized146 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 27
  %105 = ptrtoint ptr %authorized146 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and8.lobit, ptr %authorized146, align 8
  %security_level147 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 28
  %106 = ptrtoint ptr %security_level147 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %shr12, ptr %security_level147, align 4
  %boot149 = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 25
  %107 = ptrtoint ptr %boot149 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %11, ptr %boot149, align 2
  %cond = select i1 %tobool28.not, i32 10, i32 20
  %link_speed = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 12
  %108 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %cond, ptr %link_speed, align 8
  %cond155 = select i1 %tobool22.not, i32 1, i32 2
  %link_width = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 13
  %109 = ptrtoint ptr %link_width to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %cond155, ptr %link_width, align 4
  %ep_name = getelementptr inbounds %struct.icm_fr_event_device_connected, ptr %hdr, i32 0, i32 5
  %add.ptr.i.i = getelementptr %struct.icm_fr_event_device_connected, ptr %hdr, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end6.i.i.while.cond.i.i_crit_edge, %if.then137
  %ep_name.addr.0.i.i = phi ptr [ %ep_name, %if.then137 ], [ %add.ptr2.i.i, %if.end6.i.i.while.cond.i.i_crit_edge ]
  %cmp.i.i334 = icmp ult ptr %ep_name.addr.0.i.i, %add.ptr.i.i
  br i1 %cmp.i.i334, label %while.body.i.i, label %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge

while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge:  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %110 = ptrtoint ptr %ep_name.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ep_name.addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge, label %if.end.i.i

while.body.i.i.intel_vss_is_rtd3.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  %conv.i.i335 = zext i8 %111 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %ep_name.addr.0.i.i, i32 %conv.i.i335
  %cmp3.i.i = icmp ugt ptr %add.ptr2.i.i, %add.ptr.i.i
  br i1 %cmp3.i.i, label %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge, label %if.end6.i.i

if.end.i.i.intel_vss_is_rtd3.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %type.i.i336 = getelementptr inbounds %struct.ep_name_entry, ptr %ep_name.addr.0.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %type.i.i336 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %type.i.i336, align 1
  %cmp8.i.i = icmp eq i8 %113, 16
  br i1 %cmp8.i.i, label %parse_intel_vss.exit.i, label %if.end6.i.i.while.cond.i.i_crit_edge

if.end6.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

parse_intel_vss.exit.i:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.ep_name_entry, ptr %ep_name.addr.0.i.i, i32 3, i32 1
  %114 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %flags.i, align 1
  %116 = and i8 %115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool1.i = icmp ne i8 %116, 0
  br label %intel_vss_is_rtd3.exit

intel_vss_is_rtd3.exit:                           ; preds = %parse_intel_vss.exit.i, %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge, %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge, %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge
  %retval.0.i338 = phi i1 [ %tobool1.i, %parse_intel_vss.exit.i ], [ false, %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge ], [ false, %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge ], [ false, %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge ]
  %rpm = getelementptr inbounds %struct.tb_switch, ptr %call.i331, i32 0, i32 26
  %frombool157 = zext i1 %retval.0.i338 to i8
  %117 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %frombool157, ptr %rpm, align 1
  %call158 = call fastcc i32 @add_switch(ptr noundef nonnull %call107, ptr noundef %call.i331)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %intel_vss_is_rtd3.exit.if.end162_crit_edge, label %if.then160

intel_vss_is_rtd3.exit.if.end162_crit_edge:       ; preds = %intel_vss_is_rtd3.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then160:                                       ; preds = %intel_vss_is_rtd3.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @put_device(ptr noundef %call.i331) #12
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %intel_vss_is_rtd3.exit.if.end162_crit_edge, %alloc_switch.exit.thread, %alloc_switch.exit.thread353
  %call.i339 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call107, i32 0, i32 12, i32 22
  %118 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store volatile i64 %call.i339, ptr %last_busy.i, align 8
  %call.i340 = call i32 @__pm_runtime_suspend(ptr noundef nonnull %call107, i32 noundef 13) #12
  call void @put_device(ptr noundef nonnull %call107) #12
  br label %cleanup166

cleanup166:                                       ; preds = %if.end162, %do.end125, %do.end112, %if.end84, %do.end76, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %route) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_fr_device_disconnected(ptr noundef %tb, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_info = getelementptr inbounds %struct.icm_fr_event_device_disconnected, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %link_info to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %link_info, align 2
  %2 = trunc i16 %1 to i8
  %conv1 = and i8 %2, 7
  %3 = lshr i8 %2, 4
  %conv6 = zext i8 %conv1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv1)
  %cmp = icmp ugt i8 %conv1, 4
  %.pre = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %2)
  %cmp9 = icmp ugt i8 %2, 111
  %or.cond = or i1 %cmp, %cmp9
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv6, i32 noundef %.pre) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @tb_switch_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %3) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi17 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %8 = ptrtoint ptr %nhi17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nhi17, align 4
  %pdev18 = getelementptr inbounds %struct.tb_nhi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.32, i32 noundef %conv6, i32 noundef %.pre) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #12
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %17, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %15, ptr null
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %call, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %19 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %19, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %call, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %21 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i5.i = load i32, ptr %depth.i.i, align 4
  %23 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i = and i32 %23, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %or.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %25, i32 %conv1.i.i
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call) #12
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %call.i47 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i47, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #12
  tail call void @put_device(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %remove_switch.exit, %do.end16, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_fr_xdomain_connected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_info = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %link_info to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %link_info, align 2
  %2 = trunc i16 %1 to i8
  %conv1 = and i8 %2, 7
  %3 = lshr i8 %2, 4
  %conv6 = zext i8 %conv1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv1)
  %cmp = icmp ugt i8 %conv1, 4
  %.pre = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %2)
  %cmp9 = icmp ugt i8 %2, 111
  %or.cond189 = or i1 %cmp, %cmp9
  br i1 %or.cond189, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv6, i32 noundef %.pre) #16
  br label %cleanup61

if.end:                                           ; preds = %entry
  %local_route_hi = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, ptr %hdr, i32 0, i32 5
  %8 = ptrtoint ptr %local_route_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %local_route_hi, align 4
  %local_route_lo = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, ptr %hdr, i32 0, i32 6
  %10 = ptrtoint ptr %local_route_lo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %local_route_lo, align 4
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %remote_uuid = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, ptr %hdr, i32 0, i32 3
  %call13 = tail call ptr @tb_xdomain_find_by_uuid(ptr noundef %tb, ptr noundef %remote_uuid) #12
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %if.then14

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then14:                                        ; preds = %if.end
  %route15 = getelementptr inbounds %struct.tb_xdomain, ptr %call13, i32 0, i32 4
  %12 = ptrtoint ptr %route15 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %route15, align 8
  %depth16 = getelementptr inbounds %struct.tb_xdomain, ptr %call13, i32 0, i32 31
  %14 = ptrtoint ptr %depth16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %depth16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %conv.i116 = zext i8 %15 to i32
  %sub.i = shl nuw nsw i32 %conv.i116, 3
  %mul.i = add nsw i32 %sub.i, -8
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = select i1 %tobool.not.i, i64 0, i64 %sh_prom.i
  %route.sink.off0.i.v = lshr i64 %13, %shr.i
  %route.sink.off0.i = trunc i64 %route.sink.off0.i.v to i16
  %conv3.i = and i16 %route.sink.off0.i, 255
  %sub.i.i = add nuw nsw i16 %conv3.i, 511
  %div1.i.i = lshr i16 %sub.i.i, 1
  %conv4.i = trunc i16 %div1.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %tobool.not.i117 = icmp ult i8 %2, 16
  %extract.t8.i118 = trunc i32 %11 to i16
  %sub.i120 = shl nuw nsw i32 %.pre, 3
  %mul.i121 = add nsw i32 %sub.i120, -8
  %sh_prom.i122 = zext i32 %mul.i121 to i64
  %shr.i123 = lshr i64 %or.i, %sh_prom.i122
  %extract.t.i124 = trunc i64 %shr.i123 to i16
  %route.sink.off0.i126 = select i1 %tobool.not.i117, i16 %extract.t8.i118, i16 %extract.t.i124
  %conv3.i127 = and i16 %route.sink.off0.i126, 255
  %sub.i.i128 = add nuw nsw i16 %conv3.i127, 511
  %div1.i.i129 = lshr i16 %sub.i.i128, 1
  %conv4.i130 = trunc i16 %div1.i.i129 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %3)
  %cmp22 = icmp eq i8 %15, %3
  call void @__sanitizer_cov_trace_cmp1(i8 %conv4.i, i8 %conv4.i130)
  %cmp26 = icmp eq i8 %conv4.i, %conv4.i130
  %or.cond = select i1 %cmp22, i1 %cmp26, i1 false
  br i1 %or.cond, label %tb_xdomain_put.exit, label %if.end29

tb_xdomain_put.exit:                              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %link1.i = getelementptr inbounds %struct.tb_xdomain, ptr %call13, i32 0, i32 30
  %16 = ptrtoint ptr %link1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1, ptr %link1.i, align 4
  %17 = ptrtoint ptr %route15 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i, ptr %route15, align 8
  %is_unplugged.i = getelementptr inbounds %struct.tb_xdomain, ptr %call13, i32 0, i32 14
  %18 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_unplugged.i, align 8
  tail call void @put_device(ptr noundef nonnull %call13) #12
  br label %cleanup61

if.end29:                                         ; preds = %if.then14
  %parent.i = getelementptr inbounds %struct.device, ptr %call13, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %22, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %20, ptr null
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.i = load i32, ptr %depth.i.i, align 4
  %24 = lshr i32 %bf.load.i.i, 6
  %mul.i.i = and i32 %24, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %13, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit135

if.end27.i.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %26, i32 %conv1.i.i
  br label %tb_xdomain_put.exit135

tb_xdomain_put.exit135:                           ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call13) #12
  tail call void @put_device(ptr noundef nonnull %call13) #12
  br label %if.end31

if.end31:                                         ; preds = %tb_xdomain_put.exit135, %if.end.if.end31_crit_edge
  %call32 = tail call ptr @tb_xdomain_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %3) #12
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end31.if.then42_crit_edge

if.end31.if.then42_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool.not.i136 = icmp eq i8 %conv1, 0
  %sub.i137 = add nsw i8 %conv1, -1
  %xor.i = xor i8 %sub.i137, 1
  %add.i = add nsw i8 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i)
  %tobool36.not188 = icmp eq i8 %add.i, 0
  %tobool36.not = select i1 %tobool.not.i136, i1 true, i1 %tobool36.not188
  br i1 %tobool36.not, label %if.then34.if.end43_crit_edge, label %if.end40

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end40:                                         ; preds = %if.then34
  %call38 = tail call ptr @tb_xdomain_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %add.i, i8 noundef zeroext %3) #12
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.end40.if.then42_crit_edge

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end40.if.then42_crit_edge, %if.end31.if.then42_crit_edge
  %xd.1187 = phi ptr [ %call38, %if.end40.if.then42_crit_edge ], [ %call32, %if.end31.if.then42_crit_edge ]
  %parent.i138 = getelementptr inbounds %struct.device, ptr %xd.1187, i32 0, i32 1
  %28 = ptrtoint ptr %parent.i138 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i138, align 8
  %type.i.i.i139 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %type.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i.i.i139, align 4
  %cmp.i.i.i140 = icmp eq ptr %31, @tb_switch_type
  %dev..i.i141 = select i1 %cmp.i.i.i140, ptr %29, ptr null
  %route.i142 = getelementptr inbounds %struct.tb_xdomain, ptr %xd.1187, i32 0, i32 4
  %32 = ptrtoint ptr %route.i142 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %route.i142, align 8
  %depth.i.i143 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i141, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %depth.i.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i.i144 = load i32, ptr %depth.i.i143, align 4
  %35 = lshr i32 %bf.load.i.i144, 6
  %mul.i.i145 = and i32 %35, 56
  %sh_prom.i.i146 = zext i32 %mul.i.i145 to i64
  %shr.i.i147 = lshr i64 %33, %sh_prom.i.i146
  %conv.i.i148 = trunc i64 %shr.i.i147 to i32
  %conv1.i.i149 = and i32 %conv.i.i148, 255
  %bf.lshr4.i.i150 = lshr i32 %bf.load.i.i144, 12
  %bf.clear5.i.i151 = and i32 %bf.lshr4.i.i150, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i149, i32 %bf.clear5.i.i151)
  %cmp.i.i152 = icmp ugt i32 %conv1.i.i149, %bf.clear5.i.i151
  br i1 %cmp.i.i152, label %do.end.i.i153, label %if.end27.i.i156, !prof !201

do.end.i.i153:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit162

if.end27.i.i156:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i154 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i141, i32 0, i32 2
  %36 = ptrtoint ptr %ports.i.i154 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ports.i.i154, align 4
  %arrayidx.i.i155 = getelementptr %struct.tb_port, ptr %37, i32 %conv1.i.i149
  br label %tb_xdomain_put.exit162

tb_xdomain_put.exit162:                           ; preds = %if.end27.i.i156, %do.end.i.i153
  %retval.0.i.i157 = phi ptr [ null, %do.end.i.i153 ], [ %arrayidx.i.i155, %if.end27.i.i156 ]
  %xdomain.i158 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i157, i32 0, i32 3
  %38 = ptrtoint ptr %xdomain.i158 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %xdomain.i158, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %xd.1187) #12
  tail call void @put_device(ptr noundef nonnull %xd.1187) #12
  br label %if.end43

if.end43:                                         ; preds = %tb_xdomain_put.exit162, %if.end40.if.end43_crit_edge, %if.then34.if.end43_crit_edge
  %call44 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  %parent.i163 = getelementptr inbounds %struct.device, ptr %call44, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i163 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i163, align 8
  %type.i.i.i164 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %type.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %type.i.i.i164, align 4
  %cmp.i.i.i165 = icmp eq ptr %42, @tb_switch_type
  %dev..i.i166 = select i1 %cmp.i.i.i165, ptr %40, ptr null
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %call44, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i.i167 = load i64, ptr %route_hi.i.i, align 4
  %44 = lshr i64 %bf.load.i.i167, 1
  %shl.i.i = and i64 %44, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %call44, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %46 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %depth.i.i168 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i166, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %depth.i.i168 to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i5.i = load i32, ptr %depth.i.i168, align 4
  %48 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i169 = and i32 %48, 56
  %sh_prom.i.i170 = zext i32 %mul.i.i169 to i64
  %shr.i.i171 = lshr i64 %or.i.i, %sh_prom.i.i170
  %conv.i.i172 = trunc i64 %shr.i.i171 to i32
  %conv1.i.i173 = and i32 %conv.i.i172, 255
  %bf.lshr4.i.i174 = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i175 = and i32 %bf.lshr4.i.i174, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i173, i32 %bf.clear5.i.i175)
  %cmp.i.i176 = icmp ugt i32 %conv1.i.i173, %bf.clear5.i.i175
  br i1 %cmp.i.i176, label %do.end.i.i177, label %if.end27.i.i180, !prof !201

do.end.i.i177:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i180:                                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i178 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i166, i32 0, i32 2
  %49 = ptrtoint ptr %ports.i.i178 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ports.i.i178, align 4
  %arrayidx.i.i179 = getelementptr %struct.tb_port, ptr %50, i32 %conv1.i.i173
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i180, %do.end.i.i177
  %retval.0.i.i181 = phi ptr [ null, %do.end.i.i177 ], [ %arrayidx.i.i179, %if.end27.i.i180 ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i181, i32 0, i32 2
  %51 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call44) #12
  tail call void @put_device(ptr noundef nonnull %call44) #12
  br label %if.end47

if.end47:                                         ; preds = %remove_switch.exit, %if.end43.if.end47_crit_edge
  %call48 = tail call ptr @tb_switch_find_by_link_depth(ptr noundef %tb, i8 noundef zeroext %conv1, i8 noundef zeroext %3) #12
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.end53, label %if.end59

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %nhi54 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %52 = ptrtoint ptr %nhi54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nhi54, align 4
  %pdev55 = getelementptr inbounds %struct.tb_nhi, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56, ptr noundef nonnull @.str.32, i32 noundef %conv6, i32 noundef %.pre) #16
  br label %cleanup61

if.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %local_uuid = getelementptr inbounds %struct.icm_fr_event_xdomain_connected, ptr %hdr, i32 0, i32 4
  tail call fastcc void @add_xdomain(ptr noundef nonnull %call48, i64 noundef %or.i, ptr noundef %local_uuid, ptr noundef %remote_uuid, i8 noundef zeroext %conv1, i8 noundef zeroext %3)
  tail call void @put_device(ptr noundef nonnull %call48) #12
  br label %cleanup61

cleanup61:                                        ; preds = %if.end59, %do.end53, %tb_xdomain_put.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_fr_xdomain_disconnected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_uuid = getelementptr inbounds %struct.icm_fr_event_xdomain_disconnected, ptr %hdr, i32 0, i32 3
  %call = tail call ptr @tb_xdomain_find_by_uuid(ptr noundef %tb, ptr noundef %remote_uuid) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %route.i, align 8
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i.i = load i32, ptr %depth.i.i, align 4
  %7 = lshr i32 %bf.load.i.i, 6
  %mul.i.i = and i32 %7, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %5, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit

if.end27.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %9, i32 %conv1.i.i
  br label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call) #12
  tail call void @put_device(ptr noundef nonnull %call) #12
  br label %if.end

if.end:                                           ; preds = %tb_xdomain_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icm_ar_is_supported(ptr nocapture noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %iobase.i = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 235844
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.end:                                           ; preds = %entry
  %6 = load i8, ptr @start_icm, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.cleanup14_crit_edge, label %if.end3

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %12 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %12, 0
  br i1 %tobool.not.i.i.i, label %if.end3.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end3.pci_physfn.exit.i.i_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %13 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 66
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end3.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %15, %if.then.i.i.i ], [ %10, %if.end3.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.cleanup14_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.cleanup14_crit_edge:          ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %self.i.i, align 4
  %tobool.not29.i = icmp eq ptr %21, null
  br i1 %tobool.not29.i, label %pci_upstream_bridge.exit.i.cleanup14_crit_edge, label %pci_upstream_bridge.exit.i.while.body.i_crit_edge

pci_upstream_bridge.exit.i.while.body.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  br label %while.body.i

pci_upstream_bridge.exit.i.cleanup14_crit_edge:   ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

while.body.i:                                     ; preds = %pci_upstream_bridge.exit27.i.while.body.i_crit_edge, %pci_upstream_bridge.exit.i.while.body.i_crit_edge
  %parent.030.i = phi ptr [ %37, %pci_upstream_bridge.exit27.i.while.body.i_crit_edge ], [ %21, %pci_upstream_bridge.exit.i.while.body.i_crit_edge ]
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %parent.030.i, i32 0, i32 19
  %22 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i, label %while.body.i.cleanup14_crit_edge, label %if.end.i

while.body.i.cleanup14_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.end.i:                                         ; preds = %while.body.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %parent.030.i, i32 0, i32 25
  %24 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %26 = and i16 %25, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %26)
  %cmp.i = icmp eq i16 %26, 80
  br i1 %cmp.i, label %if.end8.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %is_virtfn.i.i15.i = getelementptr inbounds %struct.pci_dev, ptr %parent.030.i, i32 0, i32 49
  %27 = ptrtoint ptr %is_virtfn.i.i15.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 5)
  %bf.load.i.i16.i = load i40, ptr %is_virtfn.i.i15.i, align 1
  %28 = and i40 %bf.load.i.i16.i, 65536
  %tobool.not.i.i17.i = icmp eq i40 %28, 0
  br i1 %tobool.not.i.i17.i, label %if.end4.i.pci_physfn.exit.i23.i_crit_edge, label %if.then.i.i18.i

if.end4.i.pci_physfn.exit.i23.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i23.i

if.then.i.i18.i:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = getelementptr inbounds %struct.pci_dev, ptr %parent.030.i, i32 0, i32 66
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  br label %pci_physfn.exit.i23.i

pci_physfn.exit.i23.i:                            ; preds = %if.then.i.i18.i, %if.end4.i.pci_physfn.exit.i23.i_crit_edge
  %dev.addr.0.i.i19.i = phi ptr [ %31, %if.then.i.i18.i ], [ %parent.030.i, %if.end4.i.pci_physfn.exit.i23.i_crit_edge ]
  %bus.i20.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i19.i, i32 0, i32 1
  %32 = ptrtoint ptr %bus.i20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i20.i, align 8
  %parent.i.i21.i = getelementptr inbounds %struct.pci_bus, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i21.i, align 8
  %tobool.not.i5.i22.i = icmp eq ptr %35, null
  br i1 %tobool.not.i5.i22.i, label %pci_physfn.exit.i23.i.cleanup14_crit_edge, label %pci_upstream_bridge.exit27.i

pci_physfn.exit.i23.i.cleanup14_crit_edge:        ; preds = %pci_physfn.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

pci_upstream_bridge.exit27.i:                     ; preds = %pci_physfn.exit.i23.i
  %self.i24.i = getelementptr inbounds %struct.pci_bus, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %self.i24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %self.i24.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit27.i.cleanup14_crit_edge, label %pci_upstream_bridge.exit27.i.while.body.i_crit_edge

pci_upstream_bridge.exit27.i.while.body.i_crit_edge: ; preds = %pci_upstream_bridge.exit27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

pci_upstream_bridge.exit27.i.cleanup14_crit_edge: ; preds = %pci_upstream_bridge.exit27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.end8.i:                                        ; preds = %if.end.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %parent.030.i, i32 0, i32 8
  %38 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device.i, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %39, label %if.end8.i.cleanup14_crit_edge [
    i16 5494, label %if.end8.i.if.then7_crit_edge
    i16 5496, label %if.end8.i.if.then7_crit_edge30
    i16 5568, label %if.end8.i.if.then7_crit_edge31
    i16 5587, label %if.end8.i.if.then7_crit_edge32
    i16 5594, label %if.end8.i.if.then7_crit_edge33
    i16 5607, label %if.end8.i.if.then7_crit_edge34
    i16 5610, label %if.end8.i.if.then7_crit_edge35
  ]

if.end8.i.if.then7_crit_edge35:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge34:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge33:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge32:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge31:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge30:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.if.then7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end8.i.cleanup14_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.then7:                                         ; preds = %if.end8.i.if.then7_crit_edge, %if.end8.i.if.then7_crit_edge30, %if.end8.i.if.then7_crit_edge31, %if.end8.i.if.then7_crit_edge32, %if.end8.i.if.then7_crit_edge33, %if.end8.i.if.then7_crit_edge34, %if.end8.i.if.then7_crit_edge35
  %call8 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %parent.030.i, i32 noundef 11) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8)
  %cmp.not = icmp eq i16 %call8, 0
  br i1 %cmp.not, label %if.then7.cleanup14_crit_edge, label %if.then10

if.then7.cleanup14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup14

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %call8 to i32
  %upstream_port11 = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4
  %41 = ptrtoint ptr %upstream_port11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %parent.030.i, ptr %upstream_port11, align 4
  %vnd_cap = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %42 = ptrtoint ptr %vnd_cap to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %vnd_cap, align 4
  br label %cleanup14

cleanup14:                                        ; preds = %if.then10, %if.then7.cleanup14_crit_edge, %if.end8.i.cleanup14_crit_edge, %pci_upstream_bridge.exit27.i.cleanup14_crit_edge, %pci_physfn.exit.i23.i.cleanup14_crit_edge, %while.body.i.cleanup14_crit_edge, %pci_upstream_bridge.exit.i.cleanup14_crit_edge, %pci_physfn.exit.i.i.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i1 [ true, %entry.cleanup14_crit_edge ], [ false, %if.end.cleanup14_crit_edge ], [ true, %if.then10 ], [ false, %if.then7.cleanup14_crit_edge ], [ false, %pci_upstream_bridge.exit.i.cleanup14_crit_edge ], [ false, %pci_physfn.exit.i.i.cleanup14_crit_edge ], [ false, %if.end8.i.cleanup14_crit_edge ], [ false, %pci_upstream_bridge.exit27.i.cleanup14_crit_edge ], [ false, %while.body.i.cleanup14_crit_edge ], [ false, %pci_physfn.exit.i23.i.cleanup14_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_cio_reset(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %cmd.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %upstream_port.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %upstream_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upstream_port.i, align 4
  %vnd_cap1.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %vnd_cap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnd_cap1.i, align 4
  %add.i = add i32 %3, 52
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef 512) #12
  %add6.i = add i32 %3, 48
  %call7.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add6.i, i32 noundef 1076887632) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #12
  %5 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmd.i.i, align 4, !annotation !200
  %add.neg.i.i = sub i32 -500, %4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end6.i.i.do.body.i.i_crit_edge, %entry
  %6 = ptrtoint ptr %upstream_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upstream_port.i, align 4
  %8 = ptrtoint ptr %vnd_cap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnd_cap1.i, align 4
  %add1.i.i = add i32 %9, 48
  %call2.i.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %add1.i.i, ptr noundef nonnull %cmd.i.i) #12
  %10 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd.i.i, align 4
  %and.i.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool4.not.i.i = icmp sgt i32 %11, -1
  br i1 %tobool4.not.i.i, label %if.then.i.i.pcie2cio_write.exit_crit_edge, label %if.then.i.i.do.end.i.i_crit_edge

if.then.i.i.do.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i.pcie2cio_write.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie2cio_write.exit

if.end6.i.i:                                      ; preds = %do.body.i.i
  call void @msleep(i32 noundef 50) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %12
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.i.do.body.i.i_crit_edge, label %if.end6.i.i.do.end.i.i_crit_edge

if.end6.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.end6.i.i.do.body.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %if.end6.i.i.do.end.i.i_crit_edge, %if.then.i.i.do.end.i.i_crit_edge
  br label %pcie2cio_write.exit

pcie2cio_write.exit:                              ; preds = %do.end.i.i, %if.then.i.i.pcie2cio_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ -110, %do.end.i.i ], [ 0, %if.then.i.i.pcie2cio_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #12
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_get_mode(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi1 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi1, align 4
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 60, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 235844
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %if.end8

if.end:                                           ; preds = %do.body
  tail call void @msleep(i32 noundef 50) #12
  %dec = add nsw i32 %retries.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end7, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #16
  br label %cleanup

if.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @nhi_mailbox_mode(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end7
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -19, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_get_route(ptr noundef %tb, i8 noundef zeroext %link, i8 noundef zeroext %depth, ptr nocapture noundef writeonly %route) #0 align 64 {
entry:
  %reply = alloca %struct.icm_ar_pkg_get_route_response, align 4
  %request = alloca %struct.icm_ar_pkg_get_route, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #12
  %0 = getelementptr inbounds %struct.icm_ar_pkg_get_route_response, ptr %reply, i32 0, i32 3
  %1 = getelementptr inbounds %struct.icm_ar_pkg_get_route_response, ptr %reply, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request) #12
  %2 = getelementptr inbounds %struct.icm_pkg_header, ptr %request, i32 0, i32 1
  %3 = getelementptr inbounds %struct.icm_ar_pkg_get_route, ptr %request, i32 0, i32 2
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %request, align 2
  %conv = zext i8 %depth to i16
  %shl = shl nuw nsw i16 %conv, 4
  %conv1 = zext i8 %link to i16
  %or = or i16 %shl, %conv1
  %5 = call ptr @memset(ptr %2, i32 0, i32 5)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %or, ptr %3, align 2
  %7 = call ptr @memset(ptr %reply, i32 0, i32 16)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 8, ptr noundef nonnull %reply, i32 noundef 16, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %15 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %16 = ptrtoint ptr %route to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i, ptr %route, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_driver_ready(ptr noundef %tb, ptr noundef writeonly %security_level, ptr nocapture noundef readnone %proto_version, ptr noundef writeonly %nboot_acl, ptr noundef writeonly %rpm) #0 align 64 {
entry:
  %reply = alloca %struct.icm_ar_pkg_driver_ready_response, align 8
  %request = alloca %struct.icm_pkg_driver_ready, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reply) #12
  %0 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %1 = getelementptr inbounds %struct.icm_ar_pkg_driver_ready_response, ptr %reply, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #12
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50331648, ptr %request, align 4
  %3 = ptrtoint ptr %reply to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %reply, align 8
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %reply, i32 noundef 8, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %security_level, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, 15
  %and = zext i16 %6 to i32
  %7 = ptrtoint ptr %security_level to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %security_level, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %nboot_acl, null
  br i1 %tobool4.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %and7 = and i32 %conv6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end13_crit_edge, label %if.then9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = lshr i32 %conv6, 7
  %shr = and i32 %and12, 31
  %10 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %nboot_acl, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %rpm, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %13 = lshr i8 %12, 6
  %.lobit = and i8 %13, 1
  %14 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.lobit, ptr %rpm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reply) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_cio_reset(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %cmd.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %upstream_port.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4
  %0 = ptrtoint ptr %upstream_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upstream_port.i, align 4
  %vnd_cap1.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %vnd_cap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnd_cap1.i, align 4
  %add.i = add i32 %3, 52
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add.i, i32 noundef 2) #12
  %add6.i = add i32 %3, 48
  %call7.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add6.i, i32 noundef 1076889463) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #12
  %5 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmd.i.i, align 4, !annotation !200
  %add.neg.i.i = sub i32 -500, %4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end6.i.i.do.body.i.i_crit_edge, %entry
  %6 = ptrtoint ptr %upstream_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upstream_port.i, align 4
  %8 = ptrtoint ptr %vnd_cap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnd_cap1.i, align 4
  %add1.i.i = add i32 %9, 48
  %call2.i.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %add1.i.i, ptr noundef nonnull %cmd.i.i) #12
  %10 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd.i.i, align 4
  %and.i.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool4.not.i.i = icmp sgt i32 %11, -1
  br i1 %tobool4.not.i.i, label %if.then.i.i.pcie2cio_write.exit_crit_edge, label %if.then.i.i.do.end.i.i_crit_edge

if.then.i.i.do.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i.pcie2cio_write.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie2cio_write.exit

if.end6.i.i:                                      ; preds = %do.body.i.i
  call void @msleep(i32 noundef 50) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %12
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.i.do.body.i.i_crit_edge, label %if.end6.i.i.do.end.i.i_crit_edge

if.end6.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.end6.i.i.do.body.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %if.end6.i.i.do.end.i.i_crit_edge, %if.then.i.i.do.end.i.i_crit_edge
  br label %pcie2cio_write.exit

pcie2cio_write.exit:                              ; preds = %do.end.i.i, %if.then.i.i.pcie2cio_write.exit_crit_edge
  %retval.0.i.i = phi i32 [ -110, %do.end.i.i ], [ 0, %if.then.i.i.pcie2cio_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #12
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_driver_ready(ptr noundef %tb, ptr noundef writeonly %security_level, ptr noundef writeonly %proto_version, ptr noundef writeonly %nboot_acl, ptr noundef writeonly %rpm) #0 align 64 {
entry:
  %reply = alloca %struct.icm_tr_pkg_driver_ready_response, align 4
  %request = alloca %struct.icm_pkg_driver_ready, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #12
  %0 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %1 = getelementptr inbounds %struct.icm_tr_pkg_driver_ready_response, ptr %reply, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #12
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50331648, ptr %request, align 4
  %3 = call ptr @memset(ptr %reply, i32 0, i32 16)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %reply, i32 noundef 16, i32 noundef 1, i32 noundef 20000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %security_level, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, 7
  %and = zext i16 %6 to i32
  %7 = ptrtoint ptr %security_level to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %security_level, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %proto_version, null
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %10 = trunc i16 %9 to i8
  %11 = lshr i8 %10, 4
  %conv9 = and i8 %11, 7
  %12 = ptrtoint ptr %proto_version to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %proto_version, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %nboot_acl, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %15 = lshr i16 %14, 7
  %16 = and i16 %15, 63
  %shr16 = zext i16 %16 to i32
  %17 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr16, ptr %nboot_acl, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %rpm, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  %20 = lshr i8 %19, 6
  %.lobit = and i8 %20, 1
  %21 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.lobit, ptr %rpm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_tr_device_connected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__icm_tr_device_connected(ptr noundef %tb, ptr noundef %hdr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_tr_device_disconnected(ptr noundef %tb, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi = getelementptr inbounds %struct.icm_tr_event_device_disconnected, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_tr_event_device_disconnected, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo, align 4
  %conv.i = zext i32 %1 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %call1 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, i64 noundef %or.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #12
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %13, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %11, ptr null
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %call1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %15 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %15, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %call1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %17 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i5.i = load i32, ptr %depth.i.i, align 4
  %19 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i = and i32 %19, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %or.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %20 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %21, i32 %conv1.i.i
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call1) #12
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %call.i19 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i19, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #12
  tail call void @put_device(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %remove_switch.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_tr_xdomain_connected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_route_hi = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, ptr %hdr, i32 0, i32 5
  %2 = ptrtoint ptr %local_route_hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_route_hi, align 4
  %local_route_lo = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %local_route_lo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_route_lo, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %5 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %remote_uuid = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, ptr %hdr, i32 0, i32 3
  %call1 = tail call ptr @tb_xdomain_find_by_uuid(ptr noundef %tb, ptr noundef %remote_uuid) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %route4 = getelementptr inbounds %struct.tb_xdomain, ptr %call1, i32 0, i32 4
  %6 = ptrtoint ptr %route4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %route4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %or.i)
  %cmp = icmp eq i64 %7, %or.i
  br i1 %cmp, label %tb_xdomain_put.exit, label %if.end6

tb_xdomain_put.exit:                              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %link1.i = getelementptr inbounds %struct.tb_xdomain, ptr %call1, i32 0, i32 30
  %8 = ptrtoint ptr %link1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link1.i, align 4
  %9 = ptrtoint ptr %route4 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i, ptr %route4, align 8
  %is_unplugged.i = getelementptr inbounds %struct.tb_xdomain, ptr %call1, i32 0, i32 14
  %10 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_unplugged.i, align 8
  tail call void @put_device(ptr noundef nonnull %call1) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %parent.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %14, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %12, ptr null
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i = load i32, ptr %depth.i.i, align 4
  %16 = lshr i32 %bf.load.i.i, 6
  %mul.i.i = and i32 %16, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %7, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit55

if.end27.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %18, i32 %conv1.i.i
  br label %tb_xdomain_put.exit55

tb_xdomain_put.exit55:                            ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call1) #12
  tail call void @put_device(ptr noundef nonnull %call1) #12
  br label %if.end7

if.end7:                                          ; preds = %tb_xdomain_put.exit55, %if.end.if.end7_crit_edge
  %call8 = tail call ptr @tb_xdomain_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  %parent.i56 = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i56, align 8
  %type.i.i.i57 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %type.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type.i.i.i57, align 4
  %cmp.i.i.i58 = icmp eq ptr %23, @tb_switch_type
  %dev..i.i59 = select i1 %cmp.i.i.i58, ptr %21, ptr null
  %route.i60 = getelementptr inbounds %struct.tb_xdomain, ptr %call8, i32 0, i32 4
  %24 = ptrtoint ptr %route.i60 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %route.i60, align 8
  %depth.i.i61 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i59, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %depth.i.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i.i62 = load i32, ptr %depth.i.i61, align 4
  %27 = lshr i32 %bf.load.i.i62, 6
  %mul.i.i63 = and i32 %27, 56
  %sh_prom.i.i64 = zext i32 %mul.i.i63 to i64
  %shr.i.i65 = lshr i64 %25, %sh_prom.i.i64
  %conv.i.i66 = trunc i64 %shr.i.i65 to i32
  %conv1.i.i67 = and i32 %conv.i.i66, 255
  %bf.lshr4.i.i68 = lshr i32 %bf.load.i.i62, 12
  %bf.clear5.i.i69 = and i32 %bf.lshr4.i.i68, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i67, i32 %bf.clear5.i.i69)
  %cmp.i.i70 = icmp ugt i32 %conv1.i.i67, %bf.clear5.i.i69
  br i1 %cmp.i.i70, label %do.end.i.i71, label %if.end27.i.i74, !prof !201

do.end.i.i71:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit80

if.end27.i.i74:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i72 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i59, i32 0, i32 2
  %28 = ptrtoint ptr %ports.i.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports.i.i72, align 4
  %arrayidx.i.i73 = getelementptr %struct.tb_port, ptr %29, i32 %conv1.i.i67
  br label %tb_xdomain_put.exit80

tb_xdomain_put.exit80:                            ; preds = %if.end27.i.i74, %do.end.i.i71
  %retval.0.i.i75 = phi ptr [ null, %do.end.i.i71 ], [ %arrayidx.i.i73, %if.end27.i.i74 ]
  %xdomain.i76 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i75, i32 0, i32 3
  %30 = ptrtoint ptr %xdomain.i76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %xdomain.i76, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call8) #12
  tail call void @put_device(ptr noundef nonnull %call8) #12
  br label %if.end11

if.end11:                                         ; preds = %tb_xdomain_put.exit80, %if.end7.if.end11_crit_edge
  %call12 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %parent.i81 = getelementptr inbounds %struct.device, ptr %call12, i32 0, i32 1
  %31 = ptrtoint ptr %parent.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i81, align 8
  %type.i.i.i82 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %type.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %type.i.i.i82, align 4
  %cmp.i.i.i83 = icmp eq ptr %34, @tb_switch_type
  %dev..i.i84 = select i1 %cmp.i.i.i83, ptr %32, ptr null
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %call12, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load.i.i85 = load i64, ptr %route_hi.i.i, align 4
  %36 = lshr i64 %bf.load.i.i85, 1
  %shl.i.i = and i64 %36, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %call12, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %38 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %depth.i.i86 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i84, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %depth.i.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i5.i = load i32, ptr %depth.i.i86, align 4
  %40 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i87 = and i32 %40, 56
  %sh_prom.i.i88 = zext i32 %mul.i.i87 to i64
  %shr.i.i89 = lshr i64 %or.i.i, %sh_prom.i.i88
  %conv.i.i90 = trunc i64 %shr.i.i89 to i32
  %conv1.i.i91 = and i32 %conv.i.i90, 255
  %bf.lshr4.i.i92 = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i93 = and i32 %bf.lshr4.i.i92, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i91, i32 %bf.clear5.i.i93)
  %cmp.i.i94 = icmp ugt i32 %conv1.i.i91, %bf.clear5.i.i93
  br i1 %cmp.i.i94, label %do.end.i.i95, label %if.end27.i.i98, !prof !201

do.end.i.i95:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i98:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i96 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i84, i32 0, i32 2
  %41 = ptrtoint ptr %ports.i.i96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ports.i.i96, align 4
  %arrayidx.i.i97 = getelementptr %struct.tb_port, ptr %42, i32 %conv1.i.i91
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i98, %do.end.i.i95
  %retval.0.i.i99 = phi ptr [ null, %do.end.i.i95 ], [ %arrayidx.i.i97, %if.end27.i.i98 ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i99, i32 0, i32 2
  %43 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call12) #12
  tail call void @put_device(ptr noundef nonnull %call12) #12
  br label %if.end15

if.end15:                                         ; preds = %remove_switch.exit, %if.end11.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %tb_route_length.exit.thread5.i

tb_route_length.exit.thread5.i:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %44 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #12, !range !205
  %add.i.i.i = sub nuw nsw i32 64, %44
  br label %cond.true.i

if.end.i.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i5.i.i.i = icmp eq i32 %5, 0
  %45 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #12, !range !205
  %sub.i6.i.i.i = sub nuw nsw i32 32, %45
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i.get_parent_route.exit_crit_edge, label %if.end.i.i.i.cond.true.i_crit_edge

if.end.i.i.i.cond.true.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

if.end.i.i.i.get_parent_route.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_parent_route.exit

cond.true.i:                                      ; preds = %if.end.i.i.i.cond.true.i_crit_edge, %tb_route_length.exit.thread5.i
  %retval.0.i.i8.i = phi i32 [ %add.i.i.i, %tb_route_length.exit.thread5.i ], [ %sub.i6.i.i.i, %if.end.i.i.i.cond.true.i_crit_edge ]
  %46 = add nsw i32 %retval.0.i.i8.i, -1
  %mul.i = and i32 %46, -8
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i100 = shl nuw i64 255, %sh_prom.i
  %neg.i = xor i64 %shl.i100, -1
  %and.i = and i64 %or.i, %neg.i
  br label %get_parent_route.exit

get_parent_route.exit:                            ; preds = %cond.true.i, %if.end.i.i.i.get_parent_route.exit_crit_edge
  %cond.i = phi i64 [ %and.i, %cond.true.i ], [ 0, %if.end.i.i.i.get_parent_route.exit_crit_edge ]
  %call17 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %cond.i) #12
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end, label %if.end20

do.end:                                           ; preds = %get_parent_route.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %47 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, i64 noundef %or.i) #16
  br label %cleanup

if.end20:                                         ; preds = %get_parent_route.exit
  call void @__sanitizer_cov_trace_pc() #14
  %local_uuid = getelementptr inbounds %struct.icm_tr_event_xdomain_connected, ptr %hdr, i32 0, i32 4
  tail call fastcc void @add_xdomain(ptr noundef nonnull %call17, i64 noundef %or.i, ptr noundef %local_uuid, ptr noundef %remote_uuid, i8 noundef zeroext 0, i8 noundef zeroext 0)
  tail call void @put_device(ptr noundef nonnull %call17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %tb_xdomain_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_tr_xdomain_disconnected(ptr noundef %tb, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi = getelementptr inbounds %struct.icm_tr_event_xdomain_disconnected, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_tr_event_xdomain_disconnected, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo, align 4
  %conv.i = zext i32 %1 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %call1 = tail call ptr @tb_xdomain_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %7, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %5, ptr null
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %route.i, align 8
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i = load i32, ptr %depth.i.i, align 4
  %11 = lshr i32 %bf.load.i.i, 6
  %mul.i.i = and i32 %11, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %9, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit

if.end27.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %13, i32 %conv1.i.i
  br label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call1) #12
  tail call void @put_device(ptr noundef nonnull %call1) #12
  br label %if.end

if.end:                                           ; preds = %tb_xdomain_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_icl_driver_ready(ptr noundef %tb, ptr nocapture noundef readnone %security_level, ptr noundef writeonly %proto_version, ptr nocapture noundef readnone %nboot_acl, ptr noundef writeonly %rpm) #0 align 64 {
entry:
  %reply = alloca %struct.icm_tr_pkg_driver_ready_response, align 4
  %request = alloca %struct.icm_pkg_driver_ready, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reply) #12
  %0 = getelementptr inbounds %struct.icm_tr_pkg_driver_ready_response, ptr %reply, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #12
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50331648, ptr %request, align 4
  %2 = call ptr @memset(ptr %reply, i32 0, i32 16)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %reply, i32 noundef 16, i32 noundef 1, i32 noundef 20000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %proto_version, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %0, align 2
  %5 = trunc i16 %4 to i8
  %6 = lshr i8 %5, 4
  %conv3 = and i8 %6, 7
  %7 = ptrtoint ptr %proto_version to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %proto_version, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %rpm, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rpm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reply) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_icl_set_uuid(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %uuid = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi1 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #12
  %2 = getelementptr inbounds [4 x i32], ptr %uuid, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %uuid, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %uuid, i32 0, i32 3
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %5 = call ptr @memset(ptr %uuid, i32 255, i32 16)
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 204, ptr noundef nonnull %uuid) #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %call4 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 208, ptr noundef %2) #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %4, align 4
  %call7 = call ptr @kmemdup(ptr noundef nonnull %uuid, i32 noundef 16, i32 noundef 3264) #12
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %12 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root_switch, align 8
  %uuid8 = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %uuid8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %uuid8, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_icl_device_connected(ptr noundef %tb, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__icm_tr_device_connected(ptr noundef %tb, ptr noundef %hdr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_icl_rtd3_veto(ptr noundef %tb, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_icl_rtd3_veto.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_icl_rtd3_veto, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %veto_reason = getelementptr inbounds %struct.icm_icl_event_rtd3_veto, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %veto_reason to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %veto_reason, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_icl_rtd3_veto.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %veto_reason3 = getelementptr inbounds %struct.icm_icl_event_rtd3_veto, ptr %hdr, i32 0, i32 1
  %6 = ptrtoint ptr %veto_reason3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %veto_reason3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %veto.i10 = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %8 = ptrtoint ptr %veto.i10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %veto.i10, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i11 = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  br i1 %tobool.not.i11, label %if.then.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %veto.i10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %veto.i10, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %tb, i32 noundef 5) #12
  br label %if.end6

if.else:                                          ; preds = %do.end
  br i1 %tobool.not.i11, label %if.else.if.end6_crit_edge, label %if.then.i13

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i13:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %veto.i10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %veto.i10, align 4
  %call.i.i12 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %tb, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i.i12, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %tb, i32 noundef 13) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.i13, %if.else.if.end6_crit_edge, %if.then.i, %if.then5.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icm_tgl_is_supported(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = xor i32 %0, -1
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nhi, align 4
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 235844
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup2_crit_edge

do.body.cleanup2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %6, %add.neg
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.cleanup2_crit_edge

if.end.cleanup2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup2:                                         ; preds = %if.end.cleanup2_crit_edge, %do.body.cleanup2_crit_edge
  %7 = xor i1 %tobool.not, true
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icm_free_unplugged_children(ptr nocapture noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.033 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load34 = load i32, ptr %max_port_number, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 12
  %bf.clear36 = and i32 %bf.lshr35, 63
  %arrayidx237 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear36
  %cmp.not38 = icmp ugt ptr %port.033, %arrayidx237
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.041 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.033, %entry.for.body_crit_edge ]
  %.pn39 = phi ptr [ %port.041, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %xdomain = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 3
  %3 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xdomain, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %is_unplugged = getelementptr inbounds %struct.tb_xdomain, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tb_xdomain_remove(ptr noundef nonnull %4) #12
  %7 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xdomain, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 1
  %8 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %11, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.041
  br i1 %cmp.i.i, label %if.else.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %if.else
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 12
  %13 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %14, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 2
  %15 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.end2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end2.i.if.then7_crit_edge, label %land.lhs.true.i

if.end2.i.if.then7_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 13
  %17 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then7_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i.if.then7_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.i.if.then7_crit_edge, %if.end2.i.if.then7_crit_edge
  %18 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remote.i, align 4
  %sw8 = getelementptr inbounds %struct.tb_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sw8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw8, align 4
  %is_unplugged9 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %is_unplugged9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_unplugged9, align 8, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.then7
  %parent1.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent1.i, align 8
  %call.i = tail call ptr @get_device(ptr noundef %25) #12
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #12
  %type.i.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ne ptr %27, @tb_switch_type
  %tobool.not2.i.i = icmp eq ptr %21, null
  %tobool.not.i.i = or i1 %tobool.not2.i.i, %cmp.i.i.i.i
  br i1 %tobool.not.i.i, label %if.then11.remove_unplugged_switch.exit_crit_edge, label %if.then.i.i

if.then11.remove_unplugged_switch.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_unplugged_switch.exit

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %rpm_complete.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 35
  tail call void @complete(ptr noundef %rpm_complete.i.i) #12
  br label %remove_unplugged_switch.exit

remove_unplugged_switch.exit:                     ; preds = %if.then.i.i, %if.then11.remove_unplugged_switch.exit_crit_edge
  %call6.i = tail call i32 @bus_for_each_dev(ptr noundef nonnull @tb_bus_type, ptr noundef %21, ptr noundef null, ptr noundef nonnull @complete_rpm) #12
  tail call void @tb_switch_remove(ptr noundef %21) #12
  %call.i14.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i14.i, ptr %last_busy.i.i, align 8
  %call.i15.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #12
  tail call void @put_device(ptr noundef %call.i) #12
  %29 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %remote.i, align 4
  br label %for.inc

if.else15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @icm_free_unplugged_children(ptr noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %if.else15, %remove_unplugged_switch.exit, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then
  %port.0 = getelementptr %struct.tb_port, ptr %port.041, i32 1
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %32 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %31, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @complete_rpm(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %1, @tb_switch_type
  %tobool.not2 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not2, %cmp.i.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rpm_complete = getelementptr inbounds %struct.tb_switch, ptr %dev, i32 0, i32 35
  tail call void @complete(ptr noundef %rpm_complete) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icm_request(ptr noundef %tb, ptr noundef %request, i32 noundef %request_size, ptr noundef %response, i32 noundef %response_size, i32 noundef %npackets, i32 noundef %timeout_msec) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %res.sroa.4.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %call1 = call ptr @tb_cfg_request_alloc() #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end:                                           ; preds = %entry
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 9
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @icm_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 10
  %1 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @icm_copy, ptr %copy, align 8
  %request2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %request2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %request, ptr %request2, align 8
  %request_size3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %request_size3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %request_size, ptr %request_size3, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %request_type, align 8
  %response4 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 5
  %5 = ptrtoint ptr %response4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %response, ptr %response4, align 4
  %npackets5 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %npackets5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %npackets, ptr %npackets5, align 8
  %response_size6 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 6
  %7 = ptrtoint ptr %response_size6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %response_size, ptr %response_size6, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call1, i32 0, i32 7
  %8 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %response_type, align 4
  call void @mutex_lock_nested(ptr noundef %privdata.i, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #12
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl, align 8
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %10, ptr noundef nonnull %call1, i32 noundef %timeout_msec) #12
  %11 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %res.sroa.4.0.copyload18 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #12
  call void @mutex_unlock(ptr noundef %privdata.i) #12
  call void @tb_cfg_request_put(ptr noundef nonnull %call1) #12
  %12 = zext i32 %res.sroa.4.0.copyload18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %res.sroa.4.0.copyload18, label %if.end.cleanup15.loopexit36_crit_edge [
    i32 -110, label %do.cond
    i32 1, label %if.end.cleanup15_crit_edge
  ]

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.cleanup15.loopexit36_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.loopexit36

do.cond:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #12
  %call1.1 = call ptr @tb_cfg_request_alloc() #12
  %tobool.not.1 = icmp eq ptr %call1.1, null
  br i1 %tobool.not.1, label %do.cond.cleanup15_crit_edge, label %if.end.1

do.cond.cleanup15_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.1:                                         ; preds = %do.cond
  %match.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 9
  %13 = ptrtoint ptr %match.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @icm_match, ptr %match.1, align 4
  %copy.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 10
  %14 = ptrtoint ptr %copy.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @icm_copy, ptr %copy.1, align 8
  %request2.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 2
  %15 = ptrtoint ptr %request2.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %request, ptr %request2.1, align 8
  %request_size3.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 3
  %16 = ptrtoint ptr %request_size3.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %request_size, ptr %request_size3.1, align 4
  %request_type.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 4
  %17 = ptrtoint ptr %request_type.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 11, ptr %request_type.1, align 8
  %response4.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 5
  %18 = ptrtoint ptr %response4.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %response, ptr %response4.1, align 4
  %npackets5.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 8
  %19 = ptrtoint ptr %npackets5.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %npackets, ptr %npackets5.1, align 8
  %response_size6.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 6
  %20 = ptrtoint ptr %response_size6.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %response_size, ptr %response_size6.1, align 8
  %response_type.1 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.1, i32 0, i32 7
  %21 = ptrtoint ptr %response_type.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12, ptr %response_type.1, align 4
  call void @mutex_lock_nested(ptr noundef %privdata.i, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #12
  %22 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctl, align 8
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %23, ptr noundef nonnull %call1.1, i32 noundef %timeout_msec) #12
  %24 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %res.sroa.4.0.copyload18.1 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #12
  call void @mutex_unlock(ptr noundef %privdata.i) #12
  call void @tb_cfg_request_put(ptr noundef nonnull %call1.1) #12
  %25 = zext i32 %res.sroa.4.0.copyload18.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %res.sroa.4.0.copyload18.1, label %if.end.1.cleanup15.loopexit36_crit_edge [
    i32 -110, label %do.cond.1
    i32 1, label %if.end.1.cleanup15_crit_edge
  ]

if.end.1.cleanup15_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.1.cleanup15.loopexit36_crit_edge:          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.loopexit36

do.cond.1:                                        ; preds = %if.end.1
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #12
  %call1.2 = call ptr @tb_cfg_request_alloc() #12
  %tobool.not.2 = icmp eq ptr %call1.2, null
  br i1 %tobool.not.2, label %do.cond.1.cleanup15_crit_edge, label %if.end.2

do.cond.1.cleanup15_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.2:                                         ; preds = %do.cond.1
  %match.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 9
  %26 = ptrtoint ptr %match.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @icm_match, ptr %match.2, align 4
  %copy.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 10
  %27 = ptrtoint ptr %copy.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @icm_copy, ptr %copy.2, align 8
  %request2.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 2
  %28 = ptrtoint ptr %request2.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %request, ptr %request2.2, align 8
  %request_size3.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 3
  %29 = ptrtoint ptr %request_size3.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %request_size, ptr %request_size3.2, align 4
  %request_type.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 4
  %30 = ptrtoint ptr %request_type.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 11, ptr %request_type.2, align 8
  %response4.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 5
  %31 = ptrtoint ptr %response4.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %response, ptr %response4.2, align 4
  %npackets5.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 8
  %32 = ptrtoint ptr %npackets5.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %npackets, ptr %npackets5.2, align 8
  %response_size6.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 6
  %33 = ptrtoint ptr %response_size6.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %response_size, ptr %response_size6.2, align 8
  %response_type.2 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.2, i32 0, i32 7
  %34 = ptrtoint ptr %response_type.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %response_type.2, align 4
  call void @mutex_lock_nested(ptr noundef %privdata.i, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #12
  %35 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctl, align 8
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %36, ptr noundef nonnull %call1.2, i32 noundef %timeout_msec) #12
  %37 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %res.sroa.4.0.copyload18.2 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #12
  call void @mutex_unlock(ptr noundef %privdata.i) #12
  call void @tb_cfg_request_put(ptr noundef nonnull %call1.2) #12
  %38 = zext i32 %res.sroa.4.0.copyload18.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %res.sroa.4.0.copyload18.2, label %if.end.2.cleanup15.loopexit36_crit_edge [
    i32 -110, label %do.cond.2
    i32 1, label %if.end.2.cleanup15_crit_edge
  ]

if.end.2.cleanup15_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.2.cleanup15.loopexit36_crit_edge:          ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.loopexit36

do.cond.2:                                        ; preds = %if.end.2
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #12
  %call1.3 = call ptr @tb_cfg_request_alloc() #12
  %tobool.not.3 = icmp eq ptr %call1.3, null
  br i1 %tobool.not.3, label %do.cond.2.cleanup15_crit_edge, label %if.end.3

do.cond.2.cleanup15_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.3:                                         ; preds = %do.cond.2
  %match.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 9
  %39 = ptrtoint ptr %match.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @icm_match, ptr %match.3, align 4
  %copy.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 10
  %40 = ptrtoint ptr %copy.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @icm_copy, ptr %copy.3, align 8
  %request2.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 2
  %41 = ptrtoint ptr %request2.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %request, ptr %request2.3, align 8
  %request_size3.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 3
  %42 = ptrtoint ptr %request_size3.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %request_size, ptr %request_size3.3, align 4
  %request_type.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 4
  %43 = ptrtoint ptr %request_type.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 11, ptr %request_type.3, align 8
  %response4.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 5
  %44 = ptrtoint ptr %response4.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %response, ptr %response4.3, align 4
  %npackets5.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 8
  %45 = ptrtoint ptr %npackets5.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %npackets, ptr %npackets5.3, align 8
  %response_size6.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 6
  %46 = ptrtoint ptr %response_size6.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %response_size, ptr %response_size6.3, align 8
  %response_type.3 = getelementptr inbounds %struct.tb_cfg_request, ptr %call1.3, i32 0, i32 7
  %47 = ptrtoint ptr %response_type.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 12, ptr %response_type.3, align 4
  call void @mutex_lock_nested(ptr noundef %privdata.i, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #12
  %48 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctl, align 8
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %49, ptr noundef nonnull %call1.3, i32 noundef %timeout_msec) #12
  %50 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %res.sroa.4.0.copyload18.3 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #12
  call void @mutex_unlock(ptr noundef %privdata.i) #12
  call void @tb_cfg_request_put(ptr noundef nonnull %call1.3) #12
  %51 = zext i32 %res.sroa.4.0.copyload18.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %res.sroa.4.0.copyload18.3, label %if.end.3.cleanup15.loopexit36_crit_edge [
    i32 -110, label %do.cond.3
    i32 1, label %if.end.3.cleanup15_crit_edge
  ]

if.end.3.cleanup15_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end.3.cleanup15.loopexit36_crit_edge:          ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.loopexit36

do.cond.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #12
  br label %cleanup15

cleanup15.loopexit36:                             ; preds = %if.end.3.cleanup15.loopexit36_crit_edge, %if.end.2.cleanup15.loopexit36_crit_edge, %if.end.1.cleanup15.loopexit36_crit_edge, %if.end.cleanup15.loopexit36_crit_edge
  %res.sroa.4.0.copyload18.lcssa = phi i32 [ %res.sroa.4.0.copyload18, %if.end.cleanup15.loopexit36_crit_edge ], [ %res.sroa.4.0.copyload18.1, %if.end.1.cleanup15.loopexit36_crit_edge ], [ %res.sroa.4.0.copyload18.2, %if.end.2.cleanup15.loopexit36_crit_edge ], [ %res.sroa.4.0.copyload18.3, %if.end.3.cleanup15.loopexit36_crit_edge ]
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup15.loopexit36, %do.cond.3, %if.end.3.cleanup15_crit_edge, %do.cond.2.cleanup15_crit_edge, %if.end.2.cleanup15_crit_edge, %do.cond.1.cleanup15_crit_edge, %if.end.1.cleanup15_crit_edge, %do.cond.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ %res.sroa.4.0.copyload18.lcssa, %cleanup15.loopexit36 ], [ -12, %entry.cleanup15_crit_edge ], [ -5, %if.end.cleanup15_crit_edge ], [ -12, %do.cond.cleanup15_crit_edge ], [ -5, %if.end.1.cleanup15_crit_edge ], [ -12, %do.cond.1.cleanup15_crit_edge ], [ -5, %if.end.2.cleanup15_crit_edge ], [ -12, %do.cond.2.cleanup15_crit_edge ], [ -5, %if.end.3.cleanup15_crit_edge ], [ -110, %do.cond.3 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_cfg_request_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @icm_match(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %pkg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eof = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %eof, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 7
  %1 = ptrtoint ptr %response_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %response_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %2)
  %cmp.not = icmp eq i32 %bf.clear, %2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %request = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request, align 8
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp3.not = icmp eq i8 %8, %10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp3.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @icm_copy(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %pkg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %packet_id = getelementptr inbounds %struct.icm_pkg_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %packet_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet_id, align 1
  %conv = zext i8 %3 to i32
  %npackets = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 8
  %4 = ptrtoint ptr %npackets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npackets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ugt i32 %5, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %response_size, align 8
  %mul = mul i32 %7, %conv
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %1, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %packet_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %packet_id, align 1
  %conv7 = zext i8 %12 to i32
  %total_packets = getelementptr inbounds %struct.icm_pkg_header, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %total_packets to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %total_packets, align 1
  %conv8 = zext i8 %14 to i32
  %sub = add nsw i32 %conv8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv7)
  %cmp9 = icmp eq i32 %sub, %conv7
  ret i1 %cmp9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_cfg_request_sync(ptr sret(%struct.tb_cfg_result) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_cfg_request_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nhi_mailbox_cmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_by_uuid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_switch(ptr nocapture noundef readonly %parent_sw, ptr noundef %sw, i64 noundef %route, i8 noundef zeroext %connection_id, i8 noundef zeroext %connection_key, i8 noundef zeroext %link, i8 noundef zeroext %depth, i1 noundef zeroext %boot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i27 = load i32, ptr %depth.i, align 4
  %5 = lshr i32 %bf.load.i27, 6
  %mul.i = and i32 %5, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i27, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !201

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 2
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %7, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %remote = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %remote, align 4
  %ports.i28 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %9 = ptrtoint ptr %ports.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports.i28, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i29 = load i32, ptr %upstream_port_number.i, align 4
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i32 = load i32, ptr %depth.i, align 4
  %13 = lshr i32 %bf.load.i32, 6
  %mul.i33 = and i32 %13, 56
  %sh_prom.i34 = zext i32 %mul.i33 to i64
  %shr.i35 = lshr i64 %route, %sh_prom.i34
  %conv.i36 = trunc i64 %shr.i35 to i32
  %conv1.i37 = and i32 %conv.i36, 255
  %bf.lshr4.i38 = lshr i32 %bf.load.i32, 12
  %bf.clear5.i39 = and i32 %bf.lshr4.i38, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i37, i32 %bf.clear5.i39)
  %cmp.i40 = icmp ugt i32 %conv1.i37, %bf.clear5.i39
  br i1 %cmp.i40, label %do.end.i41, label %if.end27.i44, !prof !201

do.end.i41:                                       ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit46

if.end27.i44:                                     ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i42 = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 2
  %14 = ptrtoint ptr %ports.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i42, align 4
  %arrayidx.i43 = getelementptr %struct.tb_port, ptr %15, i32 %conv1.i37
  br label %tb_port_at.exit46

tb_port_at.exit46:                                ; preds = %if.end27.i44, %do.end.i41
  %retval.0.i45 = phi ptr [ null, %do.end.i41 ], [ %arrayidx.i43, %if.end27.i44 ]
  %bf.lshr.i = lshr i32 %bf.load.i29, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i30 = getelementptr %struct.tb_port, ptr %10, i32 %bf.clear.i
  %frombool = zext i1 %boot to i8
  %remote4 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i45, i32 0, i32 2
  %16 = ptrtoint ptr %remote4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.i30, ptr %remote4, align 4
  %17 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load = load i64, ptr %route_hi.i, align 4
  %18 = shl i64 %route, 1
  %bf.shl = and i64 %18, -8589934592
  %bf.clear = and i64 %bf.load, 8589934591
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %route_hi.i, align 4
  %conv6 = trunc i64 %route to i32
  %19 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv6, ptr %route_lo.i, align 8
  %connection_id8 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %20 = ptrtoint ptr %connection_id8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %connection_id, ptr %connection_id8, align 8
  %connection_key9 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 32
  %21 = ptrtoint ptr %connection_key9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %connection_key, ptr %connection_key9, align 1
  %link10 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 33
  %22 = ptrtoint ptr %link10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %link, ptr %link10, align 2
  %depth11 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 34
  %23 = ptrtoint ptr %depth11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %depth, ptr %depth11, align 1
  %boot12 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 25
  %24 = ptrtoint ptr %boot12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %boot12, align 2
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %25 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_unplugged, align 8
  %rpm_complete = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 35
  tail call void @complete(ptr noundef %rpm_complete) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_by_link_depth(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_find_by_link_depth(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_switch(ptr nocapture noundef readonly %parent_sw, ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i18 = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i18, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i19 = load i32, ptr %depth.i, align 4
  %8 = lshr i32 %bf.load.i19, 6
  %mul.i = and i32 %8, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i19, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !201

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i20 = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 2
  %9 = ptrtoint ptr %ports.i20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports.i20, align 4
  %arrayidx.i21 = getelementptr %struct.tb_port, ptr %10, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i21, %if.end27.i ]
  %remote = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %remote, align 4
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i23 = load i32, ptr %depth.i, align 4
  %13 = lshr i32 %bf.load.i23, 6
  %mul.i24 = and i32 %13, 56
  %sh_prom.i25 = zext i32 %mul.i24 to i64
  %shr.i26 = lshr i64 %or.i, %sh_prom.i25
  %conv.i27 = trunc i64 %shr.i26 to i32
  %conv1.i28 = and i32 %conv.i27, 255
  %bf.lshr4.i29 = lshr i32 %bf.load.i23, 12
  %bf.clear5.i30 = and i32 %bf.lshr4.i29, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i28, i32 %bf.clear5.i30)
  %cmp.i31 = icmp ugt i32 %conv1.i28, %bf.clear5.i30
  br i1 %cmp.i31, label %do.end.i32, label %if.end27.i35, !prof !201

do.end.i32:                                       ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit37

if.end27.i35:                                     ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i33 = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 2
  %14 = ptrtoint ptr %ports.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i33, align 4
  %arrayidx.i34 = getelementptr %struct.tb_port, ptr %15, i32 %conv1.i28
  br label %tb_port_at.exit37

tb_port_at.exit37:                                ; preds = %if.end27.i35, %do.end.i32
  %retval.0.i36 = phi ptr [ null, %do.end.i32 ], [ %arrayidx.i34, %if.end27.i35 ]
  %16 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports.i, align 4
  %18 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i40 = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i41 = lshr i32 %bf.load.i40, 18
  %bf.clear.i42 = and i32 %bf.lshr.i41, 63
  %remote5 = getelementptr %struct.tb_port, ptr %17, i32 %bf.clear.i42, i32 2
  %19 = ptrtoint ptr %remote5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i36, ptr %remote5, align 4
  %call6 = tail call i32 @tb_switch_add(ptr noundef %sw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %tb_port_at.exit37.if.end_crit_edge, label %if.then

tb_port_at.exit37.if.end_crit_edge:               ; preds = %tb_port_at.exit37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %tb_port_at.exit37
  %20 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i45 = load i64, ptr %route_hi.i, align 4
  %21 = lshr i64 %bf.load.i45, 1
  %shl.i46 = and i64 %21, 9223372032559808512
  %22 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i, align 8
  %conv2.i48 = zext i32 %23 to i64
  %or.i49 = or i64 %shl.i46, %conv2.i48
  %24 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i51 = load i32, ptr %depth.i, align 4
  %25 = lshr i32 %bf.load.i51, 6
  %mul.i52 = and i32 %25, 56
  %sh_prom.i53 = zext i32 %mul.i52 to i64
  %shr.i54 = lshr i64 %or.i49, %sh_prom.i53
  %conv.i55 = trunc i64 %shr.i54 to i32
  %conv1.i56 = and i32 %conv.i55, 255
  %bf.lshr4.i57 = lshr i32 %bf.load.i51, 12
  %bf.clear5.i58 = and i32 %bf.lshr4.i57, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i56, i32 %bf.clear5.i58)
  %cmp.i59 = icmp ugt i32 %conv1.i56, %bf.clear5.i58
  br i1 %cmp.i59, label %do.end.i60, label %if.end27.i63, !prof !201

do.end.i60:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit65

if.end27.i63:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i61 = getelementptr inbounds %struct.tb_switch, ptr %parent_sw, i32 0, i32 2
  %26 = ptrtoint ptr %ports.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports.i61, align 4
  %arrayidx.i62 = getelementptr %struct.tb_port, ptr %27, i32 %conv1.i56
  br label %tb_port_at.exit65

tb_port_at.exit65:                                ; preds = %if.end27.i63, %do.end.i60
  %retval.0.i64 = phi ptr [ null, %do.end.i60 ], [ %arrayidx.i62, %if.end27.i63 ]
  %remote9 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i64, i32 0, i32 2
  %28 = ptrtoint ptr %remote9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %remote9, align 4
  br label %if.end

if.end:                                           ; preds = %tb_port_at.exit65, %tb_port_at.exit37.if.end_crit_edge
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_alloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_find_by_uuid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_by_route(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_xdomain(ptr noundef %sw, i64 noundef %route, ptr noundef %local_uuid, ptr noundef %remote_uuid, i8 noundef zeroext %link, i8 noundef zeroext %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %sw, i32 noundef 4) #12
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb, align 8
  %call2 = tail call ptr @tb_xdomain_alloc(ptr noundef %1, ptr noundef %sw, i64 noundef %route, ptr noundef %local_uuid, ptr noundef %remote_uuid) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %link3 = getelementptr inbounds %struct.tb_xdomain, ptr %call2, i32 0, i32 30
  %2 = ptrtoint ptr %link3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %link, ptr %link3, align 4
  %depth4 = getelementptr inbounds %struct.tb_xdomain, ptr %call2, i32 0, i32 31
  %3 = ptrtoint ptr %depth4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %depth, ptr %depth4, align 1
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %depth.i, align 4
  %5 = lshr i32 %bf.load.i, 6
  %mul.i = and i32 %5, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %route, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !201

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %7, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %xdomain = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %xdomain, align 4
  tail call void @tb_xdomain_add(ptr noundef nonnull %call2) #12
  br label %out

out:                                              ; preds = %tb_port_at.exit, %entry.out_crit_edge
  %call.i19 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i19, ptr %last_busy.i, align 8
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %sw, i32 noundef 13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_alloc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_driver_ready(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi1.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi1.i, align 4
  %call2.i = tail call fastcc i32 @icm_firmware_start(ptr noundef %tb, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46) #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %get_mode.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 3, i32 1
  %4 = ptrtoint ptr %get_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_mode.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then4.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 %5(ptr noundef %tb) #12
  %6 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call6.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 3, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %safe_mode.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %safe_mode.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %safe_mode.i, align 4
  br label %if.end17.i

sw.bb7.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 @nhi_mailbox_cmd(ptr noundef %1, i32 noundef 35, i32 noundef 0) #12
  br label %if.end17.i

sw.default.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %sw.default.i.cleanup_crit_edge, label %do.end13.i

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end13.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nhi1.i, align 4
  %pdev15.i = getelementptr inbounds %struct.tb_nhi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev15.i, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.49, i32 noundef %call6.i) #16
  br label %cleanup

if.end17.i:                                       ; preds = %sw.bb7.i, %sw.bb.i, %if.end.i.if.end17.i_crit_edge
  %call18.i = tail call fastcc i32 @icm_reset_phy_port(ptr noundef %tb, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end26.i_crit_edge, label %do.end23.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev24.i = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pdev24.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev24.i, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25.i, ptr noundef nonnull @.str.52) #16
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.end17.i.if.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @icm_reset_phy_port(ptr noundef %tb, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end_crit_edge, label %do.end32.i

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev33.i = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev33.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34.i, ptr noundef nonnull @.str.55) #16
  br label %if.end

if.end:                                           ; preds = %do.end32.i, %if.end26.i.if.end_crit_edge
  %safe_mode = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %safe_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %safe_mode, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhi1.i, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #16
  %22 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi1.i, align 4
  %pdev8 = getelementptr inbounds %struct.tb_nhi, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.40) #16
  %26 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nhi1.i, align 4
  %pdev14 = getelementptr inbounds %struct.tb_nhi, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.43) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %security_level = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 8
  %proto_version = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 5
  %nboot_acl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 9
  %rpm = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %call17 = tail call fastcc i32 @__icm_driver_ready(ptr noundef %tb, ptr noundef %security_level, ptr noundef %proto_version, ptr noundef %nboot_acl, ptr noundef %rpm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nboot_acl, align 8
  %max_boot_acl = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %32 = ptrtoint ptr %max_boot_acl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_boot_acl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp = icmp ugt i32 %31, %33
  br i1 %cmp, label %if.then22, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %nboot_acl, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %35 = ptrtoint ptr %proto_version to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %proto_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp26 = icmp ugt i8 %36, 2
  br i1 %cmp26, label %do.body29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_driver_ready.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_driver_ready, %if.then34)) #12
          to label %cleanup [label %if.then34], !srcloc !199

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi1.i, align 4
  %pdev36 = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_driver_ready.__UNIQUE_ID_ddebug241, ptr noundef %dev37, ptr noundef nonnull @.str.45) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body29, %if.end24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %do.end13.i, %sw.default.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %do.end ], [ %call17, %if.end16.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %do.body29 ], [ %call6.i, %sw.default.i.cleanup_crit_edge ], [ -19, %do.end13.i ], [ %call2.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_start(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %safe_mode = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %safe_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %safe_mode, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call ptr @tb_switch_alloc_safe_mode(ptr noundef %tb, ptr noundef %tb, i64 noundef 0) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call ptr @tb_switch_alloc(ptr noundef %tb, ptr noundef %tb, i64 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1.sink = phi ptr [ %call3, %if.else ], [ %call1, %if.then ]
  %2 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.sink, ptr %2, align 8
  %cmp.i = icmp ugt ptr %call1.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call1.sink to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %can_upgrade_nvm = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %can_upgrade_nvm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %can_upgrade_nvm, align 1, !range !204
  %no_nvm_upgrade = getelementptr inbounds %struct.tb_switch, ptr %call1.sink, i32 0, i32 23
  %7 = xor i8 %6, 1
  %8 = ptrtoint ptr %no_nvm_upgrade to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %no_nvm_upgrade, align 4
  %rpm = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %9 = ptrtoint ptr %rpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rpm, align 4, !range !204
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  %rpm15 = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %rpm15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %rpm15, align 1
  %set_uuid = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %set_uuid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_uuid, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end10.if.end20_crit_edge, label %if.then18

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %15(ptr noundef %tb) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end10.if.end20_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 8
  %call22 = tail call i32 @tb_switch_add(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 8
  tail call void @put_device(ptr noundef %19) #12
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %call22, %if.then24 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_stop(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rescan_work = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %rescan_work) #12
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  tail call void @tb_switch_remove(ptr noundef %1) #12
  %2 = ptrtoint ptr %root_switch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %root_switch, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %3 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhi, align 4
  %call3 = tail call i32 @nhi_mailbox_cmd(ptr noundef %4, i32 noundef 7, i32 noundef 0) #12
  %last_nvm_auth = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %5 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %last_nvm_auth, align 4
  tail call void @kfree(ptr noundef %6) #12
  %7 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %last_nvm_auth, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_suspend(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %save_devices = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %save_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %save_devices, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %1(ptr noundef %tb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %call2 = tail call i32 @nhi_mailbox_cmd(ptr noundef %3, i32 noundef 7, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_complete(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %going_away = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %going_away to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %going_away, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %veto.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %4 = ptrtoint ptr %veto.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %veto.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.icm_veto_end.exit_crit_edge, label %if.then.i

if.end.icm_veto_end.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_veto_end.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %veto.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %veto.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %tb, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %tb, i32 noundef 13) #12
  br label %icm_veto_end.exit

icm_veto_end.exit:                                ; preds = %if.then.i, %if.end.icm_veto_end.exit_crit_edge
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %8 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root_switch, align 8
  tail call fastcc void @icm_unplug_children(ptr noundef %9)
  %call1 = tail call fastcc i32 @__icm_driver_ready(ptr noundef %tb, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %wq = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  %rescan_work = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %rescan_work, i32 noundef 50) #12
  br label %cleanup

cleanup:                                          ; preds = %icm_veto_end.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_handle_event(ptr noundef %tb, i32 noundef %type, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 52) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %size, i32 noundef 3264) #12
  %pkg = getelementptr inbounds %struct.icm_notification, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %pkg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %pkg, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #12
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.64, ptr noundef nonnull @icm_handle_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @icm_handle_notification, ptr %func, align 4
  %tb11 = getelementptr inbounds %struct.icm_notification, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %tb11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tb, ptr %tb11, align 8
  %wq = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_approve_switch(ptr noundef %tb, ptr nocapture noundef readonly %sw) #0 align 64 {
entry:
  %request = alloca %struct.icm_fr_pkg_approve_device, align 2
  %reply = alloca %struct.icm_fr_pkg_approve_device, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %request) #12
  %0 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reply) #12
  %3 = call ptr @memset(ptr %reply, i32 255, i32 24)
  %4 = call ptr @memset(ptr %request, i32 0, i32 24)
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %5 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uuid, align 8
  %7 = call ptr @memcpy(ptr %0, ptr %6, i32 16)
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %request, align 2
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %9 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %connection_id, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %2, align 1
  %connection_key = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 32
  %12 = ptrtoint ptr %connection_key to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %connection_key, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %1, align 2
  %15 = call ptr @memset(ptr %reply, i32 0, i32 24)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 24, ptr noundef nonnull %reply, i32 noundef 24, i32 noundef 1, i32 noundef 10000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %20 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reply) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_add_switch_key(ptr noundef %tb, ptr nocapture noundef readonly %sw) #0 align 64 {
entry:
  %request = alloca %struct.icm_fr_pkg_add_device_key, align 4
  %reply = alloca %struct.icm_fr_pkg_add_device_key_response, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %request) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reply) #12
  %0 = call ptr @memset(ptr %reply, i32 255, i32 24)
  %1 = call ptr @memset(ptr %request, i32 0, i32 24)
  %ep_uuid = getelementptr inbounds %struct.icm_fr_pkg_add_device_key, ptr %request, i32 0, i32 1
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %2 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuid, align 8
  %4 = call ptr @memcpy(ptr %ep_uuid, ptr %3, i32 16)
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %request, align 4
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %6 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %connection_id, align 8
  %connection_id1 = getelementptr inbounds %struct.icm_fr_pkg_add_device_key, ptr %request, i32 0, i32 3
  %8 = ptrtoint ptr %connection_id1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %connection_id1, align 1
  %connection_key = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 32
  %9 = ptrtoint ptr %connection_key to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %connection_key, align 1
  %connection_key2 = getelementptr inbounds %struct.icm_fr_pkg_add_device_key, ptr %request, i32 0, i32 2
  %11 = ptrtoint ptr %connection_key2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %connection_key2, align 4
  %key = getelementptr inbounds %struct.icm_fr_pkg_add_device_key, ptr %request, i32 0, i32 5
  %key3 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 30
  %12 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key3, align 4
  %14 = call ptr @memcpy(ptr %key, ptr %13, i32 32)
  %15 = call ptr @memset(ptr %reply, i32 0, i32 24)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 56, ptr noundef nonnull %reply, i32 noundef 24, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %20 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reply) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_challenge_switch_key(ptr noundef %tb, ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %challenge, ptr nocapture noundef writeonly %response) #0 align 64 {
entry:
  %request = alloca %struct.icm_fr_pkg_challenge_device, align 4
  %reply = alloca %struct.icm_fr_pkg_challenge_device_response, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %request) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %reply) #12
  %0 = call ptr @memset(ptr %request, i32 0, i32 24)
  %ep_uuid = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, ptr %request, i32 0, i32 1
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %1 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uuid, align 8
  %3 = call ptr @memcpy(ptr %ep_uuid, ptr %2, i32 16)
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %request, align 4
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %5 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %connection_id, align 8
  %connection_id1 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, ptr %request, i32 0, i32 3
  %7 = ptrtoint ptr %connection_id1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %connection_id1, align 1
  %connection_key = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 32
  %8 = ptrtoint ptr %connection_key to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %connection_key, align 1
  %connection_key2 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, ptr %request, i32 0, i32 2
  %10 = ptrtoint ptr %connection_key2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %connection_key2, align 4
  %challenge3 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, ptr %request, i32 0, i32 5
  %11 = call ptr @memcpy(ptr %challenge3, ptr %challenge, i32 32)
  %12 = call ptr @memset(ptr %reply, i32 0, i32 88)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 56, ptr noundef nonnull %reply, i32 noundef 88, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %response15 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device_response, ptr %reply, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %response, ptr %response15, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ -129, %if.end.cleanup_crit_edge ], [ -126, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %reply) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_disconnect_pcie_paths(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %call = tail call i32 @nhi_mailbox_cmd(ptr noundef %1, i32 noundef 6, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_approve_xdomain_paths(ptr noundef %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  %reply = alloca %struct.icm_fr_pkg_approve_xdomain_response, align 2
  %request = alloca %struct.icm_fr_pkg_approve_xdomain, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reply) #12
  %0 = call ptr @memset(ptr %reply, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %request) #12
  %1 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 3
  %3 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 4
  %4 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 5
  %5 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 6
  %6 = getelementptr inbounds %struct.icm_fr_pkg_approve_xdomain, ptr %request, i32 0, i32 7
  %7 = call ptr @memset(ptr %request, i32 0, i32 32)
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %request, align 2
  %depth = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 31
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %depth, align 1
  %conv = zext i8 %10 to i16
  %shl = shl nuw nsw i16 %conv, 4
  %link = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 30
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link, align 4
  %conv1 = zext i8 %12 to i16
  %or = or i16 %shl, %conv1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or, ptr %1, align 2
  %remote_uuid3 = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 2
  %14 = ptrtoint ptr %remote_uuid3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remote_uuid3, align 4
  %16 = call ptr @memcpy(ptr %2, ptr %15, i32 16)
  %conv4 = trunc i32 %transmit_path to i16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv4, ptr %3, align 2
  %conv6 = trunc i32 %transmit_ring to i16
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6, ptr %4, align 2
  %conv8 = trunc i32 %receive_path to i16
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv8, ptr %5, align 2
  %conv10 = trunc i32 %receive_ring to i16
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv10, ptr %6, align 2
  %21 = call ptr @memset(ptr %reply, i32 0, i32 32)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 32, ptr noundef nonnull %reply, i32 noundef 32, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %22 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool14.not = icmp eq i8 %25, 0
  %. = select i1 %tobool14.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_fr_disconnect_xdomain_paths(ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 30
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link, align 4
  %conv = zext i8 %1 to i32
  %sub.i = add nuw nsw i32 %conv, 511
  %2 = and i32 %sub.i, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %. = select i1 %cmp, i32 16, i32 17
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %3 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhi, align 4
  %call5 = tail call i32 @nhi_mailbox_cmd(ptr noundef %4, i32 noundef %., i32 noundef 1) #12
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #12
  %5 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nhi, align 4
  %call8 = tail call i32 @nhi_mailbox_cmd(ptr noundef %6, i32 noundef %., i32 noundef 2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__icm_driver_ready(ptr noundef %tb, ptr noundef %security_level, ptr noundef %proto_version, ptr noundef %nboot_acl, ptr noundef %rpm) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  %tmp3 = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_ready = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 5, i32 1
  %0 = ptrtoint ptr %driver_ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_ready, align 4
  %call1 = tail call i32 %1(ptr noundef %tb, ptr noundef %security_level, ptr noundef %proto_version, ptr noundef %nboot_acl, ptr noundef %rpm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2.preheader, label %do.end

do.body2.preheader:                               ; preds = %entry
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %res.sroa.4.0.tmp3.sroa_idx = getelementptr inbounds i8, ptr %tmp3, i32 12
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #16
  br label %cleanup17

do.body2:                                         ; preds = %if.end6.do.body2_crit_edge, %do.body2.preheader
  %retries.0 = phi i32 [ %dec, %if.end6.do.body2_crit_edge ], [ 50, %do.body2.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp3) #12
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl, align 8
  call void @tb_cfg_read_raw(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp3, ptr noundef %8, ptr noundef nonnull %tmp, i64 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 100) #12
  %9 = ptrtoint ptr %res.sroa.4.0.tmp3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %res.sroa.4.0.copyload20 = load i32, ptr %res.sroa.4.0.tmp3.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.4.0.copyload20)
  %tobool4.not = icmp eq i32 %res.sroa.4.0.copyload20, 0
  br i1 %tobool4.not, label %cleanup17.critedge, label %if.end6

if.end6:                                          ; preds = %do.body2
  call void @msleep(i32 noundef 50) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  %dec = add nsw i32 %retries.0, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %do.end13, label %if.end6.do.body2_crit_edge

if.end6.do.body2_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %nhi14 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %10 = ptrtoint ptr %nhi14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi14, align 4
  %pdev15 = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.62) #16
  br label %cleanup17

cleanup17.critedge:                               ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup17.critedge, %do.end13, %do.end
  %retval.2 = phi i32 [ %call1, %do.end ], [ -110, %do.end13 ], [ 0, %cleanup17.critedge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icm_firmware_start(ptr noundef %tb, ptr nocapture noundef readonly %nhi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 235844
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_firmware_start.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_firmware_start, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !199

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_firmware_start.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %upstream_port.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4
  %6 = ptrtoint ptr %upstream_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upstream_port.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %icm_firmware_reset.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

icm_firmware_reset.exit:                          ; preds = %do.end
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %9, i32 235844
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %11 = or i32 %10, 64
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 235844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !207
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 235844
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %17 = or i32 %16, 100663296
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 235844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %17) #12, !srcloc !207
  %cio_reset.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %cio_reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cio_reset.i, align 4
  %call11.i = tail call i32 %21(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool7.not = icmp eq i32 %call11.i, 0
  br i1 %tobool7.not, label %do.body10.preheader, label %icm_firmware_reset.exit.cleanup_crit_edge

icm_firmware_reset.exit.cleanup_crit_edge:        ; preds = %icm_firmware_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body10.preheader:                              ; preds = %icm_firmware_reset.exit
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 235844
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool12.not = icmp eq i32 %.mask, 0
  br i1 %tobool12.not, label %if.end14, label %do.body10.preheader.cleanup_crit_edge

do.body10.preheader.cleanup_crit_edge:            ; preds = %do.body10.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %do.body10.preheader
  tail call void @msleep(i32 noundef 300) #12
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %add.ptr.1 = getelementptr i8, ptr %26, i32 235844
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.1 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.1)
  %tobool12.not.1 = icmp eq i32 %.mask.1, 0
  br i1 %tobool12.not.1, label %if.end14.1, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.1:                                       ; preds = %if.end14
  tail call void @msleep(i32 noundef 300) #12
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i, align 4
  %add.ptr.2 = getelementptr i8, ptr %29, i32 235844
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.2 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.2)
  %tobool12.not.2 = icmp eq i32 %.mask.2, 0
  br i1 %tobool12.not.2, label %if.end14.2, label %if.end14.1.cleanup_crit_edge

if.end14.1.cleanup_crit_edge:                     ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.2:                                       ; preds = %if.end14.1
  tail call void @msleep(i32 noundef 300) #12
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i, align 4
  %add.ptr.3 = getelementptr i8, ptr %32, i32 235844
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.3 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.3)
  %tobool12.not.3 = icmp eq i32 %.mask.3, 0
  br i1 %tobool12.not.3, label %if.end14.3, label %if.end14.2.cleanup_crit_edge

if.end14.2.cleanup_crit_edge:                     ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.3:                                       ; preds = %if.end14.2
  tail call void @msleep(i32 noundef 300) #12
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %add.ptr.4 = getelementptr i8, ptr %35, i32 235844
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.4 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.4)
  %tobool12.not.4 = icmp eq i32 %.mask.4, 0
  br i1 %tobool12.not.4, label %if.end14.4, label %if.end14.3.cleanup_crit_edge

if.end14.3.cleanup_crit_edge:                     ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.4:                                       ; preds = %if.end14.3
  tail call void @msleep(i32 noundef 300) #12
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.5 = getelementptr i8, ptr %38, i32 235844
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.5 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.5)
  %tobool12.not.5 = icmp eq i32 %.mask.5, 0
  br i1 %tobool12.not.5, label %if.end14.5, label %if.end14.4.cleanup_crit_edge

if.end14.4.cleanup_crit_edge:                     ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.5:                                       ; preds = %if.end14.4
  tail call void @msleep(i32 noundef 300) #12
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.6 = getelementptr i8, ptr %41, i32 235844
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.6 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.6)
  %tobool12.not.6 = icmp eq i32 %.mask.6, 0
  br i1 %tobool12.not.6, label %if.end14.6, label %if.end14.5.cleanup_crit_edge

if.end14.5.cleanup_crit_edge:                     ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.6:                                       ; preds = %if.end14.5
  tail call void @msleep(i32 noundef 300) #12
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i, align 4
  %add.ptr.7 = getelementptr i8, ptr %44, i32 235844
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.7 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.7)
  %tobool12.not.7 = icmp eq i32 %.mask.7, 0
  br i1 %tobool12.not.7, label %if.end14.7, label %if.end14.6.cleanup_crit_edge

if.end14.6.cleanup_crit_edge:                     ; preds = %if.end14.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.7:                                       ; preds = %if.end14.6
  tail call void @msleep(i32 noundef 300) #12
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i, align 4
  %add.ptr.8 = getelementptr i8, ptr %47, i32 235844
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.8 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.8)
  %tobool12.not.8 = icmp eq i32 %.mask.8, 0
  br i1 %tobool12.not.8, label %if.end14.8, label %if.end14.7.cleanup_crit_edge

if.end14.7.cleanup_crit_edge:                     ; preds = %if.end14.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.8:                                       ; preds = %if.end14.7
  tail call void @msleep(i32 noundef 300) #12
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 4
  %add.ptr.9 = getelementptr i8, ptr %50, i32 235844
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #12, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %.mask.9 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.9)
  %tobool12.not.9 = icmp eq i32 %.mask.9, 0
  br i1 %tobool12.not.9, label %if.end14.9, label %if.end14.8.cleanup_crit_edge

if.end14.8.cleanup_crit_edge:                     ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.9:                                       ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 300) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14.9, %if.end14.8.cleanup_crit_edge, %if.end14.7.cleanup_crit_edge, %if.end14.6.cleanup_crit_edge, %if.end14.5.cleanup_crit_edge, %if.end14.4.cleanup_crit_edge, %if.end14.3.cleanup_crit_edge, %if.end14.2.cleanup_crit_edge, %if.end14.1.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.body10.preheader.cleanup_crit_edge, %icm_firmware_reset.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call11.i, %icm_firmware_reset.exit.cleanup_crit_edge ], [ -19, %do.end.cleanup_crit_edge ], [ 0, %do.body10.preheader.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end14.1.cleanup_crit_edge ], [ 0, %if.end14.2.cleanup_crit_edge ], [ 0, %if.end14.3.cleanup_crit_edge ], [ 0, %if.end14.4.cleanup_crit_edge ], [ 0, %if.end14.5.cleanup_crit_edge ], [ 0, %if.end14.6.cleanup_crit_edge ], [ 0, %if.end14.7.cleanup_crit_edge ], [ 0, %if.end14.8.cleanup_crit_edge ], [ -110, %if.end14.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icm_reset_phy_port(ptr nocapture noundef readonly %tb, i32 noundef %phy_port) unnamed_addr #0 align 64 {
entry:
  %val0 = alloca i32, align 4
  %val1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val0) #12
  %0 = ptrtoint ptr %val0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val0, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #12
  %1 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val1, align 4, !annotation !200
  %upstream_port = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 9, i32 1, i32 4
  %2 = ptrtoint ptr %upstream_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upstream_port, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_port)
  %tobool1.not = icmp eq i32 %phy_port, 0
  %. = select i1 %tobool1.not, i32 1, i32 3
  %.77 = select i1 %tobool1.not, i32 2, i32 4
  %call4 = call fastcc i32 @pcie2cio_read(ptr noundef %privdata.i, i32 noundef %., ptr noundef nonnull %val0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @pcie2cio_read(ptr noundef %privdata.i, i32 noundef %.77, ptr noundef nonnull %val1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val0, align 4
  %6 = and i32 %5, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %6)
  %cmp.not = icmp eq i32 %6, 134217728
  br i1 %cmp.not, label %lor.lhs.false, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %7 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val1, align 4
  %9 = and i32 %8, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %9)
  %cmp14.not = icmp eq i32 %9, 134217728
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %or = or i32 %5, 16384
  %10 = ptrtoint ptr %val0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %val0, align 4
  %call17 = call fastcc i32 @pcie2cio_write(ptr noundef %privdata.i, i32 noundef 1, i32 noundef %., i32 noundef 55, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val1, align 4
  %or21 = or i32 %12, 16384
  store i32 %or21, ptr %val1, align 4
  %call22 = call fastcc i32 @pcie2cio_write(ptr noundef %privdata.i, i32 noundef 1, i32 noundef %.77, i32 noundef 55, i32 noundef %or21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #12
  %call26 = call fastcc i32 @pcie2cio_read(ptr noundef %privdata.i, i32 noundef %., ptr noundef nonnull %val0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call fastcc i32 @pcie2cio_read(ptr noundef %privdata.i, i32 noundef %.77, ptr noundef nonnull %val1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %13 = ptrtoint ptr %val0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val0, align 4
  %and34 = and i32 %14, -16385
  store i32 %and34, ptr %val0, align 4
  %call35 = call fastcc i32 @pcie2cio_write(ptr noundef %privdata.i, i32 noundef 1, i32 noundef %., i32 noundef 55, i32 noundef %and34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val1, align 4
  %and39 = and i32 %16, -16385
  store i32 %and39, ptr %val1, align 4
  %call40 = call fastcc i32 @pcie2cio_write(ptr noundef %privdata.i, i32 noundef 1, i32 noundef %.77, i32 noundef 55, i32 noundef %and39)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val0) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcie2cio_read(ptr nocapture noundef readonly %icm, i32 noundef %port, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %upstream_port = getelementptr inbounds %struct.icm, ptr %icm, i32 0, i32 2
  %0 = ptrtoint ptr %upstream_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upstream_port, align 4
  %vnd_cap1 = getelementptr inbounds %struct.icm, ptr %icm, i32 0, i32 3
  %2 = ptrtoint ptr %vnd_cap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnd_cap1, align 4
  %shl = shl i32 %port, 13
  %and = and i32 %shl, 516096
  %or5 = or i32 %and, 1074266167
  %add = add i32 %3, 48
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add, i32 noundef %or5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #12
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmd.i, align 4, !annotation !200
  %add.neg.i = sub i32 -500, %4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end6.i.do.body.i_crit_edge, %entry
  %6 = ptrtoint ptr %upstream_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upstream_port, align 4
  %8 = ptrtoint ptr %vnd_cap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnd_cap1, align 4
  %add1.i = add i32 %9, 48
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %add1.i, ptr noundef nonnull %cmd.i) #12
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd.i, align 4
  %and.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool4.not.i = icmp sgt i32 %11, -1
  br i1 %tobool4.not.i, label %if.end, label %if.then.i.pci2cio_wait_completion.exit_crit_edge

if.then.i.pci2cio_wait_completion.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci2cio_wait_completion.exit

if.end6.i:                                        ; preds = %do.body.i
  call void @msleep(i32 noundef 50) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %12
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end6.i.do.body.i_crit_edge, label %if.end6.i.pci2cio_wait_completion.exit_crit_edge

if.end6.i.pci2cio_wait_completion.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci2cio_wait_completion.exit

if.end6.i.do.body.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

pci2cio_wait_completion.exit:                     ; preds = %if.end6.i.pci2cio_wait_completion.exit_crit_edge, %if.then.i.pci2cio_wait_completion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #12
  %add7 = add i32 %3, 56
  %call8 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add7, ptr noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pci2cio_wait_completion.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %pci2cio_wait_completion.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcie2cio_write(ptr nocapture noundef readonly %icm, i32 noundef %cs, i32 noundef %port, i32 noundef %index, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %upstream_port = getelementptr inbounds %struct.icm, ptr %icm, i32 0, i32 2
  %0 = ptrtoint ptr %upstream_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upstream_port, align 4
  %vnd_cap1 = getelementptr inbounds %struct.icm, ptr %icm, i32 0, i32 3
  %2 = ptrtoint ptr %vnd_cap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnd_cap1, align 4
  %add = add i32 %3, 52
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add, i32 noundef %data) #12
  %shl = shl i32 %port, 13
  %and = and i32 %shl, 516096
  %shl2 = shl i32 %cs, 19
  %and3 = and i32 %shl2, 1572864
  %or = or i32 %and3, %index
  %or4 = or i32 %or, %and
  %or5 = or i32 %or4, 1075838976
  %add6 = add i32 %3, 48
  %call7 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add6, i32 noundef %or5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #12
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cmd.i, align 4, !annotation !200
  %add.neg.i = sub i32 -500, %4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end6.i.do.body.i_crit_edge, %entry
  %6 = ptrtoint ptr %upstream_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upstream_port, align 4
  %8 = ptrtoint ptr %vnd_cap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnd_cap1, align 4
  %add1.i = add i32 %9, 48
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef %add1.i, ptr noundef nonnull %cmd.i) #12
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd.i, align 4
  %and.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool4.not.i = icmp sgt i32 %11, -1
  br i1 %tobool4.not.i, label %if.then.i.pci2cio_wait_completion.exit_crit_edge, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i.pci2cio_wait_completion.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci2cio_wait_completion.exit

if.end6.i:                                        ; preds = %do.body.i
  call void @msleep(i32 noundef 50) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %12
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end6.i.do.body.i_crit_edge, label %if.end6.i.do.end.i_crit_edge

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end6.i.do.body.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %if.end6.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  br label %pci2cio_wait_completion.exit

pci2cio_wait_completion.exit:                     ; preds = %do.end.i, %if.then.i.pci2cio_wait_completion.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then.i.pci2cio_wait_completion.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_cfg_read_raw(ptr sret(%struct.tb_cfg_result) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_alloc_safe_mode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icm_unplug_children(ptr nocapture noundef %sw) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_unplugged, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.023 = getelementptr %struct.tb_port, ptr %6, i32 1
  %7 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load24 = load i32, ptr %max_port_number, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 12
  %bf.clear26 = and i32 %bf.lshr25, 63
  %arrayidx227 = getelementptr %struct.tb_port, ptr %6, i32 %bf.clear26
  %cmp.not28 = icmp ugt ptr %port.023, %arrayidx227
  br i1 %cmp.not28, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %port.031 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.023, %if.end.for.body_crit_edge ]
  %.pn29 = phi ptr [ %port.031, %for.inc.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %xdomain = getelementptr %struct.tb_port, ptr %.pn29, i32 1, i32 3
  %8 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xdomain, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %is_unplugged6 = getelementptr inbounds %struct.tb_xdomain, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %is_unplugged6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_unplugged6, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn29, i32 1, i32 1
  %11 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %14, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.031
  br i1 %cmp.i.i, label %if.else.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %if.else
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn29, i32 1, i32 12
  %16 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %17, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn29, i32 1, i32 2
  %18 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.end2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %if.end2.i.if.then8_crit_edge, label %land.lhs.true.i

if.end2.i.if.then8_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn29, i32 1, i32 13
  %20 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i21 = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i21)
  %tobool4.not.i = icmp sgt i8 %bf.load.i21, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then8_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.i.if.then8_crit_edge, %if.end2.i.if.then8_crit_edge
  %21 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remote.i, align 4
  %sw9 = getelementptr inbounds %struct.tb_port, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %sw9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sw9, align 4
  tail call fastcc void @icm_unplug_children(ptr noundef %24)
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then4
  %port.0 = getelementptr %struct.tb_port, ptr %port.031, i32 1
  %25 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports, align 4
  %27 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %26, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_handle_notification(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb1 = getelementptr inbounds %struct.icm_notification, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb1, align 4
  %lock = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %root_switch = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_switch, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %entry
  %pkg = getelementptr inbounds %struct.icm_notification, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %7, label %if.then.if.end16_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb3
    i8 6, label %sw.bb5
    i8 7, label %sw.bb9
    i8 10, label %sw.bb14
  ]

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %device_connected = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 5, i32 2
  br label %if.end16.sink.split

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %device_disconnected = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 5, i32 3
  br label %if.end16.sink.split

sw.bb5:                                           ; preds = %if.then
  %call6 = tail call zeroext i1 @tb_is_xdomain_enabled() #12
  br i1 %call6, label %if.then7, label %sw.bb5.if.end16_crit_edge

sw.bb5.if.end16_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %xdomain_connected = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 5, i32 6
  %9 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pkg, align 4
  br label %if.end16.sink.split

sw.bb9:                                           ; preds = %if.then
  %call10 = tail call zeroext i1 @tb_is_xdomain_enabled() #12
  br i1 %call10, label %if.then11, label %sw.bb9.if.end16_crit_edge

sw.bb9.if.end16_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %xdomain_disconnected = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 5, i32 7
  %11 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkg, align 4
  br label %if.end16.sink.split

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rtd3_veto = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 10
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %sw.bb14, %if.then11, %if.then7, %sw.bb3, %sw.bb
  %.sink39.in = phi ptr [ %device_connected, %sw.bb ], [ %device_disconnected, %sw.bb3 ], [ %rtd3_veto, %sw.bb14 ], [ %xdomain_connected, %if.then7 ], [ %xdomain_disconnected, %if.then11 ]
  %.sink = phi ptr [ %5, %sw.bb ], [ %5, %sw.bb3 ], [ %5, %sw.bb14 ], [ %10, %if.then7 ], [ %12, %if.then11 ]
  %13 = ptrtoint ptr %.sink39.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink39 = load ptr, ptr %.sink39.in, align 4
  tail call void %.sink39(ptr noundef %1, ptr noundef %.sink) #12
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %sw.bb9.if.end16_crit_edge, %sw.bb5.if.end16_crit_edge, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %pkg18 = getelementptr inbounds %struct.icm_notification, ptr %work, i32 0, i32 1
  %14 = ptrtoint ptr %pkg18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pkg18, align 4
  tail call void @kfree(ptr noundef %15) #12
  tail call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_is_xdomain_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nhi_mailbox_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_runtime_suspend(ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %call = tail call i32 @nhi_mailbox_cmd(ptr noundef %1, i32 noundef 7, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_runtime_resume(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @icm_complete(ptr noundef %tb)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icm_runtime_suspend_switch(ptr nocapture noundef %sw) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rpm_complete = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 35
  %4 = ptrtoint ptr %rpm_complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rpm_complete, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_runtime_resume_switch(ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %rpm_complete = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 35
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %rpm_complete, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_runtime_resume_switch.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_runtime_resume_switch, %if.then9)) #12
          to label %if.end11 [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_runtime_resume_switch.__UNIQUE_ID_ddebug242, ptr noundef %sw, ptr noundef nonnull @.str.72) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_get_boot_acl(ptr noundef %tb, ptr nocapture noundef %uuids, i32 noundef %nuuids) #0 align 64 {
entry:
  %reply = alloca %struct.icm_ar_pkg_preboot_acl_response, align 4
  %request = alloca %struct.icm_ar_pkg_preboot_acl, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %request) #12
  %0 = call ptr @memset(ptr %request, i32 0, i32 132)
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 24, ptr %request, align 4
  %2 = call ptr @memset(ptr %reply, i32 0, i32 132)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 132, ptr noundef nonnull %reply, i32 noundef 132, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nuuids)
  %cmp49.not = icmp eq i32 %nuuids, 0
  br i1 %cmp49.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_t, ptr %uuids, i32 %i.050
  %arrayidx5 = getelementptr %struct.icm_ar_pkg_preboot_acl_response, ptr %reply, i32 0, i32 1, i32 %i.050
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %uuid_hi = getelementptr %struct.icm_ar_pkg_preboot_acl_response, ptr %reply, i32 0, i32 1, i32 %i.050, i32 1
  %9 = ptrtoint ptr %uuid_hi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uuid_hi, align 4
  %arrayidx9 = getelementptr i32, ptr %arrayidx, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp11 = icmp eq i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp14 = icmp eq i32 %10, -1
  %or.cond = select i1 %cmp11, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx9, align 4
  br label %if.end29

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23.not = icmp eq i32 %10, 0
  %or.cond48 = select i1 %cmp20.not, i1 %cmp23.not, i1 false
  br i1 %or.cond48, label %if.else.if.end29_crit_edge, label %if.then25

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26 = getelementptr i32, ptr %arrayidx, i32 2
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr i32, ptr %arrayidx, i32 3
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %arrayidx27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.else.if.end29_crit_edge, %if.then16
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %nuuids
  br i1 %exitcond.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_ar_set_boot_acl(ptr noundef %tb, ptr nocapture noundef readonly %uuids, i32 noundef %nuuids) #0 align 64 {
entry:
  %reply = alloca %struct.icm_ar_pkg_preboot_acl_response, align 4
  %request = alloca %struct.icm_ar_pkg_preboot_acl, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %request) #12
  %0 = call ptr @memset(ptr %request, i32 0, i32 132)
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 24, ptr %request, align 4
  %2 = getelementptr inbounds %struct.icm_pkg_header, ptr %request, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nuuids)
  %cmp42.not = icmp eq i32 %nuuids, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_t, ptr %uuids, i32 %i.043
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2 = getelementptr %struct.icm_ar_pkg_preboot_acl, ptr %request, i32 0, i32 1, i32 %i.043
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx2, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx5 = getelementptr i32, ptr %arrayidx, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp6.not = icmp eq i32 %6, -1
  br i1 %cmp6.not, label %lor.lhs.false, label %if.else.cleanup25_crit_edge

if.else.cleanup25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx7 = getelementptr i32, ptr %arrayidx, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp8.not = icmp eq i32 %8, -1
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false.cleanup25_crit_edge

lor.lhs.false.cleanup25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.icm_ar_pkg_preboot_acl, ptr %request, i32 0, i32 1, i32 %i.043
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr i32, ptr %arrayidx, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %.sink = phi i32 [ %13, %if.end ], [ -1, %if.then ]
  %uuid_hi17 = getelementptr %struct.icm_ar_pkg_preboot_acl, ptr %request, i32 0, i32 1, i32 %i.043, i32 1
  %14 = ptrtoint ptr %uuid_hi17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %uuid_hi17, align 4
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %nuuids
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = call ptr @memset(ptr %reply, i32 0, i32 132)
  %call19 = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 132, ptr noundef nonnull %reply, i32 noundef 132, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %for.end.cleanup25_crit_edge

for.end.cleanup25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not = icmp eq i8 %18, 0
  %. = select i1 %tobool22.not, i32 0, i32 -5
  br label %cleanup25

cleanup25:                                        ; preds = %if.end21, %for.end.cleanup25_crit_edge, %lor.lhs.false.cleanup25_crit_edge, %if.else.cleanup25_crit_edge
  %retval.2 = phi i32 [ %call19, %for.end.cleanup25_crit_edge ], [ %., %if.end21 ], [ -22, %lor.lhs.false.cleanup25_crit_edge ], [ -22, %if.else.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %reply) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__icm_tr_device_connected(ptr noundef %tb, ptr noundef %hdr, i1 noundef zeroext %force_rtd3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %force_rtd3 to i8
  %rescan_work.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %0 = ptrtoint ptr %rescan_work.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rescan_work.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.icm_postpone_rescan.exit_crit_edge, label %if.then.i

entry.icm_postpone_rescan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_postpone_rescan.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %2 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %rescan_work.i, i32 noundef 50) #12
  br label %icm_postpone_rescan.exit

icm_postpone_rescan.exit:                         ; preds = %if.then.i, %entry.icm_postpone_rescan.exit_crit_edge
  %packet_id = getelementptr inbounds %struct.icm_pkg_header, ptr %hdr, i32 0, i32 2
  %4 = ptrtoint ptr %packet_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %icm_postpone_rescan.exit.cleanup_crit_edge

icm_postpone_rescan.exit.cleanup_crit_edge:       ; preds = %icm_postpone_rescan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %icm_postpone_rescan.exit
  %route_hi = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 3
  %8 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo, align 4
  %conv.i = zext i32 %7 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %link_info = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 6
  %10 = ptrtoint ptr %link_info to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_info, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 256
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %hdr, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %conv5 = zext i8 %13 to i32
  %and6 = lshr i32 %conv5, 3
  %shr = and i32 %and6, 3
  %and9 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10 = icmp ne i32 %and9, 0
  %and9.lobit = lshr exact i32 %and9, 10
  %14 = trunc i32 %and9.lobit to i8
  %and15 = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and21 = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and26 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %15 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.73, i64 noundef %or.i) #16
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %ep_uuid = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 1
  %call30 = tail call ptr @tb_switch_find_by_uuid(ptr noundef %tb, ptr noundef %ep_uuid) #12
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.if.end47_crit_edge, label %if.then32

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then32:                                        ; preds = %if.end29
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %call30, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %20 = lshr i64 %bf.load.i, 1
  %shl.i173 = and i64 %20, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %call30, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %22 to i64
  %or.i174 = or i64 %shl.i173, %conv2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i174, i64 %or.i)
  %cmp = icmp eq i64 %or.i174, %or.i
  br i1 %cmp, label %land.lhs.true, label %if.then32.if.end46_crit_edge

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.then32
  %authorized35 = getelementptr inbounds %struct.tb_switch, ptr %call30, i32 0, i32 27
  %23 = ptrtoint ptr %authorized35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %authorized35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36 = icmp ne i32 %24, 0
  %lnot.ext = zext i1 %tobool36 to i32
  %and.lobit172 = lshr exact i32 %and, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit172, i32 %lnot.ext)
  %cmp40 = icmp eq i32 %and.lobit172, %lnot.ext
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %parent = getelementptr inbounds %struct.device, ptr %call30, i32 0, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %28, @tb_switch_type
  %dev..i = select i1 %cmp.i.i, ptr %26, ptr null
  %connection_id = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 4
  %29 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %connection_id, align 4
  tail call fastcc void @update_switch(ptr noundef %dev..i, ptr noundef nonnull %call30, i64 noundef %or.i, i8 noundef zeroext %30, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext %tobool10)
  tail call void @put_device(ptr noundef nonnull %call30) #12
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.then32.if.end46_crit_edge
  %parent.i = getelementptr inbounds %struct.device, ptr %call30, i32 0, i32 1
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %34, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %32, ptr null
  %depth.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i5.i = load i32, ptr %depth.i.i, align 4
  %36 = lshr i32 %bf.load.i5.i, 6
  %mul.i.i = and i32 %36, 56
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shr.i.i = lshr i64 %or.i174, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %conv.i.i, 255
  %bf.lshr4.i.i = lshr i32 %bf.load.i5.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %bf.clear5.i.i)
  %cmp.i.i175 = icmp ugt i32 %conv1.i.i, %bf.clear5.i.i
  br i1 %cmp.i.i175, label %do.end.i.i, label %if.end27.i.i, !prof !201

do.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit

if.end27.i.i:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %37 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %38, i32 %conv1.i.i
  br label %remove_switch.exit

remove_switch.exit:                               ; preds = %if.end27.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %if.end27.i.i ]
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %remote.i, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call30) #12
  tail call void @put_device(ptr noundef nonnull %call30) #12
  br label %if.end47

if.end47:                                         ; preds = %remove_switch.exit, %if.end29.if.end47_crit_edge
  %call48 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  %parent.i176 = getelementptr inbounds %struct.device, ptr %call48, i32 0, i32 1
  %40 = ptrtoint ptr %parent.i176 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i176, align 8
  %type.i.i.i177 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %type.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i.i.i177, align 4
  %cmp.i.i.i178 = icmp eq ptr %43, @tb_switch_type
  %dev..i.i179 = select i1 %cmp.i.i.i178, ptr %41, ptr null
  %route_hi.i.i180 = getelementptr inbounds %struct.tb_switch, ptr %call48, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i.i180 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i.i181 = load i64, ptr %route_hi.i.i180, align 4
  %45 = lshr i64 %bf.load.i.i181, 1
  %shl.i.i182 = and i64 %45, 9223372032559808512
  %route_lo.i.i183 = getelementptr inbounds %struct.tb_switch, ptr %call48, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i.i183 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i.i183, align 8
  %conv2.i.i184 = zext i32 %47 to i64
  %or.i.i185 = or i64 %shl.i.i182, %conv2.i.i184
  %depth.i.i186 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i179, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %depth.i.i186 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i5.i187 = load i32, ptr %depth.i.i186, align 4
  %49 = lshr i32 %bf.load.i5.i187, 6
  %mul.i.i188 = and i32 %49, 56
  %sh_prom.i.i189 = zext i32 %mul.i.i188 to i64
  %shr.i.i190 = lshr i64 %or.i.i185, %sh_prom.i.i189
  %conv.i.i191 = trunc i64 %shr.i.i190 to i32
  %conv1.i.i192 = and i32 %conv.i.i191, 255
  %bf.lshr4.i.i193 = lshr i32 %bf.load.i5.i187, 12
  %bf.clear5.i.i194 = and i32 %bf.lshr4.i.i193, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i192, i32 %bf.clear5.i.i194)
  %cmp.i.i195 = icmp ugt i32 %conv1.i.i192, %bf.clear5.i.i194
  br i1 %cmp.i.i195, label %do.end.i.i196, label %if.end27.i.i199, !prof !201

do.end.i.i196:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %remove_switch.exit202

if.end27.i.i199:                                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i197 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i179, i32 0, i32 2
  %50 = ptrtoint ptr %ports.i.i197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ports.i.i197, align 4
  %arrayidx.i.i198 = getelementptr %struct.tb_port, ptr %51, i32 %conv1.i.i192
  br label %remove_switch.exit202

remove_switch.exit202:                            ; preds = %if.end27.i.i199, %do.end.i.i196
  %retval.0.i.i200 = phi ptr [ null, %do.end.i.i196 ], [ %arrayidx.i.i198, %if.end27.i.i199 ]
  %remote.i201 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i200, i32 0, i32 2
  %52 = ptrtoint ptr %remote.i201 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %remote.i201, align 4
  tail call void @tb_switch_remove(ptr noundef nonnull %call48) #12
  tail call void @put_device(ptr noundef nonnull %call48) #12
  br label %if.end51

if.end51:                                         ; preds = %remove_switch.exit202, %if.end47.if.end51_crit_edge
  %call52 = tail call ptr @tb_xdomain_find_by_route(ptr noundef %tb, i64 noundef %or.i) #12
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  %parent.i203 = getelementptr inbounds %struct.device, ptr %call52, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i203 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i203, align 8
  %type.i.i.i204 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %type.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %type.i.i.i204, align 4
  %cmp.i.i.i205 = icmp eq ptr %56, @tb_switch_type
  %dev..i.i206 = select i1 %cmp.i.i.i205, ptr %54, ptr null
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %call52, i32 0, i32 4
  %57 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %route.i, align 8
  %depth.i.i207 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i206, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %depth.i.i207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load.i.i208 = load i32, ptr %depth.i.i207, align 4
  %60 = lshr i32 %bf.load.i.i208, 6
  %mul.i.i209 = and i32 %60, 56
  %sh_prom.i.i210 = zext i32 %mul.i.i209 to i64
  %shr.i.i211 = lshr i64 %58, %sh_prom.i.i210
  %conv.i.i212 = trunc i64 %shr.i.i211 to i32
  %conv1.i.i213 = and i32 %conv.i.i212, 255
  %bf.lshr4.i.i214 = lshr i32 %bf.load.i.i208, 12
  %bf.clear5.i.i215 = and i32 %bf.lshr4.i.i214, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i213, i32 %bf.clear5.i.i215)
  %cmp.i.i216 = icmp ugt i32 %conv1.i.i213, %bf.clear5.i.i215
  br i1 %cmp.i.i216, label %do.end.i.i217, label %if.end27.i.i220, !prof !201

do.end.i.i217:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 538, i32 noundef 9, ptr noundef null) #12
  br label %tb_xdomain_put.exit

if.end27.i.i220:                                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %ports.i.i218 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i206, i32 0, i32 2
  %61 = ptrtoint ptr %ports.i.i218 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ports.i.i218, align 4
  %arrayidx.i.i219 = getelementptr %struct.tb_port, ptr %62, i32 %conv1.i.i213
  br label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.end27.i.i220, %do.end.i.i217
  %retval.0.i.i221 = phi ptr [ null, %do.end.i.i217 ], [ %arrayidx.i.i219, %if.end27.i.i220 ]
  %xdomain.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i.i221, i32 0, i32 3
  %63 = ptrtoint ptr %xdomain.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %xdomain.i, align 4
  tail call void @tb_xdomain_remove(ptr noundef nonnull %call52) #12
  tail call void @put_device(ptr noundef nonnull %call52) #12
  br label %if.end55

if.end55:                                         ; preds = %tb_xdomain_put.exit, %if.end51.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %tb_route_length.exit.thread5.i

tb_route_length.exit.thread5.i:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %64 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #12, !range !205
  %add.i.i.i = sub nuw nsw i32 64, %64
  br label %cond.true.i

if.end.i.i.i:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i5.i.i.i = icmp eq i32 %9, 0
  %65 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #12, !range !205
  %sub.i6.i.i.i = sub nuw nsw i32 32, %65
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i.get_parent_route.exit_crit_edge, label %if.end.i.i.i.cond.true.i_crit_edge

if.end.i.i.i.cond.true.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

if.end.i.i.i.get_parent_route.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_parent_route.exit

cond.true.i:                                      ; preds = %if.end.i.i.i.cond.true.i_crit_edge, %tb_route_length.exit.thread5.i
  %retval.0.i.i8.i = phi i32 [ %add.i.i.i, %tb_route_length.exit.thread5.i ], [ %sub.i6.i.i.i, %if.end.i.i.i.cond.true.i_crit_edge ]
  %66 = add nsw i32 %retval.0.i.i8.i, -1
  %mul.i = and i32 %66, -8
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i224 = shl nuw i64 255, %sh_prom.i
  %neg.i = xor i64 %shl.i224, -1
  %and.i = and i64 %or.i, %neg.i
  br label %get_parent_route.exit

get_parent_route.exit:                            ; preds = %cond.true.i, %if.end.i.i.i.get_parent_route.exit_crit_edge
  %cond.i = phi i64 [ %and.i, %cond.true.i ], [ 0, %if.end.i.i.i.get_parent_route.exit_crit_edge ]
  %call57 = tail call ptr @tb_switch_find_by_route(ptr noundef %tb, i64 noundef %cond.i) #12
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %do.end62, label %if.end66

do.end62:                                         ; preds = %get_parent_route.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhi63 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %67 = ptrtoint ptr %nhi63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nhi63, align 4
  %pdev64 = getelementptr inbounds %struct.tb_nhi, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.76, i64 noundef %or.i) #16
  br label %cleanup

if.end66:                                         ; preds = %get_parent_route.exit
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %call57, i32 noundef 4) #12
  %tb1.i = getelementptr inbounds %struct.tb_switch, ptr %call57, i32 0, i32 5
  %71 = ptrtoint ptr %tb1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tb1.i, align 8
  %call.i225 = tail call ptr @tb_switch_alloc(ptr noundef %72, ptr noundef nonnull %call57, i64 noundef %or.i) #12
  %cmp.i.i226 = icmp ugt ptr %call.i225, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i226, label %alloc_switch.exit.thread239, label %if.end.i

alloc_switch.exit.thread239:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %nhi.i = getelementptr inbounds %struct.tb, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.25, i64 noundef %or.i) #16
  br label %if.end100

if.end.i:                                         ; preds = %if.end66
  %call4.i = tail call ptr @kmemdup(ptr noundef %ep_uuid, i32 noundef 16, i32 noundef 3264) #12
  %uuid5.i = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 7
  %77 = ptrtoint ptr %uuid5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call4.i, ptr %uuid5.i, align 8
  %tobool.not.i227 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i227, label %alloc_switch.exit.thread, label %if.then72

alloc_switch.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %call.i225) #12
  br label %if.end100

if.then72:                                        ; preds = %if.end.i
  %rpm_complete.i = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 35
  %78 = ptrtoint ptr %rpm_complete.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %rpm_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #12
  %connection_id73 = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 4
  %79 = ptrtoint ptr %connection_id73 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %connection_id73, align 4
  %connection_id74 = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 31
  %81 = ptrtoint ptr %connection_id74 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %connection_id74, align 8
  %and.lobit = lshr exact i32 %and, 8
  %authorized77 = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 27
  %82 = ptrtoint ptr %authorized77 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and.lobit, ptr %authorized77, align 8
  %security_level78 = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 28
  %83 = ptrtoint ptr %security_level78 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shr, ptr %security_level78, align 4
  %boot80 = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 25
  %84 = ptrtoint ptr %boot80 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %14, ptr %boot80, align 2
  %cond = select i1 %tobool22.not, i32 10, i32 20
  %link_speed = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 12
  %85 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond, ptr %link_speed, align 8
  %cond86 = select i1 %tobool16.not, i32 1, i32 2
  %link_width = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 13
  %86 = ptrtoint ptr %link_width to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond86, ptr %link_width, align 4
  %rpm = getelementptr inbounds %struct.tb_switch, ptr %call.i225, i32 0, i32 26
  %87 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool, ptr %rpm, align 1
  br i1 %force_rtd3, label %if.then72.if.end95_crit_edge, label %if.then91

if.then72.if.end95_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then91:                                        ; preds = %if.then72
  %ep_name = getelementptr inbounds %struct.icm_tr_event_device_connected, ptr %hdr, i32 0, i32 7
  %add.ptr.i.i = getelementptr %struct.icm_tr_event_device_connected, ptr %hdr, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end6.i.i.while.cond.i.i_crit_edge, %if.then91
  %ep_name.addr.0.i.i = phi ptr [ %ep_name, %if.then91 ], [ %add.ptr2.i.i, %if.end6.i.i.while.cond.i.i_crit_edge ]
  %cmp.i.i228 = icmp ult ptr %ep_name.addr.0.i.i, %add.ptr.i.i
  br i1 %cmp.i.i228, label %while.body.i.i, label %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge

while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge:  ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %88 = ptrtoint ptr %ep_name.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ep_name.addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge, label %if.end.i.i

while.body.i.i.intel_vss_is_rtd3.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  %conv.i.i229 = zext i8 %89 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %ep_name.addr.0.i.i, i32 %conv.i.i229
  %cmp3.i.i = icmp ugt ptr %add.ptr2.i.i, %add.ptr.i.i
  br i1 %cmp3.i.i, label %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge, label %if.end6.i.i

if.end.i.i.intel_vss_is_rtd3.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_vss_is_rtd3.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %type.i.i230 = getelementptr inbounds %struct.ep_name_entry, ptr %ep_name.addr.0.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %type.i.i230 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type.i.i230, align 1
  %cmp8.i.i = icmp eq i8 %91, 16
  br i1 %cmp8.i.i, label %parse_intel_vss.exit.i, label %if.end6.i.i.while.cond.i.i_crit_edge

if.end6.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

parse_intel_vss.exit.i:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.ep_name_entry, ptr %ep_name.addr.0.i.i, i32 3, i32 1
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags.i, align 1
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool1.i = icmp ne i8 %94, 0
  br label %intel_vss_is_rtd3.exit

intel_vss_is_rtd3.exit:                           ; preds = %parse_intel_vss.exit.i, %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge, %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge, %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge
  %retval.0.i232 = phi i1 [ %tobool1.i, %parse_intel_vss.exit.i ], [ false, %if.end.i.i.intel_vss_is_rtd3.exit_crit_edge ], [ false, %while.body.i.i.intel_vss_is_rtd3.exit_crit_edge ], [ false, %while.cond.i.i.intel_vss_is_rtd3.exit_crit_edge ]
  %frombool94 = zext i1 %retval.0.i232 to i8
  %95 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %frombool94, ptr %rpm, align 1
  br label %if.end95

if.end95:                                         ; preds = %intel_vss_is_rtd3.exit, %if.then72.if.end95_crit_edge
  %call96 = tail call fastcc i32 @add_switch(ptr noundef nonnull %call57, ptr noundef %call.i225)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end95.if.end100_crit_edge, label %if.then98

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %call.i225) #12
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95.if.end100_crit_edge, %alloc_switch.exit.thread, %alloc_switch.exit.thread239
  %call.i233 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call57, i32 0, i32 12, i32 22
  %96 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store volatile i64 %call.i233, ptr %last_busy.i, align 8
  %call.i234 = tail call i32 @__pm_runtime_suspend(ptr noundef nonnull %call57, i32 noundef 13) #12
  tail call void @put_device(ptr noundef nonnull %call57) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %do.end62, %if.then42, %do.end, %icm_postpone_rescan.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_find_by_route(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_approve_switch(ptr noundef %tb, ptr nocapture noundef readonly %sw) #0 align 64 {
entry:
  %request = alloca %struct.icm_tr_pkg_approve_device, align 4
  %reply = alloca %struct.icm_tr_pkg_approve_device, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %request) #12
  %0 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, ptr %request, i32 0, i32 3
  %3 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, ptr %request, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reply) #12
  %4 = call ptr @memset(ptr %reply, i32 255, i32 32)
  %5 = call ptr @memset(ptr %request, i32 0, i32 32)
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %6 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uuid, align 8
  %8 = call ptr @memcpy(ptr %0, ptr %7, i32 16)
  %9 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %request, align 4
  %route_lo = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %2, align 4
  %route_hi = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %route_hi to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load = load i64, ptr %route_hi, align 4
  %bf.lshr = lshr i64 %bf.load, 33
  %bf.cast = trunc i64 %bf.lshr to i32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.cast, ptr %1, align 4
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %15 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %connection_id, align 8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %3, align 4
  %18 = call ptr @memset(ptr %reply, i32 0, i32 32)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 32, ptr noundef nonnull %reply, i32 noundef 32, i32 noundef 1, i32 noundef 10000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not = icmp eq i8 %22, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %23 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_add_switch_key(ptr noundef %tb, ptr nocapture noundef readonly %sw) #0 align 64 {
entry:
  %reply = alloca %struct.icm_tr_pkg_add_device_key_response, align 4
  %request = alloca %struct.icm_tr_pkg_add_device_key, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reply) #12
  %0 = call ptr @memset(ptr %reply, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %request) #12
  %1 = call ptr @memset(ptr %request, i32 0, i32 32)
  %ep_uuid = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, ptr %request, i32 0, i32 1
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %2 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuid, align 8
  %4 = call ptr @memcpy(ptr %ep_uuid, ptr %3, i32 16)
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %request, align 4
  %route_lo = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_lo, align 8
  %route_lo1 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, ptr %request, i32 0, i32 3
  %8 = ptrtoint ptr %route_lo1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %route_lo1, align 4
  %route_hi = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load = load i64, ptr %route_hi, align 4
  %bf.lshr = lshr i64 %bf.load, 33
  %bf.cast = trunc i64 %bf.lshr to i32
  %route_hi3 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, ptr %request, i32 0, i32 2
  %10 = ptrtoint ptr %route_hi3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast, ptr %route_hi3, align 4
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %11 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %connection_id, align 8
  %connection_id4 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, ptr %request, i32 0, i32 4
  %13 = ptrtoint ptr %connection_id4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %connection_id4, align 4
  %key = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, ptr %request, i32 0, i32 6
  %key5 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 30
  %14 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key5, align 4
  %16 = call ptr @memcpy(ptr %key, ptr %15, i32 32)
  %17 = call ptr @memset(ptr %reply, i32 0, i32 32)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 64, ptr noundef nonnull %reply, i32 noundef 32, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not = icmp eq i8 %21, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %22 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_challenge_switch_key(ptr noundef %tb, ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %challenge, ptr nocapture noundef writeonly %response) #0 align 64 {
entry:
  %reply = alloca %struct.icm_tr_pkg_challenge_device_response, align 4
  %request = alloca %struct.icm_tr_pkg_challenge_device, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %request) #12
  %0 = call ptr @memset(ptr %request, i32 0, i32 32)
  %ep_uuid = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, ptr %request, i32 0, i32 1
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 7
  %1 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uuid, align 8
  %3 = call ptr @memcpy(ptr %ep_uuid, ptr %2, i32 16)
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %request, align 4
  %route_lo = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %route_lo, align 8
  %route_lo1 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, ptr %request, i32 0, i32 3
  %7 = ptrtoint ptr %route_lo1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %route_lo1, align 4
  %route_hi = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %route_hi, align 4
  %bf.lshr = lshr i64 %bf.load, 33
  %bf.cast = trunc i64 %bf.lshr to i32
  %route_hi3 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, ptr %request, i32 0, i32 2
  %9 = ptrtoint ptr %route_hi3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %route_hi3, align 4
  %connection_id = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 31
  %10 = ptrtoint ptr %connection_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %connection_id, align 8
  %connection_id4 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, ptr %request, i32 0, i32 4
  %12 = ptrtoint ptr %connection_id4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %connection_id4, align 4
  %challenge5 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, ptr %request, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %challenge5, ptr %challenge, i32 32)
  %14 = call ptr @memset(ptr %reply, i32 0, i32 96)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 64, ptr noundef nonnull %reply, i32 noundef 96, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and13 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %response17 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device_response, ptr %reply, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %response, ptr %response17, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -129, %if.end.cleanup_crit_edge ], [ -126, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_approve_xdomain_paths(ptr noundef %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  %reply = alloca %struct.icm_tr_pkg_approve_xdomain_response, align 4
  %request = alloca %struct.icm_tr_pkg_approve_xdomain, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %request) #12
  %0 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %request, align 4
  store i8 16, ptr %request, align 4
  %route = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 4
  %1 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %route, align 8
  %shr = lshr i64 %2, 32
  %conv = trunc i64 %shr to i32
  %route_hi = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 1
  %3 = ptrtoint ptr %route_hi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %route_hi, align 4
  %conv3 = trunc i64 %2 to i32
  %route_lo = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 2
  %4 = ptrtoint ptr %route_lo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %route_lo, align 4
  %conv4 = trunc i32 %transmit_path to i16
  %transmit_path5 = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 4
  %5 = ptrtoint ptr %transmit_path5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %transmit_path5, align 4
  %conv6 = trunc i32 %transmit_ring to i16
  %transmit_ring7 = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 5
  %6 = ptrtoint ptr %transmit_ring7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv6, ptr %transmit_ring7, align 2
  %conv8 = trunc i32 %receive_path to i16
  %receive_path9 = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 6
  %7 = ptrtoint ptr %receive_path9 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv8, ptr %receive_path9, align 4
  %conv10 = trunc i32 %receive_ring to i16
  %receive_ring11 = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 7
  %8 = ptrtoint ptr %receive_ring11 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv10, ptr %receive_ring11, align 2
  %remote_uuid = getelementptr inbounds %struct.icm_tr_pkg_approve_xdomain, ptr %request, i32 0, i32 3
  %remote_uuid12 = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 2
  %9 = ptrtoint ptr %remote_uuid12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remote_uuid12, align 4
  %11 = call ptr @memcpy(ptr %remote_uuid, ptr %10, i32 16)
  %12 = call ptr @memset(ptr %reply, i32 0, i32 36)
  %call = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request, i32 noundef 36, ptr noundef nonnull %reply, i32 noundef 36, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  %. = select i1 %tobool16.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_tr_disconnect_xdomain_paths(ptr noundef %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  %reply.i5 = alloca %struct.icm_tr_pkg_disconnect_xdomain_response, align 4
  %request.i6 = alloca %struct.icm_tr_pkg_disconnect_xdomain, align 8
  %reply.i = alloca %struct.icm_tr_pkg_disconnect_xdomain_response, align 4
  %request.i = alloca %struct.icm_tr_pkg_disconnect_xdomain, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reply.i) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %request.i) #12
  %0 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i, i32 0, i32 3
  %2 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i, i32 0, i32 4
  %3 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i, i32 0, i32 5
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %request.i, align 8
  store i8 17, ptr %request.i, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 4
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 4
  %6 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %route.i, align 8
  %shr.i = lshr i64 %7, 32
  %conv3.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3.i, ptr %1, align 8
  %conv5.i = trunc i64 %7 to i32
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5.i, ptr %2, align 4
  %remote_uuid6.i = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 2
  %10 = ptrtoint ptr %remote_uuid6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remote_uuid6.i, align 4
  %12 = call ptr @memcpy(ptr %3, ptr %11, i32 16)
  %13 = call ptr @memset(ptr %reply.i, i32 0, i32 32)
  %call.i = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request.i, i32 noundef 32, ptr noundef nonnull %reply.i, i32 noundef 32, i32 noundef 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.icm_tr_xdomain_tear_down.exit.thread_crit_edge

entry.icm_tr_xdomain_tear_down.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_tr_xdomain_tear_down.exit.thread

if.end.i:                                         ; preds = %entry
  %14 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not.i = icmp eq i8 %17, 0
  br i1 %tobool10.not.i, label %if.end, label %if.end.i.icm_tr_xdomain_tear_down.exit.thread_crit_edge

if.end.i.icm_tr_xdomain_tear_down.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_tr_xdomain_tear_down.exit.thread

icm_tr_xdomain_tear_down.exit.thread:             ; preds = %if.end.i.icm_tr_xdomain_tear_down.exit.thread_crit_edge, %entry.icm_tr_xdomain_tear_down.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.icm_tr_xdomain_tear_down.exit.thread_crit_edge ], [ %call.i, %entry.icm_tr_xdomain_tear_down.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %request.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %request.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply.i) #12
  call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reply.i5) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %request.i6) #12
  %18 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i6, i32 0, i32 3
  %20 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i6, i32 0, i32 4
  %21 = getelementptr inbounds %struct.icm_tr_pkg_disconnect_xdomain, ptr %request.i6, i32 0, i32 5
  %22 = ptrtoint ptr %request.i6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %request.i6, align 8
  store i8 17, ptr %request.i6, align 8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %18, align 4
  %24 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %route.i, align 8
  %shr.i8 = lshr i64 %25, 32
  %conv3.i9 = trunc i64 %shr.i8 to i32
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv3.i9, ptr %19, align 8
  %conv5.i10 = trunc i64 %25 to i32
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv5.i10, ptr %20, align 4
  %28 = ptrtoint ptr %remote_uuid6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remote_uuid6.i, align 4
  %30 = call ptr @memcpy(ptr %21, ptr %29, i32 16)
  %31 = call ptr @memset(ptr %reply.i5, i32 0, i32 32)
  %call.i12 = call fastcc i32 @icm_request(ptr noundef %tb, ptr noundef nonnull %request.i6, i32 noundef 32, ptr noundef nonnull %reply.i5, i32 noundef 32, i32 noundef 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %if.end.icm_tr_xdomain_tear_down.exit18_crit_edge

if.end.icm_tr_xdomain_tear_down.exit18_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %icm_tr_xdomain_tear_down.exit18

if.end.i16:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %32 = getelementptr inbounds %struct.icm_pkg_header, ptr %reply.i5, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool10.not.i14 = icmp eq i8 %35, 0
  %..i15 = select i1 %tobool10.not.i14, i32 0, i32 -5
  br label %icm_tr_xdomain_tear_down.exit18

icm_tr_xdomain_tear_down.exit18:                  ; preds = %if.end.i16, %if.end.icm_tr_xdomain_tear_down.exit18_crit_edge
  %retval.0.i17 = phi i32 [ %call.i12, %if.end.icm_tr_xdomain_tear_down.exit18_crit_edge ], [ %..i15, %if.end.i16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %request.i6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reply.i5) #12
  br label %cleanup

cleanup:                                          ; preds = %icm_tr_xdomain_tear_down.exit18, %icm_tr_xdomain_tear_down.exit.thread
  %retval.0 = phi i32 [ %retval.0.i17, %icm_tr_xdomain_tear_down.exit18 ], [ %retval.0.i.ph, %icm_tr_xdomain_tear_down.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_usb4_switch_op(ptr nocapture noundef readonly %sw, i16 noundef zeroext %opcode, ptr noundef %metadata, ptr noundef writeonly %status, ptr nocapture noundef readonly %tx_data, i32 noundef %tx_data_len, ptr nocapture noundef writeonly %rx_data, i32 noundef %rx_data_len) #0 align 64 {
entry:
  %reply = alloca %struct.icm_usb4_switch_op_response, align 4
  %request = alloca %struct.icm_usb4_switch_op, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %reply) #12
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %request) #12
  %tb1 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb1, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %3 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %3, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %5 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %proto_version = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4, i32 5
  %6 = ptrtoint ptr %proto_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %opcode)
  %cmp5 = icmp eq i16 %opcode, 33
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc i32 @icm_usb4_switch_nvm_authenticate(ptr noundef %1, i64 noundef %or.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %request, i32 0, i32 84)
  %9 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %request, align 4
  %shr = lshr i64 %bf.load.i, 33
  %conv11 = trunc i64 %shr to i32
  %route_hi = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 1
  %10 = ptrtoint ptr %route_hi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv11, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 2
  %11 = ptrtoint ptr %route_lo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %route_lo, align 4
  %opcode13 = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 4
  %12 = ptrtoint ptr %opcode13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %opcode, ptr %opcode13, align 4
  %tobool.not = icmp eq ptr %metadata, null
  br i1 %tobool.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %metadata, align 4
  %metadata15 = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 3
  %15 = ptrtoint ptr %metadata15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %metadata15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_data_len)
  %tobool17.not = icmp eq i32 %tx_data_len, 0
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %if.then18

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %data_len_valid = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 5
  %16 = ptrtoint ptr %data_len_valid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_len_valid, align 2
  %18 = or i16 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tx_data_len)
  %cmp21 = icmp ult i32 %tx_data_len, 16
  %19 = trunc i32 %tx_data_len to i16
  %conv25 = and i16 %19, 15
  %storemerge = select i1 %cmp21, i16 %conv25, i16 %18
  %20 = ptrtoint ptr %data_len_valid to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %storemerge, ptr %data_len_valid, align 2
  %data = getelementptr inbounds %struct.icm_usb4_switch_op, ptr %request, i32 0, i32 6
  %mul = shl i32 %tx_data_len, 2
  %21 = call ptr @memcpy(ptr %data, ptr %tx_data, i32 %mul)
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %if.end16.if.end28_crit_edge
  %22 = call ptr @memset(ptr %reply, i32 0, i32 84)
  %call29 = call fastcc i32 @icm_request(ptr noundef %1, ptr noundef nonnull %request, i32 noundef 84, ptr noundef nonnull %reply, i32 noundef 84, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %reply, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %tobool39.not = icmp eq ptr %status, null
  br i1 %tobool39.not, label %if.end38.if.end43_crit_edge, label %if.then40

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %status41 = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %reply, i32 0, i32 5
  %26 = ptrtoint ptr %status41 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %status41, align 2
  %conv42 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv42, ptr %status, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  br i1 %tobool.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %metadata46 = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %reply, i32 0, i32 3
  %29 = ptrtoint ptr %metadata46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %metadata46, align 4
  %31 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %metadata, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_data_len)
  %tobool48.not = icmp eq i32 %rx_data_len, 0
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.then49

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %data50 = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %reply, i32 0, i32 6
  %mul52 = shl i32 %rx_data_len, 2
  %32 = call ptr @memcpy(ptr %rx_data, ptr %data50, i32 %mul52)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end47.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ -95, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %request) #12
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %reply) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icm_usb4_switch_nvm_authenticate_status(ptr nocapture noundef readonly %sw, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb1 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb1, align 8
  %proto_version = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4, i32 5
  %2 = ptrtoint ptr %proto_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_nvm_auth = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %4 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_nvm_auth, align 4
  store ptr null, ptr %last_nvm_auth, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end37.sink.split_crit_edge, label %land.lhs.true

if.end.if.end37.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.sink.split

land.lhs.true:                                    ; preds = %if.end
  %route_hi = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_hi, align 4
  %route_hi4 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load = load i64, ptr %route_hi4, align 4
  %bf.lshr = lshr i64 %bf.load, 33
  %bf.cast = trunc i64 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bf.cast)
  %cmp5 = icmp eq i32 %7, %bf.cast
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end37.sink.split_crit_edge

land.lhs.true.if.end37.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.sink.split

land.lhs.true7:                                   ; preds = %land.lhs.true
  %route_lo = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo, align 4
  %route_lo10 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp11 = icmp eq i32 %10, %12
  br i1 %cmp11, label %do.body, label %land.lhs.true7.if.end37.sink.split_crit_edge

land.lhs.true7.if.end37.sink.split_crit_edge:     ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.sink.split

do.body:                                          ; preds = %land.lhs.true7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_usb4_switch_nvm_authenticate_status.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_usb4_switch_nvm_authenticate_status, %if.then18)) #12
          to label %do.end [label %if.then18], !srcloc !199

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %route_hi4 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i = load i64, ptr %route_hi4, align 4
  %18 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %18, 9223372032559808512
  %19 = ptrtoint ptr %route_lo10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_lo10, align 8
  %conv2.i = zext i32 %20 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %conv21 = zext i8 %22 to i32
  %status23 = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %status23 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %status23, align 2
  %conv24 = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_usb4_switch_nvm_authenticate_status.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.88, i64 noundef %or.i, i32 noundef %conv21, i32 noundef %conv24) #12
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %flags28 = getelementptr inbounds %struct.icm_pkg_header, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags28, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not = icmp eq i8 %27, 0
  br i1 %tobool30.not, label %if.else, label %do.end.if.end37_crit_edge

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %status33 = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %status33 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %status33, align 2
  %conv34 = zext i16 %29 to i32
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else, %land.lhs.true7.if.end37.sink.split_crit_edge, %land.lhs.true.if.end37.sink.split_crit_edge, %if.end.if.end37.sink.split_crit_edge
  %conv34.sink = phi i32 [ %conv34, %if.else ], [ 0, %land.lhs.true7.if.end37.sink.split_crit_edge ], [ 0, %land.lhs.true.if.end37.sink.split_crit_edge ], [ 0, %if.end.if.end37.sink.split_crit_edge ]
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv34.sink, ptr %status, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %do.end.if.end37_crit_edge
  %ret.0 = phi i32 [ -5, %do.end.if.end37_crit_edge ], [ 0, %if.end37.sink.split ]
  tail call void @kfree(ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end37 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icm_usb4_switch_nvm_authenticate(ptr noundef %tb, i64 noundef %route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %icm2 = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %icm2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %privdata.i, ptr %icm2, align 8
  %request = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %request, align 4
  %shr = lshr i64 %route, 32
  %conv = trunc i64 %shr to i32
  %route_hi = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %route_hi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %route_hi, align 8
  %conv5 = trunc i64 %route to i32
  %route_lo = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %call7.i.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %route_lo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv5, ptr %route_lo, align 4
  %opcode = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %call7.i.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 33, ptr %opcode, align 4
  %call8 = tail call ptr @tb_cfg_request_alloc() #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.err_free_auth_crit_edge, label %if.end11

if.end.err_free_auth_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_auth

if.end11:                                         ; preds = %if.end
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 9
  %6 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @icm_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 10
  %7 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @icm_copy, ptr %copy, align 8
  %request13 = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 2
  %8 = ptrtoint ptr %request13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request, ptr %request13, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 3
  %9 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 84, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 4
  %10 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 5
  %11 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %response, align 4
  %npackets = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 8
  %12 = ptrtoint ptr %npackets to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %npackets, align 8
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 6
  %13 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 84, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call8, i32 0, i32 7
  %14 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %response_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_usb4_switch_nvm_authenticate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_usb4_switch_nvm_authenticate, %if.then18)) #12
          to label %do.end [label %if.then18], !srcloc !199

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %15 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_usb4_switch_nvm_authenticate.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.84, i64 noundef %route) #12
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end11
  tail call void @mutex_lock_nested(ptr noundef %privdata.i, i32 noundef 0) #12
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl, align 8
  %call20 = tail call i32 @tb_cfg_request(ptr noundef %20, ptr noundef nonnull %call8, ptr noundef nonnull @icm_usb4_switch_nvm_auth_complete, ptr noundef nonnull %call7.i.i) #12
  tail call void @mutex_unlock(ptr noundef %privdata.i) #12
  tail call void @tb_cfg_request_put(ptr noundef nonnull %call8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %do.end.cleanup_crit_edge, label %do.end.err_free_auth_crit_edge

do.end.err_free_auth_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_auth

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_free_auth:                                    ; preds = %do.end.err_free_auth_crit_edge, %if.end.err_free_auth_crit_edge
  %ret.0 = phi i32 [ %call20, %do.end.err_free_auth_crit_edge ], [ -12, %if.end.err_free_auth_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free_auth, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_auth ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icm_usb4_switch_nvm_auth_complete(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icm1 = getelementptr inbounds %struct.usb4_switch_nvm_auth, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %icm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icm1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icm_usb4_switch_nvm_auth_complete.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icm_usb4_switch_nvm_auth_complete, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr i8, ptr %1, i32 -36
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %route_hi = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %route_hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_hi, align 4
  %route_lo = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo, align 4
  %conv.i = zext i32 %7 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %flags = getelementptr inbounds %struct.icm_pkg_header, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %conv = zext i8 %11 to i32
  %status = getelementptr inbounds %struct.icm_usb4_switch_op_response, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %status, align 2
  %conv9 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @icm_usb4_switch_nvm_auth_complete.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.86, i64 noundef %or.i, i32 noundef %conv, i32 noundef %conv9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %1, i32 -128
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %last_nvm_auth = getelementptr inbounds %struct.icm, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last_nvm_auth, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %do.end.if.end43_crit_edge, label %do.end26, !prof !208

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2204, i32 noundef 9, ptr noundef null) #12
  %16 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %last_nvm_auth, align 4
  tail call void @kfree(ptr noundef %17) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end26, %do.end.if.end43_crit_edge
  %18 = ptrtoint ptr %last_nvm_auth to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %last_nvm_auth, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__param_start_icm, !1, !"__param_start_icm", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/icm.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_start_icmtype237, !1, !"__UNIQUE_ID_start_icmtype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_start_icm238, !4, !"__UNIQUE_ID_start_icm238", i1 false, i1 false}
!4 = !{!"../drivers/thunderbolt/icm.c", i32 49, i32 1}
!5 = !{ptr @icm_probe.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/thunderbolt/icm.c", i32 2441, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @icm_probe.__key.1, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @icm_probe.__key.3, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/icm.c", i32 2442, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/icm.c", i32 2543, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @icm_probe.__UNIQUE_ID_ddebug246, !14, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thunderbolt/icm.c", i32 2548, i32 2}
!21 = !{ptr @icm_probe.__UNIQUE_ID_ddebug247, !20, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!22 = !{ptr @start_icm, !23, !"start_icm", i1 false, i1 false}
!23 = !{!"../drivers/thunderbolt/icm.c", i32 47, i32 13}
!24 = !{ptr @__param_str_start_icm, !1, !"__param_str_start_icm", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thunderbolt/icm.c", i32 749, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @icm_fr_device_connected._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @icm_fr_device_connected._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/icm.c", i32 779, i32 6}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @icm_fr_device_connected._entry.14, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @icm_fr_device_connected._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thunderbolt/icm.c", i32 831, i32 3}
!39 = !{ptr @icm_fr_device_connected._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @icm_fr_device_connected._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thunderbolt/icm.c", i32 838, i32 3}
!43 = !{ptr @icm_fr_device_connected._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @icm_fr_device_connected._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/tb.h", i32 538, i32 6}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/icm.c", i32 617, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @alloc_switch._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @alloc_switch._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thunderbolt/icm.c", i32 882, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @icm_fr_device_disconnected._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @icm_fr_device_disconnected._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thunderbolt/icm.c", i32 888, i32 3}
!63 = !{ptr @icm_fr_device_disconnected._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @icm_fr_device_disconnected._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thunderbolt/icm.c", i32 918, i32 3}
!67 = !{ptr @icm_fr_xdomain_connected._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @icm_fr_xdomain_connected._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @icm_fr_xdomain_connected._entry.35, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/thunderbolt/icm.c", i32 979, i32 3}
!71 = !{ptr @icm_fr_xdomain_connected._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @icm_fr_ops, !73, !"icm_fr_ops", i1 false, i1 false}
!73 = !{!"../drivers/thunderbolt/icm.c", i32 2353, i32 31}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thunderbolt/icm.c", i32 1969, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @icm_driver_ready._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @icm_driver_ready._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/thunderbolt/icm.c", i32 1970, i32 3}
!81 = !{ptr @icm_driver_ready._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @icm_driver_ready._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/thunderbolt/icm.c", i32 1971, i32 3}
!85 = !{ptr @icm_driver_ready._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @icm_driver_ready._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thunderbolt/icm.c", i32 1988, i32 3}
!89 = !{ptr @icm_driver_ready.__UNIQUE_ID_ddebug241, !88, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/thunderbolt/icm.c", i32 1919, i32 3}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @icm_firmware_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @icm_firmware_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/thunderbolt/icm.c", i32 1940, i32 4}
!97 = !{ptr @icm_firmware_init._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @icm_firmware_init._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/thunderbolt/icm.c", i32 1951, i32 3}
!101 = !{ptr @icm_firmware_init._entry.51, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @icm_firmware_init._entry_ptr.53, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thunderbolt/icm.c", i32 1954, i32 3}
!105 = !{ptr @icm_firmware_init._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @icm_firmware_init._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/thunderbolt/icm.c", i32 1824, i32 2}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @icm_firmware_start.__UNIQUE_ID_ddebug240, !108, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/thunderbolt/icm.c", i32 1767, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__icm_driver_ready._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @__icm_driver_ready._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/thunderbolt/icm.c", i32 1787, i32 2}
!118 = !{ptr @__icm_driver_ready._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @__icm_driver_ready._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @icm_handle_event.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/thunderbolt/icm.c", i32 1750, i32 2}
!122 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thunderbolt/icm.c", i32 496, i32 3}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @icm_fr_approve_switch._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @icm_fr_approve_switch._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/thunderbolt/icm.c", i32 523, i32 3}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @icm_fr_add_switch_key._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @icm_fr_add_switch_key._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/thunderbolt/icm.c", i32 1482, i32 3}
!135 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @icm_ar_get_mode._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @icm_ar_get_mode._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @icm_ar_ops, !139, !"icm_ar_ops", i1 false, i1 false}
!139 = !{!"../drivers/thunderbolt/icm.c", i32 2369, i32 31}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/thunderbolt/icm.c", i32 2133, i32 4}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @icm_runtime_resume_switch.__UNIQUE_ID_ddebug242, !141, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/thunderbolt/icm.c", i32 1230, i32 3}
!146 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__icm_tr_device_connected._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @__icm_tr_device_connected._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/thunderbolt/icm.c", i32 1266, i32 3}
!151 = !{ptr @__icm_tr_device_connected._entry.75, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @__icm_tr_device_connected._entry_ptr.77, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/thunderbolt/icm.c", i32 1313, i32 3}
!155 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @icm_tr_device_disconnected._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @icm_tr_device_disconnected._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/thunderbolt/icm.c", i32 1372, i32 3}
!160 = !{ptr @icm_tr_xdomain_connected._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @icm_tr_xdomain_connected._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @icm_tr_ops, !163, !"icm_tr_ops", i1 false, i1 false}
!163 = !{!"../drivers/thunderbolt/icm.c", i32 2391, i32 31}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/thunderbolt/icm.c", i32 1063, i32 3}
!166 = !{ptr @icm_tr_approve_switch._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @icm_tr_approve_switch._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/thunderbolt/icm.c", i32 1091, i32 3}
!170 = !{ptr @icm_tr_add_switch_key._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @icm_tr_add_switch_key._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/thunderbolt/icm.c", i32 2243, i32 2}
!174 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @icm_usb4_switch_nvm_authenticate.__UNIQUE_ID_ddebug244, !173, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/thunderbolt/icm.c", i32 2199, i32 2}
!178 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @icm_usb4_switch_nvm_auth_complete.__UNIQUE_ID_ddebug243, !177, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/thunderbolt/icm.c", i32 2338, i32 3}
!182 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @icm_usb4_switch_nvm_authenticate_status.__UNIQUE_ID_ddebug245, !181, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/thunderbolt/icm.c", i32 1670, i32 2}
!186 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @icm_icl_rtd3_veto.__UNIQUE_ID_ddebug239, !185, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!188 = !{ptr @icm_icl_ops, !189, !"icm_icl_ops", i1 false, i1 false}
!189 = !{!"../drivers/thunderbolt/icm.c", i32 2416, i32 31}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148820311, i64 2148820316, i64 2148820329, i64 2148820373, i64 2148820407, i64 2148820428}
!200 = !{!"auto-init"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 5051696}
!203 = !{i64 2152592045}
!204 = !{i8 0, i8 2}
!205 = !{i32 0, i32 33}
!206 = !{i64 2152593400}
!207 = !{i64 5051278}
!208 = !{!"branch_weights", i32 2000, i32 1}
