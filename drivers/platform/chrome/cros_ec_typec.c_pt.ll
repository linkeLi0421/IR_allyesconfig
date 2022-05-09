; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_typec.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_typec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ec_params_get_cmd_versions_v1 = type { i16 }
%struct.ec_response_get_cmd_versions = type { i32 }
%struct.ec_response_usb_pd_ports = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_typec_data = type { ptr, ptr, i32, i32, [8 x ptr], %struct.notifier_block, %struct.work_struct, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.cros_typec_port = type { ptr, %struct.typec_capability, ptr, ptr, ptr, %struct.usb_pd_identity, %struct.usb_pd_identity, ptr, ptr, ptr, %struct.typec_mux_state, i8, i8, [2 x %struct.typec_altmode], i8, i8, ptr, %struct.list_head, %struct.list_head }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.usb_pd_identity = type { i32, i32, i32, [3 x i32] }
%struct.typec_mux_state = type { ptr, i32, ptr }
%struct.typec_altmode = type { %struct.device, i16, i32, i32, i8, ptr, ptr }
%struct.ec_params_usb_pd_mux_info = type { i8 }
%struct.ec_params_typec_control = type { i8, i8, i16, %union.anon.45 }
%union.anon.45 = type { i32, [124 x i8] }
%struct.typec_cable_desc = type { i32, i8, ptr, i16 }
%struct.typec_plug_desc = type { i32 }
%struct.ec_params_typec_discovery = type { i8, i8 }
%struct.ec_response_typec_status = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i32, i16, i16, [7 x i32], [7 x i32] }
%struct.ec_params_typec_status = type { i8 }
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }
%struct.ec_params_usb_pd_control = type { i8, i8, i8, i8 }
%struct.ec_response_usb_pd_control_v2 = type { i8, i8, i8, [32 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ec_response_usb_pd_mux_info = type { i8 }
%struct.ec_response_usb_pd_control_v1 = type { i8, i8, i8, [32 x i8] }
%struct.ec_response_usb_pd_control = type { i8, i8, i8, i8 }
%struct.ec_response_typec_discovery = type { i8, i8, i16, [6 x i32], [0 x %struct.svid_mode_info] }
%struct.svid_mode_info = type { i16, i16, [6 x i32] }
%struct.typec_thunderbolt_data = type { i32, i32, i32 }
%struct.enter_usb_data = type { i32, i8 }
%struct.ec_params_usb_pd_mux_ack = type { i8 }
%struct.typec_altmode_desc = type { i16, i8, i32, i32 }
%struct.cros_typec_altmode_node = type { ptr, %struct.list_head }
%struct.typec_displayport_data = type { i32, i32 }

@__initcall__kmod_cros_ec_typec__194_1165_cros_typec_driver_init6 = internal global ptr @cros_typec_driver_init, section ".initcall6.init", align 4
@cros_typec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_typec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_typec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_typec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_typec_driver_exit = internal global ptr @cros_typec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author195 = internal constant [60 x i8] c"cros_ec_typec.author=Prashant Malani <pmalani@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [54 x i8] c"cros_ec_typec.description=Chrome OS EC Type C control\00", section ".modinfo", align 1
@__UNIQUE_ID_file197 = internal constant [57 x i8] c"cros_ec_typec.file=drivers/platform/chrome/cros_ec_typec\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [26 x i8] c"cros_ec_typec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-typec\00", [18 x i8] zeroinitializer }, align 32
@cros_typec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-typec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_typec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_typec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get PD command version info\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros_typec_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/platform/chrome/cros_ec_typec.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_typec_probe._entry_ptr = internal global ptr @cros_typec_probe._entry, section ".printk_index", align 4
@cros_typec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1100, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Too many ports reported: %d, limiting to max: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_typec_probe._entry_ptr.9 = internal global ptr @cros_typec_probe._entry.6, section ".printk_index", align 4
@cros_typec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&typec->port_work)\00", [59 x i8] zeroinitializer }, align 32
@cros_typec_get_cmd_version.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros_ec_typec\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cros_typec_get_cmd_version\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PD Control has version mask 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No port entries found.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_typec_init_ports\00", [42 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry_ptr = internal global ptr @cros_typec_init_ports._entry, section ".printk_index", align 4
@cros_typec_init_ports._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"More ports listed than can be supported.\0A\00", [54 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry_ptr.18 = internal global ptr @cros_typec_init_ports._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port-number\00", [20 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No port-number for port, aborting.\0A\00", [60 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry_ptr.23 = internal global ptr @cros_typec_init_ports._entry.21, section ".printk_index", align 4
@cros_typec_init_ports._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid port number.\0A\00", [42 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry_ptr.26 = internal global ptr @cros_typec_init_ports._entry.24, section ".printk_index", align 4
@cros_typec_init_ports.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.3, ptr @.str.27, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Registering port %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register port %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cros_typec_init_ports._entry_ptr.30 = internal global ptr @cros_typec_init_ports._entry.28, section ".printk_index", align 4
@cros_typec_init_ports.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.3, ptr @.str.31, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No switch control for port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-role\00", [21 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 98, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"power-role not found: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cros_typec_parse_port_props\00", [36 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry_ptr = internal global ptr @cros_typec_parse_port_props._entry, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data-role\00", [22 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"data-role not found: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry_ptr.38 = internal global ptr @cros_typec_parse_port_props._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"try-power-role\00", [17 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"try-power-role not found: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cros_typec_parse_port_props._entry_ptr.42 = internal global ptr @cros_typec_parse_port_props._entry.40, section ".printk_index", align 4
@cros_typec_get_switch_handles.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cros_typec_get_switch_handles\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mux handle not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@cros_typec_get_switch_handles.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Orientation switch handle not found.\0A\00", [58 x i8] zeroinitializer }, align 32
@cros_typec_get_switch_handles.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.43, ptr @.str.3, ptr @.str.46, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"USB role switch handle not found.\0A\00", [61 x i8] zeroinitializer }, align 32
@cros_typec_port_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1034, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Update failed for port: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_typec_port_work\00", [43 x i8] zeroinitializer }, align 32
@cros_typec_port_work._entry_ptr = internal global ptr @cros_typec_port_work._entry, section ".printk_index", align 4
@cros_typec_port_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 946, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot get status for invalid port %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros_typec_port_update\00", [41 x i8] zeroinitializer }, align 32
@cros_typec_port_update._entry_ptr = internal global ptr @cros_typec_port_update._entry, section ".printk_index", align 4
@cros_typec_port_update.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enabled %d: 0x%hhx\0A\00", [44 x i8] zeroinitializer }, align 32
@cros_typec_port_update.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Role %d: 0x%hhx\0A\00", [47 x i8] zeroinitializer }, align 32
@cros_typec_port_update.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Polarity %d: 0x%hhx\0A\00", [43 x i8] zeroinitializer }, align 32
@cros_typec_port_update.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"State %d: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@cros_typec_port_update._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.3, i32 981, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get mux info for port: %d, err = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cros_typec_port_update._entry_ptr.57 = internal global ptr @cros_typec_port_update._entry.55, section ".printk_index", align 4
@cros_typec_port_update._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.3, i32 994, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Configure muxes failed, err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cros_typec_port_update._entry_ptr.60 = internal global ptr @cros_typec_port_update._entry.58, section ".printk_index", align 4
@cros_typec_set_port_params_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 626, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register partner on port: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cros_typec_set_port_params_v1\00", [34 x i8] zeroinitializer }, align 32
@cros_typec_set_port_params_v1._entry_ptr = internal global ptr @cros_typec_set_port_params_v1._entry, section ".printk_index", align 4
@cros_typec_handle_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 879, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EC_CMD_TYPEC_STATUS failed for port: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cros_typec_handle_status\00", [39 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr = internal global ptr @cros_typec_handle_status._entry, section ".printk_index", align 4
@cros_typec_handle_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 892, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed hard reset event clear, port: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr.67 = internal global ptr @cros_typec_handle_status._entry.65, section ".printk_index", align 4
@cros_typec_handle_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't parse SOP Disc data, port: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr.70 = internal global ptr @cros_typec_handle_status._entry.68, section ".printk_index", align 4
@cros_typec_handle_status._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 911, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed SOP Disc event clear, port: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr.73 = internal global ptr @cros_typec_handle_status._entry.71, section ".printk_index", align 4
@cros_typec_handle_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't parse SOP' Disc data, port: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr.76 = internal global ptr @cros_typec_handle_status._entry.74, section ".printk_index", align 4
@cros_typec_handle_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 932, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cros_typec_handle_status._entry_ptr.78 = internal global ptr @cros_typec_handle_status._entry.77, section ".printk_index", align 4
@cros_typec_handle_sop_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SOP Discovery received without partner registered, port: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cros_typec_handle_sop_disc\00", [37 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_disc._entry_ptr = internal global ptr @cros_typec_handle_sop_disc._entry, section ".printk_index", align 4
@cros_typec_handle_sop_disc._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get SOP discovery data for port: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_disc._entry_ptr.83 = internal global ptr @cros_typec_handle_sop_disc._entry.81, section ".printk_index", align 4
@cros_typec_handle_sop_disc._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to update partner PD identity, port: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_disc._entry_ptr.86 = internal global ptr @cros_typec_handle_sop_disc._entry.84, section ".printk_index", align 4
@cros_typec_handle_sop_disc._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to register partner altmodes, port: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_disc._entry_ptr.89 = internal global ptr @cros_typec_handle_sop_disc._entry.87, section ".printk_index", align 4
@cros_typec_register_altmodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to set %s num_altmodes for port: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_typec_register_altmodes\00", [35 x i8] zeroinitializer }, align 32
@cros_typec_register_altmodes._entry_ptr = internal global ptr @cros_typec_register_altmodes._entry, section ".printk_index", align 4
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"partner\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plug\00", [27 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_prime_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get SOP' discovery data for port: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cros_typec_handle_sop_prime_disc\00", [63 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_prime_disc._entry_ptr = internal global ptr @cros_typec_handle_sop_prime_disc._entry, section ".printk_index", align 4
@cros_typec_handle_sop_prime_disc._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to register plug altmodes, port: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cros_typec_handle_sop_prime_disc._entry_ptr.98 = internal global ptr @cros_typec_handle_sop_prime_disc._entry.96, section ".printk_index", align 4
@cros_typec_configure_mux.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cros_typec_configure_mux\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unrecognized mode requested, mux flags: %x\0A\00", [52 x i8] zeroinitializer }, align 32
@cros_typec_configure_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 572, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to send Mux ACK to EC for port: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cros_typec_configure_mux._entry_ptr = internal global ptr @cros_typec_configure_mux._entry, section ".printk_index", align 4
@cros_typec_enable_tbt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PD_CTRL version too old: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_typec_enable_tbt\00", [42 x i8] zeroinitializer }, align 32
@cros_typec_enable_tbt._entry_ptr = internal global ptr @cros_typec_enable_tbt._entry, section ".printk_index", align 4
@cros_typec_enable_dp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.104, ptr @.str.3, i32 455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_typec_enable_dp\00", [43 x i8] zeroinitializer }, align 32
@cros_typec_enable_dp._entry_ptr = internal global ptr @cros_typec_enable_dp._entry, section ".printk_index", align 4
@cros_typec_enable_dp._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No valid DP mode provided.\0A\00", [36 x i8] zeroinitializer }, align 32
@cros_typec_enable_dp._entry_ptr.107 = internal global ptr @cros_typec_enable_dp._entry.105, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"cros_typec_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1155, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1157, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"cros_typec_of_match\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1058, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"cros_typec_pm_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1151, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1083, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1098, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1108, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1020, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 312, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 317, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 322, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 322, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 326, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 331, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 336, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 353, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 360, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 96, i32 44 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 98, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 107, i32 44 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 109, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 118, i32 44 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 120, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 140, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 146, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 152, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1034, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 945, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 961, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 962, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 963, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 964, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 979, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 994, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 624, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 879, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 891, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 904, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 910, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 925, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 931, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 821, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 834, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 842, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 848, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 700, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 751, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 799, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 556, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 570, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 402, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 454, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [43 x i8] c"../drivers/platform/chrome/cros_ec_typec.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 460, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__exitcall_cros_typec_driver_exit, ptr @__initcall__kmod_cros_ec_typec__194_1165_cros_typec_driver_init6, ptr @cros_typec_configure_mux._entry, ptr @cros_typec_configure_mux._entry_ptr, ptr @cros_typec_driver_exit, ptr @cros_typec_enable_dp._entry, ptr @cros_typec_enable_dp._entry.105, ptr @cros_typec_enable_dp._entry_ptr, ptr @cros_typec_enable_dp._entry_ptr.107, ptr @cros_typec_enable_tbt._entry, ptr @cros_typec_enable_tbt._entry_ptr, ptr @cros_typec_handle_sop_disc._entry, ptr @cros_typec_handle_sop_disc._entry.81, ptr @cros_typec_handle_sop_disc._entry.84, ptr @cros_typec_handle_sop_disc._entry.87, ptr @cros_typec_handle_sop_disc._entry_ptr, ptr @cros_typec_handle_sop_disc._entry_ptr.83, ptr @cros_typec_handle_sop_disc._entry_ptr.86, ptr @cros_typec_handle_sop_disc._entry_ptr.89, ptr @cros_typec_handle_sop_prime_disc._entry, ptr @cros_typec_handle_sop_prime_disc._entry.96, ptr @cros_typec_handle_sop_prime_disc._entry_ptr, ptr @cros_typec_handle_sop_prime_disc._entry_ptr.98, ptr @cros_typec_handle_status._entry, ptr @cros_typec_handle_status._entry.65, ptr @cros_typec_handle_status._entry.68, ptr @cros_typec_handle_status._entry.71, ptr @cros_typec_handle_status._entry.74, ptr @cros_typec_handle_status._entry.77, ptr @cros_typec_handle_status._entry_ptr, ptr @cros_typec_handle_status._entry_ptr.67, ptr @cros_typec_handle_status._entry_ptr.70, ptr @cros_typec_handle_status._entry_ptr.73, ptr @cros_typec_handle_status._entry_ptr.76, ptr @cros_typec_handle_status._entry_ptr.78, ptr @cros_typec_init_ports._entry, ptr @cros_typec_init_ports._entry.16, ptr @cros_typec_init_ports._entry.21, ptr @cros_typec_init_ports._entry.24, ptr @cros_typec_init_ports._entry.28, ptr @cros_typec_init_ports._entry_ptr, ptr @cros_typec_init_ports._entry_ptr.18, ptr @cros_typec_init_ports._entry_ptr.23, ptr @cros_typec_init_ports._entry_ptr.26, ptr @cros_typec_init_ports._entry_ptr.30, ptr @cros_typec_parse_port_props._entry, ptr @cros_typec_parse_port_props._entry.36, ptr @cros_typec_parse_port_props._entry.40, ptr @cros_typec_parse_port_props._entry_ptr, ptr @cros_typec_parse_port_props._entry_ptr.38, ptr @cros_typec_parse_port_props._entry_ptr.42, ptr @cros_typec_port_update._entry, ptr @cros_typec_port_update._entry.55, ptr @cros_typec_port_update._entry.58, ptr @cros_typec_port_update._entry_ptr, ptr @cros_typec_port_update._entry_ptr.57, ptr @cros_typec_port_update._entry_ptr.60, ptr @cros_typec_port_work._entry, ptr @cros_typec_port_work._entry_ptr, ptr @cros_typec_probe._entry, ptr @cros_typec_probe._entry.6, ptr @cros_typec_probe._entry_ptr, ptr @cros_typec_probe._entry_ptr.9, ptr @cros_typec_register_altmodes._entry, ptr @cros_typec_register_altmodes._entry_ptr, ptr @cros_typec_set_port_params_v1._entry, ptr @cros_typec_set_port_params_v1._entry_ptr, ptr @cros_typec_driver, ptr @.str, ptr @cros_typec_of_match, ptr @cros_typec_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @cros_typec_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_init_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_init_ports._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_init_ports._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_init_ports._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_init_ports._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_parse_port_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_parse_port_props._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_parse_port_props._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_port_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_port_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_port_update._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_port_update._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_set_port_params_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_disc._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_disc._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_disc._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_register_altmodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_prime_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_handle_sop_prime_disc._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_configure_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_enable_tbt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_enable_dp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_typec_enable_dp._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_typec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_typec_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_typec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_typec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_typec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %req_v1.i = alloca %struct.ec_params_get_cmd_versions_v1, align 2
  %resp.i = alloca %struct.ec_response_get_cmd_versions, align 4
  %resp = alloca %struct.ec_response_usb_pd_ports, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %resp, align 1, !annotation !221
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %ec = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ec, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req_v1.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #6
  %8 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resp.i, align 4, !annotation !221
  %9 = ptrtoint ptr %req_v1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 257, ptr %req_v1.i, align 2
  %call.i103 = call i32 @cros_ec_command(ptr noundef %5, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %req_v1.i, i32 noundef 2, ptr noundef nonnull %resp.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i = icmp slt i32 %call.i103, 0
  br i1 %cmp.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp.i, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pd_ctrl_ver.i = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %pd_ctrl_ver.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %pd_ctrl_ver.i, align 4
  br label %do.body.i

if.else.i:                                        ; preds = %if.end.i
  %and3.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %pd_ctrl_ver8.i = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 3
  br i1 %tobool4.not.i, label %if.else7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %pd_ctrl_ver8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %pd_ctrl_ver8.i, align 4
  br label %do.body.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pd_ctrl_ver8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pd_ctrl_ver8.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.else7.i, %if.then5.i, %if.then1.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_get_cmd_version.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_probe, %if.then15.i)) #6
          to label %if.end7 [label %if.then15.i], !srcloc !222

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %pd_ctrl_ver16.i = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %pd_ctrl_ver16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pd_ctrl_ver16.i, align 4
  %and17.i = and i32 %18, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_get_cmd_version.__UNIQUE_ID_ddebug193, ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %and17.i) #6
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req_v1.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then15.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req_v1.i) #6
  %19 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec, align 4
  %ec9 = getelementptr inbounds %struct.cros_ec_device, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %ec9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ec9, align 4
  %driver_data.i104 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i104, align 4
  %call12 = call zeroext i1 @cros_ec_check_features(ptr noundef %24, i32 noundef 41) #6
  %typec_cmd_supported = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %call12 to i8
  %25 = ptrtoint ptr %typec_cmd_supported to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %typec_cmd_supported, align 4
  %call13 = call zeroext i1 @cros_ec_check_features(ptr noundef %24, i32 noundef 43) #6
  %needs_mux_ack = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 8
  %frombool14 = zext i1 %call13 to i8
  %26 = ptrtoint ptr %needs_mux_ack to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool14, ptr %needs_mux_ack, align 1
  %27 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ec, align 4
  %call16 = call i32 @cros_ec_command(ptr noundef %28, i32 noundef 0, i32 noundef 258, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end7.cleanup_crit_edge, label %if.end19

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %resp, align 1
  %conv = zext i8 %30 to i32
  %num_ports20 = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %num_ports20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %num_ports20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp22 = icmp ugt i8 %30, 8
  br i1 %cmp22, label %do.end27, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef 8) #9
  %34 = ptrtoint ptr %num_ports20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %num_ports20, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end19.if.end31_crit_edge
  %call32 = call fastcc i32 @cros_typec_init_ports(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %do.body37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body37:                                        ; preds = %if.end31
  %port_work = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %port_work, i32 noundef 0) #6
  %35 = ptrtoint ptr %port_work to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %port_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @cros_typec_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry41 = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @cros_typec_port_work, ptr %func, align 4
  %39 = ptrtoint ptr %num_ports20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ports20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp46108 = icmp sgt i32 %40, 0
  br i1 %cmp46108, label %do.body37.for.body_crit_edge, label %do.body37.for.end_crit_edge

do.body37.for.end_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body37.for.body_crit_edge:                     ; preds = %do.body37
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0109, 1
  %41 = ptrtoint ptr %num_ports20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ports20, align 4
  %cmp46 = icmp slt i32 %inc, %42
  br i1 %cmp46, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.body37.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.body37.for.body_crit_edge ]
  %call48 = call fastcc i32 @cros_typec_port_update(ptr noundef nonnull %call.i, i32 noundef %i.0109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %for.body.unregister_ports_crit_edge, label %for.cond

for.body.unregister_ports_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_ports

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.body37.for.end_crit_edge
  %nb = getelementptr inbounds %struct.cros_typec_data, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cros_ec_typec_event, ptr %nb, align 4
  %call54 = call i32 @cros_usbpd_register_notify(ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %for.end.unregister_ports_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.unregister_ports_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_ports

unregister_ports:                                 ; preds = %for.end.unregister_ports_crit_edge, %for.body.unregister_ports_crit_edge
  %ret.0 = phi i32 [ %call54, %for.end.unregister_ports_crit_edge ], [ %call48, %for.body.unregister_ports_crit_edge ]
  call fastcc void @cros_unregister_ports(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %unregister_ports, %for.end.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i103, %do.end ], [ %ret.0, %unregister_ports ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end7.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_command(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_init_ports(ptr nocapture noundef %typec) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca ptr, align 4
  %port_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %typec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_num) #6
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %port_num, align 4
  %call = tail call i32 @device_get_child_node_count(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ports = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 2
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %4)
  %cmp2 = icmp sgt i32 %call, %4
  br i1 %cmp2, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  %call8 = tail call ptr @device_get_next_child_node(ptr noundef %1, ptr noundef null) #6
  %tobool9.not141 = icmp eq ptr %call8, null
  br i1 %tobool9.not141, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end75.for.body_crit_edge, %if.end7.for.body_crit_edge
  %fwnode.0142 = phi ptr [ %call76, %if.end75.for.body_crit_edge ], [ %call8, %if.end7.for.body_crit_edge ]
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.0142, ptr noundef nonnull %cond, ptr noundef nonnull %port_num, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #9
  br label %unregister_ports

if.end16:                                         ; preds = %for.body
  %7 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_num, align 4
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp18.not = icmp ult i32 %8, %10
  br i1 %cmp18.not, label %do.body24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #9
  br label %unregister_ports

do.body24:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_init_ports.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_init_ports, %if.then29)) #6
          to label %do.end32 [label %if.then29], !srcloc !222

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_init_ports.__UNIQUE_ID_ddebug186, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %12) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body24
  %call.i125 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2072, i32 noundef 3520) #6
  %tobool34.not = icmp eq ptr %call.i125, null
  br i1 %tobool34.not, label %do.end32.unregister_ports_crit_edge, label %if.end36

do.end32.unregister_ports_crit_edge:              ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_ports

if.end36:                                         ; preds = %do.end32
  %13 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_num, align 4
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i125, ptr %arrayidx, align 4
  %caps = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !221
  %17 = call ptr @memset(ptr %caps, i32 0, i32 48)
  %call.i126 = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode.0142, ptr noundef nonnull @.str.32, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call.i126) #9
  br label %cros_typec_parse_port_props.exit

if.end.i:                                         ; preds = %if.end36
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  %call1.i = call i32 @typec_find_port_power_role(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cros_typec_parse_port_props.exit.thread_crit_edge, label %if.end3.i

if.end.i.cros_typec_parse_port_props.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_port_props.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call1.i, ptr %caps, align 4
  %call4.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode.0142, ptr noundef nonnull @.str.35, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %call4.i) #9
  br label %cros_typec_parse_port_props.exit

if.end10.i:                                       ; preds = %if.end3.i
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf.i, align 4
  %call11.i = call i32 @typec_find_port_data_role(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cros_typec_parse_port_props.exit.thread_crit_edge, label %if.end14.i

if.end10.i.cros_typec_parse_port_props.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_port_props.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %data.i = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call11.i, ptr %data.i, align 4
  %call15.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode.0142, ptr noundef nonnull @.str.39, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end21.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call15.i) #9
  br label %cros_typec_parse_port_props.exit

if.end21.i:                                       ; preds = %if.end14.i
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf.i, align 4
  %call22.i = call i32 @typec_find_power_role(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end21.i.cros_typec_parse_port_props.exit.thread_crit_edge, label %cros_typec_parse_port_props.exit.thread135

if.end21.i.cros_typec_parse_port_props.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_port_props.exit.thread

cros_typec_parse_port_props.exit.thread135:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %prefer_role.i = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %prefer_role.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call22.i, ptr %prefer_role.i, align 4
  %fwnode26.i = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %fwnode26.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fwnode.0142, ptr %fwnode26.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  br label %if.end40

cros_typec_parse_port_props.exit.thread:          ; preds = %if.end21.i.cros_typec_parse_port_props.exit.thread_crit_edge, %if.end10.i.cros_typec_parse_port_props.exit.thread_crit_edge, %if.end.i.cros_typec_parse_port_props.exit.thread_crit_edge
  %retval.0.i127.ph = phi i32 [ %call22.i, %if.end21.i.cros_typec_parse_port_props.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.cros_typec_parse_port_props.exit.thread_crit_edge ], [ %call1.i, %if.end.i.cros_typec_parse_port_props.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  br label %unregister_ports

cros_typec_parse_port_props.exit:                 ; preds = %do.end20.i, %do.end9.i, %do.end.i
  %retval.0.i127 = phi i32 [ %call.i126, %do.end.i ], [ %call4.i, %do.end9.i ], [ %call15.i, %do.end20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i127)
  %cmp38 = icmp slt i32 %retval.0.i127, 0
  br i1 %cmp38, label %cros_typec_parse_port_props.exit.unregister_ports_crit_edge, label %cros_typec_parse_port_props.exit.if.end40_crit_edge

cros_typec_parse_port_props.exit.if.end40_crit_edge: ; preds = %cros_typec_parse_port_props.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

cros_typec_parse_port_props.exit.unregister_ports_crit_edge: ; preds = %cros_typec_parse_port_props.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_ports

if.end40:                                         ; preds = %cros_typec_parse_port_props.exit.if.end40_crit_edge, %cros_typec_parse_port_props.exit.thread135
  %call41 = call ptr @typec_register_port(ptr noundef %1, ptr noundef %caps) #6
  %28 = ptrtoint ptr %call.i125 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call41, ptr %call.i125, align 8
  %cmp.i128 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %30) #9
  %31 = ptrtoint ptr %call.i125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i125, align 8
  %33 = ptrtoint ptr %32 to i32
  br label %unregister_ports

if.end50:                                         ; preds = %if.end40
  %call51 = call fastcc i32 @cros_typec_get_switch_handles(ptr noundef nonnull %call.i125, ptr noundef nonnull %fwnode.0142, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end70_crit_edge, label %do.body54

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_init_ports.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_init_ports, %if.then66)) #6
          to label %if.end70 [label %if.then66], !srcloc !222

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_init_ports.__UNIQUE_ID_ddebug187, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %35) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %do.body54, %if.end50.if.end70_crit_edge
  %36 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num, align 4
  %arrayidx.i = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %svid.i = getelementptr inbounds %struct.cros_typec_port, ptr %39, i32 0, i32 13, i32 0, i32 1
  %40 = ptrtoint ptr %svid.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -255, ptr %svid.i, align 8
  %mode.i = getelementptr inbounds %struct.cros_typec_port, ptr %39, i32 0, i32 13, i32 0, i32 2
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %mode.i, align 4
  %svid6.i = getelementptr %struct.cros_typec_port, ptr %39, i32 0, i32 13, i32 1, i32 1
  %42 = ptrtoint ptr %svid6.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -32633, ptr %svid6.i, align 8
  %mode9.i = getelementptr %struct.cros_typec_port, ptr %39, i32 0, i32 13, i32 1, i32 2
  %43 = ptrtoint ptr %mode9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %mode9.i, align 4
  %state.i = getelementptr inbounds %struct.cros_typec_port, ptr %39, i32 0, i32 10
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %state.i, align 4
  %mode11.i = getelementptr inbounds %struct.cros_typec_port, ptr %39, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %mode11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %mode11.i, align 4
  %data.i129 = getelementptr inbounds %struct.cros_typec_port, ptr %39, i32 0, i32 10, i32 2
  %46 = ptrtoint ptr %data.i129 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %data.i129, align 4
  %call.i130 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 255, i32 noundef 3520) #6
  %disc_data = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 16
  %47 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i130, ptr %disc_data, align 4
  %tobool73.not = icmp eq ptr %call.i130, null
  br i1 %tobool73.not, label %if.end70.unregister_ports_crit_edge, label %if.end75

if.end70.unregister_ports_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_ports

if.end75:                                         ; preds = %if.end70
  %partner_mode_list = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 17
  %48 = ptrtoint ptr %partner_mode_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %partner_mode_list, ptr %partner_mode_list, align 4
  %prev.i = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 17, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %partner_mode_list, ptr %prev.i, align 4
  %plug_mode_list = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 18
  %50 = ptrtoint ptr %plug_mode_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %plug_mode_list, ptr %plug_mode_list, align 4
  %prev.i131 = getelementptr inbounds %struct.cros_typec_port, ptr %call.i125, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %plug_mode_list, ptr %prev.i131, align 4
  %call76 = call ptr @device_get_next_child_node(ptr noundef %1, ptr noundef nonnull %fwnode.0142) #6
  %tobool9.not = icmp eq ptr %call76, null
  br i1 %tobool9.not, label %if.end75.cleanup_crit_edge, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unregister_ports:                                 ; preds = %if.end70.unregister_ports_crit_edge, %do.end47, %cros_typec_parse_port_props.exit.unregister_ports_crit_edge, %cros_typec_parse_port_props.exit.thread, %do.end32.unregister_ports_crit_edge, %do.end22, %if.then12
  %ret.0 = phi i32 [ -22, %if.then12 ], [ -22, %do.end22 ], [ %33, %do.end47 ], [ %retval.0.i127.ph, %cros_typec_parse_port_props.exit.thread ], [ -12, %if.end70.unregister_ports_crit_edge ], [ -12, %do.end32.unregister_ports_crit_edge ], [ %retval.0.i127, %cros_typec_parse_port_props.exit.unregister_ports_crit_edge ]
  call fastcc void @cros_unregister_ports(ptr noundef %typec)
  br label %cleanup

cleanup:                                          ; preds = %unregister_ports, %if.end75.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end6 ], [ %ret.0, %unregister_ports ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_num) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_typec_port_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %num_ports = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @cros_typec_port_update(ptr noundef %add.ptr, i32 noundef %i.08)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %i.08) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_port_update(ptr noundef readonly %typec, i32 noundef %port_num) unnamed_addr #2 align 64 {
entry:
  %req.i194 = alloca %struct.ec_params_usb_pd_mux_info, align 1
  %req.i174.i = alloca %struct.ec_params_typec_control, align 1
  %c_desc.i.i = alloca %struct.typec_cable_desc, align 4
  %p_desc.i.i183 = alloca %struct.typec_plug_desc, align 4
  %req.i138.i = alloca %struct.ec_params_typec_discovery, align 1
  %req.i133.i = alloca %struct.ec_params_typec_control, align 1
  %req.i129.i = alloca %struct.ec_params_typec_discovery, align 1
  %req.i.i = alloca %struct.ec_params_typec_control, align 1
  %resp.i = alloca %struct.ec_response_typec_status, align 1
  %req.i = alloca %struct.ec_params_typec_status, align 1
  %p_desc.i.i = alloca %struct.typec_partner_desc, align 4
  %req = alloca %struct.ec_params_usb_pd_control, align 1
  %resp = alloca %struct.ec_response_usb_pd_control_v2, align 1
  %mux_resp = alloca %struct.ec_response_usb_pd_mux_info, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #6
  %0 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %req, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %req, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %req, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %resp) #6
  %3 = call ptr @memset(ptr %resp, i32 255, i32 41)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_resp) #6
  %4 = ptrtoint ptr %mux_resp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mux_resp, align 1, !annotation !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_num)
  %cmp = icmp slt i32 %port_num, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %num_ports = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 2
  %5 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port_num)
  %cmp1.not = icmp sgt i32 %6, %port_num
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %7 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %typec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef %port_num) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i32 %port_num to i8
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %req, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %2, align 1
  %ec = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 1
  %13 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec, align 4
  %pd_ctrl_ver = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 3
  %15 = ptrtoint ptr %pd_ctrl_ver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pd_ctrl_ver, align 4
  %call = call i32 @cros_ec_command(ptr noundef %14, i32 noundef %16, i32 noundef 257, ptr noundef nonnull %req, i32 noundef 4, ptr noundef nonnull %resp, i32 noundef 41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_port_update.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_port_update, %if.then10)) #6
          to label %do.body16 [label %if.then10], !srcloc !222

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %typec, align 4
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %resp, align 1
  %conv12 = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_port_update.__UNIQUE_ID_ddebug189, ptr noundef %18, ptr noundef nonnull @.str.51, i32 noundef %port_num, i32 noundef %conv12) #6
  br label %do.body16

do.body16:                                        ; preds = %if.then10, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_port_update.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_port_update, %if.then28)) #6
          to label %do.body35 [label %if.then28], !srcloc !222

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %typec, align 4
  %role30 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %role30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %role30, align 1
  %conv31 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_port_update.__UNIQUE_ID_ddebug190, ptr noundef %22, ptr noundef nonnull @.str.52, i32 noundef %port_num, i32 noundef %conv31) #6
  br label %do.body35

do.body35:                                        ; preds = %if.then28, %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_port_update.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_port_update, %if.then47)) #6
          to label %do.body53 [label %if.then47], !srcloc !222

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %typec, align 4
  %polarity = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %resp, i32 0, i32 2
  %27 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %polarity, align 1
  %conv49 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_port_update.__UNIQUE_ID_ddebug191, ptr noundef %26, ptr noundef nonnull @.str.53, i32 noundef %port_num, i32 noundef %conv49) #6
  br label %do.body53

do.body53:                                        ; preds = %if.then47, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_port_update.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_port_update, %if.then65)) #6
          to label %do.end69 [label %if.then65], !srcloc !222

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %typec, align 4
  %state = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %resp, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_port_update.__UNIQUE_ID_ddebug192, ptr noundef %30, ptr noundef nonnull @.str.54, i32 noundef %port_num, ptr noundef %state) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body53
  %31 = ptrtoint ptr %pd_ctrl_ver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pd_ctrl_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp71.not = icmp eq i32 %32, 0
  %arrayidx.i173 = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %33 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i173, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %resp, align 1
  br i1 %cmp71.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %do.end69
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then73.if.end6.i_crit_edge, label %if.else.i

if.then73.if.end6.i_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %polarity2.i = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, ptr %resp, i32 0, i32 2
  %40 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %polarity2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool3.not.i = icmp eq i8 %41, 0
  %..i = select i1 %tobool3.not.i, i32 1, i32 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then73.if.end6.i_crit_edge
  %polarity.0.i = phi i32 [ 0, %if.then73.if.end6.i_crit_edge ], [ %..i, %if.else.i ]
  %call.i = call i32 @typec_set_orientation(ptr noundef %36, i32 noundef %polarity.0.i) #6
  %role.i = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, ptr %resp, i32 0, i32 1
  %42 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %role.i, align 1
  %44 = lshr i8 %43, 1
  %.lobit.i = and i8 %44, 1
  %45 = zext i8 %.lobit.i to i32
  call void @typec_set_data_role(ptr noundef %36, i32 noundef %45) #6
  %46 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %role.i, align 1
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  call void @typec_set_pwr_role(ptr noundef %36, i32 noundef %49) #6
  %50 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %role.i, align 1
  %52 = lshr i8 %51, 2
  %.lobit63.i = and i8 %52, 1
  %53 = zext i8 %.lobit63.i to i32
  call void @typec_set_vconn_role(ptr noundef %36, i32 noundef %53) #6
  %54 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %resp, align 1
  %conv21.i = zext i8 %55 to i32
  %and22.i = and i32 %conv21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else39.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end6.i
  %56 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i173, align 4
  %partner.i = getelementptr inbounds %struct.cros_typec_port, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %partner.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %partner.i, align 4
  %tobool27.not.i = icmp eq ptr %59, null
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then24.i.if.end74_crit_edge

if.then24.i.if.end74_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end29.i:                                       ; preds = %if.then24.i
  %and32.i = and i32 %conv21.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p_desc.i.i) #6
  %60 = call ptr @memset(ptr %p_desc.i.i, i32 255, i32 16)
  %bf.set.i.i = select i1 %tobool33.not.i, i8 127, i8 -1
  %61 = ptrtoint ptr %p_desc.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %bf.set.i.i, ptr %p_desc.i.i, align 4
  %accessory.i.i = getelementptr inbounds %struct.typec_partner_desc, ptr %p_desc.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %accessory.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %accessory.i.i, align 4
  %identity.i.i = getelementptr inbounds %struct.typec_partner_desc, ptr %p_desc.i.i, i32 0, i32 2
  %pd_revision.i.i = getelementptr inbounds %struct.typec_partner_desc, ptr %p_desc.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %pd_revision.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %pd_revision.i.i, align 4
  %p_identity.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %57, i32 0, i32 5
  %64 = ptrtoint ptr %identity.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %p_identity.i.i, ptr %identity.i.i, align 4
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %57, align 8
  %call.i.i = call ptr @typec_register_partner(ptr noundef %66, ptr noundef nonnull %p_desc.i.i) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr null, ptr %call.i.i
  %67 = ptrtoint ptr %partner.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %spec.select.i.i, ptr %partner.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p_desc.i.i) #6
  br i1 %cmp.i.i.i, label %do.end.i, label %if.end29.i.if.end74_crit_edge

if.end29.i.if.end74_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.end.i:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.61, i32 noundef %port_num) #9
  br label %if.end74

if.else39.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cros_typec_remove_partner(ptr noundef %typec, i32 noundef %port_num) #6
  call fastcc void @cros_typec_remove_cable(ptr noundef %typec, i32 noundef %port_num) #6
  br label %if.end74

if.else:                                          ; preds = %do.end69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i174 = icmp eq i8 %38, 0
  br i1 %tobool.not.i174, label %if.else.cros_typec_set_port_params_v0.exit_crit_edge, label %if.else.i178

if.else.cros_typec_set_port_params_v0.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_set_port_params_v0.exit

if.else.i178:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %polarity2.i175 = getelementptr inbounds %struct.ec_response_usb_pd_control, ptr %resp, i32 0, i32 2
  %70 = ptrtoint ptr %polarity2.i175 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %polarity2.i175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool3.not.i176 = icmp eq i8 %71, 0
  %..i177 = select i1 %tobool3.not.i176, i32 1, i32 2
  br label %cros_typec_set_port_params_v0.exit

cros_typec_set_port_params_v0.exit:               ; preds = %if.else.i178, %if.else.cros_typec_set_port_params_v0.exit_crit_edge
  %polarity.0.i179 = phi i32 [ 0, %if.else.cros_typec_set_port_params_v0.exit_crit_edge ], [ %..i177, %if.else.i178 ]
  %role.i180 = getelementptr inbounds %struct.ec_response_usb_pd_control, ptr %resp, i32 0, i32 1
  %72 = ptrtoint ptr %role.i180 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %role.i180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool7.not.i = icmp ne i8 %73, 0
  %cond.i = zext i1 %tobool7.not.i to i32
  call void @typec_set_pwr_role(ptr noundef %36, i32 noundef %cond.i) #6
  %call.i181 = call i32 @typec_set_orientation(ptr noundef %36, i32 noundef %polarity.0.i179) #6
  br label %if.end74

if.end74:                                         ; preds = %cros_typec_set_port_params_v0.exit, %if.else39.i, %do.end.i, %if.end29.i.if.end74_crit_edge, %if.then24.i.if.end74_crit_edge
  %typec_cmd_supported = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 7
  %74 = ptrtoint ptr %typec_cmd_supported to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %typec_cmd_supported, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool75.not = icmp eq i8 %75, 0
  br i1 %tobool75.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %resp.i) #6
  %76 = call ptr @memset(ptr %resp.i, i32 255, i32 108)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req.i) #6
  %77 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv, ptr %req.i, align 1
  %78 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ec, align 4
  %call.i184 = call i32 @cros_ec_command(ptr noundef %79, i32 noundef 0, i32 noundef 307, ptr noundef nonnull %req.i, i32 noundef 1, ptr noundef nonnull %resp.i, i32 noundef 108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp.i = icmp slt i32 %call.i184, 0
  br i1 %cmp.i, label %do.end.i185, label %if.end.i

do.end.i185:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.63, i32 noundef %port_num) #9
  br label %cros_typec_handle_status.exit

if.end.i:                                         ; preds = %if.then76
  %events.i = getelementptr inbounds %struct.ec_response_typec_status, ptr %resp.i, i32 0, i32 13
  %82 = ptrtoint ptr %events.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %events.i, align 1
  %and.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i186 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i186, label %if.end12.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call fastcc void @cros_typec_remove_partner(ptr noundef %typec, i32 noundef %port_num) #6
  call fastcc void @cros_typec_remove_cable(ptr noundef %typec, i32 noundef %port_num) #6
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %req.i.i) #6
  %84 = getelementptr inbounds i8, ptr %req.i.i, i32 2
  %85 = call ptr @memset(ptr %84, i32 0, i32 130)
  %86 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv, ptr %req.i.i, align 1
  %command.i.i = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %command.i.i, align 1
  %88 = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 4, ptr %88, align 1
  %90 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ec, align 4
  %call.i.i187 = call i32 @cros_ec_command(ptr noundef %91, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %req.i.i, i32 noundef 132, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %cmp4.i = icmp slt i32 %call.i.i187, 0
  br i1 %cmp4.i, label %do.end9.i, label %if.then2.i.cros_typec_handle_status.exit_crit_edge

if.then2.i.cros_typec_handle_status.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_status.exit

do.end9.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.66, i32 noundef %port_num) #9
  br label %cros_typec_handle_status.exit

if.end12.i:                                       ; preds = %if.end.i
  %and14.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end49.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.end49.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %arrayidx.i188 = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %94 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i188, align 4
  %sop_disc_done.i = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %sop_disc_done.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %sop_disc_done.i, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool16.not.i = icmp eq i8 %97, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.if.end49.i_crit_edge

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  %sop_revision18.i = getelementptr inbounds %struct.ec_response_typec_status, ptr %resp.i, i32 0, i32 14
  %98 = ptrtoint ptr %sop_revision18.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %sop_revision18.i, align 1
  %disc_data.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 16
  %100 = ptrtoint ptr %disc_data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %disc_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i129.i) #6
  %102 = getelementptr inbounds %struct.ec_params_typec_discovery, ptr %req.i129.i, i32 0, i32 1
  %103 = ptrtoint ptr %req.i129.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv, ptr %req.i129.i, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %102, align 1
  %partner.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 2
  %105 = ptrtoint ptr %partner.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %partner.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i, label %if.then17.i.do.end28.i_crit_edge, label %if.end.i.i

if.then17.i.do.end28.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.end.i.i:                                       ; preds = %if.then17.i
  %107 = shl i16 %99, 4
  %108 = and i16 %107, 4080
  call void @typec_partner_set_pd_revision(ptr noundef nonnull %106, i16 noundef zeroext %108) #6
  %109 = call ptr @memset(ptr %101, i32 0, i32 255)
  %110 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ec, align 4
  %call.i132.i = call i32 @cros_ec_command(ptr noundef %111, i32 noundef 0, i32 noundef 305, ptr noundef nonnull %req.i129.i, i32 noundef 2, ptr noundef %101, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %cmp.i.i = icmp slt i32 %call.i132.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.do.end28.i_crit_edge, label %if.end9.i.i

if.end.i.i.do.end28.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %112 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp.not.i.i.i = icmp eq i8 %113, 0
  br i1 %cmp.not.i.i.i, label %if.end9.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge, label %if.end.i.i.i

if.end9.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end9.i.i
  %p_identity.i.i189 = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 5
  %discovery_vdo.i.i.i = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3
  %114 = ptrtoint ptr %discovery_vdo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %discovery_vdo.i.i.i, align 1
  %116 = ptrtoint ptr %p_identity.i.i189 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %p_identity.i.i189, align 4
  %117 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %117)
  %.pr.i.i.i = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i.i.i)
  %cmp4.i.i.i = icmp ugt i8 %.pr.i.i.i, 1
  br i1 %cmp4.i.i.i, label %if.end9.i.i.i, label %if.end.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge

if.end.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx8.i.i.i = getelementptr %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx8.i.i.i, align 1
  %cert_stat.i.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %cert_stat.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %cert_stat.i.i.i, align 4
  %121 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %121)
  %.pr42.i.i.i = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr42.i.i.i)
  %cmp12.i.i.i = icmp ugt i8 %.pr42.i.i.i, 2
  br i1 %cmp12.i.i.i, label %if.end17.i.i.i, label %if.end9.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge

if.end9.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

if.end17.i.i.i:                                   ; preds = %if.end9.i.i.i
  %arrayidx16.i.i.i = getelementptr %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3, i32 2
  %122 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %arrayidx16.i.i.i, align 1
  %product.i.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %95, i32 0, i32 5, i32 2
  %124 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %product.i.i.i, align 4
  %125 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %125)
  %.pr47.i.i.i = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr47.i.i.i)
  %cmp2045.i.i.i = icmp ugt i8 %.pr47.i.i.i, 3
  br i1 %cmp2045.i.i.i, label %for.body.i.i.i, label %if.end17.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge

if.end17.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

for.body.i.i.i:                                   ; preds = %if.end17.i.i.i
  %arrayidx25.i.i.i = getelementptr %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3, i32 3
  %126 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx25.i.i.i, align 1
  %arrayidx26.i.i.i = getelementptr %struct.cros_typec_port, ptr %95, i32 0, i32 5, i32 3, i32 0
  %128 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx26.i.i.i, align 4
  %129 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %130)
  %cmp20.i.i.i = icmp ugt i8 %130, 4
  br i1 %cmp20.i.i.i, label %for.body.i.i.i.1, label %for.body.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge

for.body.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

for.body.i.i.i.1:                                 ; preds = %for.body.i.i.i
  %arrayidx25.i.i.i.1 = getelementptr %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3, i32 4
  %131 = ptrtoint ptr %arrayidx25.i.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %arrayidx25.i.i.i.1, align 1
  %arrayidx26.i.i.i.1 = getelementptr %struct.cros_typec_port, ptr %95, i32 0, i32 5, i32 3, i32 1
  %133 = ptrtoint ptr %arrayidx26.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx26.i.i.i.1, align 4
  %134 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %135)
  %cmp20.i.i.i.1 = icmp ugt i8 %135, 5
  br i1 %cmp20.i.i.i.1, label %for.body.i.i.i.2, label %for.body.i.i.i.1.cros_typec_parse_pd_identity.exit.i.i_crit_edge

for.body.i.i.i.1.cros_typec_parse_pd_identity.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i.i

for.body.i.i.i.2:                                 ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx25.i.i.i.2 = getelementptr %struct.ec_response_typec_discovery, ptr %101, i32 0, i32 3, i32 5
  %136 = ptrtoint ptr %arrayidx25.i.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %arrayidx25.i.i.i.2, align 1
  %arrayidx26.i.i.i.2 = getelementptr %struct.cros_typec_port, ptr %95, i32 0, i32 5, i32 3, i32 2
  %138 = ptrtoint ptr %arrayidx26.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx26.i.i.i.2, align 4
  br label %cros_typec_parse_pd_identity.exit.i.i

cros_typec_parse_pd_identity.exit.i.i:            ; preds = %for.body.i.i.i.2, %for.body.i.i.i.1.cros_typec_parse_pd_identity.exit.i.i_crit_edge, %for.body.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge, %if.end17.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge, %if.end9.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge, %if.end.i.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge, %if.end9.i.i.cros_typec_parse_pd_identity.exit.i.i_crit_edge
  %139 = ptrtoint ptr %partner.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %partner.i.i, align 4
  %call11.i.i = call i32 @typec_partner_set_identity(ptr noundef %140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %cros_typec_parse_pd_identity.exit.i.i.do.end28.i_crit_edge, label %if.end19.i.i

cros_typec_parse_pd_identity.exit.i.i.do.end28.i_crit_edge: ; preds = %cros_typec_parse_pd_identity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.end19.i.i:                                     ; preds = %cros_typec_parse_pd_identity.exit.i.i
  %call20.i.i = call fastcc i32 @cros_typec_register_altmodes(ptr noundef %typec, i32 noundef %port_num, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %if.end19.i.i.do.end28.i_crit_edge, label %if.else.i190

if.end19.i.i.do.end28.i_crit_edge:                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.end19.i.i.do.end28.i_crit_edge, %cros_typec_parse_pd_identity.exit.i.i.do.end28.i_crit_edge, %if.end.i.i.do.end28.i_crit_edge, %if.then17.i.do.end28.i_crit_edge
  %.str.82.sink.i = phi ptr [ @.str.79, %if.then17.i.do.end28.i_crit_edge ], [ @.str.82, %if.end.i.i.do.end28.i_crit_edge ], [ @.str.85, %cros_typec_parse_pd_identity.exit.i.i.do.end28.i_crit_edge ], [ @.str.88, %if.end19.i.i.do.end28.i_crit_edge ]
  %141 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull %.str.82.sink.i, i32 noundef %port_num) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i129.i) #6
  %143 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.69, i32 noundef %port_num) #9
  br label %if.end42.i

if.else.i190:                                     ; preds = %if.end19.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i129.i) #6
  %145 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i188, align 4
  %sop_disc_done32.i = getelementptr inbounds %struct.cros_typec_port, ptr %146, i32 0, i32 14
  %147 = ptrtoint ptr %sop_disc_done32.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %sop_disc_done32.i, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %req.i133.i) #6
  %148 = getelementptr inbounds i8, ptr %req.i133.i, i32 2
  %149 = call ptr @memset(ptr %148, i32 0, i32 130)
  %150 = ptrtoint ptr %req.i133.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv, ptr %req.i133.i, align 1
  %command.i135.i = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i133.i, i32 0, i32 1
  %151 = ptrtoint ptr %command.i135.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %command.i135.i, align 1
  %152 = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i133.i, i32 0, i32 3
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 1, ptr %152, align 1
  %154 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ec, align 4
  %call.i137.i = call i32 @cros_ec_command(ptr noundef %155, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %req.i133.i, i32 noundef 132, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %req.i133.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i)
  %cmp34.i = icmp slt i32 %call.i137.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.else.i190.if.end42.i_crit_edge

if.else.i190.if.end42.i_crit_edge:                ; preds = %if.else.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

do.end39.i:                                       ; preds = %if.else.i190
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.72, i32 noundef %port_num) #9
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end39.i, %if.else.i190.if.end42.i_crit_edge, %do.end28.i
  %sop_connected.i = getelementptr inbounds %struct.ec_response_typec_status, ptr %resp.i, i32 0, i32 2
  %158 = ptrtoint ptr %sop_connected.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %sop_connected.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool43.not.i = icmp eq i8 %159, 0
  br i1 %tobool43.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then44.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i188, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 8
  call void @typec_set_pwr_opmode(ptr noundef %163, i32 noundef 3) #6
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.end42.i.if.end49.i_crit_edge, %land.lhs.true.i.if.end49.i_crit_edge, %if.end12.i.if.end49.i_crit_edge
  %164 = ptrtoint ptr %events.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %events.i, align 1
  %and51.i = and i32 %165, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end49.i.cros_typec_handle_status.exit_crit_edge, label %land.lhs.true53.i

if.end49.i.cros_typec_handle_status.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_status.exit

land.lhs.true53.i:                                ; preds = %if.end49.i
  %arrayidx55.i = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %166 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx55.i, align 4
  %sop_prime_disc_done.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 15
  %168 = ptrtoint ptr %sop_prime_disc_done.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %sop_prime_disc_done.i, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool56.not.i = icmp eq i8 %169, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %land.lhs.true53.i.cros_typec_handle_status.exit_crit_edge

land.lhs.true53.i.cros_typec_handle_status.exit_crit_edge: ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_status.exit

if.then57.i:                                      ; preds = %land.lhs.true53.i
  %sop_prime_revision58.i = getelementptr inbounds %struct.ec_response_typec_status, ptr %resp.i, i32 0, i32 15
  %170 = ptrtoint ptr %sop_prime_revision58.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %sop_prime_revision58.i, align 1
  %172 = shl i16 %171, 4
  %173 = and i16 %172, 4080
  %disc_data.i140.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 16
  %174 = ptrtoint ptr %disc_data.i140.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %disc_data.i140.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %c_desc.i.i) #6
  %176 = call ptr @memset(ptr %c_desc.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_desc.i.i183) #6
  %177 = ptrtoint ptr %p_desc.i.i183 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %p_desc.i.i183, align 4, !annotation !221
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i138.i) #6
  %178 = getelementptr inbounds %struct.ec_params_typec_discovery, ptr %req.i138.i, i32 0, i32 1
  %179 = ptrtoint ptr %req.i138.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv, ptr %req.i138.i, align 1
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %178, align 1
  %181 = call ptr @memset(ptr %175, i32 0, i32 255)
  %182 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ec, align 4
  %call.i143.i = call i32 @cros_ec_command(ptr noundef %183, i32 noundef 0, i32 noundef 305, ptr noundef nonnull %req.i138.i, i32 noundef 2, ptr noundef %175, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %cmp.i144.i = icmp slt i32 %call.i143.i, 0
  br i1 %cmp.i144.i, label %if.then57.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge, label %if.end.i147.i

if.then57.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge: ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_sop_prime_disc.exit.thread183.i

if.end.i147.i:                                    ; preds = %if.then57.i
  %c_identity.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 6
  %184 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %cmp.not.i.i146.i = icmp eq i8 %185, 0
  br i1 %cmp.not.i.i146.i, label %if.end.i147.i.if.end21.i.i_crit_edge, label %if.end.i.i151.i

if.end.i147.i.if.end21.i.i_crit_edge:             ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i

if.end.i.i151.i:                                  ; preds = %if.end.i147.i
  %discovery_vdo.i.i148.i = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3
  %186 = ptrtoint ptr %discovery_vdo.i.i148.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %discovery_vdo.i.i148.i, align 1
  %188 = ptrtoint ptr %c_identity.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %c_identity.i.i, align 4
  %189 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %189)
  %.pr.i.i149.i = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i.i149.i)
  %cmp4.i.i150.i = icmp ugt i8 %.pr.i.i149.i, 1
  br i1 %cmp4.i.i150.i, label %if.end9.i.i156.i, label %if.end.i.i151.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge

if.end.i.i151.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge: ; preds = %if.end.i.i151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i172.i

if.end9.i.i156.i:                                 ; preds = %if.end.i.i151.i
  %arrayidx8.i.i152.i = getelementptr %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %arrayidx8.i.i152.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %arrayidx8.i.i152.i, align 1
  %cert_stat.i.i153.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 1
  %192 = ptrtoint ptr %cert_stat.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %cert_stat.i.i153.i, align 4
  %193 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %193)
  %.pr42.i.i154.i = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr42.i.i154.i)
  %cmp12.i.i155.i = icmp ugt i8 %.pr42.i.i154.i, 2
  br i1 %cmp12.i.i155.i, label %if.end17.i.i161.i, label %if.end9.i.i156.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge

if.end9.i.i156.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge: ; preds = %if.end9.i.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i172.i

if.end17.i.i161.i:                                ; preds = %if.end9.i.i156.i
  %arrayidx16.i.i157.i = getelementptr %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3, i32 2
  %194 = ptrtoint ptr %arrayidx16.i.i157.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %arrayidx16.i.i157.i, align 1
  %product.i.i158.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 2
  %196 = ptrtoint ptr %product.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %product.i.i158.i, align 4
  %197 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %197)
  %.pr47.i.i159.i = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr47.i.i159.i)
  %cmp2045.i.i160.i = icmp ugt i8 %.pr47.i.i159.i, 3
  br i1 %cmp2045.i.i160.i, label %for.body.i.i171.i, label %if.end17.i.i161.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge

if.end17.i.i161.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge: ; preds = %if.end17.i.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i172.i

for.body.i.i171.i:                                ; preds = %if.end17.i.i161.i
  %arrayidx25.i.i163.i = getelementptr %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3, i32 3
  %198 = ptrtoint ptr %arrayidx25.i.i163.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %arrayidx25.i.i163.i, align 1
  %arrayidx26.i.i165.i = getelementptr %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 3, i32 0
  %200 = ptrtoint ptr %arrayidx26.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx26.i.i165.i, align 4
  %201 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %202)
  %cmp20.i.i168.i = icmp ugt i8 %202, 4
  br i1 %cmp20.i.i168.i, label %for.body.i.i171.i.1, label %for.body.i.i171.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge

for.body.i.i171.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge: ; preds = %for.body.i.i171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i172.i

for.body.i.i171.i.1:                              ; preds = %for.body.i.i171.i
  %arrayidx25.i.i163.i.1 = getelementptr %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3, i32 4
  %203 = ptrtoint ptr %arrayidx25.i.i163.i.1 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %arrayidx25.i.i163.i.1, align 1
  %arrayidx26.i.i165.i.1 = getelementptr %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 3, i32 1
  %205 = ptrtoint ptr %arrayidx26.i.i165.i.1 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %arrayidx26.i.i165.i.1, align 4
  %206 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %207)
  %cmp20.i.i168.i.1 = icmp ugt i8 %207, 5
  br i1 %cmp20.i.i168.i.1, label %for.body.i.i171.i.2, label %for.body.i.i171.i.1.cros_typec_parse_pd_identity.exit.i172.i_crit_edge

for.body.i.i171.i.1.cros_typec_parse_pd_identity.exit.i172.i_crit_edge: ; preds = %for.body.i.i171.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_parse_pd_identity.exit.i172.i

for.body.i.i171.i.2:                              ; preds = %for.body.i.i171.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx25.i.i163.i.2 = getelementptr %struct.ec_response_typec_discovery, ptr %175, i32 0, i32 3, i32 5
  %208 = ptrtoint ptr %arrayidx25.i.i163.i.2 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %arrayidx25.i.i163.i.2, align 1
  %arrayidx26.i.i165.i.2 = getelementptr %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 3, i32 2
  %210 = ptrtoint ptr %arrayidx26.i.i165.i.2 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %arrayidx26.i.i165.i.2, align 4
  %211 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %175, align 1
  br label %cros_typec_parse_pd_identity.exit.i172.i

cros_typec_parse_pd_identity.exit.i172.i:         ; preds = %for.body.i.i171.i.2, %for.body.i.i171.i.1.cros_typec_parse_pd_identity.exit.i172.i_crit_edge, %for.body.i.i171.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge, %if.end17.i.i161.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge, %if.end9.i.i156.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge, %if.end.i.i151.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge
  %213 = phi i8 [ %.pr.i.i149.i, %if.end.i.i151.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge ], [ %.pr42.i.i154.i, %if.end9.i.i156.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge ], [ %.pr47.i.i159.i, %if.end17.i.i161.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge ], [ %202, %for.body.i.i171.i.cros_typec_parse_pd_identity.exit.i172.i_crit_edge ], [ %207, %for.body.i.i171.i.1.cros_typec_parse_pd_identity.exit.i172.i_crit_edge ], [ %212, %for.body.i.i171.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp4.not.i.i = icmp eq i8 %213, 0
  br i1 %cmp4.not.i.i, label %cros_typec_parse_pd_identity.exit.i172.i.if.end21.i.i_crit_edge, label %if.then6.i.i

cros_typec_parse_pd_identity.exit.i172.i.if.end21.i.i_crit_edge: ; preds = %cros_typec_parse_pd_identity.exit.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i

if.then6.i.i:                                     ; preds = %cros_typec_parse_pd_identity.exit.i172.i
  %vdo.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 6, i32 3
  %214 = ptrtoint ptr %vdo.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %vdo.i.i, align 4
  %shr.i.i = lshr i32 %215, 18
  %and.i.i = and i32 %shr.i.i, 3
  %216 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.then6.unreachabledefault.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb9.i.i
    i32 2, label %sw.bb11.i.i
    i32 3, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %c_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %c_desc.i.i, align 4
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %c_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2, ptr %c_desc.i.i, align 4
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %219 = ptrtoint ptr %c_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 3, ptr %c_desc.i.i, align 4
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %220 = ptrtoint ptr %c_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 4, ptr %c_desc.i.i, align 4
  br label %sw.epilog.i.i

if.then6.unreachabledefault.i.i:                  ; preds = %if.then6.i.i
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb13.i.i, %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb.i.i
  %221 = ptrtoint ptr %c_identity.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %c_identity.i.i, align 8
  %223 = and i32 %222, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %223)
  %cmp19.i.i = icmp eq i32 %223, 536870912
  %active.i.i = getelementptr inbounds %struct.typec_cable_desc, ptr %c_desc.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %bf.load.i.i = load i8, ptr %active.i.i, align 4
  %bf.shl.i.i = select i1 %cmp19.i.i, i8 -128, i8 0
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i191 = or i8 %bf.shl.i.i, %bf.clear.i.i
  store i8 %bf.set.i.i191, ptr %active.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %sw.epilog.i.i, %cros_typec_parse_pd_identity.exit.i172.i.if.end21.i.i_crit_edge, %if.end.i147.i.if.end21.i.i_crit_edge
  %identity.i.i192 = getelementptr inbounds %struct.typec_cable_desc, ptr %c_desc.i.i, i32 0, i32 2
  %225 = ptrtoint ptr %identity.i.i192 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %c_identity.i.i, ptr %identity.i.i192, align 4
  %pd_revision23.i.i = getelementptr inbounds %struct.typec_cable_desc, ptr %c_desc.i.i, i32 0, i32 3
  %226 = ptrtoint ptr %pd_revision23.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %173, ptr %pd_revision23.i.i, align 4
  %227 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %167, align 8
  %call25.i.i = call ptr @typec_register_cable(ptr noundef %228, ptr noundef nonnull %c_desc.i.i) #6
  %cable.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 3
  %229 = ptrtoint ptr %cable.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call25.i.i, ptr %cable.i.i, align 8
  %cmp.i.i.i193 = icmp ugt ptr %call25.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i193, label %if.then28.i.i, label %if.end32.i.i

if.then28.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %230 = ptrtoint ptr %cable.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %cable.i.i, align 8
  br label %cros_typec_handle_sop_prime_disc.exit.i

if.end32.i.i:                                     ; preds = %if.end21.i.i
  %231 = ptrtoint ptr %p_desc.i.i183 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %p_desc.i.i183, align 4
  %call34.i.i = call ptr @typec_register_plug(ptr noundef %call25.i.i, ptr noundef nonnull %p_desc.i.i183) #6
  %plug.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %167, i32 0, i32 4
  %232 = ptrtoint ptr %plug.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call34.i.i, ptr %plug.i.i, align 4
  %cmp.i86.i.i = icmp ugt ptr %call34.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i.i, label %if.then37.i.i, label %if.end41.i.i

if.then37.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %233 = ptrtoint ptr %plug.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %plug.i.i, align 4
  br label %cros_typec_handle_sop_prime_disc.exit.i

if.end41.i.i:                                     ; preds = %if.end32.i.i
  %call42.i.i = call fastcc i32 @cros_typec_register_altmodes(ptr noundef %typec, i32 noundef %port_num, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %cmp43.i.i = icmp slt i32 %call42.i.i, 0
  br i1 %cmp43.i.i, label %if.end41.i.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge, label %cros_typec_handle_sop_prime_disc.exit.thread.i

if.end41.i.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_sop_prime_disc.exit.thread183.i

cros_typec_handle_sop_prime_disc.exit.thread.i:   ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i138.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_desc.i.i183) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %c_desc.i.i) #6
  br label %if.else71.i

cros_typec_handle_sop_prime_disc.exit.thread183.i: ; preds = %if.end41.i.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge, %if.then57.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge
  %.str.94.sink.i = phi ptr [ @.str.94, %if.then57.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge ], [ @.str.97, %if.end41.i.i.cros_typec_handle_sop_prime_disc.exit.thread183.i_crit_edge ]
  %234 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %235, ptr noundef nonnull %.str.94.sink.i, i32 noundef %port_num) #9
  call fastcc void @cros_typec_remove_cable(ptr noundef %typec, i32 noundef %port_num) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i138.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_desc.i.i183) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %c_desc.i.i) #6
  br label %do.end69.i

cros_typec_handle_sop_prime_disc.exit.i:          ; preds = %if.then37.i.i, %if.then28.i.i
  %ret.0.i173.in.i = phi ptr [ %call25.i.i, %if.then28.i.i ], [ %call34.i.i, %if.then37.i.i ]
  call fastcc void @cros_typec_remove_cable(ptr noundef %typec, i32 noundef %port_num) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i138.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_desc.i.i183) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %c_desc.i.i) #6
  %cmp64.i = icmp slt ptr %ret.0.i173.in.i, null
  br i1 %cmp64.i, label %cros_typec_handle_sop_prime_disc.exit.i.do.end69.i_crit_edge, label %cros_typec_handle_sop_prime_disc.exit.i.if.else71.i_crit_edge

cros_typec_handle_sop_prime_disc.exit.i.if.else71.i_crit_edge: ; preds = %cros_typec_handle_sop_prime_disc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else71.i

cros_typec_handle_sop_prime_disc.exit.i.do.end69.i_crit_edge: ; preds = %cros_typec_handle_sop_prime_disc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

do.end69.i:                                       ; preds = %cros_typec_handle_sop_prime_disc.exit.i.do.end69.i_crit_edge, %cros_typec_handle_sop_prime_disc.exit.thread183.i
  %236 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.75, i32 noundef %port_num) #9
  br label %cros_typec_handle_status.exit

if.else71.i:                                      ; preds = %cros_typec_handle_sop_prime_disc.exit.i.if.else71.i_crit_edge, %cros_typec_handle_sop_prime_disc.exit.thread.i
  %238 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx55.i, align 4
  %sop_prime_disc_done74.i = getelementptr inbounds %struct.cros_typec_port, ptr %239, i32 0, i32 15
  %240 = ptrtoint ptr %sop_prime_disc_done74.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %sop_prime_disc_done74.i, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %req.i174.i) #6
  %241 = getelementptr inbounds i8, ptr %req.i174.i, i32 2
  %242 = call ptr @memset(ptr %241, i32 0, i32 130)
  %243 = ptrtoint ptr %req.i174.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv, ptr %req.i174.i, align 1
  %command.i176.i = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i174.i, i32 0, i32 1
  %244 = ptrtoint ptr %command.i176.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %command.i176.i, align 1
  %245 = getelementptr inbounds %struct.ec_params_typec_control, ptr %req.i174.i, i32 0, i32 3
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 4)
  store i32 2, ptr %245, align 1
  %247 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ec, align 4
  %call.i178.i = call i32 @cros_ec_command(ptr noundef %248, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %req.i174.i, i32 noundef 132, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %req.i174.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178.i)
  %cmp76.i = icmp slt i32 %call.i178.i, 0
  br i1 %cmp76.i, label %do.end81.i, label %if.else71.i.cros_typec_handle_status.exit_crit_edge

if.else71.i.cros_typec_handle_status.exit_crit_edge: ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_handle_status.exit

do.end81.i:                                       ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %250, ptr noundef nonnull @.str.72, i32 noundef %port_num) #9
  br label %cros_typec_handle_status.exit

cros_typec_handle_status.exit:                    ; preds = %do.end81.i, %if.else71.i.cros_typec_handle_status.exit_crit_edge, %do.end69.i, %land.lhs.true53.i.cros_typec_handle_status.exit_crit_edge, %if.end49.i.cros_typec_handle_status.exit_crit_edge, %do.end9.i, %if.then2.i.cros_typec_handle_status.exit_crit_edge, %do.end.i185
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i) #6
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %resp.i) #6
  br label %if.end77

if.end77:                                         ; preds = %cros_typec_handle_status.exit, %if.end74.if.end77_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req.i194) #6
  %251 = ptrtoint ptr %req.i194 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv, ptr %req.i194, align 1
  %252 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ec, align 4
  %call.i197 = call i32 @cros_ec_command(ptr noundef %253, i32 noundef 0, i32 noundef 282, ptr noundef nonnull %req.i194, i32 noundef 1, ptr noundef nonnull %mux_resp, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i194) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp79 = icmp slt i32 %call.i197, 0
  br i1 %cmp79, label %do.end84, label %if.end86

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %254 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %255, ptr noundef nonnull @.str.56, i32 noundef %port_num, i32 noundef %call.i197) #9
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %256 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx, align 4
  %mux_flags = getelementptr inbounds %struct.cros_typec_port, ptr %257, i32 0, i32 11
  %258 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %mux_flags, align 8
  %260 = ptrtoint ptr %mux_resp to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %mux_resp, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %259, i8 %261)
  %cmp89 = icmp eq i8 %259, %261
  br i1 %cmp89, label %land.lhs.true, label %if.end86.if.end100_crit_edge

if.end86.if.end100_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end86
  %role93 = getelementptr inbounds %struct.cros_typec_port, ptr %257, i32 0, i32 12
  %262 = ptrtoint ptr %role93 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %role93, align 1
  %role95 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %resp, i32 0, i32 1
  %264 = ptrtoint ptr %role95 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %role95, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %263, i8 %265)
  %cmp97 = icmp eq i8 %263, %265
  br i1 %cmp97, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %land.lhs.true.if.end100_crit_edge, %if.end86.if.end100_crit_edge
  %266 = ptrtoint ptr %mux_flags to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %261, ptr %mux_flags, align 8
  %role105 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %resp, i32 0, i32 1
  %267 = ptrtoint ptr %role105 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %role105, align 1
  %269 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx, align 4
  %role108 = getelementptr inbounds %struct.cros_typec_port, ptr %270, i32 0, i32 12
  %271 = ptrtoint ptr %role108 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %268, ptr %role108, align 1
  %call110 = call fastcc i32 @cros_typec_configure_mux(ptr noundef %typec, i32 noundef %port_num, i8 noundef zeroext %261, ptr noundef nonnull %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end100.cleanup_crit_edge, label %do.end115

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end115:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %272 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %273, ptr noundef nonnull @.str.59, i32 noundef %call110) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %if.end100.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end84, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end84 ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call110, %do.end115 ], [ 0, %if.end100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_resp) #6
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %resp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_typec_event(ptr noundef %nb, i32 noundef %host_event, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_work = getelementptr i8, ptr %nb, i32 12
  %call = tail call zeroext i1 @flush_work(ptr noundef %port_work) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %port_work) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_usbpd_register_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_unregister_ports(ptr nocapture noundef readonly %typec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %i.025
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cros_typec_remove_partner(ptr noundef %typec, i32 noundef %i.025)
  tail call fastcc void @cros_typec_remove_cable(ptr noundef %typec, i32 noundef %i.025)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %role_sw = getelementptr inbounds %struct.cros_typec_port, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_sw, align 8
  tail call void @usb_role_switch_put(ptr noundef %7) #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %ori_sw = getelementptr inbounds %struct.cros_typec_port, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ori_sw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ori_sw, align 8
  tail call void @typec_switch_put(ptr noundef %11) #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %mux = getelementptr inbounds %struct.cros_typec_port, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux, align 4
  tail call void @typec_mux_put(ptr noundef %15) #6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @typec_unregister_port(ptr noundef %19) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %20 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_get_switch_handles(ptr nocapture noundef %port, ptr noundef %fwnode, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fwnode_typec_mux_get(ptr noundef %fwnode, ptr noundef null) #6
  %mux = getelementptr inbounds %struct.cros_typec_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mux, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_get_switch_handles, %if.then6)) #6
          to label %mux_err [label %if.then6], !srcloc !222

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.44) #6
  br label %mux_err

if.end7:                                          ; preds = %entry
  %call8 = tail call ptr @fwnode_typec_switch_get(ptr noundef %fwnode) #6
  %ori_sw = getelementptr inbounds %struct.cros_typec_port, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %ori_sw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %ori_sw, align 8
  %cmp.i69 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %do.body12, label %if.end27

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_get_switch_handles, %if.then24)) #6
          to label %ori_sw_err [label %if.then24], !srcloc !222

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.45) #6
  br label %ori_sw_err

if.end27:                                         ; preds = %if.end7
  %call28 = tail call ptr @fwnode_usb_role_switch_get(ptr noundef %fwnode) #6
  %role_sw = getelementptr inbounds %struct.cros_typec_port, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call28, ptr %role_sw, align 8
  %cmp.i70 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.body32, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body32:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_get_switch_handles, %if.then44)) #6
          to label %role_sw_err [label %if.then44], !srcloc !222

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.46) #6
  br label %role_sw_err

role_sw_err:                                      ; preds = %if.then44, %do.body32
  %3 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %role_sw, align 8
  tail call void @usb_role_switch_put(ptr noundef %4) #6
  br label %ori_sw_err

ori_sw_err:                                       ; preds = %role_sw_err, %if.then24, %do.body12
  %5 = ptrtoint ptr %ori_sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ori_sw, align 8
  tail call void @typec_switch_put(ptr noundef %6) #6
  br label %mux_err

mux_err:                                          ; preds = %ori_sw_err, %if.then6, %do.body
  %7 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mux, align 4
  tail call void @typec_mux_put(ptr noundef %8) #6
  br label %return

return:                                           ; preds = %mux_err, %if.end27.return_crit_edge
  %retval.0 = phi i32 [ -19, %mux_err ], [ 0, %if.end27.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_data_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_mux_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_mux_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_configure_mux(ptr nocapture noundef readonly %typec, i32 noundef %port_num, i8 noundef zeroext %mux_flags, ptr nocapture noundef readonly %pd_ctrl) unnamed_addr #2 align 64 {
entry:
  %data.i120 = alloca %struct.typec_thunderbolt_data, align 4
  %data.i115 = alloca %struct.enter_usb_data, align 8
  %mux_ack = alloca %struct.ec_params_usb_pd_mux_ack, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_ack) #6
  %conv = zext i8 %mux_flags to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mux_flags)
  %cmp = icmp eq i8 %mux_flags, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state.i, align 4
  %mode.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mode.i, align 4
  %data.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data.i, align 4
  %role_sw.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %role_sw.i, align 8
  %call.i = tail call i32 @usb_role_switch_set_role(ptr noundef %6, i32 noundef 0) #6
  %ori_sw.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %ori_sw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ori_sw.i, align 8
  %call3.i = tail call i32 @typec_switch_set(ptr noundef %8, i32 noundef 0) #6
  %mux.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mux.i, align 4
  %call5.i = tail call i32 @typec_mux_set(ptr noundef %10, ptr noundef %state.i) #6
  br label %mux_ack62

if.end:                                           ; preds = %entry
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %ori_sw = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ori_sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ori_sw, align 8
  %call5 = tail call i32 @typec_switch_set(ptr noundef %12, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %role_sw = getelementptr inbounds %struct.cros_typec_port, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %role_sw, align 8
  %role = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %role, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool13.not, i32 2, i32 1
  %call14 = tail call i32 @usb_role_switch_set_role(ptr noundef %16, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %and19 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.end17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i115) #6
  %22 = ptrtoint ptr %data.i115 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 2305843013508661247, ptr %data.i115, align 8, !annotation !221
  %cable_speed.i = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 8
  %23 = ptrtoint ptr %cable_speed.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cable_speed.i, align 1
  %conv.i = zext i8 %24 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 21
  %or.i = or i32 %shl.i, 536870912
  store i32 %or.i, ptr %data.i115, align 8
  %control_flags.i = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 7
  %25 = ptrtoint ptr %control_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %control_flags.i, align 1
  %conv2.i = zext i8 %26 to i32
  %and.i = and i32 %conv2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %or4.i = or i32 %shl.i, 538443776
  %27 = ptrtoint ptr %data.i115 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or4.i, ptr %data.i115, align 8
  br label %cros_typec_enable_usb4.exit

if.else.i:                                        ; preds = %if.then21
  %and7.i = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.cros_typec_enable_usb4.exit_crit_edge, label %if.then9.i

if.else.i.cros_typec_enable_usb4.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_enable_usb4.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %or11.i = or i32 %shl.i, 537395200
  %28 = ptrtoint ptr %data.i115 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or11.i, ptr %data.i115, align 8
  br label %cros_typec_enable_usb4.exit

cros_typec_enable_usb4.exit:                      ; preds = %if.then9.i, %if.else.i.cros_typec_enable_usb4.exit_crit_edge, %if.then.i
  %active_link_training.i = getelementptr inbounds %struct.enter_usb_data, ptr %data.i115, i32 0, i32 1
  %29 = ptrtoint ptr %active_link_training.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %active_link_training.i, align 4
  %30 = shl i8 %26, 4
  %bf.shl.i = and i8 %30, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %active_link_training.i, align 4
  %state.i116 = getelementptr inbounds %struct.cros_typec_port, ptr %21, i32 0, i32 10
  %31 = ptrtoint ptr %state.i116 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %state.i116, align 4
  %data20.i = getelementptr inbounds %struct.cros_typec_port, ptr %21, i32 0, i32 10, i32 2
  %32 = ptrtoint ptr %data20.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data.i115, ptr %data20.i, align 4
  %mode.i117 = getelementptr inbounds %struct.cros_typec_port, ptr %21, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %mode.i117 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %mode.i117, align 4
  %mux.i118 = getelementptr inbounds %struct.cros_typec_port, ptr %21, i32 0, i32 8
  %34 = ptrtoint ptr %mux.i118 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mux.i118, align 4
  %call.i119 = call i32 @typec_mux_set(ptr noundef %35, ptr noundef %state.i116) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i115) #6
  br label %mux_ack62

if.else23:                                        ; preds = %if.end17
  %and25 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else23
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i120) #6
  %pd_ctrl_ver.i = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 3
  %38 = ptrtoint ptr %pd_ctrl_ver.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pd_ctrl_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp ult i32 %39, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %typec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.102, i32 noundef %39) #9
  br label %cros_typec_enable_tbt.exit

if.end.i:                                         ; preds = %if.then27
  %42 = getelementptr inbounds %struct.typec_thunderbolt_data, ptr %data.i120, i32 0, i32 2
  %43 = getelementptr inbounds %struct.typec_thunderbolt_data, ptr %data.i120, i32 0, i32 1
  %control_flags.i122 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 7
  %44 = ptrtoint ptr %control_flags.i122 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %control_flags.i122, align 1
  %46 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i123 = icmp eq i8 %46, 0
  %spec.store.select.i = select i1 %tobool.not.i123, i32 1, i32 65536
  %47 = ptrtoint ptr %data.i120 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.store.select.i, ptr %data.i120, align 4
  %cable_speed.i124 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 8
  %48 = ptrtoint ptr %cable_speed.i124 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cable_speed.i124, align 1
  %50 = and i8 %49, 7
  %and6.i = zext i8 %50 to i32
  %shl.i125 = shl nuw nsw i32 %and6.i, 16
  %51 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool11.not.i = icmp eq i8 %51, 0
  %spec.select.v.i = select i1 %tobool11.not.i, i32 1, i32 2097153
  %spec.select.i = or i32 %shl.i125, %spec.select.v.i
  %52 = and i8 %45, 8
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 20
  %55 = or i32 %54, %spec.select.i
  %cable_gen.i = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 9
  %56 = ptrtoint ptr %cable_gen.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cable_gen.i, align 1
  %58 = and i8 %57, 3
  %and25.i = zext i8 %58 to i32
  %shl26.i = shl nuw nsw i32 %and25.i, 19
  %or28.i = or i32 %55, %shl26.i
  %59 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or28.i, ptr %43, align 4
  %60 = and i8 %45, 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 24
  %63 = or i32 %shl.i125, %62
  %64 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %42, align 4
  %state.i126 = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 10
  %65 = ptrtoint ptr %state.i126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state.i126, align 4
  %tobool41.not.i = icmp eq ptr %66, null
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end.i.if.end49.i_crit_edge

if.end.i.if.end49.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then42.i:                                      ; preds = %if.end.i
  %arrayidx43.i = getelementptr %struct.cros_typec_port, ptr %37, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %state.i126 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx43.i, ptr %state.i126, align 4
  %mode.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %mode.i.i, align 4
  %mux.i.i = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 8
  %69 = ptrtoint ptr %mux.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mux.i.i, align 4
  %call.i.i = tail call i32 @typec_mux_set(ptr noundef %70, ptr noundef %state.i126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool46.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool46.not.i, label %if.then42.i.if.end49.i_crit_edge, label %if.then42.i.cros_typec_enable_tbt.exit_crit_edge

if.then42.i.cros_typec_enable_tbt.exit_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_enable_tbt.exit

if.then42.i.if.end49.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then42.i.if.end49.i_crit_edge, %if.end.i.if.end49.i_crit_edge
  %data51.i = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 10, i32 2
  %71 = ptrtoint ptr %data51.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %data.i120, ptr %data51.i, align 4
  %mode.i127 = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %mode.i127 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %mode.i127, align 4
  %mux.i128 = getelementptr inbounds %struct.cros_typec_port, ptr %37, i32 0, i32 8
  %73 = ptrtoint ptr %mux.i128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mux.i128, align 4
  %call54.i = call i32 @typec_mux_set(ptr noundef %74, ptr noundef %state.i126) #6
  br label %cros_typec_enable_tbt.exit

cros_typec_enable_tbt.exit:                       ; preds = %if.end49.i, %if.then42.i.cros_typec_enable_tbt.exit_crit_edge, %do.end.i
  %retval.0.i129 = phi i32 [ -524, %do.end.i ], [ %call54.i, %if.end49.i ], [ %call.i.i, %if.then42.i.cros_typec_enable_tbt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i120) #6
  br label %mux_ack62

if.else29:                                        ; preds = %if.else23
  %and31 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call fastcc i32 @cros_typec_enable_dp(ptr noundef %typec, i32 noundef %port_num, ptr noundef %pd_ctrl)
  br label %mux_ack62

if.else35:                                        ; preds = %if.else29
  %and37 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  %state.i130 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10
  %mode.i131 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %75 = ptrtoint ptr %mode.i131 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %mode.i131, align 4
  %mux.i132 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %mux.i132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mux.i132, align 4
  %call.i133 = tail call i32 @typec_mux_set(ptr noundef %77, ptr noundef %state.i130) #6
  br label %mux_ack62

if.else41:                                        ; preds = %if.else35
  %and43 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body, label %if.then45

if.then45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %state, align 4
  %mode = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %79 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %mode, align 4
  %mux = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mux, align 4
  %call48 = tail call i32 @typec_mux_set(ptr noundef %81, ptr noundef %state) #6
  br label %mux_ack62

do.body:                                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_typec_configure_mux.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_typec_configure_mux, %if.then54)) #6
          to label %mux_ack62 [label %if.then54], !srcloc !222

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %typec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_typec_configure_mux.__UNIQUE_ID_ddebug188, ptr noundef %83, ptr noundef nonnull @.str.100, i32 noundef %conv) #6
  br label %mux_ack62

mux_ack62:                                        ; preds = %if.then54, %do.body, %if.then45, %if.then39, %if.then33, %cros_typec_enable_tbt.exit, %cros_typec_enable_usb4.exit, %if.then
  %ret.0 = phi i32 [ %call5.i, %if.then ], [ %call.i119, %cros_typec_enable_usb4.exit ], [ %retval.0.i129, %cros_typec_enable_tbt.exit ], [ %call34, %if.then33 ], [ %call.i133, %if.then39 ], [ %call48, %if.then45 ], [ 0, %if.then54 ], [ 0, %do.body ]
  %needs_mux_ack = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 8
  %84 = ptrtoint ptr %needs_mux_ack to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %needs_mux_ack, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool63.not = icmp eq i8 %85, 0
  br i1 %tobool63.not, label %mux_ack62.cleanup_crit_edge, label %if.end65

mux_ack62.cleanup_crit_edge:                      ; preds = %mux_ack62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %mux_ack62
  %conv66 = trunc i32 %port_num to i8
  %86 = ptrtoint ptr %mux_ack to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv66, ptr %mux_ack, align 1
  %ec = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 1
  %87 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ec, align 4
  %call68 = call i32 @cros_ec_command(ptr noundef %88, i32 noundef 0, i32 noundef 1539, ptr noundef nonnull %mux_ack, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %typec, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.101, i32 noundef %port_num) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end65.cleanup_crit_edge, %mux_ack62.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end.cleanup_crit_edge ], [ %call14, %if.end8.cleanup_crit_edge ], [ %ret.0, %mux_ack62.cleanup_crit_edge ], [ %ret.0, %do.end74 ], [ %ret.0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_ack) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_vconn_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_typec_remove_partner(ptr nocapture noundef readonly %typec, i32 noundef %port_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %partner = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %partner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %partner_mode_list.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %partner_mode_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %partner_mode_list.i, align 4
  %cmp.not22.i = icmp eq ptr %5, %partner_mode_list.i
  br i1 %cmp.not22.i, label %if.end.cros_typec_unregister_altmodes.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cros_typec_unregister_altmodes.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_unregister_altmodes.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -4
  %6 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.0.i, align 4
  tail call void @typec_unregister_altmode(ptr noundef %16) #6
  %17 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %typec, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef %node.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %partner_mode_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_unregister_altmodes.exit

cros_typec_unregister_altmodes.exit:              ; preds = %list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge, %if.end.cros_typec_unregister_altmodes.exit_crit_edge
  %state.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %state.i, align 4
  %mode.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %mode.i, align 4
  %data.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data.i, align 4
  %role_sw.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %role_sw.i, align 8
  %call.i = tail call i32 @usb_role_switch_set_role(ptr noundef %23, i32 noundef 0) #6
  %ori_sw.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %ori_sw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ori_sw.i, align 8
  %call3.i = tail call i32 @typec_switch_set(ptr noundef %25, i32 noundef 0) #6
  %mux.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mux.i, align 4
  %call5.i = tail call i32 @typec_mux_set(ptr noundef %27, ptr noundef %state.i) #6
  %28 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %partner, align 4
  tail call void @typec_unregister_partner(ptr noundef %29) #6
  %30 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %partner, align 4
  %p_identity = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 5
  %31 = call ptr @memset(ptr %p_identity, i32 0, i32 24)
  %sop_disc_done = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %sop_disc_done to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %sop_disc_done, align 8
  br label %cleanup

cleanup:                                          ; preds = %cros_typec_unregister_altmodes.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_typec_remove_cable(ptr nocapture noundef readonly %typec, i32 noundef %port_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cable = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cable, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %plug_mode_list.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %plug_mode_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plug_mode_list.i, align 4
  %cmp.not22.i = icmp eq ptr %5, %plug_mode_list.i
  br i1 %cmp.not22.i, label %if.end.cros_typec_unregister_altmodes.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cros_typec_unregister_altmodes.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_unregister_altmodes.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -4
  %6 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.0.i, align 4
  tail call void @typec_unregister_altmode(ptr noundef %16) #6
  %17 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %typec, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef %node.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %plug_mode_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_typec_unregister_altmodes.exit

cros_typec_unregister_altmodes.exit:              ; preds = %list_del.exit.i.cros_typec_unregister_altmodes.exit_crit_edge, %if.end.cros_typec_unregister_altmodes.exit_crit_edge
  %plug = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %plug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plug, align 4
  tail call void @typec_unregister_plug(ptr noundef %20) #6
  %21 = ptrtoint ptr %plug to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %plug, align 4
  %22 = ptrtoint ptr %cable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cable, align 8
  tail call void @typec_unregister_cable(ptr noundef %23) #6
  %24 = ptrtoint ptr %cable to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cable, align 8
  %c_identity = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 6
  %25 = call ptr @memset(ptr %c_identity, i32 0, i32 24)
  %sop_prime_disc_done = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %sop_prime_disc_done to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sop_prime_disc_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %cros_typec_unregister_altmodes.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_partner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_partner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_altmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_switch_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_mux_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_cable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_opmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_partner_set_pd_revision(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_partner_set_identity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_register_altmodes(ptr nocapture noundef readonly %typec, i32 noundef %port_num, i1 noundef zeroext %is_partner) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.typec_altmode_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %disc_data = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disc_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc) #6
  %4 = call ptr @memset(ptr %desc, i32 255, i32 12)
  %svid_count = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %svid_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %svid_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp107.not = icmp eq i8 %6, 0
  br i1 %cmp107.not, label %entry.for.end33_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %mode = getelementptr inbounds %struct.typec_altmode_desc, ptr %desc, i32 0, i32 1
  %vdo = getelementptr inbounds %struct.typec_altmode_desc, ptr %desc, i32 0, i32 2
  %plug = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 4
  %partner = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 2
  %plug_mode_list = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 18
  %prev.i92 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 18, i32 1
  %partner_mode_list = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 17, i32 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc31.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %i.0109 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc32, %for.inc31.for.cond2.preheader_crit_edge ]
  %num_altmodes.0108 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %num_altmodes.1.lcssa, %for.inc31.for.cond2.preheader_crit_edge ]
  %mode_count = getelementptr %struct.ec_response_typec_discovery, ptr %3, i32 0, i32 4, i32 %i.0109, i32 1
  %7 = ptrtoint ptr %mode_count to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %mode_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp5103.not = icmp eq i16 %8, 0
  br i1 %cmp5103.not, label %for.cond2.preheader.for.inc31_crit_edge, label %for.body7.lr.ph

for.cond2.preheader.for.inc31_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

for.body7.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx3 = getelementptr %struct.ec_response_typec_discovery, ptr %3, i32 0, i32 4, i32 %i.0109
  br label %for.body7

for.body7:                                        ; preds = %if.end29.for.body7_crit_edge, %for.body7.lr.ph
  %j.0105 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc30, %if.end29.for.body7_crit_edge ]
  %num_altmodes.1104 = phi i32 [ %num_altmodes.0108, %for.body7.lr.ph ], [ %inc, %if.end29.for.body7_crit_edge ]
  %9 = call ptr @memset(ptr %desc, i32 0, i32 12)
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx3, align 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %desc, align 4
  %conv11 = trunc i32 %j.0105 to i8
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %mode, align 2
  %arrayidx14 = getelementptr %struct.ec_response_typec_discovery, ptr %3, i32 0, i32 4, i32 %i.0109, i32 2, i32 %j.0105
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx14, align 1
  %16 = ptrtoint ptr %vdo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %vdo, align 4
  br i1 %is_partner, label %if.then, label %if.else

if.then:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %partner, align 4
  %call = call ptr @typec_partner_register_altmode(ptr noundef %18, ptr noundef nonnull %desc) #6
  br label %if.end

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %plug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plug, align 4
  %call15 = call ptr @typec_plug_register_altmode(ptr noundef %20, ptr noundef nonnull %desc) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %amode.0 = phi ptr [ %call, %if.then ], [ %call15, %if.else ]
  %cmp.i = icmp ugt ptr %amode.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %amode.0 to i32
  br label %err_cleanup

if.end19:                                         ; preds = %if.end
  %22 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %typec, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 12, i32 noundef 3520) #6
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @typec_unregister_altmode(ptr noundef %amode.0) #6
  br label %err_cleanup

if.end23:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %amode.0, ptr %call.i, align 4
  %list = getelementptr inbounds %struct.cros_typec_altmode_node, ptr %call.i, i32 0, i32 1
  br i1 %is_partner, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end23
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %26, ptr noundef %partner_mode_list) #6
  br i1 %call.i.i, label %if.then26.if.end29.sink.split_crit_edge, label %if.then26.if.end29_crit_edge

if.then26.if.end29_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26.if.end29.sink.split_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else27:                                        ; preds = %if.end23
  %27 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i92, align 4
  %call.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %plug_mode_list) #6
  br i1 %call.i.i93, label %if.else27.if.end29.sink.split_crit_edge, label %if.else27.if.end29_crit_edge

if.else27.if.end29_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.else27.if.end29.sink.split_crit_edge:          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else27.if.end29.sink.split_crit_edge, %if.then26.if.end29.sink.split_crit_edge
  %prev.i92.sink = phi ptr [ %prev.i, %if.then26.if.end29.sink.split_crit_edge ], [ %prev.i92, %if.else27.if.end29.sink.split_crit_edge ]
  %plug_mode_list.sink = phi ptr [ %partner_mode_list, %if.then26.if.end29.sink.split_crit_edge ], [ %plug_mode_list, %if.else27.if.end29.sink.split_crit_edge ]
  %.sink116 = phi ptr [ %26, %if.then26.if.end29.sink.split_crit_edge ], [ %28, %if.else27.if.end29.sink.split_crit_edge ]
  %29 = ptrtoint ptr %prev.i92.sink to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i92.sink, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %plug_mode_list.sink, ptr %list, align 4
  %prev3.i.i94 = getelementptr inbounds %struct.cros_typec_altmode_node, ptr %call.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i94 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.sink116, ptr %prev3.i.i94, align 4
  %32 = ptrtoint ptr %.sink116 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %.sink116, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else27.if.end29_crit_edge, %if.then26.if.end29_crit_edge
  %inc = add i32 %num_altmodes.1104, 1
  %inc30 = add nuw nsw i32 %j.0105, 1
  %33 = ptrtoint ptr %mode_count to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %mode_count, align 1
  %conv4 = zext i16 %34 to i32
  %cmp5 = icmp ult i32 %inc30, %conv4
  br i1 %cmp5, label %if.end29.for.body7_crit_edge, label %if.end29.for.inc31_crit_edge

if.end29.for.inc31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

if.end29.for.body7_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.inc31:                                        ; preds = %if.end29.for.inc31_crit_edge, %for.cond2.preheader.for.inc31_crit_edge
  %num_altmodes.1.lcssa = phi i32 [ %num_altmodes.0108, %for.cond2.preheader.for.inc31_crit_edge ], [ %inc, %if.end29.for.inc31_crit_edge ]
  %inc32 = add nuw nsw i32 %i.0109, 1
  %35 = ptrtoint ptr %svid_count to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %svid_count, align 1
  %conv = zext i8 %36 to i32
  %cmp = icmp ult i32 %inc32, %conv
  br i1 %cmp, label %for.inc31.for.cond2.preheader_crit_edge, label %for.inc31.for.end33_crit_edge

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end33

for.inc31.for.cond2.preheader_crit_edge:          ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %entry.for.end33_crit_edge
  %num_altmodes.0.lcssa = phi i32 [ 0, %entry.for.end33_crit_edge ], [ %num_altmodes.1.lcssa, %for.inc31.for.end33_crit_edge ]
  br i1 %is_partner, label %if.then35, label %if.else38

if.then35:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #8
  %partner36 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %partner36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %partner36, align 4
  %call37 = call i32 @typec_partner_set_num_altmodes(ptr noundef %38, i32 noundef %num_altmodes.0.lcssa) #6
  br label %if.end41

if.else38:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #8
  %plug39 = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %plug39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %plug39, align 4
  %call40 = call i32 @typec_plug_set_num_altmodes(ptr noundef %40, i32 noundef %num_altmodes.0.lcssa) #6
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  %ret.0 = phi i32 [ %call37, %if.then35 ], [ %call40, %if.else38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp42 = icmp slt i32 %ret.0, 0
  br i1 %cmp42, label %do.end, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %typec, align 4
  %cond = select i1 %is_partner, ptr @.str.92, ptr @.str.93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond, i32 noundef %port_num) #9
  br label %err_cleanup

err_cleanup:                                      ; preds = %do.end, %if.then22, %if.then17
  %ret.1 = phi i32 [ %21, %if.then17 ], [ -12, %if.then22 ], [ %ret.0, %do.end ]
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %partner_mode_list.i = getelementptr inbounds %struct.cros_typec_port, ptr %44, i32 0, i32 17
  %plug_mode_list.i = getelementptr inbounds %struct.cros_typec_port, ptr %44, i32 0, i32 18
  %cond.i = select i1 %is_partner, ptr %partner_mode_list.i, ptr %plug_mode_list.i
  %45 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond.i, align 4
  %cmp.not22.i = icmp eq ptr %46, %cond.i
  br i1 %cmp.not22.i, label %err_cleanup.cleanup_crit_edge, label %err_cleanup.for.body.i_crit_edge

err_cleanup.for.body.i_crit_edge:                 ; preds = %err_cleanup
  br label %for.body.i

err_cleanup.cleanup_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err_cleanup.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %46, %err_cleanup.for.body.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -4
  %47 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %node.0.i, align 4
  call void @typec_unregister_altmode(ptr noundef %57) #6
  %58 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %typec, align 4
  call void @devm_kfree(ptr noundef %59, ptr noundef %node.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %cond.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %err_cleanup.cleanup_crit_edge, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41.cleanup_crit_edge ], [ %ret.1, %err_cleanup.cleanup_crit_edge ], [ %ret.1, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_partner_register_altmode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_plug_register_altmode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_partner_set_num_altmodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_plug_set_num_altmodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_cable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_plug(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_enable_dp(ptr nocapture noundef readonly %typec, i32 noundef %port_num, ptr nocapture noundef readonly %pd_ctrl) unnamed_addr #2 align 64 {
entry:
  %dp_data = alloca %struct.typec_displayport_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cros_typec_data, ptr %typec, i32 0, i32 4, i32 %port_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dp_data) #6
  %2 = getelementptr inbounds %struct.typec_displayport_data, ptr %dp_data, i32 0, i32 1
  %pd_ctrl_ver = getelementptr inbounds %struct.cros_typec_data, ptr %typec, i32 0, i32 3
  %3 = ptrtoint ptr %pd_ctrl_ver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pd_ctrl_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %typec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.102, i32 noundef %4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_mode = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %pd_ctrl, i32 0, i32 5
  %7 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %typec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %typec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.106) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mux_flags = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mux_flags, align 8
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %spec.store.select = select i1 %tobool8.not, i32 8, i32 264
  %14 = shl i8 %12, 3
  %15 = and i8 %14, -128
  %16 = zext i8 %15 to i32
  %17 = or i32 %spec.store.select, %16
  %18 = ptrtoint ptr %dp_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dp_data, align 4
  %conv21 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %2, align 4
  %state = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.then23, label %if.end7.if.end30_crit_edge

if.end7.if.end30_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then23:                                        ; preds = %if.end7
  %p_altmode = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %p_altmode, ptr %state, align 4
  %mode.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mode.i, align 4
  %mux.i = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mux.i, align 4
  %call.i = tail call i32 @typec_mux_set(ptr noundef %25, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %if.then23.if.end30_crit_edge, %if.end7.if.end30_crit_edge
  %data = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 2
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dp_data, ptr %data, align 4
  %27 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_mode, align 1
  %29 = call i8 @llvm.cttz.i8(i8 %28, i1 true), !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %iszero = icmp eq i8 %28, 0
  %narrow = add nuw nsw i8 %29, 3
  %narrow55 = select i1 %iszero, i8 2, i8 %narrow
  %add = zext i8 %narrow55 to i32
  %mode = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %mode, align 4
  %mux = getelementptr inbounds %struct.cros_typec_port, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mux, align 4
  %call36 = call i32 @typec_mux_set(ptr noundef %32, ptr noundef %state) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then23.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %call36, %if.end30 ], [ -22, %do.end5 ], [ %call.i, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dp_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_typec_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port_work = getelementptr inbounds %struct.cros_typec_data, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %port_work) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_typec_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port_work = getelementptr inbounds %struct.cros_typec_data, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %port_work) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__initcall__kmod_cros_ec_typec__194_1165_cros_typec_driver_init6, !1, !"__initcall__kmod_cros_ec_typec__194_1165_cros_typec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1165, i32 1}
!2 = !{ptr @__exitcall_cros_typec_driver_exit, !1, !"__exitcall_cros_typec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author195, !4, !"__UNIQUE_ID_author195", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1167, i32 1}
!5 = !{ptr @__UNIQUE_ID_description196, !6, !"__UNIQUE_ID_description196", i1 false, i1 false}
!6 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1168, i32 1}
!7 = !{ptr @__UNIQUE_ID_file197, !8, !"__UNIQUE_ID_file197", i1 false, i1 false}
!8 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1169, i32 1}
!9 = !{ptr @__UNIQUE_ID_license198, !8, !"__UNIQUE_ID_license198", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1157, i32 11}
!12 = !{ptr @cros_typec_driver, !13, !"cros_typec_driver", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1155, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1083, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_typec_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_typec_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1098, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cros_typec_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @cros_typec_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @cros_typec_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1108, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1020, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cros_typec_get_cmd_version.__UNIQUE_ID_ddebug193, !31, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 312, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cros_typec_init_ports._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @cros_typec_init_ports._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 317, i32 3}
!42 = !{ptr @cros_typec_init_ports._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cros_typec_init_ports._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 322, i32 29}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 322, i32 37}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 326, i32 4}
!50 = !{ptr @cros_typec_init_ports._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cros_typec_init_ports._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 331, i32 4}
!54 = !{ptr @cros_typec_init_ports._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cros_typec_init_ports._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 336, i32 3}
!58 = !{ptr @cros_typec_init_ports.__UNIQUE_ID_ddebug186, !57, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 353, i32 4}
!61 = !{ptr @cros_typec_init_ports._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cros_typec_init_ports._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 360, i32 4}
!65 = !{ptr @cros_typec_init_ports.__UNIQUE_ID_ddebug187, !64, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 96, i32 44}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 98, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cros_typec_parse_port_props._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cros_typec_parse_port_props._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 107, i32 44}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 109, i32 3}
!77 = !{ptr @cros_typec_parse_port_props._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cros_typec_parse_port_props._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 118, i32 44}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 120, i32 3}
!83 = !{ptr @cros_typec_parse_port_props._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cros_typec_parse_port_props._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 140, i32 3}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug183, !86, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 146, i32 3}
!91 = !{ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug184, !90, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 152, i32 3}
!94 = !{ptr @cros_typec_get_switch_handles.__UNIQUE_ID_ddebug185, !93, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1034, i32 4}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cros_typec_port_work._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @cros_typec_port_work._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 945, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cros_typec_port_update._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @cros_typec_port_update._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 961, i32 2}
!107 = !{ptr @cros_typec_port_update.__UNIQUE_ID_ddebug189, !106, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 962, i32 2}
!110 = !{ptr @cros_typec_port_update.__UNIQUE_ID_ddebug190, !109, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 963, i32 2}
!113 = !{ptr @cros_typec_port_update.__UNIQUE_ID_ddebug191, !112, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 964, i32 2}
!116 = !{ptr @cros_typec_port_update.__UNIQUE_ID_ddebug192, !115, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 979, i32 3}
!119 = !{ptr @cros_typec_port_update._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cros_typec_port_update._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 994, i32 3}
!123 = !{ptr @cros_typec_port_update._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cros_typec_port_update._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 624, i32 4}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cros_typec_set_port_params_v1._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @cros_typec_set_port_params_v1._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 879, i32 3}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cros_typec_handle_status._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @cros_typec_handle_status._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 891, i32 4}
!137 = !{ptr @cros_typec_handle_status._entry.65, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cros_typec_handle_status._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 904, i32 4}
!141 = !{ptr @cros_typec_handle_status._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cros_typec_handle_status._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 910, i32 5}
!145 = !{ptr @cros_typec_handle_status._entry.71, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cros_typec_handle_status._entry_ptr.73, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 925, i32 4}
!149 = !{ptr @cros_typec_handle_status._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cros_typec_handle_status._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @cros_typec_handle_status._entry.77, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 931, i32 5}
!153 = !{ptr @cros_typec_handle_status._entry_ptr.78, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 821, i32 3}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cros_typec_handle_sop_disc._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @cros_typec_handle_sop_disc._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 834, i32 3}
!161 = !{ptr @cros_typec_handle_sop_disc._entry.81, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @cros_typec_handle_sop_disc._entry_ptr.83, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 842, i32 3}
!165 = !{ptr @cros_typec_handle_sop_disc._entry.84, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @cros_typec_handle_sop_disc._entry_ptr.86, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 848, i32 3}
!169 = !{ptr @cros_typec_handle_sop_disc._entry.87, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cros_typec_handle_sop_disc._entry_ptr.89, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 700, i32 3}
!173 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @cros_typec_register_altmodes._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @cros_typec_register_altmodes._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.92, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 751, i32 3}
!180 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cros_typec_handle_sop_prime_disc._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @cros_typec_handle_sop_prime_disc._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 799, i32 3}
!185 = !{ptr @cros_typec_handle_sop_prime_disc._entry.96, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @cros_typec_handle_sop_prime_disc._entry_ptr.98, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 556, i32 3}
!189 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @cros_typec_configure_mux.__UNIQUE_ID_ddebug188, !188, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!191 = !{ptr @.str.101, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 570, i32 3}
!193 = !{ptr @cros_typec_configure_mux._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @cros_typec_configure_mux._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 402, i32 3}
!197 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @cros_typec_enable_tbt._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @cros_typec_enable_tbt._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 454, i32 3}
!202 = !{ptr @cros_typec_enable_dp._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @cros_typec_enable_dp._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 460, i32 3}
!206 = !{ptr @cros_typec_enable_dp._entry.105, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @cros_typec_enable_dp._entry_ptr.107, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @cros_typec_of_match, !209, !"cros_typec_of_match", i1 false, i1 false}
!209 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1058, i32 34}
!210 = !{ptr @cros_typec_pm_ops, !211, !"cros_typec_pm_ops", i1 false, i1 false}
!211 = !{!"../drivers/platform/chrome/cros_ec_typec.c", i32 1151, i32 32}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i64 2148977815, i64 2148977820, i64 2148977833, i64 2148977877, i64 2148977911, i64 2148977932}
!223 = !{i8 0, i8 2}
!224 = !{i8 0, i8 9}
