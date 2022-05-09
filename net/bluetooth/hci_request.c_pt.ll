; ModuleID = '/llk/IR_all_yes/net/bluetooth/hci_request.c_pt.bc'
source_filename = "../net/bluetooth/hci_request.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hci_command_hdr = type <{ i16, i8 }>
%struct.hci_cp_write_eir = type { i8, [240 x i8] }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_le_scan_phy_params = type <{ i8, i16, i16 }>
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.anon.148 = type { %struct.hci_cp_le_set_ext_scan_rsp_data, [251 x i8] }
%struct.hci_cp_le_set_ext_scan_rsp_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_scan_rsp_data = type { i8, [31 x i8] }
%struct.anon.149 = type { %struct.hci_cp_le_set_ext_adv_data, [251 x i8] }
%struct.hci_cp_le_set_ext_adv_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_data = type { i8, [31 x i8] }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_op_configure_data_path = type { i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_del_from_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_add_to_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_add_to_resolv_list = type { i8, %struct.bdaddr_t, [16 x i8], [16 x i8] }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.hci_cp_write_current_iac_lap = type { i8, [6 x i8] }

@hci_req_sync_complete.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hci_req_sync_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/hci_request.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: result 0x%2.2x\0A\00", [44 x i8] zeroinitializer }, align 32
@__hci_req_sync.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__hci_req_sync\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: start\0A\00", [21 x i8] zeroinitializer }, align 32
@__hci_req_sync.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: end: err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hci_prepare_cmd.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hci_prepare_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: skb len %d\0A\00", [16 x i8] zeroinitializer }, align 32
@hci_req_add_ev.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hci_req_add_ev\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: opcode 0x%4.4x plen %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: no memory for command (opcode 0x%4.4x)\0A\00", [52 x i8] zeroinitializer }, align 32
@hci_req_add_le_scan_disable.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hci_req_add_le_scan_disable\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Scanning is paused for suspend\0A\00", [60 x i8] zeroinitializer }, align 32
@hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.13, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hci_req_add_le_passive_scan\00", [36 x i8] zeroinitializer }, align 32
@hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: interleave state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: LE passive scan with accept list = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to generate new RPA\0A\00", [32 x i8] zeroinitializer }, align 32
@__hci_req_update_class.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__hci_req_update_class\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s: \0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to run HCI request: err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hci_req_stop_discovery.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 2, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hci_req_stop_discovery\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: state %u\0A\00", [18 x i8] zeroinitializer }, align 32
@hci_request_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&hdev->discov_update)\00", [56 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&hdev->scan_update)\00", [58 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&hdev->discov_off)->work)\00", [50 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&hdev->discov_off)->timer\00", [36 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&hdev->le_scan_disable)->work)\00", [45 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&hdev->le_scan_disable)->timer\00", [63 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&hdev->le_scan_restart)->work)\00", [45 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&hdev->le_scan_restart)->timer\00", [63 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&hdev->adv_instance_expire)->work)\00", [41 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&hdev->adv_instance_expire)->timer\00", [59 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&hdev->interleave_scan)->work)\00", [45 x i8] zeroinitializer }, align 32
@hci_request_setup.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&hdev->interleave_scan)->timer\00", [63 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@req_run.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"req_run\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: length %u\0A\00", [17 x i8] zeroinitializer }, align 32
@__hci_update_interleaved_scan.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__hci_update_interleaved_scan\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: starting interleave scan\0A\00", [34 x i8] zeroinitializer }, align 32
@del_from_accept_list.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"del_from_accept_list\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Remove %pMR (0x%x) from accept list\0A\00", [55 x i8] zeroinitializer }, align 32
@add_to_accept_list.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_to_accept_list\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Add %pMR (0x%x) to accept list\0A\00", [60 x i8] zeroinitializer }, align 32
@hci_is_le_conn_scanning.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hci_req_start_scan.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.13, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hci_req_start_scan\00", [45 x i8] zeroinitializer }, align 32
@enable_addr_resolution_complete.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enable_addr_resolution_complete\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s status %u\0A\00", [18 x i8] zeroinitializer }, align 32
@adv_enable_complete.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adv_enable_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: status %u\0A\00", [17 x i8] zeroinitializer }, align 32
@set_random_addr.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_random_addr\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Deferring random address update\0A\00", [59 x i8] zeroinitializer }, align 32
@hci_lookup_le_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@abort_conn_complete.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abort_conn_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Failed to abort connection: status 0x%2.2x\0A\00", [48 x i8] zeroinitializer }, align 32
@config_data_path_complete.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.63, i8 2, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"config_data_path_complete\00", [38 x i8] zeroinitializer }, align 32
@start_discovery.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 2, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_discovery\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: type %u\0A\00", [19 x i8] zeroinitializer }, align 32
@start_discovery.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.72, i8 2, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: timeout %u ms\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bredr_inquiry.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.19, i8 2, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bredr_inquiry\00", [18 x i8] zeroinitializer }, align 32
@interleaved_discov.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.19, i8 2, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"interleaved_discov\00", [45 x i8] zeroinitializer }, align 32
@active_scan.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.19, i8 2, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active_scan\00", [20 x i8] zeroinitializer }, align 32
@discov_off.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.19, i8 2, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"discov_off\00", [21 x i8] zeroinitializer }, align 32
@le_scan_disable_work.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.19, i8 2, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"le_scan_disable_work\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to disable LE scan: status 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: inquiry failed: status 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@le_scan_restart_work.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.19, i8 2, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"le_scan_restart_work\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to restart LE scan: status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@le_scan_restart.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.13, i8 2, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"le_scan_restart\00", [16 x i8] zeroinitializer }, align 32
@adv_timeout_expire.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.19, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv_timeout_expire\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: unexpected error\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hci_req_add_le_interleaved_scan\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: next state: allowlist\0A\00", [37 x i8] zeroinitializer }, align 32
@hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: next state: no filter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unexpected error\0A\00", [46 x i8] zeroinitializer }, align 32
@cancel_interleave_scan.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cancel_interleave_scan\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cancelling interleave scan\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 128]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 7]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 103, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 122, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 186, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 230, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 245, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 255, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 404, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 740, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 758, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 806, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1260, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1869, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2042, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2376, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2634, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2635, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2636, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2637, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2638, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2639, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2640, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1984, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 59, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 350, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 439, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 492, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 711, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 695, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 723, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 620, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1094, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1114, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1324, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1096, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2028, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2419, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2303, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2351, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2065, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2290, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2243, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2504, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2091, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2100, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2132, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2187, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2191, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2153, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1151, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1217, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1188, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1192, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1196, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.380 = private constant [31 x i8] c"../net/bluetooth/hci_request.c\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 322, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @hci_request_setup.__key, ptr @.str.23, ptr @hci_request_setup.__key.24, ptr @.str.25, ptr @hci_request_setup.__key.26, ptr @.str.27, ptr @hci_request_setup.__key.28, ptr @.str.29, ptr @hci_request_setup.__key.30, ptr @.str.31, ptr @hci_request_setup.__key.32, ptr @.str.33, ptr @hci_request_setup.__key.34, ptr @.str.35, ptr @hci_request_setup.__key.36, ptr @.str.37, ptr @hci_request_setup.__key.38, ptr @.str.39, ptr @hci_request_setup.__key.40, ptr @.str.41, ptr @hci_request_setup.__key.42, ptr @.str.43, ptr @hci_request_setup.__key.44, ptr @.str.45, ptr @skb_queue_head_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_request_setup.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_init(ptr noundef %req, ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_q = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %0 = ptrtoint ptr %cmd_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd_q, ptr %cmd_q, align 4
  %prev.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmd_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hdev, ptr %req, align 4
  %err = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_purge(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_q = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %cmd_q) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hci_req_status_pend(ptr nocapture noundef readonly %hdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_status = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 165
  %0 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_req_run(ptr noundef %req, ptr noundef %complete) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @req_run(ptr noundef %req, ptr noundef %complete, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @req_run(ptr noundef %req, ptr noundef %complete, ptr noundef %complete_skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @req_run.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@req_run, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %qlen.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @req_run.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %err = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %cmd_q10 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_purge(ptr noundef %cmd_q10) #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err, align 4
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %8 = ptrtoint ptr %cmd_q10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_q10, align 4
  %cmp.i.not = icmp eq ptr %9, %cmd_q10
  br i1 %cmp.i.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %prev.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i63 = icmp eq ptr %11, %cmd_q10
  %spec.store.select.i = select i1 %cmp.i63, ptr null, ptr %11
  %tobool17.not = icmp eq ptr %complete, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %complete, ptr %12, align 8
  br label %do.body30

if.else:                                          ; preds = %if.end14
  %tobool20.not = icmp eq ptr %complete_skb, null
  br i1 %tobool20.not, label %if.else.do.body30_crit_edge, label %if.then21

if.else.do.body30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %complete_skb, ptr %14, align 8
  %req_flags = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 14
  %16 = ptrtoint ptr %req_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %req_flags, align 2
  %18 = or i8 %17, 2
  store i8 %18, ptr %req_flags, align 2
  br label %do.body30

do.body30:                                        ; preds = %if.then21, %if.else.do.body30_crit_edge, %if.then18
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 161, i32 2
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %19 = ptrtoint ptr %cmd_q10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_q10, align 4
  %cmp.i.not.i = icmp eq ptr %20, %cmd_q10
  br i1 %cmp.i.not.i, label %do.body30.skb_queue_splice_tail.exit_crit_edge, label %if.then.i

do.body30.skb_queue_splice_tail.exit_crit_edge:   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_queue_splice_tail.exit

if.then.i:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_q33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 161
  %prev.i64 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 161, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i64, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.3, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %prev5.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %20, ptr %22, align 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %cmd_q33, ptr %24, align 8
  store volatile ptr %24, ptr %prev.i64, align 4
  %qlen.i65 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %qlen.i65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i65, align 4
  %qlen1.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 161, i32 1
  %30 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %31, %29
  store i32 %add.i, ptr %qlen1.i, align 4
  br label %skb_queue_splice_tail.exit

skb_queue_splice_tail.exit:                       ; preds = %if.then.i, %do.body30.skb_queue_splice_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 138
  %32 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %workqueue, align 4
  %cmd_work = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 153
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %cmd_work) #10
  br label %cleanup

cleanup:                                          ; preds = %skb_queue_splice_tail.exit, %if.end9.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %7, %if.then6 ], [ 0, %skb_queue_splice_tail.exit ], [ -61, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_req_run_skb(ptr noundef %req, ptr noundef %complete) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @req_run(ptr noundef %req, ptr noundef null, ptr noundef %complete)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_sync_complete(ptr noundef %hdev, i8 noundef zeroext %result, i16 zeroext %opcode, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_sync_complete.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_sync_complete, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %result to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_sync_complete.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req_status = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 165
  %0 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then4, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %do.end
  %conv5 = zext i8 %result to i32
  %req_result = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 166
  %2 = ptrtoint ptr %req_result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv5, ptr %req_result, align 4
  %3 = ptrtoint ptr %req_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %req_status, align 8
  %tobool7.not = icmp eq ptr %skb, null
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then8

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.then4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !198
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !199

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !200

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %req_skb = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 167
  %6 = ptrtoint ptr %req_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %req_skb, align 8
  br label %if.end10

if.end10:                                         ; preds = %skb_get.exit, %if.then4.if.end10_crit_edge
  %req_wait_q = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 164
  tail call void @__wake_up(ptr noundef %req_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_sync(ptr noundef %hdev, ptr nocapture noundef readonly %func, i32 noundef %opt, i32 noundef %timeout, ptr noundef writeonly %hci_status) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hci_req_sync.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_sync, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hci_req_sync.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.5, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i.i, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %err.i, align 4
  %req_status = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 165
  %6 = ptrtoint ptr %req_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %req_status, align 8
  %call3 = call i32 %func(ptr noundef nonnull %req, i32 noundef %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %do.end
  %tobool6.not = icmp eq ptr %hci_status, null
  br i1 %tobool6.not, label %if.then5.cleanup113_crit_edge, label %if.then7

if.then5.cleanup113_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %hci_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 31, ptr %hci_status, align 1
  br label %cleanup113

if.end9:                                          ; preds = %do.end
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef null, ptr noundef nonnull @hci_req_sync_complete) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %8 = ptrtoint ptr %req_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call.i)
  %cmp13 = icmp eq i32 %call.i, -61
  %tobool15.not = icmp eq ptr %hci_status, null
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then11
  br i1 %tobool15.not, label %if.then14.cleanup113_crit_edge, label %if.then16

if.then14.cleanup113_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hci_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %hci_status, align 1
  br label %cleanup113

if.end18:                                         ; preds = %if.then11
  br i1 %tobool15.not, label %if.end18.cleanup113_crit_edge, label %if.then20

if.end18.cleanup113_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hci_status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %hci_status, align 1
  br label %cleanup113

if.end22:                                         ; preds = %if.end9
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 157) #10
  %11 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp30.not = icmp eq i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool33.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool33.not, i32 1, i32 %timeout
  %__ret.0 = select i1 %cmp30.not, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool38.not = icmp ne i32 %__ret.0, 0
  %13 = and i1 %cmp30.not, %tobool38.not
  br i1 %13, label %if.then42, label %if.end22.if.end71_crit_edge

if.end22.if.end71_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then42:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %req_wait_q = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 164
  %call44174 = call i32 @prepare_to_wait_event(ptr noundef %req_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %15 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp47.not175 = icmp eq i32 %16, 1
  %__ret43.1178 = select i1 %cmp47.not175, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1178)
  %tobool57.not179 = icmp ne i32 %__ret43.1178, 0
  %17 = and i1 %cmp47.not175, %tobool57.not179
  br i1 %17, label %if.then42.if.end64_crit_edge, label %if.then42.for.end_crit_edge

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then42.if.end64_crit_edge:                     ; preds = %if.then42
  br label %if.end64

if.end64:                                         ; preds = %cleanup.if.end64_crit_edge, %if.then42.if.end64_crit_edge
  %__ret43.1182 = phi i32 [ %__ret43.1, %cleanup.if.end64_crit_edge ], [ %__ret43.1178, %if.then42.if.end64_crit_edge ]
  %call44181 = phi i32 [ %call44, %cleanup.if.end64_crit_edge ], [ %call44174, %if.then42.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44181)
  %tobool65.not = icmp eq i32 %call44181, 0
  br i1 %tobool65.not, label %cleanup, label %if.end64.__out_crit_edge

if.end64.__out_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end64
  %call68 = call i32 @schedule_timeout(i32 noundef %__ret43.1182) #10
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %req_wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %18 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp47.not = icmp eq i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool51.not = icmp eq i32 %call68, 0
  %spec.store.select115 = select i1 %tobool51.not, i32 1, i32 %call68
  %__ret43.1 = select i1 %cmp47.not, i32 %call68, i32 %spec.store.select115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1)
  %tobool57.not = icmp eq i32 %__ret43.1, 0
  %not.cmp47.not = xor i1 %cmp47.not, true
  %20 = select i1 %not.cmp47.not, i1 true, i1 %tobool57.not
  br i1 %20, label %cleanup.for.end_crit_edge, label %cleanup.if.end64_crit_edge

cleanup.if.end64_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then42.for.end_crit_edge
  %__ret43.1.lcssa = phi i32 [ %__ret43.1178, %if.then42.for.end_crit_edge ], [ %__ret43.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %req_wait_q, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end64.__out_crit_edge
  %__ret43.2165 = phi i32 [ %__ret43.1.lcssa, %for.end ], [ %call44181, %if.end64.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end71

if.end71:                                         ; preds = %__out, %if.end22.if.end71_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end22.if.end71_crit_edge ], [ %__ret43.2165, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret.1)
  %cmp73 = icmp eq i32 %__ret.1, -512
  br i1 %cmp73, label %if.end71.cleanup113_crit_edge, label %if.end75

if.end71.cleanup113_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.end75:                                         ; preds = %if.end71
  %21 = ptrtoint ptr %req_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req_status, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb83
  ]

sw.bb:                                            ; preds = %if.end75
  %req_result = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 166
  %24 = ptrtoint ptr %req_result to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_result, align 4
  %conv = trunc i32 %25 to i16
  %call77 = call i32 @bt_to_errno(i16 noundef zeroext %conv) #10
  %sub = sub i32 0, %call77
  %tobool78.not = icmp eq ptr %hci_status, null
  br i1 %tobool78.not, label %sw.bb.sw.epilog_crit_edge, label %if.then79

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then79:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %req_result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_result, align 4
  %conv81 = trunc i32 %27 to i8
  br label %sw.epilog.sink.split

sw.bb83:                                          ; preds = %if.end75
  %req_result84 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 166
  %28 = ptrtoint ptr %req_result84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req_result84, align 4
  %sub85 = sub i32 0, %29
  %tobool86.not = icmp eq ptr %hci_status, null
  br i1 %tobool86.not, label %sw.bb83.sw.epilog_crit_edge, label %sw.bb83.sw.epilog.sink.split_crit_edge

sw.bb83.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end75
  %tobool89.not = icmp eq ptr %hci_status, null
  br i1 %tobool89.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb83.sw.epilog.sink.split_crit_edge, %if.then79
  %.sink = phi i8 [ %conv81, %if.then79 ], [ 31, %sw.bb83.sw.epilog.sink.split_crit_edge ], [ 31, %sw.default.sw.epilog.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %sub, %if.then79 ], [ %sub85, %sw.bb83.sw.epilog.sink.split_crit_edge ], [ -110, %sw.default.sw.epilog.sink.split_crit_edge ]
  %30 = ptrtoint ptr %hci_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %hci_status, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge, %sw.bb83.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %err.0 = phi i32 [ -110, %sw.default.sw.epilog_crit_edge ], [ %sub85, %sw.bb83.sw.epilog_crit_edge ], [ %sub, %sw.bb.sw.epilog_crit_edge ], [ %err.0.ph, %sw.epilog.sink.split ]
  %req_skb = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 167
  %31 = ptrtoint ptr %req_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req_skb, align 8
  call void @kfree_skb_reason(ptr noundef %32, i32 noundef 0) #10
  %33 = ptrtoint ptr %req_skb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %req_skb, align 8
  %req_result93 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 166
  %34 = ptrtoint ptr %req_result93 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %req_result93, align 4
  %35 = ptrtoint ptr %req_status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %req_status, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hci_req_sync.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_sync, %if.then107)) #10
          to label %cleanup113 [label %if.then107], !srcloc !197

if.then107:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %name108 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hci_req_sync.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.6, ptr noundef %name108, i32 noundef %err.0) #10
  br label %cleanup113

cleanup113:                                       ; preds = %if.then107, %sw.epilog, %if.end71.cleanup113_crit_edge, %if.then20, %if.end18.cleanup113_crit_edge, %if.then16, %if.then14.cleanup113_crit_edge, %if.then7, %if.then5.cleanup113_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then7 ], [ %call3, %if.then5.cleanup113_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then14.cleanup113_crit_edge ], [ %call.i, %if.then20 ], [ %call.i, %if.end18.cleanup113_crit_edge ], [ -4, %if.end71.cleanup113_crit_edge ], [ %err.0, %if.then107 ], [ %err.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_to_errno(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_req_sync(ptr noundef %hdev, ptr nocapture noundef readonly %req, i32 noundef %opt, i32 noundef %timeout, ptr noundef %hci_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 163
  tail call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef %req, i32 noundef %opt, i32 noundef %timeout, ptr noundef %hci_status)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -100, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %req_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hci_prepare_cmd(ptr noundef %hdev, i16 noundef zeroext %opcode, i32 noundef %plen, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %plen, 11
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #10
  %4 = tail call i16 @llvm.bswap.i16(i16 %opcode)
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %call1, align 1
  %conv = trunc i32 %plen to i8
  %plen3 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %plen3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %plen3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plen)
  %tobool4.not = icmp eq i32 %plen, 0
  br i1 %tobool4.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %plen) #10
  %7 = call ptr @memcpy(ptr %call.i, ptr %param, i32 %plen)
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_prepare_cmd, %if.then12)) #10
          to label %do.end [label %if.then12], !srcloc !197

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len13, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cb, align 8
  %opcode18 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %opcode18 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %opcode, ptr %opcode18, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_add_ev(ptr noundef %req, i16 noundef zeroext %opcode, i32 noundef %plen, ptr nocapture noundef readonly %param, i8 noundef zeroext %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_ev, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %conv = zext i16 %opcode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv, i32 noundef %plen) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %err = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call ptr @hci_prepare_cmd(ptr noundef %1, i16 noundef zeroext %opcode, i32 noundef %plen, ptr noundef %param)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %name10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %conv12 = zext i16 %opcode to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10, i32 noundef %conv12) #10
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -12, ptr %err, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %cmd_q = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %cmd_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_q, align 4
  %cmp.i.not = icmp eq ptr %6, %cmd_q
  br i1 %cmp.i.not, label %if.then17, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 14
  %7 = ptrtoint ptr %req_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %req_flags, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %req_flags, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %req_event = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 3, i32 15
  %10 = ptrtoint ptr %req_event to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %event, ptr %req_event, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q, ptr noundef nonnull %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then9, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_add(ptr noundef %req, i16 noundef zeroext %opcode, i32 noundef %plen, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hci_req_add_ev(ptr noundef %req, i16 noundef zeroext %opcode, i32 noundef %plen, ptr noundef %param, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_write_fast_connectable(ptr noundef %req, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hci_ver = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %hci_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hci_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %enable, label %if.end4.if.end8_crit_edge, label %if.else

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %def_page_scan_type = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 86
  %6 = ptrtoint ptr %def_page_scan_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %def_page_scan_type, align 2
  %def_page_scan_int = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 87
  %8 = ptrtoint ptr %def_page_scan_int to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %def_page_scan_int, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end4.if.end8_crit_edge
  %type.0 = phi i8 [ %7, %if.else ], [ 1, %if.end4.if.end8_crit_edge ]
  %storemerge = phi i16 [ %10, %if.else ], [ 1, %if.end4.if.end8_crit_edge ]
  %def_page_scan_window = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 88
  %11 = ptrtoint ptr %def_page_scan_window to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %def_page_scan_window, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %page_scan_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 40
  %14 = ptrtoint ptr %page_scan_interval to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page_scan_interval, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %storemerge)
  %cmp12.not = icmp eq i16 %16, %storemerge
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end8.if.then19_crit_edge

if.end8.if.then19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end8
  %page_scan_window = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 41
  %17 = ptrtoint ptr %page_scan_window to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %page_scan_window, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %12)
  %cmp17.not = icmp eq i16 %18, %12
  br i1 %cmp17.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end8.if.then19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_write_fast_connectable, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3100, i32 noundef 4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then19
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end20_crit_edge

do.end.i.if.end20_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 15, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 7180, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %26 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %storemerge, ptr %call.i.i, align 1
  %acp.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %28 = ptrtoint ptr %acp.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %13, ptr %acp.sroa.6.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_write_fast_connectable, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i56, i32 noundef %30) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3100) #10
  %31 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -12, ptr %err.i, align 4
  br label %if.end20

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %33 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3100, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %34 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %36 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %req_flags.i, align 2
  %38 = or i8 %37, 1
  store i8 %38, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %39 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end21.i, %if.then9.i, %do.end.i.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %page_scan_type = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 42
  %40 = ptrtoint ptr %page_scan_type to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %page_scan_type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %type.0)
  %cmp23.not = icmp eq i8 %41, %type.0
  br i1 %cmp23.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  %42 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_write_fast_connectable, %if.then.i39)) #10
          to label %do.end.i42 [label %if.then.i39], !srcloc !197

if.then.i39:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %name.i38 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i38, i32 noundef 3143, i32 noundef 1) #10
  br label %do.end.i42

do.end.i42:                                       ; preds = %if.then.i39, %if.then25
  %err.i40 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %44 = ptrtoint ptr %err.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i41 = icmp eq i32 %45, 0
  br i1 %tobool4.not.i41, label %if.end6.i45, label %do.end.i42.cleanup_crit_edge

do.end.i42.cleanup_crit_edge:                     ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i45:                                      ; preds = %do.end.i42
  %call.i.i.i58 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i59 = icmp eq ptr %call.i.i.i58, null
  br i1 %tobool.not.i.i59, label %if.then9.i47, label %if.end.i66

if.end.i66:                                       ; preds = %if.end6.i45
  %data.i.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i60, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %47, i32 8
  store ptr %add.ptr.i.i.i61, ptr %data.i.i.i60, align 4
  %tail.i.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i62, align 8
  %add.ptr1.i.i.i63 = getelementptr i8, ptr %49, i32 8
  store ptr %add.ptr1.i.i.i63, ptr %tail.i.i.i62, align 8
  %call1.i64 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i58, i32 noundef 3) #10
  %50 = ptrtoint ptr %call1.i64 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 18188, ptr %call1.i64, align 1
  %plen3.i65 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i64, i32 0, i32 1
  %51 = ptrtoint ptr %plen3.i65 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %plen3.i65, align 1
  %call.i.i67 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i58, i32 noundef 1) #10
  %52 = ptrtoint ptr %call.i.i67 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %type.0, ptr %call.i.i67, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_write_fast_connectable, %if.then12.i70)) #10
          to label %if.end14.i50 [label %if.then12.i70], !srcloc !197

if.then12.i70:                                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  %name.i68 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  %len13.i69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 6
  %53 = ptrtoint ptr %len13.i69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len13.i69, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i68, i32 noundef %54) #10
  br label %if.end14.i50

if.then9.i47:                                     ; preds = %if.end6.i45
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i46 = getelementptr inbounds %struct.hci_dev, ptr %43, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i46, i32 noundef 3143) #10
  %55 = ptrtoint ptr %err.i40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -12, ptr %err.i40, align 4
  br label %cleanup

if.end14.i50:                                     ; preds = %if.then12.i70, %if.end.i66
  %cb.i71 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 3
  %56 = ptrtoint ptr %cb.i71 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %cb.i71, align 8
  %opcode18.i72 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 3, i32 12
  %57 = ptrtoint ptr %opcode18.i72 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 3143, ptr %opcode18.i72, align 4
  %cmd_q.i48 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %58 = ptrtoint ptr %cmd_q.i48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd_q.i48, align 4
  %cmp.i.not.i49 = icmp eq ptr %59, %cmd_q.i48
  br i1 %cmp.i.not.i49, label %if.then17.i52, label %if.end14.i50.if.end21.i54_crit_edge

if.end14.i50.if.end21.i54_crit_edge:              ; preds = %if.end14.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i54

if.then17.i52:                                    ; preds = %if.end14.i50
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i51 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 3, i32 14
  %60 = ptrtoint ptr %req_flags.i51 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %req_flags.i51, align 2
  %62 = or i8 %61, 1
  store i8 %62, ptr %req_flags.i51, align 2
  br label %if.end21.i54

if.end21.i54:                                     ; preds = %if.then17.i52, %if.end14.i50.if.end21.i54_crit_edge
  %req_event.i53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i58, i32 0, i32 3, i32 15
  %63 = ptrtoint ptr %req_event.i53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %req_event.i53, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i48, ptr noundef nonnull %call.i.i.i58) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i54, %if.then9.i47, %do.end.i42.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_name(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %cp.sroa.0 = alloca [248 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %cp.sroa.0)
  %dev_name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 13
  %2 = call ptr @memcpy(ptr %cp.sroa.0, ptr %dev_name, i32 248)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_name, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3091, i32 noundef 248) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not.i = icmp eq i32 %4, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 259, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %9 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 4876, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %10 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -8, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 248) #10
  %11 = call ptr @memcpy(ptr %call.i.i, ptr %cp.sroa.0, i32 248)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_name, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i4 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i4, i32 noundef %13) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3091) #10
  %14 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3091, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %19 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %req_flags.i, align 2
  %21 = or i8 %20, 1
  store i8 %21, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %22 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %cp.sroa.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_eir(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_write_eir, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 241, ptr nonnull %cp) #10
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %arrayidx4 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dev_flags, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %16 = call ptr @memset(ptr %cp, i32 0, i32 241)
  %data = getelementptr inbounds %struct.hci_cp_write_eir, ptr %cp, i32 0, i32 1
  call void @eir_create(ptr noundef %1, ptr noundef %data) #10
  %eir = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 15
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(240) %data, ptr noundef dereferenceable(240) %eir, i32 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end27

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %17 = call ptr @memcpy(ptr %eir, ptr %data, i32 240)
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_eir, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3154, i32 noundef 241) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end27
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call7.i = call ptr @hci_prepare_cmd(ptr noundef %19, i16 noundef zeroext 3154, i32 noundef 241, ptr noundef nonnull %cp) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %19, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3154) #10
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.end6.i
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 3, i32 14
  %25 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_flags.i, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 241, ptr nonnull %cp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eir_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext %rpa_le_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %scanning_paused = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 178
  %2 = ptrtoint ptr %scanning_paused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scanning_paused, align 8, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_scan_disable.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !197

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_scan_disable.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.13, ptr noundef %name) #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 37
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %6)
  %.not = icmp eq i8 %6, 96
  br i1 %.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8258, i32 noundef 6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then14
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end17_crit_edge

do.end.i.if.end17_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %13 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 16928, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %14 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #10
  %15 = call ptr @memset(ptr %call.i.i, i32 0, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i69 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i69, i32 noundef %17) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8258) #10
  %18 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -12, ptr %err.i, align 4
  br label %if.end17

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 8258, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %23 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %req_flags.i, align 2
  %25 = or i8 %24, 1
  store i8 %25, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %26 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end17

if.else:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then.i34)) #10
          to label %do.end.i37 [label %if.then.i34], !srcloc !197

if.then.i34:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i33, i32 noundef 8204, i32 noundef 2) #10
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then.i34, %if.else
  %err.i35 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %27 = ptrtoint ptr %err.i35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i36 = icmp eq i32 %28, 0
  br i1 %tobool4.not.i36, label %if.end6.i40, label %do.end.i37.if.end17_crit_edge

do.end.i37.if.end17_crit_edge:                    ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end6.i40:                                      ; preds = %do.end.i37
  %call.i.i.i71 = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i72 = icmp eq ptr %call.i.i.i71, null
  br i1 %tobool.not.i.i72, label %if.then9.i42, label %if.end.i79

if.end.i79:                                       ; preds = %if.end6.i40
  %data.i.i.i73 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i73, align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr.i.i.i74, ptr %data.i.i.i73, align 4
  %tail.i.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i75, align 8
  %add.ptr1.i.i.i76 = getelementptr i8, ptr %32, i32 8
  store ptr %add.ptr1.i.i.i76, ptr %tail.i.i.i75, align 8
  %call1.i77 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i71, i32 noundef 3) #10
  %33 = ptrtoint ptr %call1.i77 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 3104, ptr %call1.i77, align 1
  %plen3.i78 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i77, i32 0, i32 1
  %34 = ptrtoint ptr %plen3.i78 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %plen3.i78, align 1
  %call.i.i80 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i71, i32 noundef 2) #10
  %35 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call.i.i80, align 1
  %cp15.sroa.6.0.call.i.i80.sroa_idx = getelementptr inbounds i8, ptr %call.i.i80, i32 1
  %36 = ptrtoint ptr %cp15.sroa.6.0.call.i.i80.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %cp15.sroa.6.0.call.i.i80.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then12.i83)) #10
          to label %if.end14.i45 [label %if.then12.i83], !srcloc !197

if.then12.i83:                                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  %name.i81 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i82 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 6
  %37 = ptrtoint ptr %len13.i82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len13.i82, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i81, i32 noundef %38) #10
  br label %if.end14.i45

if.then9.i42:                                     ; preds = %if.end6.i40
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i41, i32 noundef 8204) #10
  %39 = ptrtoint ptr %err.i35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -12, ptr %err.i35, align 4
  br label %if.end17

if.end14.i45:                                     ; preds = %if.then12.i83, %if.end.i79
  %cb.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i84 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %cb.i84, align 8
  %opcode18.i85 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %opcode18.i85 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 8204, ptr %opcode18.i85, align 4
  %cmd_q.i43 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %cmd_q.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd_q.i43, align 4
  %cmp.i.not.i44 = icmp eq ptr %43, %cmd_q.i43
  br i1 %cmp.i.not.i44, label %if.then17.i47, label %if.end14.i45.if.end21.i49_crit_edge

if.end14.i45.if.end21.i49_crit_edge:              ; preds = %if.end14.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i49

if.then17.i47:                                    ; preds = %if.end14.i45
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i46 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 3, i32 14
  %44 = ptrtoint ptr %req_flags.i46 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %req_flags.i46, align 2
  %46 = or i8 %45, 1
  store i8 %46, ptr %req_flags.i46, align 2
  br label %if.end21.i49

if.end21.i49:                                     ; preds = %if.then17.i47, %if.end14.i45.if.end21.i49_crit_edge
  %req_event.i48 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i71, i32 0, i32 3, i32 15
  %47 = ptrtoint ptr %req_event.i48 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %req_event.i48, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i43, ptr noundef nonnull %call.i.i.i71) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end21.i49, %if.then9.i42, %do.end.i37.if.end17_crit_edge, %if.end21.i, %if.then9.i, %do.end.i.if.end17_crit_edge
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i, align 4
  %50 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool20.not = icmp eq i32 %50, 0
  %brmerge = or i1 %tobool20.not, %rpa_le_conn
  br i1 %brmerge, label %if.end17.cleanup_crit_edge, label %if.then23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then.i52)) #10
          to label %do.end.i55 [label %if.then.i52], !srcloc !197

if.then.i52:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %name.i51 = getelementptr inbounds %struct.hci_dev, ptr %52, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i51, i32 noundef 8237, i32 noundef 1) #10
  br label %do.end.i55

do.end.i55:                                       ; preds = %if.then.i52, %if.then23
  %err.i53 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %53 = ptrtoint ptr %err.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %err.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool4.not.i54 = icmp eq i32 %54, 0
  br i1 %tobool4.not.i54, label %if.end6.i58, label %do.end.i55.cleanup_crit_edge

do.end.i55.cleanup_crit_edge:                     ; preds = %do.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i58:                                      ; preds = %do.end.i55
  %call.i.i.i88 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i89 = icmp eq ptr %call.i.i.i88, null
  br i1 %tobool.not.i.i89, label %if.then9.i60, label %if.end.i96

if.end.i96:                                       ; preds = %if.end6.i58
  %data.i.i.i90 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i90, align 4
  %add.ptr.i.i.i91 = getelementptr i8, ptr %56, i32 8
  store ptr %add.ptr.i.i.i91, ptr %data.i.i.i90, align 4
  %tail.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i92, align 8
  %add.ptr1.i.i.i93 = getelementptr i8, ptr %58, i32 8
  store ptr %add.ptr1.i.i.i93, ptr %tail.i.i.i92, align 8
  %call1.i94 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i88, i32 noundef 3) #10
  %59 = ptrtoint ptr %call1.i94 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 11552, ptr %call1.i94, align 1
  %plen3.i95 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i94, i32 0, i32 1
  %60 = ptrtoint ptr %plen3.i95 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %plen3.i95, align 1
  %call.i.i97 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i88, i32 noundef 1) #10
  %61 = ptrtoint ptr %call.i.i97 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %call.i.i97, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_scan_disable, %if.then12.i100)) #10
          to label %if.end14.i63 [label %if.then12.i100], !srcloc !197

if.then12.i100:                                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #12
  %name.i98 = getelementptr inbounds %struct.hci_dev, ptr %52, i32 0, i32 2
  %len13.i99 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 6
  %62 = ptrtoint ptr %len13.i99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len13.i99, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i98, i32 noundef %63) #10
  br label %if.end14.i63

if.then9.i60:                                     ; preds = %if.end6.i58
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i59 = getelementptr inbounds %struct.hci_dev, ptr %52, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i59, i32 noundef 8237) #10
  %64 = ptrtoint ptr %err.i53 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -12, ptr %err.i53, align 4
  br label %cleanup

if.end14.i63:                                     ; preds = %if.then12.i100, %if.end.i96
  %cb.i101 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 3
  %65 = ptrtoint ptr %cb.i101 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %cb.i101, align 8
  %opcode18.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 3, i32 12
  %66 = ptrtoint ptr %opcode18.i102 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 8237, ptr %opcode18.i102, align 4
  %cmd_q.i61 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %67 = ptrtoint ptr %cmd_q.i61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmd_q.i61, align 4
  %cmp.i.not.i62 = icmp eq ptr %68, %cmd_q.i61
  br i1 %cmp.i.not.i62, label %if.then17.i65, label %if.end14.i63.if.end21.i67_crit_edge

if.end14.i63.if.end21.i67_crit_edge:              ; preds = %if.end14.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i67

if.then17.i65:                                    ; preds = %if.end14.i63
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i64 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 3, i32 14
  %69 = ptrtoint ptr %req_flags.i64 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %req_flags.i64, align 2
  %71 = or i8 %70, 1
  store i8 %71, ptr %req_flags.i64, align 2
  br label %if.end21.i67

if.end21.i67:                                     ; preds = %if.then17.i65, %if.end14.i63.if.end21.i67_crit_edge
  %req_event.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i88, i32 0, i32 3, i32 15
  %72 = ptrtoint ptr %req_event.i66 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %req_event.i66, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i61, ptr noundef nonnull %call.i.i.i88) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i67, %if.then9.i60, %do.end.i55.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_add_le_passive_scan(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %num_entries.i = alloca i8, align 1
  %own_addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_addr_type) #10
  %2 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %own_addr_type, align 1, !annotation !202
  %scanning_paused = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 178
  %3 = ptrtoint ptr %scanning_paused to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %scanning_paused, align 8, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_passive_scan, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !197

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.13, ptr noundef %name) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %5 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dev_flags.i, align 4
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i = icmp ne i32 %7, 0
  %call8 = call i32 @hci_update_random_address(ptr noundef %req, i1 noundef zeroext false, i1 noundef zeroext %tobool.i, ptr noundef nonnull %own_addr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %enable_advmon_interleave_scan = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 81
  %8 = ptrtoint ptr %enable_advmon_interleave_scan to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_advmon_interleave_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end11.do.body17_crit_edge, label %land.lhs.true

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

land.lhs.true:                                    ; preds = %if.end11
  %call13 = tail call fastcc zeroext i1 @__hci_update_interleaved_scan(ptr noundef %1)
  br i1 %call13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body17_crit_edge

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true.do.body17_crit_edge, %if.end11.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_passive_scan, %if.then29)) #10
          to label %do.end34 [label %if.then29], !srcloc !197

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %name30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %interleave_scan_state = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 224
  %10 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interleave_scan_state, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.15, ptr noundef %name30, i32 noundef %11) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num_entries.i) #10
  %suspended.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 179
  %14 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %suspended.i, align 1, !range !201
  %le_features.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %le_features.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %le_features.i, align 2
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %extract.t140.i = icmp ne i8 %15, 0
  br i1 %tobool2.not.i, label %do.end34.if.end.i_crit_edge, label %land.lhs.true.i

do.end34.if.end.i_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 206, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %21 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i = icmp ne i32 %21, 0
  %spec.select.i = select i1 %tobool3.not.i, i1 true, i1 %extract.t140.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %do.end34.if.end.i_crit_edge
  %allow_rpa.0.off0.i = phi i1 [ %extract.t140.i, %do.end34.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %le_accept_list.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 192
  %22 = ptrtoint ptr %le_accept_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %b.0150.i = load ptr, ptr %le_accept_list.i, align 4
  %cmp.not151.i = icmp eq ptr %b.0150.i, %le_accept_list.i
  br i1 %cmp.not151.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %pend_le_conns.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 195
  %pend_le_reports.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 196
  %arrayidx.i142.i = getelementptr %struct.hci_dev, ptr %13, i32 0, i32 206, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %b.0154.i = phi ptr [ %b.0150.i, %for.body.lr.ph.i ], [ %b.0.i, %for.inc.i.for.body.i_crit_edge ]
  %inc148152.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc147.i, %for.inc.i.for.body.i_crit_edge ]
  %bdaddr.i = getelementptr inbounds %struct.bdaddr_list, ptr %b.0154.i, i32 0, i32 1
  %bdaddr_type.i = getelementptr inbounds %struct.bdaddr_list, ptr %b.0154.i, i32 0, i32 2
  %23 = ptrtoint ptr %bdaddr_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bdaddr_type.i, align 2
  %call6.i = tail call ptr @hci_pend_le_action_lookup(ptr noundef %pend_le_conns.i, ptr noundef %bdaddr.i, i8 noundef zeroext %24) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  %25 = ptrtoint ptr %bdaddr_type.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bdaddr_type.i, align 2
  %call11.i = tail call ptr @hci_pend_le_action_lookup(ptr noundef %pend_le_reports.i, ptr noundef %bdaddr.i, i8 noundef zeroext %26) #10
  %tobool12.not.i = icmp eq ptr %call11.i, null
  %or.cond.i = select i1 %tobool7.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %bdaddr_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bdaddr_type.i, align 2
  tail call fastcc void @del_from_accept_list(ptr noundef %req, ptr noundef %bdaddr.i, i8 noundef zeroext %28) #10
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body.i
  br i1 %allow_rpa.0.off0.i, label %if.end20.i.if.end33.i_crit_edge, label %land.lhs.true22.i

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.lhs.true22.i:                                ; preds = %if.end20.i
  %29 = ptrtoint ptr %arrayidx.i142.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i142.i, align 4
  %31 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool26.not.i = icmp eq i32 %31, 0
  br i1 %tobool26.not.i, label %land.lhs.true27.i, label %land.lhs.true22.i.if.end33.i_crit_edge

land.lhs.true22.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %32 = ptrtoint ptr %bdaddr_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bdaddr_type.i, align 2
  %call30.i = tail call ptr @hci_find_irk_by_addr(ptr noundef %13, ptr noundef %bdaddr.i, i8 noundef zeroext %33) #10
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %land.lhs.true27.i.if.end33.i_crit_edge, label %land.lhs.true27.i.update_accept_list.exit_crit_edge

land.lhs.true27.i.update_accept_list.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_accept_list.exit

land.lhs.true27.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true27.i.if.end33.i_crit_edge, %land.lhs.true22.i.if.end33.i_crit_edge, %if.end20.i.if.end33.i_crit_edge
  %inc.i = add i8 %inc148152.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end33.i, %if.then17.i
  %inc147.i = phi i8 [ %inc.i, %if.end33.i ], [ %inc148152.i, %if.then17.i ]
  %34 = ptrtoint ptr %b.0154.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %b.0.i = load ptr, ptr %b.0154.i, align 4
  %cmp.not.i = icmp eq ptr %b.0.i, %le_accept_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %inc148.lcssa.i = phi i8 [ 0, %if.end.i.for.end.i_crit_edge ], [ %inc147.i, %for.inc.i.for.end.i_crit_edge ]
  %35 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %inc148.lcssa.i, ptr %num_entries.i, align 1
  %pend_le_conns40.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 195
  br label %for.cond44.i

for.cond44.i:                                     ; preds = %for.body49.i.for.cond44.i_crit_edge, %for.end.i
  %.pn.in.i = phi ptr [ %pend_le_conns40.i, %for.end.i ], [ %.pn.i, %for.body49.i.for.cond44.i_crit_edge ]
  %36 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp46.not.i = icmp eq ptr %.pn.i, %pend_le_conns40.i
  br i1 %cmp46.not.i, label %for.end61.i, label %for.body49.i

for.body49.i:                                     ; preds = %for.cond44.i
  %params.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %call51.i = call fastcc i32 @add_to_accept_list(ptr noundef %req, ptr noundef %params.0.i, ptr noundef nonnull %num_entries.i, i1 noundef zeroext %allow_rpa.0.off0.i) #10
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.body49.i.for.cond44.i_crit_edge, label %for.body49.i.update_accept_list.exit_crit_edge

for.body49.i.update_accept_list.exit_crit_edge:   ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_accept_list.exit

for.body49.i.for.cond44.i_crit_edge:              ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond44.i

for.end61.i:                                      ; preds = %for.cond44.i
  %pend_le_reports63.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 196
  br label %for.cond67.i

for.cond67.i:                                     ; preds = %for.body73.i.for.cond67.i_crit_edge, %for.end61.i
  %.pn141.in.i = phi ptr [ %pend_le_reports63.i, %for.end61.i ], [ %.pn141.i, %for.body73.i.for.cond67.i_crit_edge ]
  %37 = ptrtoint ptr %.pn141.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn141.i = load ptr, ptr %.pn141.in.i, align 4
  %cmp70.not.i = icmp eq ptr %.pn141.i, %pend_le_reports63.i
  br i1 %cmp70.not.i, label %for.end85.i, label %for.body73.i

for.body73.i:                                     ; preds = %for.cond67.i
  %params.1.i = getelementptr i8, ptr %.pn141.i, i32 -8
  %call75.i = call fastcc i32 @add_to_accept_list(ptr noundef %req, ptr noundef %params.1.i, ptr noundef nonnull %num_entries.i, i1 noundef zeroext %allow_rpa.0.off0.i) #10
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %for.body73.i.for.cond67.i_crit_edge, label %for.body73.i.update_accept_list.exit_crit_edge

for.body73.i.update_accept_list.exit_crit_edge:   ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_accept_list.exit

for.body73.i.for.cond67.i_crit_edge:              ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond67.i

for.end85.i:                                      ; preds = %for.cond67.i
  %xa_head.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 218, i32 0, i32 2
  %38 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xa_head.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %39, null
  br i1 %cmp.i.i.i, label %idr_is_empty.exit.i, label %for.end85.i.land.lhs.true87.i_crit_edge

for.end85.i.land.lhs.true87.i_crit_edge:          ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true87.i

idr_is_empty.exit.i:                              ; preds = %for.end85.i
  %adv_monitors_idr.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 218
  %call2.i.i = tail call i32 @radix_tree_tagged(ptr noundef %adv_monitors_idr.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.i.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.i.not.i, label %idr_is_empty.exit.i.land.lhs.true87.i_crit_edge, label %idr_is_empty.exit.i.if.end98.i_crit_edge

idr_is_empty.exit.i.if.end98.i_crit_edge:         ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

idr_is_empty.exit.i.land.lhs.true87.i_crit_edge:  ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true87.i

land.lhs.true87.i:                                ; preds = %idr_is_empty.exit.i.land.lhs.true87.i_crit_edge, %for.end85.i.land.lhs.true87.i_crit_edge
  %40 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %suspended.i, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool89.not.i = icmp eq i8 %41, 0
  br i1 %tobool89.not.i, label %land.lhs.true90.i, label %land.lhs.true87.i.if.end98.i_crit_edge

land.lhs.true87.i.if.end98.i_crit_edge:           ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

land.lhs.true90.i:                                ; preds = %land.lhs.true87.i
  %call91.i = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call91.i)
  %cmp92.i = icmp eq i32 %call91.i, 1
  br i1 %cmp92.i, label %land.lhs.true94.i, label %land.lhs.true90.i.if.end98.i_crit_edge

land.lhs.true90.i.if.end98.i_crit_edge:           ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

land.lhs.true94.i:                                ; preds = %land.lhs.true90.i
  %interleave_scan_state.i = getelementptr inbounds %struct.hci_dev, ptr %13, i32 0, i32 224
  %42 = ptrtoint ptr %interleave_scan_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %interleave_scan_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp95.not.i = icmp eq i32 %43, 2
  br i1 %cmp95.not.i, label %land.lhs.true94.i.if.end98.i_crit_edge, label %land.lhs.true94.i.update_accept_list.exit_crit_edge

land.lhs.true94.i.update_accept_list.exit_crit_edge: ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_accept_list.exit

land.lhs.true94.i.if.end98.i_crit_edge:           ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

if.end98.i:                                       ; preds = %land.lhs.true94.i.if.end98.i_crit_edge, %land.lhs.true90.i.if.end98.i_crit_edge, %land.lhs.true87.i.if.end98.i_crit_edge, %idr_is_empty.exit.i.if.end98.i_crit_edge
  br label %update_accept_list.exit

update_accept_list.exit:                          ; preds = %if.end98.i, %land.lhs.true94.i.update_accept_list.exit_crit_edge, %for.body73.i.update_accept_list.exit_crit_edge, %for.body49.i.update_accept_list.exit_crit_edge, %land.lhs.true27.i.update_accept_list.exit_crit_edge
  %retval.0.i115 = phi i8 [ 1, %if.end98.i ], [ 0, %land.lhs.true94.i.update_accept_list.exit_crit_edge ], [ 0, %for.body73.i.update_accept_list.exit_crit_edge ], [ 0, %for.body49.i.update_accept_list.exit_crit_edge ], [ 0, %land.lhs.true27.i.update_accept_list.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num_entries.i) #10
  %44 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %dev_flags.i, align 4
  %46 = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool38.not = icmp eq i32 %46, 0
  br i1 %tobool38.not, label %update_accept_list.exit.if.end45_crit_edge, label %land.lhs.true39

update_accept_list.exit.if.end45_crit_edge:       ; preds = %update_accept_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true39:                                  ; preds = %update_accept_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %47 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %le_features, align 2
  %49 = or i8 %retval.0.i115, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool41.not125 = icmp slt i8 %48, 0
  %spec.select = select i1 %tobool41.not125, i8 %49, i8 %retval.0.i115
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true39, %update_accept_list.exit.if.end45_crit_edge
  %filter_policy.0 = phi i8 [ %retval.0.i115, %update_accept_list.exit.if.end45_crit_edge ], [ %spec.select, %land.lhs.true39 ]
  %suspended = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 179
  %50 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %suspended, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool46.not = icmp eq i8 %51, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %le_scan_window_suspend = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 50
  %le_scan_int_suspend = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 49
  br label %do.body57

if.else:                                          ; preds = %if.end45
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  %52 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.else.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i117, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i117:                               ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i116 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i116, label %land.lhs.true.i117.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i117.do.end.i_crit_edge:            ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i117
  %.b37.i = load i1, ptr @hci_is_le_conn_scanning.__warned, align 1
  br i1 %.b37.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hci_is_le_conn_scanning.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 711, ptr noundef nonnull @.str.55) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i117.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %56 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %c.060.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not61.i = icmp eq ptr %c.060.i, %conn_hash.i
  br i1 %cmp.not61.i, label %do.end.i.for.end.i121_crit_edge, label %do.end.i.for.body.i118_crit_edge

do.end.i.for.body.i118_crit_edge:                 ; preds = %do.end.i
  br label %for.body.i118

do.end.i.for.end.i121_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i121

for.body.i118:                                    ; preds = %for.inc.i120.for.body.i118_crit_edge, %do.end.i.for.body.i118_crit_edge
  %c.062.i = phi ptr [ %c.0.i, %for.inc.i120.for.body.i118_crit_edge ], [ %c.060.i, %do.end.i.for.body.i118_crit_edge ]
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 14
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %58)
  %cmp11.i = icmp eq i8 %58, -128
  br i1 %cmp11.i, label %land.lhs.true13.i, label %for.body.i118.for.inc.i120_crit_edge

for.body.i118.for.inc.i120_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i120

land.lhs.true13.i:                                ; preds = %for.body.i118
  %state.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 12
  %59 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %60)
  %cmp15.i = icmp eq i16 %60, 5
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true13.i.for.inc.i120_crit_edge

land.lhs.true13.i.for.inc.i120_crit_edge:         ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i120

land.lhs.true17.i:                                ; preds = %land.lhs.true13.i
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 47
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags.i, align 4
  %63 = and i32 %62, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool19.not.i = icmp eq i32 %63, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.for.inc.i120_crit_edge, label %if.then20.i

land.lhs.true17.i.for.inc.i120_crit_edge:         ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i120

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %call.i38.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i38.i, label %if.then20.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i41.i

if.then20.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i41.i:                              ; preds = %if.then20.i
  %call1.i39.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %tobool.not.i40.i = icmp eq i32 %call1.i39.i, 0
  br i1 %tobool.not.i40.i, label %land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i43.i

land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i43.i:                             ; preds = %land.lhs.true.i41.i
  %.b4.i42.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i, label %land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i44.i

land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i44.i:                                    ; preds = %land.lhs.true2.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i44.i, %land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge, %if.then20.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %64 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i54.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i54.i to ptr
  %preempt_count.i.i.i.i55.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i55.i, align 4
  %sub.i.i.i56.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i56.i, ptr %preempt_count.i.i.i.i55.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %le_scan_window_connect = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 56
  %le_scan_int_connect = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 55
  br label %do.body57

for.inc.i120:                                     ; preds = %land.lhs.true17.i.for.inc.i120_crit_edge, %land.lhs.true13.i.for.inc.i120_crit_edge, %for.body.i118.for.inc.i120_crit_edge
  %68 = ptrtoint ptr %c.062.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %c.0.i = load volatile ptr, ptr %c.062.i, align 4
  %cmp.not.i119 = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i119, label %for.inc.i120.for.end.i121_crit_edge, label %for.inc.i120.for.body.i118_crit_edge

for.inc.i120.for.body.i118_crit_edge:             ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i118

for.inc.i120.for.end.i121_crit_edge:              ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i121

for.end.i121:                                     ; preds = %for.inc.i120.for.end.i121_crit_edge, %do.end.i.for.end.i121_crit_edge
  %call.i47.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i47.i, label %for.end.i121.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true.i50.i

for.end.i121.rcu_read_unlock.exit57.i_crit_edge:  ; preds = %for.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57.i

land.lhs.true.i50.i:                              ; preds = %for.end.i121
  %call1.i48.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool.not.i49.i, label %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true2.i52.i

land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57.i

land.lhs.true2.i52.i:                             ; preds = %land.lhs.true.i50.i
  %.b4.i51.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51.i, label %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, label %if.then.i53.i

land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57.i

if.then.i53.i:                                    ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit57.i

rcu_read_unlock.exit57.i:                         ; preds = %if.then.i53.i, %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, %for.end.i121.rcu_read_unlock.exit57.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  %69 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i54.i.c = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i54.i.c to ptr
  %preempt_count.i.i.i.i55.i.c = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i55.i.c to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i55.i.c, align 4
  %sub.i.i.i56.i.c = add i32 %72, -1
  store volatile i32 %sub.i.i.i56.i.c, ptr %preempt_count.i.i.i.i55.i.c, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call51 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %1) #10
  br i1 %call51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %rcu_read_unlock.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  %le_scan_window_adv_monitor = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 54
  %le_scan_int_adv_monitor = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 53
  br label %do.body57

if.else53:                                        ; preds = %rcu_read_unlock.exit57.i
  call void @__sanitizer_cov_trace_pc() #12
  %le_scan_window = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 48
  %le_scan_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 47
  br label %do.body57

do.body57:                                        ; preds = %if.else53, %if.then52, %rcu_read_unlock.exit.i, %if.then47
  %tobool76 = phi i1 [ true, %if.then47 ], [ false, %if.then52 ], [ true, %if.else53 ], [ true, %rcu_read_unlock.exit.i ]
  %interval.0.in = phi ptr [ %le_scan_int_suspend, %if.then47 ], [ %le_scan_int_adv_monitor, %if.then52 ], [ %le_scan_interval, %if.else53 ], [ %le_scan_int_connect, %rcu_read_unlock.exit.i ]
  %window.0.in = phi ptr [ %le_scan_window_suspend, %if.then47 ], [ %le_scan_window_adv_monitor, %if.then52 ], [ %le_scan_window, %if.else53 ], [ %le_scan_window_connect, %rcu_read_unlock.exit.i ]
  %73 = ptrtoint ptr %window.0.in to i32
  call void @__asan_load2_noabort(i32 %73)
  %window.0 = load i16, ptr %window.0.in, align 4
  %74 = ptrtoint ptr %interval.0.in to i32
  call void @__asan_load2_noabort(i32 %74)
  %interval.0 = load i16, ptr %interval.0.in, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_passive_scan, %if.then69)) #10
          to label %do.end75 [label %if.then69], !srcloc !197

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %name70 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %conv72 = zext i8 %filter_policy.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.16, ptr noundef %name70, i32 noundef %conv72) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %do.body57
  %75 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %own_addr_type, align 1
  tail call fastcc void @hci_req_start_scan(ptr noundef %req, i8 noundef zeroext 0, i16 noundef zeroext %interval.0, i16 noundef zeroext %window.0, i8 noundef zeroext %76, i8 noundef zeroext %filter_policy.0, i1 noundef zeroext %tobool76, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %land.lhs.true.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_addr_type) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_update_random_address(ptr noundef %req, i1 noundef zeroext %require_privacy, i1 noundef zeroext %use_rpa, ptr nocapture noundef writeonly %own_addr_type) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  %nrpa = alloca %struct.bdaddr_t, align 1
  %.compoundliteral45 = alloca %struct.bdaddr_t, align 1
  %.compoundliteral61 = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  br i1 %use_rpa, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %le_features, align 2
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %storemerge = phi i8 [ 1, %if.else ], [ 3, %land.lhs.true.if.end_crit_edge ]
  %8 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %own_addr_type, align 1
  %rpa = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 223
  %9 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp120 = call i32 @bcmp(ptr noundef dereferenceable(6) %rpa, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp120)
  %tobool11.not = icmp eq i32 %bcmp120, 0
  br i1 %tobool11.not, label %if.end.if.end18_crit_edge, label %land.lhs.true12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.end
  %dev_flags13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %10 = ptrtoint ptr %dev_flags13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dev_flags13, align 4
  %12 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end18_crit_edge

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true12.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %irk = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 220
  %call21 = tail call i32 @smp_generate_rpa(ptr noundef %1, ptr noundef %irk, ptr noundef %rpa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %name) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @set_random_addr(ptr noundef %req, ptr noundef %rpa)
  br label %cleanup

if.end27:                                         ; preds = %entry
  br i1 %require_privacy, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %nrpa) #10
  %13 = getelementptr inbounds [6 x i8], ptr %nrpa, i32 0, i32 5
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  %14 = call ptr @memset(ptr %nrpa, i32 255, i32 6)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then29
  call void @get_random_bytes(ptr noundef nonnull %nrpa, i32 noundef 6) #10
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %13, align 1
  %17 = and i8 %16, 63
  store i8 %17, ptr %13, align 1
  %bcmp119 = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %nrpa, i32 6) #13
  %tobool36.not = icmp eq i32 %bcmp119, 0
  br i1 %tobool36.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %own_addr_type, align 1
  call fastcc void @set_random_addr(ptr noundef %req, ptr noundef nonnull %nrpa)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %nrpa) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %arrayidx.i106 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %19 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i106, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool43.not = icmp eq i32 %21, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.end39.if.then71_crit_edge

if.end39.if.then71_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end39
  %bdaddr44 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  %22 = call ptr @memset(ptr %.compoundliteral45, i32 0, i32 6)
  %bcmp117 = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr44, ptr noundef nonnull dereferenceable(6) %.compoundliteral45, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp117)
  %tobool54.not = icmp eq i32 %bcmp117, 0
  br i1 %tobool54.not, label %lor.lhs.false.if.then71_crit_edge, label %lor.lhs.false55

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false55:                                  ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i106, align 4
  %and1.i110 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110)
  %tobool59.not = icmp eq i32 %and1.i110, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %lor.lhs.false55.if.end78_crit_edge

lor.lhs.false55.if.end78_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true60:                                  ; preds = %lor.lhs.false55
  %static_addr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  %25 = call ptr @memset(ptr %.compoundliteral61, i32 0, i32 6)
  %bcmp118 = call i32 @bcmp(ptr noundef dereferenceable(6) %static_addr, ptr noundef nonnull dereferenceable(6) %.compoundliteral61, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp118)
  %tobool70.not = icmp eq i32 %bcmp118, 0
  br i1 %tobool70.not, label %land.lhs.true60.if.end78_crit_edge, label %land.lhs.true60.if.then71_crit_edge

land.lhs.true60.if.then71_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

land.lhs.true60.if.end78_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then71:                                        ; preds = %land.lhs.true60.if.then71_crit_edge, %lor.lhs.false.if.then71_crit_edge, %if.end39.if.then71_crit_edge
  %26 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %own_addr_type, align 1
  %static_addr72 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  %random_addr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %static_addr72, ptr noundef dereferenceable(6) %random_addr, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool74.not = icmp eq i32 %bcmp, 0
  br i1 %tobool74.not, label %if.then71.cleanup_crit_edge, label %if.then75

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %if.then71
  %27 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_update_random_address, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8197, i32 noundef 6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then75
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i = icmp eq i32 %30, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %34, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %35 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 1312, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %36 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #10
  %37 = call ptr @memcpy(ptr %call.i.i, ptr %static_addr72, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_update_random_address, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i115 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i115, i32 noundef %39) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8197) #10
  %40 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 8197, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %43 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %44, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %45 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %req_flags.i, align 2
  %47 = or i8 %46, 1
  store i8 %47, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %48 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true60.if.end78_crit_edge, %lor.lhs.false55.if.end78_crit_edge
  %49 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %own_addr_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %while.end, %if.end25, %if.then23, %land.lhs.true12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ 0, %if.end25 ], [ 0, %while.end ], [ 0, %if.end78 ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %if.then71.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__hci_update_interleaved_scan(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %hdev) #10
  br i1 %call, label %land.lhs.true, label %entry.land.end.thread_crit_edge

entry.land.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.thread

land.lhs.true:                                    ; preds = %entry
  %pend_le_conns = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 195
  %0 = ptrtoint ptr %pend_le_conns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pend_le_conns, align 4
  %cmp.i.not = icmp eq ptr %1, %pend_le_conns
  br i1 %cmp.i.not, label %land.lhs.true2, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pend_le_reports = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 196
  %2 = ptrtoint ptr %pend_le_reports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pend_le_reports, align 4
  %cmp.i34.not = icmp eq ptr %3, %pend_le_reports
  br i1 %cmp.i34.not, label %land.lhs.true2.land.end.thread_crit_edge, label %land.lhs.true2.land.end_crit_edge

land.lhs.true2.land.end_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true2.land.end.thread_crit_edge:         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true2.land.end.thread_crit_edge, %entry.land.end.thread_crit_edge
  %interleave_scan_state.i40 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 224
  %4 = ptrtoint ptr %interleave_scan_state.i40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interleave_scan_state.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i3641 = icmp ne i32 %5, 0
  br label %if.end17

land.end:                                         ; preds = %land.lhs.true2.land.end_crit_edge, %land.lhs.true.land.end_crit_edge
  %call5 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %hdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  %interleave_scan_state.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 224
  %6 = ptrtoint ptr %interleave_scan_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interleave_scan_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i36 = icmp ne i32 %7, 0
  %.not = xor i1 %cmp, true
  %brmerge = select i1 %.not, i1 true, i1 %cmp.i36
  br i1 %brmerge, label %land.end.if.end17_crit_edge, label %if.then

land.end.if.end17_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %interleave_scan_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %interleave_scan_state.i, align 8
  %req_workqueue.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 139
  %9 = ptrtoint ptr %req_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_workqueue.i, align 8
  %interleave_scan.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %interleave_scan.i, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hci_update_interleaved_scan.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_update_interleaved_scan, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !197

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hci_update_interleaved_scan.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.50, ptr noundef %name) #10
  br label %cleanup

if.end17:                                         ; preds = %land.end.if.end17_crit_edge, %land.end.thread
  %cmp.i3645 = phi i1 [ %cmp.i3641, %land.end.thread ], [ %cmp.i36, %land.end.if.end17_crit_edge ]
  %interleave_scan_state.i44 = phi ptr [ %interleave_scan_state.i40, %land.end.thread ], [ %interleave_scan_state.i, %land.end.if.end17_crit_edge ]
  %11 = phi i1 [ false, %land.end.thread ], [ %cmp, %land.end.if.end17_crit_edge ]
  %call6.not = xor i1 %cmp.i3645, true
  %brmerge33 = select i1 %11, i1 true, i1 %call6.not
  br i1 %brmerge33, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cancel_interleave_scan.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_update_interleaved_scan, %if.then.i)) #10
          to label %cancel_interleave_scan.exit [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cancel_interleave_scan.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.90, ptr noundef %name.i) #10
  br label %cancel_interleave_scan.exit

cancel_interleave_scan.exit:                      ; preds = %if.then.i, %if.then21
  %interleave_scan.i38 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %interleave_scan.i38) #10
  %12 = ptrtoint ptr %interleave_scan_state.i44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %interleave_scan_state.i44, align 8
  br label %cleanup

cleanup:                                          ; preds = %cancel_interleave_scan.exit, %if.end17.cleanup_crit_edge, %if.then16, %if.then
  %retval.0 = phi i1 [ true, %if.then16 ], [ false, %if.end17.cleanup_crit_edge ], [ false, %cancel_interleave_scan.exit ], [ true, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_adv_monitoring(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_req_start_scan(ptr noundef %req, i8 noundef zeroext %type, i16 noundef zeroext %interval, i16 noundef zeroext %window, i8 noundef zeroext %own_addr_type, i8 noundef zeroext %filter_policy, i1 noundef zeroext %filter_dup, i1 noundef zeroext %addr_resolv) unnamed_addr #0 align 64 {
entry:
  %data = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %filter_dup to i8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %scanning_paused = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 178
  %2 = ptrtoint ptr %scanning_paused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scanning_paused, align 8, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_start_scan.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !197

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_start_scan.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.13, ptr noundef %name) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %le_features, align 2
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end8.if.end17_crit_edge, label %land.lhs.true

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp ne i32 %9, 0
  %10 = and i1 %tobool12.not, %addr_resolv
  br i1 %10, label %if.then16, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8237, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then16
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end17_crit_edge

do.end.i.if.end17_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %17 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 11552, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %18 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %call.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i206 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i206, i32 noundef %21) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8237) #10
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -12, ptr %err.i, align 4
  br label %if.end17

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8237, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %req_flags.i, align 2
  %29 = or i8 %28, 1
  store i8 %29, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %30 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end17

if.end17:                                         ; preds = %if.end21.i, %if.then9.i, %do.end.i.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %arrayidx18 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 37
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx18, align 1
  %33 = and i8 %32, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %33)
  %.not = icmp eq i8 %33, 96
  br i1 %.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %data) #10
  %34 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 1
  %35 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 2
  %36 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 3
  %37 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 4
  %38 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 6
  %39 = getelementptr inbounds [13 x i8], ptr %data, i32 0, i32 8
  %40 = getelementptr inbounds i8, ptr %data, i32 3
  %41 = call ptr @memset(ptr %40, i32 255, i32 10)
  %42 = getelementptr inbounds i8, ptr %data, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %42, align 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %own_addr_type, ptr %data, align 1
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %filter_policy, ptr %34, align 1
  %le_tx_def_phys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 136
  %46 = ptrtoint ptr %le_tx_def_phys to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %le_tx_def_phys, align 8
  %conv34 = zext i8 %47 to i32
  %and35 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.then28.if.then50_crit_edge

if.then28.if.then50_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.then28
  %le_rx_def_phys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 137
  %48 = ptrtoint ptr %le_rx_def_phys to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %le_rx_def_phys, align 1
  %conv37 = zext i8 %49 to i32
  %and38 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and43 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %or.cond132 = select i1 %tobool39.not, i1 %tobool44.not, i1 false
  %and48 = and i32 %conv37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %or.cond133 = select i1 %or.cond132, i1 %tobool49.not, i1 false
  br i1 %or.cond133, label %lor.lhs.false.if.end56_crit_edge, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.then28.if.then50_crit_edge
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %35, align 1
  %52 = or i8 %51, 1
  store i8 %52, ptr %35, align 1
  %53 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %type, ptr %36, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %interval)
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %37, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %window)
  %57 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %38, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %lor.lhs.false.if.end56_crit_edge
  %phy_params.0 = phi ptr [ %39, %if.then50 ], [ %36, %lor.lhs.false.if.end56_crit_edge ]
  %plen.0 = phi i32 [ 8, %if.then50 ], [ 3, %lor.lhs.false.if.end56_crit_edge ]
  %58 = ptrtoint ptr %le_tx_def_phys to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %le_tx_def_phys, align 8
  %60 = and i8 %59, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool60.not = icmp eq i8 %60, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %if.end56.if.then66_crit_edge

if.end56.if.then66_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false61:                                  ; preds = %if.end56
  %le_rx_def_phys62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 137
  %61 = ptrtoint ptr %le_rx_def_phys62 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %le_rx_def_phys62, align 1
  %63 = and i8 %62, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool65.not = icmp eq i8 %63, 0
  br i1 %tobool65.not, label %lor.lhs.false61.if.end76_crit_edge, label %lor.lhs.false61.if.then66_crit_edge

lor.lhs.false61.if.then66_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

lor.lhs.false61.if.end76_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then66:                                        ; preds = %lor.lhs.false61.if.then66_crit_edge, %if.end56.if.then66_crit_edge
  %64 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %35, align 1
  %66 = or i8 %65, 4
  store i8 %66, ptr %35, align 1
  %67 = ptrtoint ptr %phy_params.0 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %type, ptr %phy_params.0, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %interval)
  %interval72 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %phy_params.0, i32 0, i32 1
  %69 = ptrtoint ptr %interval72 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %interval72, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %window)
  %window73 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %phy_params.0, i32 0, i32 2
  %71 = ptrtoint ptr %window73 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %window73, align 1
  %add74 = add nuw nsw i32 %plen.0, 5
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %lor.lhs.false61.if.end76_crit_edge
  %plen.1 = phi i32 [ %add74, %if.then66 ], [ %plen.0, %lor.lhs.false61.if.end76_crit_edge ]
  %72 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then.i135)) #10
          to label %do.end.i138 [label %if.then.i135], !srcloc !197

if.then.i135:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %name.i134 = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i134, i32 noundef 8257, i32 noundef %plen.1) #10
  br label %do.end.i138

do.end.i138:                                      ; preds = %if.then.i135, %if.end76
  %err.i136 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %74 = ptrtoint ptr %err.i136 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %err.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool4.not.i137 = icmp eq i32 %75, 0
  br i1 %tobool4.not.i137, label %if.end6.i141, label %do.end.i138.hci_req_add_ev.exit151_crit_edge

do.end.i138.hci_req_add_ev.exit151_crit_edge:     ; preds = %do.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit151

if.end6.i141:                                     ; preds = %do.end.i138
  %add.i.i = add nuw nsw i32 %plen.1, 11
  %call.i.i.i208 = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i209 = icmp eq ptr %call.i.i.i208, null
  br i1 %tobool.not.i.i209, label %if.then9.i143, label %if.end.i216

if.end.i216:                                      ; preds = %if.end6.i141
  %data.i.i.i210 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i210, align 4
  %add.ptr.i.i.i211 = getelementptr i8, ptr %77, i32 8
  store ptr %add.ptr.i.i.i211, ptr %data.i.i.i210, align 4
  %tail.i.i.i212 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i.i212, align 8
  %add.ptr1.i.i.i213 = getelementptr i8, ptr %79, i32 8
  store ptr %add.ptr1.i.i.i213, ptr %tail.i.i.i212, align 8
  %call1.i214 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i208, i32 noundef 3) #10
  %80 = ptrtoint ptr %call1.i214 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 16672, ptr %call1.i214, align 1
  %conv.i = trunc i32 %plen.1 to i8
  %plen3.i215 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i214, i32 0, i32 1
  %81 = ptrtoint ptr %plen3.i215 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i, ptr %plen3.i215, align 1
  %call.i.i217 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i208, i32 noundef %plen.1) #10
  %82 = call ptr @memcpy(ptr %call.i.i217, ptr %data, i32 %plen.1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then12.i220)) #10
          to label %if.end14.i146 [label %if.then12.i220], !srcloc !197

if.then12.i220:                                   ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #12
  %name.i218 = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 2
  %len13.i219 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 6
  %83 = ptrtoint ptr %len13.i219 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len13.i219, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i218, i32 noundef %84) #10
  br label %if.end14.i146

if.then9.i143:                                    ; preds = %if.end6.i141
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i142 = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i142, i32 noundef 8257) #10
  %85 = ptrtoint ptr %err.i136 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -12, ptr %err.i136, align 4
  br label %hci_req_add_ev.exit151

if.end14.i146:                                    ; preds = %if.then12.i220, %if.end.i216
  %cb.i221 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 3
  %86 = ptrtoint ptr %cb.i221 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %cb.i221, align 8
  %opcode18.i222 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 3, i32 12
  %87 = ptrtoint ptr %opcode18.i222 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 8257, ptr %opcode18.i222, align 4
  %cmd_q.i144 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %88 = ptrtoint ptr %cmd_q.i144 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd_q.i144, align 4
  %cmp.i.not.i145 = icmp eq ptr %89, %cmd_q.i144
  br i1 %cmp.i.not.i145, label %if.then17.i148, label %if.end14.i146.if.end21.i150_crit_edge

if.end14.i146.if.end21.i150_crit_edge:            ; preds = %if.end14.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i150

if.then17.i148:                                   ; preds = %if.end14.i146
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i147 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 3, i32 14
  %90 = ptrtoint ptr %req_flags.i147 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %req_flags.i147, align 2
  %92 = or i8 %91, 1
  store i8 %92, ptr %req_flags.i147, align 2
  br label %if.end21.i150

if.end21.i150:                                    ; preds = %if.then17.i148, %if.end14.i146.if.end21.i150_crit_edge
  %req_event.i149 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i208, i32 0, i32 3, i32 15
  %93 = ptrtoint ptr %req_event.i149 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %req_event.i149, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i144, ptr noundef nonnull %call.i.i.i208) #10
  br label %hci_req_add_ev.exit151

hci_req_add_ev.exit151:                           ; preds = %if.end21.i150, %if.then9.i143, %do.end.i138.hci_req_add_ev.exit151_crit_edge
  %94 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then.i153)) #10
          to label %do.end.i156 [label %if.then.i153], !srcloc !197

if.then.i153:                                     ; preds = %hci_req_add_ev.exit151
  call void @__sanitizer_cov_trace_pc() #12
  %name.i152 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i152, i32 noundef 8258, i32 noundef 6) #10
  br label %do.end.i156

do.end.i156:                                      ; preds = %if.then.i153, %hci_req_add_ev.exit151
  %96 = ptrtoint ptr %err.i136 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %err.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool4.not.i155 = icmp eq i32 %97, 0
  br i1 %tobool4.not.i155, label %if.end6.i159, label %do.end.i156.hci_req_add_ev.exit169_crit_edge

do.end.i156.hci_req_add_ev.exit169_crit_edge:     ; preds = %do.end.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit169

if.end6.i159:                                     ; preds = %do.end.i156
  %call.i.i.i225 = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i226 = icmp eq ptr %call.i.i.i225, null
  br i1 %tobool.not.i.i226, label %if.then9.i161, label %if.end.i233

if.end.i233:                                      ; preds = %if.end6.i159
  %data.i.i.i227 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 19
  %98 = ptrtoint ptr %data.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i.i.i227, align 4
  %add.ptr.i.i.i228 = getelementptr i8, ptr %99, i32 8
  store ptr %add.ptr.i.i.i228, ptr %data.i.i.i227, align 4
  %tail.i.i.i229 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 16
  %100 = ptrtoint ptr %tail.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tail.i.i.i229, align 8
  %add.ptr1.i.i.i230 = getelementptr i8, ptr %101, i32 8
  store ptr %add.ptr1.i.i.i230, ptr %tail.i.i.i229, align 8
  %call1.i231 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i225, i32 noundef 3) #10
  %102 = ptrtoint ptr %call1.i231 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 16928, ptr %call1.i231, align 1
  %plen3.i232 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i231, i32 0, i32 1
  %103 = ptrtoint ptr %plen3.i232 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 6, ptr %plen3.i232, align 1
  %call.i.i234 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i225, i32 noundef 6) #10
  %104 = ptrtoint ptr %call.i.i234 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %call.i.i234, align 1
  %ext_enable_cp.sroa.6.0.call.i.i234.sroa_idx = getelementptr inbounds i8, ptr %call.i.i234, i32 1
  %105 = ptrtoint ptr %ext_enable_cp.sroa.6.0.call.i.i234.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %frombool, ptr %ext_enable_cp.sroa.6.0.call.i.i234.sroa_idx, align 1
  %ext_enable_cp.sroa.8.0.call.i.i234.sroa_idx = getelementptr inbounds i8, ptr %call.i.i234, i32 2
  %106 = ptrtoint ptr %ext_enable_cp.sroa.8.0.call.i.i234.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 0, ptr %ext_enable_cp.sroa.8.0.call.i.i234.sroa_idx, align 1
  %ext_enable_cp.sroa.9.0.call.i.i234.sroa_idx = getelementptr inbounds i8, ptr %call.i.i234, i32 4
  %107 = ptrtoint ptr %ext_enable_cp.sroa.9.0.call.i.i234.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 0, ptr %ext_enable_cp.sroa.9.0.call.i.i234.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then12.i237)) #10
          to label %if.end14.i164 [label %if.then12.i237], !srcloc !197

if.then12.i237:                                   ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #12
  %name.i235 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  %len13.i236 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 6
  %108 = ptrtoint ptr %len13.i236 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len13.i236, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i235, i32 noundef %109) #10
  br label %if.end14.i164

if.then9.i161:                                    ; preds = %if.end6.i159
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i160 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i160, i32 noundef 8258) #10
  %110 = ptrtoint ptr %err.i136 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -12, ptr %err.i136, align 4
  br label %hci_req_add_ev.exit169

if.end14.i164:                                    ; preds = %if.then12.i237, %if.end.i233
  %cb.i238 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 3
  %111 = ptrtoint ptr %cb.i238 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %cb.i238, align 8
  %opcode18.i239 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 3, i32 12
  %112 = ptrtoint ptr %opcode18.i239 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 8258, ptr %opcode18.i239, align 4
  %cmd_q.i162 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %113 = ptrtoint ptr %cmd_q.i162 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cmd_q.i162, align 4
  %cmp.i.not.i163 = icmp eq ptr %114, %cmd_q.i162
  br i1 %cmp.i.not.i163, label %if.then17.i166, label %if.end14.i164.if.end21.i168_crit_edge

if.end14.i164.if.end21.i168_crit_edge:            ; preds = %if.end14.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i168

if.then17.i166:                                   ; preds = %if.end14.i164
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i165 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 3, i32 14
  %115 = ptrtoint ptr %req_flags.i165 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %req_flags.i165, align 2
  %117 = or i8 %116, 1
  store i8 %117, ptr %req_flags.i165, align 2
  br label %if.end21.i168

if.end21.i168:                                    ; preds = %if.then17.i166, %if.end14.i164.if.end21.i168_crit_edge
  %req_event.i167 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i225, i32 0, i32 3, i32 15
  %118 = ptrtoint ptr %req_event.i167 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %req_event.i167, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i162, ptr noundef nonnull %call.i.i.i225) #10
  br label %hci_req_add_ev.exit169

hci_req_add_ev.exit169:                           ; preds = %if.end21.i168, %if.then9.i161, %do.end.i156.hci_req_add_ev.exit169_crit_edge
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %data) #10
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %119 = tail call i16 @llvm.bswap.i16(i16 %interval)
  %120 = tail call i16 @llvm.bswap.i16(i16 %window)
  %121 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then.i171)) #10
          to label %do.end.i174 [label %if.then.i171], !srcloc !197

if.then.i171:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i170 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i170, i32 noundef 8203, i32 noundef 7) #10
  br label %do.end.i174

do.end.i174:                                      ; preds = %if.then.i171, %if.else
  %err.i172 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %123 = ptrtoint ptr %err.i172 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %err.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool4.not.i173 = icmp eq i32 %124, 0
  br i1 %tobool4.not.i173, label %if.end6.i177, label %do.end.i174.hci_req_add_ev.exit187_crit_edge

do.end.i174.hci_req_add_ev.exit187_crit_edge:     ; preds = %do.end.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit187

if.end6.i177:                                     ; preds = %do.end.i174
  %call.i.i.i242 = tail call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i243 = icmp eq ptr %call.i.i.i242, null
  br i1 %tobool.not.i.i243, label %if.then9.i179, label %if.end.i250

if.end.i250:                                      ; preds = %if.end6.i177
  %data.i.i.i244 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 19
  %125 = ptrtoint ptr %data.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i.i244, align 4
  %add.ptr.i.i.i245 = getelementptr i8, ptr %126, i32 8
  store ptr %add.ptr.i.i.i245, ptr %data.i.i.i244, align 4
  %tail.i.i.i246 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 16
  %127 = ptrtoint ptr %tail.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i.i.i246, align 8
  %add.ptr1.i.i.i247 = getelementptr i8, ptr %128, i32 8
  store ptr %add.ptr1.i.i.i247, ptr %tail.i.i.i246, align 8
  %call1.i248 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i242, i32 noundef 3) #10
  %129 = ptrtoint ptr %call1.i248 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 2848, ptr %call1.i248, align 1
  %plen3.i249 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i248, i32 0, i32 1
  %130 = ptrtoint ptr %plen3.i249 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 7, ptr %plen3.i249, align 1
  %call.i.i251 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i242, i32 noundef 7) #10
  %131 = ptrtoint ptr %call.i.i251 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %type, ptr %call.i.i251, align 1
  %param_cp.sroa.6.0.call.i.i251.sroa_idx = getelementptr inbounds i8, ptr %call.i.i251, i32 1
  %132 = ptrtoint ptr %param_cp.sroa.6.0.call.i.i251.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %119, ptr %param_cp.sroa.6.0.call.i.i251.sroa_idx, align 1
  %param_cp.sroa.8.0.call.i.i251.sroa_idx = getelementptr inbounds i8, ptr %call.i.i251, i32 3
  %133 = ptrtoint ptr %param_cp.sroa.8.0.call.i.i251.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %120, ptr %param_cp.sroa.8.0.call.i.i251.sroa_idx, align 1
  %param_cp.sroa.10.0.call.i.i251.sroa_idx = getelementptr inbounds i8, ptr %call.i.i251, i32 5
  %134 = ptrtoint ptr %param_cp.sroa.10.0.call.i.i251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %own_addr_type, ptr %param_cp.sroa.10.0.call.i.i251.sroa_idx, align 1
  %param_cp.sroa.12.0.call.i.i251.sroa_idx = getelementptr inbounds i8, ptr %call.i.i251, i32 6
  %135 = ptrtoint ptr %param_cp.sroa.12.0.call.i.i251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %filter_policy, ptr %param_cp.sroa.12.0.call.i.i251.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then12.i254)) #10
          to label %if.end14.i182 [label %if.then12.i254], !srcloc !197

if.then12.i254:                                   ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  %name.i252 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 2
  %len13.i253 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 6
  %136 = ptrtoint ptr %len13.i253 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len13.i253, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i252, i32 noundef %137) #10
  br label %if.end14.i182

if.then9.i179:                                    ; preds = %if.end6.i177
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i178 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i178, i32 noundef 8203) #10
  %138 = ptrtoint ptr %err.i172 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -12, ptr %err.i172, align 4
  br label %hci_req_add_ev.exit187

if.end14.i182:                                    ; preds = %if.then12.i254, %if.end.i250
  %cb.i255 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 3
  %139 = ptrtoint ptr %cb.i255 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %cb.i255, align 8
  %opcode18.i256 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 3, i32 12
  %140 = ptrtoint ptr %opcode18.i256 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 8203, ptr %opcode18.i256, align 4
  %cmd_q.i180 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %141 = ptrtoint ptr %cmd_q.i180 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cmd_q.i180, align 4
  %cmp.i.not.i181 = icmp eq ptr %142, %cmd_q.i180
  br i1 %cmp.i.not.i181, label %if.then17.i184, label %if.end14.i182.if.end21.i186_crit_edge

if.end14.i182.if.end21.i186_crit_edge:            ; preds = %if.end14.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i186

if.then17.i184:                                   ; preds = %if.end14.i182
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i183 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 3, i32 14
  %143 = ptrtoint ptr %req_flags.i183 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %req_flags.i183, align 2
  %145 = or i8 %144, 1
  store i8 %145, ptr %req_flags.i183, align 2
  br label %if.end21.i186

if.end21.i186:                                    ; preds = %if.then17.i184, %if.end14.i182.if.end21.i186_crit_edge
  %req_event.i185 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i242, i32 0, i32 3, i32 15
  %146 = ptrtoint ptr %req_event.i185 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %req_event.i185, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i180, ptr noundef nonnull %call.i.i.i242) #10
  br label %hci_req_add_ev.exit187

hci_req_add_ev.exit187:                           ; preds = %if.end21.i186, %if.then9.i179, %do.end.i174.hci_req_add_ev.exit187_crit_edge
  %147 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then.i189)) #10
          to label %do.end.i192 [label %if.then.i189], !srcloc !197

if.then.i189:                                     ; preds = %hci_req_add_ev.exit187
  call void @__sanitizer_cov_trace_pc() #12
  %name.i188 = getelementptr inbounds %struct.hci_dev, ptr %148, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i188, i32 noundef 8204, i32 noundef 2) #10
  br label %do.end.i192

do.end.i192:                                      ; preds = %if.then.i189, %hci_req_add_ev.exit187
  %149 = ptrtoint ptr %err.i172 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %err.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool4.not.i191 = icmp eq i32 %150, 0
  br i1 %tobool4.not.i191, label %if.end6.i195, label %do.end.i192.cleanup_crit_edge

do.end.i192.cleanup_crit_edge:                    ; preds = %do.end.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i195:                                     ; preds = %do.end.i192
  %call.i.i.i259 = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i260 = icmp eq ptr %call.i.i.i259, null
  br i1 %tobool.not.i.i260, label %if.then9.i197, label %if.end.i267

if.end.i267:                                      ; preds = %if.end6.i195
  %data.i.i.i261 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 19
  %151 = ptrtoint ptr %data.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i.i.i261, align 4
  %add.ptr.i.i.i262 = getelementptr i8, ptr %152, i32 8
  store ptr %add.ptr.i.i.i262, ptr %data.i.i.i261, align 4
  %tail.i.i.i263 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 16
  %153 = ptrtoint ptr %tail.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tail.i.i.i263, align 8
  %add.ptr1.i.i.i264 = getelementptr i8, ptr %154, i32 8
  store ptr %add.ptr1.i.i.i264, ptr %tail.i.i.i263, align 8
  %call1.i265 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i259, i32 noundef 3) #10
  %155 = ptrtoint ptr %call1.i265 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 3104, ptr %call1.i265, align 1
  %plen3.i266 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i265, i32 0, i32 1
  %156 = ptrtoint ptr %plen3.i266 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 2, ptr %plen3.i266, align 1
  %call.i.i268 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i259, i32 noundef 2) #10
  %157 = ptrtoint ptr %call.i.i268 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %call.i.i268, align 1
  %enable_cp.sroa.6.0.call.i.i268.sroa_idx = getelementptr inbounds i8, ptr %call.i.i268, i32 1
  %158 = ptrtoint ptr %enable_cp.sroa.6.0.call.i.i268.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %frombool, ptr %enable_cp.sroa.6.0.call.i.i268.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_start_scan, %if.then12.i271)) #10
          to label %if.end14.i200 [label %if.then12.i271], !srcloc !197

if.then12.i271:                                   ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #12
  %name.i269 = getelementptr inbounds %struct.hci_dev, ptr %148, i32 0, i32 2
  %len13.i270 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 6
  %159 = ptrtoint ptr %len13.i270 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %len13.i270, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i269, i32 noundef %160) #10
  br label %if.end14.i200

if.then9.i197:                                    ; preds = %if.end6.i195
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i196 = getelementptr inbounds %struct.hci_dev, ptr %148, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i196, i32 noundef 8204) #10
  %161 = ptrtoint ptr %err.i172 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -12, ptr %err.i172, align 4
  br label %cleanup

if.end14.i200:                                    ; preds = %if.then12.i271, %if.end.i267
  %cb.i272 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 3
  %162 = ptrtoint ptr %cb.i272 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %cb.i272, align 8
  %opcode18.i273 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 3, i32 12
  %163 = ptrtoint ptr %opcode18.i273 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 8204, ptr %opcode18.i273, align 4
  %cmd_q.i198 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %164 = ptrtoint ptr %cmd_q.i198 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cmd_q.i198, align 4
  %cmp.i.not.i199 = icmp eq ptr %165, %cmd_q.i198
  br i1 %cmp.i.not.i199, label %if.then17.i202, label %if.end14.i200.if.end21.i204_crit_edge

if.end14.i200.if.end21.i204_crit_edge:            ; preds = %if.end14.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i204

if.then17.i202:                                   ; preds = %if.end14.i200
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i201 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 3, i32 14
  %166 = ptrtoint ptr %req_flags.i201 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %req_flags.i201, align 2
  %168 = or i8 %167, 1
  store i8 %168, ptr %req_flags.i201, align 2
  br label %if.end21.i204

if.end21.i204:                                    ; preds = %if.then17.i202, %if.end14.i200.if.end21.i204_crit_edge
  %req_event.i203 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i259, i32 0, i32 3, i32 15
  %169 = ptrtoint ptr %req_event.i203 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %req_event.i203, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i198, ptr noundef nonnull %call.i.i.i259) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i204, %if.then9.i197, %do.end.i192.cleanup_crit_edge, %hci_req_add_ev.exit169, %if.then7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_disable_advertising(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @__hci_req_disable_ext_adv_instance(ptr noundef %req, i8 noundef zeroext 0)
  br label %if.end

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_disable_advertising, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8202, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2592, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %12 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_disable_advertising, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i3 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i3, i32 noundef %15) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8202) #10
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -12, ptr %err.i, align 4
  br label %if.end

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8202, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %21 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %req_flags.i, align 2
  %23 = or i8 %22, 1
  store i8 %23, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %24 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end21.i, %if.then9.i, %do.end.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_disable_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data)
  %data.1.data.1..sroa_idx = getelementptr inbounds i8, ptr %data, i32 1
  %data.2.data.2..sroa_idx = getelementptr inbounds i8, ptr %data, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %cmp.not = icmp eq i8 %instance, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = getelementptr inbounds i8, ptr %data, i32 3
  %3 = call ptr @memset(ptr %2, i32 0, i32 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %tobool6 = icmp ne i8 %instance, 0
  %conv8 = zext i1 %tobool6 to i8
  %4 = ptrtoint ptr %data.1.data.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %data.1.data.1..sroa_idx, align 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %data, align 1
  %6 = ptrtoint ptr %data.2.data.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %instance, ptr %data.2.data.2..sroa_idx, align 1
  %conv11 = select i1 %tobool6, i32 6, i32 2
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_disable_ext_adv_instance, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8249, i32 noundef %conv11) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %add.i.i = add nuw nsw i32 %conv11, 11
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 14624, ptr %call1.i, align 1
  %conv.i = trunc i32 %conv11 to i8
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv11) #10
  %17 = call ptr @memcpy(ptr %call.i.i, ptr %data, i32 %conv11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_disable_ext_adv_instance, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i25 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i25, i32 noundef %19) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8249) #10
  %20 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8249, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %25 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_flags.i, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ 0, %if.end21.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_enable_advertising(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %own_addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_addr_type) #10
  %2 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %own_addr_type, align 1, !annotation !202
  %cur_adv_instance = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  %3 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cur_adv_instance, align 8
  %call = tail call i32 @hci_adv_instance_flags(ptr noundef %1, i8 noundef zeroext %4) #10
  %5 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_adv_instance, align 8
  %call3 = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %6) #10
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %1) #10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %7 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call4, %lor.rhs ]
  %le_num.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 4
  %8 = ptrtoint ptr %le_num.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %le_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %lor.end.if.end_crit_edge, label %if.end.i

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %lor.end
  %le_num_peripheral.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 5
  %10 = ptrtoint ptr %le_num_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %le_num_peripheral.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.not.i = icmp eq i32 %11, 0
  br i1 %cmp1.not.i, label %if.then27.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  br i1 %7, label %land.lhs.true8.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end21.thread.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8.critedge.i:                        ; preds = %if.then2.i
  %arrayidx10.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10.i, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not.i = icmp eq i8 %17, 0
  br i1 %tobool13.not.i, label %land.lhs.true8.critedge.i.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true8.critedge.i.cleanup_crit_edge:      ; preds = %land.lhs.true8.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.critedge.i
  %arrayidx15.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15.i, align 1
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not.i = icmp eq i8 %20, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end21.thread68.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21.thread68.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp25.not69.i = icmp eq i32 %9, %11
  br i1 %cmp25.not69.i, label %if.end21.thread68.i.if.end_crit_edge, label %if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge

if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge: ; preds = %if.end21.thread68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.critedge.i

if.end21.thread68.i.if.end_crit_edge:             ; preds = %if.end21.thread68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end21.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp25.not67.i = icmp eq i32 %9, %11
  br i1 %cmp25.not67.i, label %if.end21.thread.i.if.end_crit_edge, label %if.end21.thread.i.land.lhs.true29.i_crit_edge

if.end21.thread.i.land.lhs.true29.i_crit_edge:    ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29.i

if.end21.thread.i.if.end_crit_edge:               ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then27.i:                                      ; preds = %if.end.i
  br i1 %7, label %if.then27.i.land.lhs.true39.critedge.i_crit_edge, label %if.then27.i.land.lhs.true29.i_crit_edge

if.then27.i.land.lhs.true29.i_crit_edge:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29.i

if.then27.i.land.lhs.true39.critedge.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.critedge.i

land.lhs.true29.i:                                ; preds = %if.then27.i.land.lhs.true29.i_crit_edge, %if.end21.thread.i.land.lhs.true29.i_crit_edge
  %arrayidx31.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %21 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx31.i, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not.i = icmp eq i8 %23, 0
  br i1 %tobool34.not.i, label %land.lhs.true29.i.cleanup_crit_edge, label %land.lhs.true29.i.if.end_crit_edge

land.lhs.true29.i.if.end_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true29.i.cleanup_crit_edge:              ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true39.critedge.i:                       ; preds = %if.then27.i.land.lhs.true39.critedge.i_crit_edge, %if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge
  %arrayidx41.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %24 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41.i, align 1
  %26 = and i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool44.not.i = icmp eq i8 %26, 0
  br i1 %tobool44.not.i, label %land.lhs.true39.critedge.i.cleanup_crit_edge, label %lor.lhs.false45.i

land.lhs.true39.critedge.i.cleanup_crit_edge:     ; preds = %land.lhs.true39.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false45.i:                                ; preds = %land.lhs.true39.critedge.i
  %arrayidx47.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %27 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx47.i, align 1
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool50.not.i = icmp eq i8 %29, 0
  br i1 %tobool50.not.i, label %lor.lhs.false45.i.cleanup_crit_edge, label %lor.lhs.false45.i.if.end_crit_edge

lor.lhs.false45.i.if.end_crit_edge:               ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false45.i.cleanup_crit_edge:              ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false45.i.if.end_crit_edge, %land.lhs.true29.i.if.end_crit_edge, %if.end21.thread.i.if.end_crit_edge, %if.end21.thread68.i.if.end_crit_edge, %lor.end.if.end_crit_edge
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %30 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dev_flags, align 4
  %32 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool8.not = icmp eq i32 %32, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_disable_advertising(ptr noundef %req)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %dev_flags) #10
  %lnot = xor i1 %7, true
  %33 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dev_flags, align 4
  %35 = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.end10.adv_use_rpa.exit_crit_edge, label %if.end.i79

if.end10.adv_use_rpa.exit_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

if.end.i79:                                       ; preds = %if.end10
  %36 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dev_flags, align 4
  %38 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i = icmp eq i32 %38, 0
  br i1 %tobool4.not.i, label %if.end.i79.adv_use_rpa.exit_crit_edge, label %if.end6.i

if.end.i79.adv_use_rpa.exit_crit_edge:            ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

if.end6.i:                                        ; preds = %if.end.i79
  %and.i = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end13.i_crit_edge, label %land.lhs.true.i80

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i80:                                ; preds = %if.end6.i
  %39 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dev_flags, align 4
  %41 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool11.not.i = icmp eq i32 %41, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i80.if.end13.i_crit_edge, label %land.lhs.true.i80.adv_use_rpa.exit_crit_edge

land.lhs.true.i80.adv_use_rpa.exit_crit_edge:     ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

land.lhs.true.i80.if.end13.i_crit_edge:           ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i80.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  br label %adv_use_rpa.exit

adv_use_rpa.exit:                                 ; preds = %if.end13.i, %land.lhs.true.i80.adv_use_rpa.exit_crit_edge, %if.end.i79.adv_use_rpa.exit_crit_edge, %if.end10.adv_use_rpa.exit_crit_edge
  %retval.0.i81 = phi i1 [ true, %if.end13.i ], [ false, %if.end10.adv_use_rpa.exit_crit_edge ], [ true, %if.end.i79.adv_use_rpa.exit_crit_edge ], [ false, %land.lhs.true.i80.adv_use_rpa.exit_crit_edge ]
  %call15 = call i32 @hci_update_random_address(ptr noundef %req, i1 noundef zeroext %lnot, i1 noundef zeroext %retval.0.i81, ptr noundef nonnull %own_addr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %adv_use_rpa.exit.cleanup_crit_edge, label %if.end17

adv_use_rpa.exit.cleanup_crit_edge:               ; preds = %adv_use_rpa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %adv_use_rpa.exit
  %tobool18.not = icmp eq ptr %call3, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %min_interval = getelementptr inbounds %struct.adv_info, ptr %call3, i32 0, i32 13
  %42 = ptrtoint ptr %min_interval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min_interval, align 4
  %conv = trunc i32 %43 to i16
  %max_interval = getelementptr inbounds %struct.adv_info, ptr %call3, i32 0, i32 14
  %44 = ptrtoint ptr %max_interval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_interval, align 4
  %conv20 = trunc i32 %45 to i16
  br label %if.end21

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %46 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %le_adv_min_interval, align 4
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %48 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %le_adv_max_interval, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %adv_min_interval.0 = phi i16 [ %conv, %if.then19 ], [ %47, %if.else ]
  %adv_max_interval.0 = phi i16 [ %conv20, %if.then19 ], [ %49, %if.else ]
  br i1 %7, label %if.end21.if.end41_crit_edge, label %if.else24

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else24:                                        ; preds = %if.end21
  %50 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cur_adv_instance, align 8
  %call.i = tail call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %1, i8 noundef zeroext %51) #10
  %. = select i1 %call.i, i8 2, i8 3
  %52 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dev_flags, align 4
  %54 = and i32 %53, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool34.not = icmp eq i32 %54, 0
  br i1 %tobool34.not, label %if.else24.if.then39_crit_edge, label %lor.lhs.false

if.else24.if.then39_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.else24
  %55 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %dev_flags, align 4
  %57 = and i32 %56, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool38.not = icmp eq i32 %57, 0
  br i1 %tobool38.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.else24.if.then39_crit_edge
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %lor.lhs.false.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  %cp.sroa.8.0 = phi i8 [ %., %if.then39 ], [ %., %lor.lhs.false.if.end41_crit_edge ], [ 0, %if.end21.if.end41_crit_edge ]
  %adv_min_interval.1 = phi i16 [ 160, %if.then39 ], [ %adv_min_interval.0, %lor.lhs.false.if.end41_crit_edge ], [ %adv_min_interval.0, %if.end21.if.end41_crit_edge ]
  %adv_max_interval.1 = phi i16 [ 240, %if.then39 ], [ %adv_max_interval.0, %lor.lhs.false.if.end41_crit_edge ], [ %adv_max_interval.0, %if.end21.if.end41_crit_edge ]
  %58 = tail call i16 @llvm.bswap.i16(i16 %adv_min_interval.1)
  %59 = tail call i16 @llvm.bswap.i16(i16 %adv_max_interval.1)
  %60 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %own_addr_type, align 1
  %le_adv_channel_map = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 43
  %62 = ptrtoint ptr %le_adv_channel_map to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %le_adv_channel_map, align 1
  %64 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_advertising, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8198, i32 noundef 15) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end41
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %66 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool4.not.i82 = icmp eq i32 %67, 0
  br i1 %tobool4.not.i82, label %if.end6.i83, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i83:                                      ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 26, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i102

if.end.i102:                                      ; preds = %if.end6.i83
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %68 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %71, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %72 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 1568, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %73 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 15, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 15) #10
  %74 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %58, ptr %call.i.i, align 1
  %cp.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %75 = ptrtoint ptr %cp.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %59, ptr %cp.sroa.6.0.call.i.i.sroa_idx, align 1
  %cp.sroa.8.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %76 = ptrtoint ptr %cp.sroa.8.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %cp.sroa.8.0, ptr %cp.sroa.8.0.call.i.i.sroa_idx, align 1
  %cp.sroa.11.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %77 = ptrtoint ptr %cp.sroa.11.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %61, ptr %cp.sroa.11.0.call.i.i.sroa_idx, align 1
  %cp.sroa.13.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %cp.sroa.20.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 13
  %78 = call ptr @memset(ptr %cp.sroa.13.0.call.i.i.sroa_idx, i32 0, i32 7)
  %79 = ptrtoint ptr %cp.sroa.20.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %63, ptr %cp.sroa.20.0.call.i.i.sroa_idx, align 1
  %cp.sroa.22.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 14
  %80 = ptrtoint ptr %cp.sroa.22.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %cp.sroa.22.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_advertising, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  %name.i103 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i103, i32 noundef %82) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i83
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8198) #10
  %83 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i102
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %85 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 8198, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %86 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %87, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %88 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %req_flags.i, align 2
  %90 = or i8 %89, 1
  store i8 %90, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %91 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %92 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_advertising, %if.then.i85)) #10
          to label %do.end.i88 [label %if.then.i85], !srcloc !197

if.then.i85:                                      ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name.i84 = getelementptr inbounds %struct.hci_dev, ptr %93, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i84, i32 noundef 8202, i32 noundef 1) #10
  br label %do.end.i88

do.end.i88:                                       ; preds = %if.then.i85, %hci_req_add_ev.exit
  %94 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool4.not.i87 = icmp eq i32 %95, 0
  br i1 %tobool4.not.i87, label %if.end6.i91, label %do.end.i88.cleanup_crit_edge

do.end.i88.cleanup_crit_edge:                     ; preds = %do.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i91:                                      ; preds = %do.end.i88
  %call.i.i.i105 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i106 = icmp eq ptr %call.i.i.i105, null
  br i1 %tobool.not.i.i106, label %if.then9.i93, label %if.end.i113

if.end.i113:                                      ; preds = %if.end6.i91
  %data.i.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 19
  %96 = ptrtoint ptr %data.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i.i.i107, align 4
  %add.ptr.i.i.i108 = getelementptr i8, ptr %97, i32 8
  store ptr %add.ptr.i.i.i108, ptr %data.i.i.i107, align 4
  %tail.i.i.i109 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 16
  %98 = ptrtoint ptr %tail.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tail.i.i.i109, align 8
  %add.ptr1.i.i.i110 = getelementptr i8, ptr %99, i32 8
  store ptr %add.ptr1.i.i.i110, ptr %tail.i.i.i109, align 8
  %call1.i111 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i105, i32 noundef 3) #10
  %100 = ptrtoint ptr %call1.i111 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 2592, ptr %call1.i111, align 1
  %plen3.i112 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i111, i32 0, i32 1
  %101 = ptrtoint ptr %plen3.i112 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %plen3.i112, align 1
  %call.i.i114 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i105, i32 noundef 1) #10
  %102 = ptrtoint ptr %call.i.i114 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %call.i.i114, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_advertising, %if.then12.i117)) #10
          to label %if.end14.i96 [label %if.then12.i117], !srcloc !197

if.then12.i117:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  %name.i115 = getelementptr inbounds %struct.hci_dev, ptr %93, i32 0, i32 2
  %len13.i116 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 6
  %103 = ptrtoint ptr %len13.i116 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len13.i116, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i115, i32 noundef %104) #10
  br label %if.end14.i96

if.then9.i93:                                     ; preds = %if.end6.i91
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i92 = getelementptr inbounds %struct.hci_dev, ptr %93, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i92, i32 noundef 8202) #10
  %105 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i96:                                     ; preds = %if.then12.i117, %if.end.i113
  %cb.i118 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 3
  %106 = ptrtoint ptr %cb.i118 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %cb.i118, align 8
  %opcode18.i119 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 3, i32 12
  %107 = ptrtoint ptr %opcode18.i119 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 8202, ptr %opcode18.i119, align 4
  %cmd_q.i94 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %108 = ptrtoint ptr %cmd_q.i94 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cmd_q.i94, align 4
  %cmp.i.not.i95 = icmp eq ptr %109, %cmd_q.i94
  br i1 %cmp.i.not.i95, label %if.then17.i98, label %if.end14.i96.if.end21.i100_crit_edge

if.end14.i96.if.end21.i100_crit_edge:             ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i100

if.then17.i98:                                    ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i97 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 3, i32 14
  %110 = ptrtoint ptr %req_flags.i97 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %req_flags.i97, align 2
  %112 = or i8 %111, 1
  store i8 %112, ptr %req_flags.i97, align 2
  br label %if.end21.i100

if.end21.i100:                                    ; preds = %if.then17.i98, %if.end14.i96.if.end21.i100_crit_edge
  %req_event.i99 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i105, i32 0, i32 3, i32 15
  %113 = ptrtoint ptr %req_event.i99 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %req_event.i99, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i94, ptr noundef nonnull %call.i.i.i105) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i100, %if.then9.i93, %do.end.i88.cleanup_crit_edge, %adv_use_rpa.exit.cleanup_crit_edge, %lor.lhs.false45.i.cleanup_crit_edge, %land.lhs.true39.critedge.i.cleanup_crit_edge, %land.lhs.true29.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true8.critedge.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_addr_type) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_adv_instance_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_get_connectable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  %pdu = alloca %struct.anon.148, align 1
  %cp28 = alloca %struct.hci_cp_le_set_scan_rsp_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %pdu) #10
  %8 = call ptr @memset(ptr %pdu, i32 0, i32 255)
  %data = getelementptr inbounds %struct.anon.148, ptr %pdu, i32 0, i32 1
  %call5 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %1, i8 noundef zeroext %instance, ptr noundef %data) #10
  %scan_rsp_data_len = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 212
  %9 = ptrtoint ptr %scan_rsp_data_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scan_rsp_data_len, align 8
  %conv7 = zext i8 %call5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %call5)
  %cmp = icmp eq i8 %10, %call5
  br i1 %cmp, label %land.lhs.true, label %if.then3.if.end16_crit_edge

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then3
  %scan_rsp_data = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 211
  %bcmp87 = call i32 @bcmp(ptr %data, ptr %scan_rsp_data, i32 %conv7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp87)
  %tobool14.not = icmp eq i32 %bcmp87, 0
  br i1 %tobool14.not, label %cleanup, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.then3.if.end16_crit_edge
  %scan_rsp_data17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 211
  %11 = call ptr @memcpy(ptr %scan_rsp_data17, ptr %data, i32 %conv7)
  %12 = ptrtoint ptr %scan_rsp_data_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call5, ptr %scan_rsp_data_len, align 8
  %13 = ptrtoint ptr %pdu to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %instance, ptr %pdu, align 1
  %length = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %pdu, i32 0, i32 3
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call5, ptr %length, align 1
  %operation = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %pdu, i32 0, i32 1
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %operation, align 1
  %frag_pref = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %pdu, i32 0, i32 2
  %16 = ptrtoint ptr %frag_pref to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %frag_pref, align 1
  %add = add nuw nsw i32 %conv7, 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_scan_rsp_data, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8248, i32 noundef %add) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end16
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %add.i.i = add nuw nsw i32 %conv7, 15
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 14368, ptr %call1.i, align 1
  %conv.i = trunc i32 %add to i8
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %26 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add) #10
  %27 = call ptr @memcpy(ptr %call.i.i, ptr %pdu, i32 %add)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_scan_rsp_data, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i107 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i107, i32 noundef %29) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8248) #10
  %30 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 8248, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %35 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %req_flags.i, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %38 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pdu) #10
  br label %cleanup57

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pdu) #10
  br label %cleanup57

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cp28) #10
  %39 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, ptr %cp28, i32 0, i32 1
  %40 = call ptr @memset(ptr %cp28, i32 0, i32 32)
  %call31 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %1, i8 noundef zeroext %instance, ptr noundef %39) #10
  %scan_rsp_data_len32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 212
  %41 = ptrtoint ptr %scan_rsp_data_len32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %scan_rsp_data_len32, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %call31)
  %cmp35 = icmp eq i8 %42, %call31
  br i1 %cmp35, label %land.lhs.true37, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true37:                                  ; preds = %if.else
  %conv34 = zext i8 %call31 to i32
  %scan_rsp_data40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 211
  %bcmp = call i32 @bcmp(ptr %39, ptr %scan_rsp_data40, i32 %conv34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cleanup53, label %land.lhs.true37.if.end46_crit_edge

land.lhs.true37.if.end46_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true37.if.end46_crit_edge, %if.else.if.end46_crit_edge
  %scan_rsp_data47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 211
  %43 = call ptr @memcpy(ptr %scan_rsp_data47, ptr %39, i32 31)
  %44 = ptrtoint ptr %scan_rsp_data_len32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call31, ptr %scan_rsp_data_len32, align 8
  %45 = ptrtoint ptr %cp28 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call31, ptr %cp28, align 1
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_scan_rsp_data, %if.then.i90)) #10
          to label %do.end.i93 [label %if.then.i90], !srcloc !197

if.then.i90:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %name.i89 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i89, i32 noundef 8201, i32 noundef 32) #10
  br label %do.end.i93

do.end.i93:                                       ; preds = %if.then.i90, %if.end46
  %err.i91 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %48 = ptrtoint ptr %err.i91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i92 = icmp eq i32 %49, 0
  br i1 %tobool4.not.i92, label %if.end6.i96, label %do.end.i93.hci_req_add_ev.exit106_crit_edge

do.end.i93.hci_req_add_ev.exit106_crit_edge:      ; preds = %do.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit106

if.end6.i96:                                      ; preds = %do.end.i93
  %call.i.i.i109 = call ptr @__alloc_skb(i32 noundef 43, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i110 = icmp eq ptr %call.i.i.i109, null
  br i1 %tobool.not.i.i110, label %if.then9.i98, label %if.end.i117

if.end.i117:                                      ; preds = %if.end6.i96
  %data.i.i.i111 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i111, align 4
  %add.ptr.i.i.i112 = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i.i112, ptr %data.i.i.i111, align 4
  %tail.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i113, align 8
  %add.ptr1.i.i.i114 = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i.i114, ptr %tail.i.i.i113, align 8
  %call1.i115 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i109, i32 noundef 3) #10
  %54 = ptrtoint ptr %call1.i115 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 2336, ptr %call1.i115, align 1
  %plen3.i116 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i115, i32 0, i32 1
  %55 = ptrtoint ptr %plen3.i116 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %plen3.i116, align 1
  %call.i.i118 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i109, i32 noundef 32) #10
  %56 = call ptr @memcpy(ptr %call.i.i118, ptr %cp28, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_scan_rsp_data, %if.then12.i121)) #10
          to label %if.end14.i101 [label %if.then12.i121], !srcloc !197

if.then12.i121:                                   ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  %name.i119 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  %len13.i120 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 6
  %57 = ptrtoint ptr %len13.i120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len13.i120, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i119, i32 noundef %58) #10
  br label %if.end14.i101

if.then9.i98:                                     ; preds = %if.end6.i96
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i97 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i97, i32 noundef 8201) #10
  %59 = ptrtoint ptr %err.i91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -12, ptr %err.i91, align 4
  br label %hci_req_add_ev.exit106

if.end14.i101:                                    ; preds = %if.then12.i121, %if.end.i117
  %cb.i122 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i122 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %cb.i122, align 8
  %opcode18.i123 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 3, i32 12
  %61 = ptrtoint ptr %opcode18.i123 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 8201, ptr %opcode18.i123, align 4
  %cmd_q.i99 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %62 = ptrtoint ptr %cmd_q.i99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_q.i99, align 4
  %cmp.i.not.i100 = icmp eq ptr %63, %cmd_q.i99
  br i1 %cmp.i.not.i100, label %if.then17.i103, label %if.end14.i101.if.end21.i105_crit_edge

if.end14.i101.if.end21.i105_crit_edge:            ; preds = %if.end14.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i105

if.then17.i103:                                   ; preds = %if.end14.i101
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 3, i32 14
  %64 = ptrtoint ptr %req_flags.i102 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %req_flags.i102, align 2
  %66 = or i8 %65, 1
  store i8 %66, ptr %req_flags.i102, align 2
  br label %if.end21.i105

if.end21.i105:                                    ; preds = %if.then17.i103, %if.end14.i101.if.end21.i105_crit_edge
  %req_event.i104 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i109, i32 0, i32 3, i32 15
  %67 = ptrtoint ptr %req_event.i104 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %req_event.i104, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i99, ptr noundef nonnull %call.i.i.i109) #10
  br label %hci_req_add_ev.exit106

hci_req_add_ev.exit106:                           ; preds = %if.end21.i105, %if.then9.i98, %do.end.i93.hci_req_add_ev.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cp28) #10
  br label %cleanup57

cleanup53:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cp28) #10
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup53, %hci_req_add_ev.exit106, %cleanup, %hci_req_add_ev.exit, %entry.cleanup57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_scan_rsp(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_adv_data(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  %pdu = alloca %struct.anon.149, align 1
  %cp29 = alloca %struct.hci_cp_le_set_adv_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %pdu) #10
  %8 = call ptr @memset(ptr %pdu, i32 0, i32 255)
  %data = getelementptr inbounds %struct.anon.149, ptr %pdu, i32 0, i32 1
  %call5 = call zeroext i8 @eir_create_adv_data(ptr noundef %1, i8 noundef zeroext %instance, ptr noundef %data) #10
  %adv_data_len = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 210
  %9 = ptrtoint ptr %adv_data_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %adv_data_len, align 4
  %conv7 = zext i8 %call5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %call5)
  %cmp = icmp eq i8 %10, %call5
  br i1 %cmp, label %land.lhs.true, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then3
  %adv_data = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 209
  %bcmp89 = call i32 @bcmp(ptr %data, ptr %adv_data, i32 %conv7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp89)
  %cmp14 = icmp eq i32 %bcmp89, 0
  br i1 %cmp14, label %cleanup, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.then3.if.end17_crit_edge
  %adv_data18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 209
  %11 = call ptr @memcpy(ptr %adv_data18, ptr %data, i32 %conv7)
  %12 = ptrtoint ptr %adv_data_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call5, ptr %adv_data_len, align 4
  %length = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %pdu, i32 0, i32 3
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call5, ptr %length, align 1
  %14 = ptrtoint ptr %pdu to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %instance, ptr %pdu, align 1
  %operation = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %pdu, i32 0, i32 1
  %15 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %operation, align 1
  %frag_pref = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %pdu, i32 0, i32 2
  %16 = ptrtoint ptr %frag_pref to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %frag_pref, align 1
  %add = add nuw nsw i32 %conv7, 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_adv_data, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8247, i32 noundef %add) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end17
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %add.i.i = add nuw nsw i32 %conv7, 15
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 14112, ptr %call1.i, align 1
  %conv.i = trunc i32 %add to i8
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %26 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add) #10
  %27 = call ptr @memcpy(ptr %call.i.i, ptr %pdu, i32 %add)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_adv_data, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i109 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i109, i32 noundef %29) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8247) #10
  %30 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 8247, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %35 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %req_flags.i, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %38 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pdu) #10
  br label %cleanup59

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pdu) #10
  br label %cleanup59

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cp29) #10
  %39 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, ptr %cp29, i32 0, i32 1
  %40 = call ptr @memset(ptr %cp29, i32 0, i32 32)
  %call32 = call zeroext i8 @eir_create_adv_data(ptr noundef %1, i8 noundef zeroext %instance, ptr noundef %39) #10
  %adv_data_len33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 210
  %41 = ptrtoint ptr %adv_data_len33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %adv_data_len33, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %call32)
  %cmp36 = icmp eq i8 %42, %call32
  br i1 %cmp36, label %land.lhs.true38, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true38:                                  ; preds = %if.else
  %conv35 = zext i8 %call32 to i32
  %adv_data41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 209
  %bcmp = call i32 @bcmp(ptr %39, ptr %adv_data41, i32 %conv35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp45 = icmp eq i32 %bcmp, 0
  br i1 %cmp45, label %cleanup55, label %land.lhs.true38.if.end48_crit_edge

land.lhs.true38.if.end48_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true38.if.end48_crit_edge, %if.else.if.end48_crit_edge
  %adv_data49 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 209
  %43 = call ptr @memcpy(ptr %adv_data49, ptr %39, i32 31)
  %44 = ptrtoint ptr %adv_data_len33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call32, ptr %adv_data_len33, align 4
  %45 = ptrtoint ptr %cp29 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call32, ptr %cp29, align 1
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_adv_data, %if.then.i92)) #10
          to label %do.end.i95 [label %if.then.i92], !srcloc !197

if.then.i92:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %name.i91 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i91, i32 noundef 8200, i32 noundef 32) #10
  br label %do.end.i95

do.end.i95:                                       ; preds = %if.then.i92, %if.end48
  %err.i93 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %48 = ptrtoint ptr %err.i93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i94 = icmp eq i32 %49, 0
  br i1 %tobool4.not.i94, label %if.end6.i98, label %do.end.i95.hci_req_add_ev.exit108_crit_edge

do.end.i95.hci_req_add_ev.exit108_crit_edge:      ; preds = %do.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit108

if.end6.i98:                                      ; preds = %do.end.i95
  %call.i.i.i111 = call ptr @__alloc_skb(i32 noundef 43, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i112 = icmp eq ptr %call.i.i.i111, null
  br i1 %tobool.not.i.i112, label %if.then9.i100, label %if.end.i119

if.end.i119:                                      ; preds = %if.end6.i98
  %data.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i113, align 4
  %add.ptr.i.i.i114 = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i.i114, ptr %data.i.i.i113, align 4
  %tail.i.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i115, align 8
  %add.ptr1.i.i.i116 = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i.i116, ptr %tail.i.i.i115, align 8
  %call1.i117 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i111, i32 noundef 3) #10
  %54 = ptrtoint ptr %call1.i117 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 2080, ptr %call1.i117, align 1
  %plen3.i118 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i117, i32 0, i32 1
  %55 = ptrtoint ptr %plen3.i118 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %plen3.i118, align 1
  %call.i.i120 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i111, i32 noundef 32) #10
  %56 = call ptr @memcpy(ptr %call.i.i120, ptr %cp29, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_adv_data, %if.then12.i123)) #10
          to label %if.end14.i103 [label %if.then12.i123], !srcloc !197

if.then12.i123:                                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #12
  %name.i121 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  %len13.i122 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 6
  %57 = ptrtoint ptr %len13.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len13.i122, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i121, i32 noundef %58) #10
  br label %if.end14.i103

if.then9.i100:                                    ; preds = %if.end6.i98
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i99 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i99, i32 noundef 8200) #10
  %59 = ptrtoint ptr %err.i93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -12, ptr %err.i93, align 4
  br label %hci_req_add_ev.exit108

if.end14.i103:                                    ; preds = %if.then12.i123, %if.end.i119
  %cb.i124 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i124 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %cb.i124, align 8
  %opcode18.i125 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 3, i32 12
  %61 = ptrtoint ptr %opcode18.i125 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 8200, ptr %opcode18.i125, align 4
  %cmd_q.i101 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %62 = ptrtoint ptr %cmd_q.i101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_q.i101, align 4
  %cmp.i.not.i102 = icmp eq ptr %63, %cmd_q.i101
  br i1 %cmp.i.not.i102, label %if.then17.i105, label %if.end14.i103.if.end21.i107_crit_edge

if.end14.i103.if.end21.i107_crit_edge:            ; preds = %if.end14.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i107

if.then17.i105:                                   ; preds = %if.end14.i103
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i104 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 3, i32 14
  %64 = ptrtoint ptr %req_flags.i104 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %req_flags.i104, align 2
  %66 = or i8 %65, 1
  store i8 %66, ptr %req_flags.i104, align 2
  br label %if.end21.i107

if.end21.i107:                                    ; preds = %if.then17.i105, %if.end14.i103.if.end21.i107_crit_edge
  %req_event.i106 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i111, i32 0, i32 3, i32 15
  %67 = ptrtoint ptr %req_event.i106 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %req_event.i106, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i101, ptr noundef nonnull %call.i.i.i111) #10
  br label %hci_req_add_ev.exit108

hci_req_add_ev.exit108:                           ; preds = %if.end21.i107, %if.then9.i100, %do.end.i95.hci_req_add_ev.exit108_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cp29) #10
  br label %cleanup59

cleanup55:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cp29) #10
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup55, %hci_req_add_ev.exit108, %cleanup, %hci_req_add_ev.exit, %entry.cleanup59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_adv_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_req_update_adv_data(ptr noundef %hdev, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %1 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i.i, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %err.i, align 4
  call void @__hci_req_update_adv_data(ptr noundef nonnull %req, i8 noundef zeroext %instance)
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef null, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_disable_address_resolution(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %4 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i.i, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hdev, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_disable_address_resolution, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8237, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 11552, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_disable_address_resolution, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i6 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i6, i32 noundef %19) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8237) #10
  %20 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8237, ptr %opcode18.i, align 4
  %23 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %25 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_flags.i, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef nonnull @enable_addr_resolution_complete, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %hci_req_add_ev.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enable_addr_resolution_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_addr_resolution_complete.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_addr_resolution_complete, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enable_addr_resolution_complete.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_reenable_advertising(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %1 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dev_flags, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %adv_instances = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 213
  %4 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %adv_instances, align 4
  %cmp.i.not = icmp eq ptr %5, %adv_instances
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i.i, align 4
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hdev, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %err.i, align 4
  %cur_adv_instance = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 215
  %11 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cur_adv_instance, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 @__hci_req_schedule_adv_instance(ptr noundef nonnull %req, i8 noundef zeroext %12, i1 noundef zeroext true)
  br label %if.end12

if.else:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  %call.i = call ptr @hci_find_adv_instance(ptr noundef %hdev, i8 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %land.lhs.true.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then8
  %pending.i = getelementptr inbounds %struct.adv_info, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pending.i, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 @__hci_req_disable_ext_adv_instance(ptr noundef nonnull %req, i8 noundef zeroext 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then8.if.end.i_crit_edge
  %call4.i = call i32 @__hci_req_setup_ext_adv_instance(ptr noundef nonnull %req, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i19 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i19, label %if.end.i.if.end12_crit_edge, label %if.end6.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__hci_req_update_scan_rsp_data(ptr noundef nonnull %req, i8 noundef zeroext 0) #10
  %call7.i = call i32 @__hci_req_enable_ext_advertising(ptr noundef nonnull %req, i8 noundef zeroext 0) #10
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__hci_req_update_adv_data(ptr noundef nonnull %req, i8 noundef zeroext 0)
  call void @__hci_req_update_scan_rsp_data(ptr noundef nonnull %req, i8 noundef zeroext 0)
  call void @__hci_req_enable_advertising(ptr noundef nonnull %req)
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.end6.i, %if.end.i.if.end12_crit_edge, %if.then4
  %call.i20 = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef nonnull @adv_enable_complete, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_schedule_adv_instance(ptr noundef %req, i8 noundef zeroext %instance, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %adv_instances = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 213
  %5 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %adv_instances, align 4
  %cmp.i.not = icmp eq ptr %6, %adv_instances
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %adv_instance_timeout = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 216
  %7 = ptrtoint ptr %adv_instance_timeout to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %adv_instance_timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %timeout11 = getelementptr inbounds %struct.adv_info, ptr %call7, i32 0, i32 5
  %9 = ptrtoint ptr %timeout11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %timeout11, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp = icmp eq i16 %10, 0
  %duration19103 = getelementptr inbounds %struct.adv_info, ptr %call7, i32 0, i32 7
  %11 = ptrtoint ptr %duration19103 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %duration19103, align 4
  br i1 %cmp, label %if.end10.if.end30_crit_edge, label %lor.lhs.false13

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

lor.lhs.false13:                                  ; preds = %if.end10
  %remaining_time = getelementptr inbounds %struct.adv_info, ptr %call7, i32 0, i32 6
  %13 = ptrtoint ptr %remaining_time to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %remaining_time, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp16.not = icmp ugt i16 %12, %14
  br i1 %cmp16.not, label %lor.lhs.false13.if.then24_crit_edge, label %if.end21

lor.lhs.false13.if.then24_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end21:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %duration19103 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %duration19103, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.end21, %lor.lhs.false13.if.then24_crit_edge
  %timeout.0100 = phi i16 [ %16, %if.end21 ], [ %14, %lor.lhs.false13.if.then24_crit_edge ]
  %17 = ptrtoint ptr %remaining_time to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %remaining_time, align 2
  %sub = sub i16 %18, %timeout.0100
  store i16 %sub, ptr %remaining_time, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end10.if.end30_crit_edge
  %timeout.0101 = phi i16 [ %timeout.0100, %if.then24 ], [ %12, %if.end10.if.end30_crit_edge ]
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %adv_instance_timeout to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %timeout.0101, ptr %adv_instance_timeout, align 2
  %req_workqueue = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %23 = ptrtoint ptr %req_workqueue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req_workqueue, align 8
  %adv_instance_expire = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 217
  %conv35 = zext i16 %timeout.0101 to i32
  %mul = mul nuw nsw i32 %conv35, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %adv_instance_expire, i32 noundef %call2.i) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  br i1 %force, label %if.end38.if.end50_crit_edge, label %land.lhs.true

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end38
  %cur_adv_instance = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  %25 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cur_adv_instance, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %instance)
  %cmp42 = icmp eq i8 %26, %instance
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true44:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dev_flags, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not = icmp eq i32 %29, 0
  br i1 %tobool48.not, label %land.lhs.true44.if.end50_crit_edge, label %land.lhs.true44.cleanup_crit_edge

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true44.if.end50_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true44.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.end38.if.end50_crit_edge
  %cur_adv_instance51 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  %30 = ptrtoint ptr %cur_adv_instance51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %instance, ptr %cur_adv_instance51, align 8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %33 = and i8 %32, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool56.not = icmp eq i8 %33, 0
  br i1 %tobool56.not, label %if.else59, label %if.then57

if.then57:                                        ; preds = %if.end50
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %call.i95 = tail call ptr @hci_find_adv_instance(ptr noundef %35, i8 noundef zeroext %instance) #10
  %tobool.not.i = icmp eq ptr %call.i95, null
  br i1 %tobool.not.i, label %if.then57.if.end.i97_crit_edge, label %land.lhs.true.i

if.then57.if.end.i97_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i97

land.lhs.true.i:                                  ; preds = %if.then57
  %pending.i = getelementptr inbounds %struct.adv_info, ptr %call.i95, i32 0, i32 2
  %36 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pending.i, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not.i = icmp eq i8 %37, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i97_crit_edge

land.lhs.true.i.if.end.i97_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i97

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @__hci_req_disable_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance) #10
  br label %if.end.i97

if.end.i97:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i97_crit_edge, %if.then57.if.end.i97_crit_edge
  %call4.i = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i96 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i96, label %if.end.i97.cleanup_crit_edge, label %if.end6.i

if.end.i97.cleanup_crit_edge:                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext %instance) #10
  %call7.i = tail call i32 @__hci_req_enable_ext_advertising(ptr noundef %req, i8 noundef zeroext %instance) #10
  br label %cleanup

if.else59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_update_adv_data(ptr noundef %req, i8 noundef zeroext %instance)
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext %instance)
  tail call void @__hci_req_enable_advertising(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.else59, %if.end6.i, %if.end.i97.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -2, %if.end6.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ], [ 0, %if.else59 ], [ 0, %if.end.i97.cleanup_crit_edge ], [ 0, %if.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_start_ext_adv(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pending = getelementptr inbounds %struct.adv_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pending, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @__hci_req_disable_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext %instance)
  %call7 = tail call i32 @__hci_req_enable_ext_advertising(ptr noundef %req, i8 noundef zeroext %instance)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv_enable_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv_enable_complete.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv_enable_complete, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adv_enable_complete.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_get_random_address(ptr noundef %hdev, i1 noundef zeroext %require_privacy, i1 noundef zeroext %use_rpa, ptr noundef readonly %adv_instance, ptr nocapture noundef writeonly %own_addr_type, ptr nocapture noundef writeonly %rand_addr) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral11 = alloca %struct.bdaddr_t, align 1
  %.compoundliteral26 = alloca %struct.bdaddr_t, align 1
  %nrpa = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rand_addr, i32 0, i32 6)
  br i1 %use_rpa, label %if.then, label %if.end52

if.then:                                          ; preds = %entry
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 22
  %1 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %le_features, align 2
  %3 = and i8 %2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %storemerge = phi i8 [ 1, %if.else ], [ 3, %land.lhs.true.if.end_crit_edge ]
  %7 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %own_addr_type, align 1
  %tobool9.not = icmp eq ptr %adv_instance, null
  br i1 %tobool9.not, label %if.else25, label %if.then10

if.then10:                                        ; preds = %if.end
  %random_addr = getelementptr inbounds %struct.adv_info, ptr %adv_instance, i32 0, i32 15
  %8 = call ptr @memset(ptr %.compoundliteral11, i32 0, i32 6)
  %bcmp86 = call i32 @bcmp(ptr noundef dereferenceable(6) %random_addr, ptr noundef nonnull dereferenceable(6) %.compoundliteral11, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp86)
  %tobool20.not = icmp eq i32 %bcmp86, 0
  br i1 %tobool20.not, label %if.then10.if.end43_crit_edge, label %land.lhs.true21

if.then10.if.end43_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true21:                                  ; preds = %if.then10
  %rpa_expired = getelementptr inbounds %struct.adv_info, ptr %adv_instance, i32 0, i32 16
  %9 = ptrtoint ptr %rpa_expired to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rpa_expired, align 2, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end43_crit_edge

land.lhs.true21.if.end43_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else25:                                        ; preds = %if.end
  %rpa = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 223
  %11 = call ptr @memset(ptr %.compoundliteral26, i32 0, i32 6)
  %bcmp87 = call i32 @bcmp(ptr noundef dereferenceable(6) %rpa, ptr noundef nonnull dereferenceable(6) %.compoundliteral26, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp87)
  %tobool35.not = icmp eq i32 %bcmp87, 0
  br i1 %tobool35.not, label %if.else25.if.end43_crit_edge, label %land.lhs.true36

if.else25.if.end43_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true36:                                  ; preds = %if.else25
  %dev_flags37 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %12 = ptrtoint ptr %dev_flags37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dev_flags37, align 4
  %14 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool40.not = icmp eq i32 %14, 0
  br i1 %tobool40.not, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true36.if.end43_crit_edge

land.lhs.true36.if.end43_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true36.if.end43_crit_edge, %if.else25.if.end43_crit_edge, %land.lhs.true21.if.end43_crit_edge, %if.then10.if.end43_crit_edge
  %irk = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 220
  %rpa45 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 223
  %call46 = tail call i32 @smp_generate_rpa(ptr noundef %hdev, ptr noundef %irk, ptr noundef %rpa45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %name) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call ptr @memcpy(ptr %rand_addr, ptr %rpa45, i32 6)
  br label %cleanup

if.end52:                                         ; preds = %entry
  br i1 %require_privacy, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %nrpa) #10
  %16 = getelementptr inbounds [6 x i8], ptr %nrpa, i32 0, i32 5
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %17 = call ptr @memset(ptr %nrpa, i32 255, i32 6)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then54
  call void @get_random_bytes(ptr noundef nonnull %nrpa, i32 noundef 6) #10
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %16, align 1
  %20 = and i8 %19, 63
  store i8 %20, ptr %16, align 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %nrpa, i32 6) #13
  %tobool61.not = icmp eq i32 %bcmp, 0
  br i1 %tobool61.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %own_addr_type, align 1
  %22 = call ptr @memcpy(ptr %rand_addr, ptr %nrpa, i32 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %nrpa) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %own_addr_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %while.end, %if.end50, %if.then48, %land.lhs.true36.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.then48 ], [ 0, %if.end50 ], [ 0, %while.end ], [ 0, %if.end64 ], [ 0, %land.lhs.true21.cleanup_crit_edge ], [ 0, %land.lhs.true36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_generate_rpa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_clear_ext_adv_sets(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_clear_ext_adv_sets, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8253, i32 noundef 0) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.i = icmp eq i32 %3, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %8 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 15648, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %9 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %plen3.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_clear_ext_adv_sets, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i1 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i1, i32 noundef %11) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8253) #10
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8253, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %17 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %req_flags.i, align 2
  %19 = or i8 %18, 1
  store i8 %19, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %20 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_setup_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  %random_addr = alloca %struct.bdaddr_t, align 1
  %own_addr_type = alloca i8, align 1
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %random_addr) #10
  %2 = getelementptr inbounds [6 x i8], ptr %random_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %random_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %random_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %random_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %random_addr, i32 0, i32 5
  %7 = call ptr @memset(ptr %random_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_addr_type) #10
  %8 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %own_addr_type, align 1, !annotation !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %cmp.not = icmp eq i8 %instance, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup112_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup112_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %adv_instance.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %call5 = tail call i32 @hci_adv_instance_flags(ptr noundef %1, i8 noundef zeroext %instance) #10
  %and = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.rhs, label %if.end4.lor.end_crit_edge

if.end4.lor.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %1) #10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end4.lor.end_crit_edge
  %9 = phi i1 [ true, %if.end4.lor.end_crit_edge ], [ %call7, %lor.rhs ]
  %le_num.i.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 4
  %10 = ptrtoint ptr %le_num.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %le_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %lor.end.if.end12_crit_edge, label %if.end.i

lor.end.if.end12_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i:                                         ; preds = %lor.end
  %le_num_peripheral.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 5
  %12 = ptrtoint ptr %le_num_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %le_num_peripheral.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.not.i = icmp eq i32 %13, 0
  br i1 %cmp1.not.i, label %if.then27.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  br i1 %9, label %land.lhs.true8.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not.i = icmp eq i8 %16, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup112_crit_edge, label %if.end21.thread.i

land.lhs.true.i.cleanup112_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

land.lhs.true8.critedge.i:                        ; preds = %if.then2.i
  %arrayidx10.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10.i, align 1
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not.i = icmp eq i8 %19, 0
  br i1 %tobool13.not.i, label %land.lhs.true8.critedge.i.cleanup112_crit_edge, label %lor.lhs.false.i

land.lhs.true8.critedge.i.cleanup112_crit_edge:   ; preds = %land.lhs.true8.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.critedge.i
  %arrayidx15.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15.i, align 1
  %22 = and i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not.i = icmp eq i8 %22, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i.cleanup112_crit_edge, label %if.end21.thread68.i

lor.lhs.false.i.cleanup112_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end21.thread68.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp25.not69.i = icmp eq i32 %11, %13
  br i1 %cmp25.not69.i, label %if.end21.thread68.i.if.end12_crit_edge, label %if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge

if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge: ; preds = %if.end21.thread68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.critedge.i

if.end21.thread68.i.if.end12_crit_edge:           ; preds = %if.end21.thread68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end21.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp25.not67.i = icmp eq i32 %11, %13
  br i1 %cmp25.not67.i, label %if.end21.thread.i.if.end12_crit_edge, label %if.end21.thread.i.land.lhs.true29.i_crit_edge

if.end21.thread.i.land.lhs.true29.i_crit_edge:    ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29.i

if.end21.thread.i.if.end12_crit_edge:             ; preds = %if.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then27.i:                                      ; preds = %if.end.i
  br i1 %9, label %if.then27.i.land.lhs.true39.critedge.i_crit_edge, label %if.then27.i.land.lhs.true29.i_crit_edge

if.then27.i.land.lhs.true29.i_crit_edge:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29.i

if.then27.i.land.lhs.true39.critedge.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.critedge.i

land.lhs.true29.i:                                ; preds = %if.then27.i.land.lhs.true29.i_crit_edge, %if.end21.thread.i.land.lhs.true29.i_crit_edge
  %arrayidx31.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %23 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx31.i, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not.i = icmp eq i8 %25, 0
  br i1 %tobool34.not.i, label %land.lhs.true29.i.cleanup112_crit_edge, label %land.lhs.true29.i.if.end12_crit_edge

land.lhs.true29.i.if.end12_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true29.i.cleanup112_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

land.lhs.true39.critedge.i:                       ; preds = %if.then27.i.land.lhs.true39.critedge.i_crit_edge, %if.end21.thread68.i.land.lhs.true39.critedge.i_crit_edge
  %arrayidx41.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %26 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx41.i, align 1
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not.i = icmp eq i8 %28, 0
  br i1 %tobool44.not.i, label %land.lhs.true39.critedge.i.cleanup112_crit_edge, label %lor.lhs.false45.i

land.lhs.true39.critedge.i.cleanup112_crit_edge:  ; preds = %land.lhs.true39.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

lor.lhs.false45.i:                                ; preds = %land.lhs.true39.critedge.i
  %arrayidx47.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 2
  %29 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47.i, align 1
  %31 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool50.not.i = icmp eq i8 %31, 0
  br i1 %tobool50.not.i, label %lor.lhs.false45.i.cleanup112_crit_edge, label %lor.lhs.false45.i.if.end12_crit_edge

lor.lhs.false45.i.if.end12_crit_edge:             ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lor.lhs.false45.i.cleanup112_crit_edge:           ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end12:                                         ; preds = %lor.lhs.false45.i.if.end12_crit_edge, %land.lhs.true29.i.if.end12_crit_edge, %if.end21.thread.i.if.end12_crit_edge, %if.end21.thread68.i.if.end12_crit_edge, %lor.end.if.end12_crit_edge
  %lnot = xor i1 %9, true
  %dev_flags.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %32 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dev_flags.i, align 4
  %34 = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end12.adv_use_rpa.exit_crit_edge, label %if.end.i156

if.end12.adv_use_rpa.exit_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

if.end.i156:                                      ; preds = %if.end12
  %35 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %dev_flags.i, align 4
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i = icmp eq i32 %37, 0
  br i1 %tobool4.not.i, label %if.end.i156.adv_use_rpa.exit_crit_edge, label %if.end6.i

if.end.i156.adv_use_rpa.exit_crit_edge:           ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

if.end6.i:                                        ; preds = %if.end.i156
  %and.i = and i32 %call5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end13.i_crit_edge, label %land.lhs.true.i157

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

land.lhs.true.i157:                               ; preds = %if.end6.i
  %38 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dev_flags.i, align 4
  %40 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool11.not.i = icmp eq i32 %40, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i157.if.end13.i_crit_edge, label %land.lhs.true.i157.adv_use_rpa.exit_crit_edge

land.lhs.true.i157.adv_use_rpa.exit_crit_edge:    ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv_use_rpa.exit

land.lhs.true.i157.if.end13.i_crit_edge:          ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i157.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  br label %adv_use_rpa.exit

adv_use_rpa.exit:                                 ; preds = %if.end13.i, %land.lhs.true.i157.adv_use_rpa.exit_crit_edge, %if.end.i156.adv_use_rpa.exit_crit_edge, %if.end12.adv_use_rpa.exit_crit_edge
  %retval.0.i158 = phi i1 [ true, %if.end13.i ], [ false, %if.end12.adv_use_rpa.exit_crit_edge ], [ true, %if.end.i156.adv_use_rpa.exit_crit_edge ], [ false, %land.lhs.true.i157.adv_use_rpa.exit_crit_edge ]
  %call15 = call i32 @hci_get_random_address(ptr noundef %1, i1 noundef zeroext %lnot, i1 noundef zeroext %retval.0.i158, ptr noundef %adv_instance.0, ptr noundef nonnull %own_addr_type, ptr noundef nonnull %random_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %adv_use_rpa.exit.cleanup112_crit_edge, label %if.end19

adv_use_rpa.exit.cleanup112_crit_edge:            ; preds = %adv_use_rpa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end19:                                         ; preds = %adv_use_rpa.exit
  %tobool20.not = icmp eq ptr %adv_instance.0, null
  br i1 %tobool20.not, label %if.else26, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %min_interval = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0, i32 0, i32 13
  %41 = ptrtoint ptr %min_interval to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_interval, align 4
  %and4.i = lshr i32 %42, 16
  %conv6.i = trunc i32 %and4.i to i8
  %max_interval = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0, i32 0, i32 14
  %43 = ptrtoint ptr %max_interval to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_interval, align 4
  %and4.i163 = lshr i32 %44, 16
  %conv6.i164 = trunc i32 %and4.i163 to i8
  %tx_power = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0, i32 0, i32 12
  %45 = ptrtoint ptr %tx_power to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_power, align 1
  br label %if.end34

if.else26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %47 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %le_adv_min_interval, align 4
  %conv27 = zext i16 %48 to i32
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %49 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %le_adv_max_interval, align 2
  %conv30 = zext i16 %50 to i32
  br label %if.end34

if.end34:                                         ; preds = %if.else26, %if.then21
  %cp.sroa.13.0.in = phi i32 [ %conv27, %if.else26 ], [ %42, %if.then21 ]
  %cp.sroa.19.0 = phi i8 [ 0, %if.else26 ], [ %conv6.i, %if.then21 ]
  %cp.sroa.22.0.in = phi i32 [ %conv30, %if.else26 ], [ %44, %if.then21 ]
  %cp.sroa.28.0 = phi i8 [ 0, %if.else26 ], [ %conv6.i164, %if.then21 ]
  %storemerge = phi i8 [ 127, %if.else26 ], [ %46, %if.then21 ]
  %cp.sroa.25.0.in = lshr i32 %cp.sroa.22.0.in, 8
  %cp.sroa.25.0 = trunc i32 %cp.sroa.25.0.in to i8
  %cp.sroa.22.0 = trunc i32 %cp.sroa.22.0.in to i8
  %cp.sroa.16.0.in = lshr i32 %cp.sroa.13.0.in, 8
  %cp.sroa.16.0 = trunc i32 %cp.sroa.16.0.in to i8
  %cp.sroa.13.0 = trunc i32 %cp.sroa.13.0.in to i8
  %and35 = and i32 %call5, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %9, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %tobool36.not, i16 4864, i16 256
  br label %if.end65

if.else45:                                        ; preds = %if.end34
  %call46 = tail call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %1, i8 noundef zeroext %instance) #10
  %call46.not = xor i1 %call46, true
  %and48 = and i32 %call5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %or.cond = select i1 %call46.not, i1 %tobool49.not, i1 false
  br i1 %or.cond, label %if.else57, label %if.then50

if.then50:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select223 = select i1 %tobool36.not, i16 4608, i16 512
  br label %if.end65

if.else57:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select224 = select i1 %tobool36.not, i16 4096, i16 0
  br label %if.end65

if.end65:                                         ; preds = %if.else57, %if.then50, %if.then39
  %cp.sroa.6.0 = phi i16 [ %spec.select, %if.then39 ], [ %spec.select223, %if.then50 ], [ %spec.select224, %if.else57 ]
  %51 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %own_addr_type, align 1
  %le_adv_channel_map = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 43
  %53 = ptrtoint ptr %le_adv_channel_map to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %le_adv_channel_map, align 1
  %and67 = and i32 %call5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %and71 = and i32 %call5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %spec.select225 = select i1 %tobool72.not, i8 1, i8 3
  %cp.sroa.45.0 = select i1 %tobool68.not, i8 %spec.select225, i8 1
  %cp.sroa.50.0 = select i1 %tobool68.not, i8 %spec.select225, i8 2
  %55 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_setup_ext_adv_instance, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8246, i32 noundef 25) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end65
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %57 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool4.not.i182 = icmp eq i32 %58, 0
  br i1 %tobool4.not.i182, label %if.end6.i183, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i183:                                     ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 36, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i202

if.end.i202:                                      ; preds = %if.end6.i183
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %61 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %62, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %63 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 13856, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %64 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 25, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 25) #10
  %65 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %instance, ptr %call.i.i, align 1
  %cp.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %66 = ptrtoint ptr %cp.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %cp.sroa.6.0, ptr %cp.sroa.6.0.call.i.i.sroa_idx, align 1
  %cp.sroa.13.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 3
  %67 = ptrtoint ptr %cp.sroa.13.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %cp.sroa.13.0, ptr %cp.sroa.13.0.call.i.i.sroa_idx, align 1
  %cp.sroa.16.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %68 = ptrtoint ptr %cp.sroa.16.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %cp.sroa.16.0, ptr %cp.sroa.16.0.call.i.i.sroa_idx, align 1
  %cp.sroa.19.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %69 = ptrtoint ptr %cp.sroa.19.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %cp.sroa.19.0, ptr %cp.sroa.19.0.call.i.i.sroa_idx, align 1
  %cp.sroa.22.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 6
  %70 = ptrtoint ptr %cp.sroa.22.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %cp.sroa.22.0, ptr %cp.sroa.22.0.call.i.i.sroa_idx, align 1
  %cp.sroa.25.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 7
  %71 = ptrtoint ptr %cp.sroa.25.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %cp.sroa.25.0, ptr %cp.sroa.25.0.call.i.i.sroa_idx, align 1
  %cp.sroa.28.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 8
  %72 = ptrtoint ptr %cp.sroa.28.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %cp.sroa.28.0, ptr %cp.sroa.28.0.call.i.i.sroa_idx, align 1
  %cp.sroa.31.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 9
  %73 = ptrtoint ptr %cp.sroa.31.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %54, ptr %cp.sroa.31.0.call.i.i.sroa_idx, align 1
  %cp.sroa.33.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 10
  %74 = ptrtoint ptr %cp.sroa.33.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %52, ptr %cp.sroa.33.0.call.i.i.sroa_idx, align 1
  %cp.sroa.35.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 11
  %cp.sroa.43.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 19
  %75 = ptrtoint ptr %cp.sroa.35.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 0, ptr %cp.sroa.35.0.call.i.i.sroa_idx, align 1
  %76 = ptrtoint ptr %cp.sroa.43.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %storemerge, ptr %cp.sroa.43.0.call.i.i.sroa_idx, align 1
  %cp.sroa.45.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 20
  %77 = ptrtoint ptr %cp.sroa.45.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %cp.sroa.45.0, ptr %cp.sroa.45.0.call.i.i.sroa_idx, align 1
  %cp.sroa.49.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 21
  %78 = ptrtoint ptr %cp.sroa.49.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %cp.sroa.49.0.call.i.i.sroa_idx, align 1
  %cp.sroa.50.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 22
  %79 = ptrtoint ptr %cp.sroa.50.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %cp.sroa.50.0, ptr %cp.sroa.50.0.call.i.i.sroa_idx, align 1
  %cp.sroa.54.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 23
  %80 = ptrtoint ptr %cp.sroa.54.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %cp.sroa.54.0.call.i.i.sroa_idx, align 1
  %cp.sroa.55.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 24
  %81 = ptrtoint ptr %cp.sroa.55.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %cp.sroa.55.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_setup_ext_adv_instance, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  %name.i203 = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i203, i32 noundef %83) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i183
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %56, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8246) #10
  %84 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i202
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %86 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 8246, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %87 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %88, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %89 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %req_flags.i, align 2
  %91 = or i8 %90, 1
  store i8 %91, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %92 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %93 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %52, label %hci_req_add_ev.exit.cleanup112_crit_edge [
    i8 1, label %hci_req_add_ev.exit.land.lhs.true_crit_edge
    i8 3, label %hci_req_add_ev.exit.land.lhs.true_crit_edge229
  ]

hci_req_add_ev.exit.land.lhs.true_crit_edge229:   ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

hci_req_add_ev.exit.land.lhs.true_crit_edge:      ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

hci_req_add_ev.exit.cleanup112_crit_edge:         ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

land.lhs.true:                                    ; preds = %hci_req_add_ev.exit.land.lhs.true_crit_edge, %hci_req_add_ev.exit.land.lhs.true_crit_edge229
  %94 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %random_addr, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool93.not = icmp eq i32 %bcmp, 0
  br i1 %tobool93.not, label %land.lhs.true.cleanup112_crit_edge, label %if.then94

land.lhs.true.cleanup112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.then94:                                        ; preds = %land.lhs.true
  br i1 %tobool20.not, label %if.else103, label %if.then97

if.then97:                                        ; preds = %if.then94
  %random_addr98 = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0, i32 0, i32 15
  %bcmp227 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %random_addr, ptr noundef dereferenceable(6) %random_addr98, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp227)
  %tobool100.not = icmp eq i32 %bcmp227, 0
  br i1 %tobool100.not, label %if.then97.cleanup112_crit_edge, label %if.then97.if.end109_crit_edge

if.then97.if.end109_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then97.cleanup112_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.else103:                                       ; preds = %if.then94
  %random_addr104 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 10
  %bcmp228 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %random_addr, ptr noundef dereferenceable(6) %random_addr104, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp228)
  %tobool106.not = icmp eq i32 %bcmp228, 0
  br i1 %tobool106.not, label %if.else103.cleanup112_crit_edge, label %if.end108

if.else103.cleanup112_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end108:                                        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @set_random_addr(ptr noundef %req, ptr noundef nonnull %random_addr)
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then97.if.end109_crit_edge
  %95 = ptrtoint ptr %random_addr to i32
  call void @__asan_load1_noabort(i32 %95)
  %cp95.sroa.7.1.copyload = load i8, ptr %random_addr, align 1
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %cp95.sroa.9.1.copyload = load i8, ptr %2, align 1
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %97)
  %cp95.sroa.10.1.copyload = load i8, ptr %3, align 1
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %98)
  %cp95.sroa.11.1.copyload = load i8, ptr %4, align 1
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %99)
  %cp95.sroa.12.1.copyload = load i8, ptr %5, align 1
  %100 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %100)
  %cp95.sroa.13.1.copyload = load i8, ptr %6, align 1
  %101 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_setup_ext_adv_instance, %if.then.i185)) #10
          to label %do.end.i188 [label %if.then.i185], !srcloc !197

if.then.i185:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %name.i184 = getelementptr inbounds %struct.hci_dev, ptr %102, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i184, i32 noundef 8245, i32 noundef 7) #10
  br label %do.end.i188

do.end.i188:                                      ; preds = %if.then.i185, %if.end109
  %103 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool4.not.i187 = icmp eq i32 %104, 0
  br i1 %tobool4.not.i187, label %if.end6.i191, label %do.end.i188.cleanup112_crit_edge

do.end.i188.cleanup112_crit_edge:                 ; preds = %do.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

if.end6.i191:                                     ; preds = %do.end.i188
  %call.i.i.i205 = tail call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i206 = icmp eq ptr %call.i.i.i205, null
  br i1 %tobool.not.i.i206, label %if.then9.i193, label %if.end.i213

if.end.i213:                                      ; preds = %if.end6.i191
  %data.i.i.i207 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 19
  %105 = ptrtoint ptr %data.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i.i.i207, align 4
  %add.ptr.i.i.i208 = getelementptr i8, ptr %106, i32 8
  store ptr %add.ptr.i.i.i208, ptr %data.i.i.i207, align 4
  %tail.i.i.i209 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 16
  %107 = ptrtoint ptr %tail.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i.i209, align 8
  %add.ptr1.i.i.i210 = getelementptr i8, ptr %108, i32 8
  store ptr %add.ptr1.i.i.i210, ptr %tail.i.i.i209, align 8
  %call1.i211 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i205, i32 noundef 3) #10
  %109 = ptrtoint ptr %call1.i211 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 13600, ptr %call1.i211, align 1
  %plen3.i212 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i211, i32 0, i32 1
  %110 = ptrtoint ptr %plen3.i212 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 7, ptr %plen3.i212, align 1
  %call.i.i214 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i205, i32 noundef 7) #10
  %111 = ptrtoint ptr %call.i.i214 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %instance, ptr %call.i.i214, align 1
  %cp95.sroa.7.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 1
  %112 = ptrtoint ptr %cp95.sroa.7.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %cp95.sroa.7.1.copyload, ptr %cp95.sroa.7.0.call.i.i214.sroa_idx, align 1
  %cp95.sroa.9.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 2
  %113 = ptrtoint ptr %cp95.sroa.9.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %cp95.sroa.9.1.copyload, ptr %cp95.sroa.9.0.call.i.i214.sroa_idx, align 1
  %cp95.sroa.10.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 3
  %114 = ptrtoint ptr %cp95.sroa.10.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %cp95.sroa.10.1.copyload, ptr %cp95.sroa.10.0.call.i.i214.sroa_idx, align 1
  %cp95.sroa.11.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 4
  %115 = ptrtoint ptr %cp95.sroa.11.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %cp95.sroa.11.1.copyload, ptr %cp95.sroa.11.0.call.i.i214.sroa_idx, align 1
  %cp95.sroa.12.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 5
  %116 = ptrtoint ptr %cp95.sroa.12.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %cp95.sroa.12.1.copyload, ptr %cp95.sroa.12.0.call.i.i214.sroa_idx, align 1
  %cp95.sroa.13.0.call.i.i214.sroa_idx = getelementptr inbounds i8, ptr %call.i.i214, i32 6
  %117 = ptrtoint ptr %cp95.sroa.13.0.call.i.i214.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %cp95.sroa.13.1.copyload, ptr %cp95.sroa.13.0.call.i.i214.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_setup_ext_adv_instance, %if.then12.i217)) #10
          to label %if.end14.i196 [label %if.then12.i217], !srcloc !197

if.then12.i217:                                   ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  %name.i215 = getelementptr inbounds %struct.hci_dev, ptr %102, i32 0, i32 2
  %len13.i216 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 6
  %118 = ptrtoint ptr %len13.i216 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len13.i216, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i215, i32 noundef %119) #10
  br label %if.end14.i196

if.then9.i193:                                    ; preds = %if.end6.i191
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i192 = getelementptr inbounds %struct.hci_dev, ptr %102, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i192, i32 noundef 8245) #10
  %120 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup112

if.end14.i196:                                    ; preds = %if.then12.i217, %if.end.i213
  %cb.i218 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 3
  %121 = ptrtoint ptr %cb.i218 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %cb.i218, align 8
  %opcode18.i219 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 3, i32 12
  %122 = ptrtoint ptr %opcode18.i219 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 8245, ptr %opcode18.i219, align 4
  %cmd_q.i194 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %123 = ptrtoint ptr %cmd_q.i194 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cmd_q.i194, align 4
  %cmp.i.not.i195 = icmp eq ptr %124, %cmd_q.i194
  br i1 %cmp.i.not.i195, label %if.then17.i198, label %if.end14.i196.if.end21.i200_crit_edge

if.end14.i196.if.end21.i200_crit_edge:            ; preds = %if.end14.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i200

if.then17.i198:                                   ; preds = %if.end14.i196
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i197 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 3, i32 14
  %125 = ptrtoint ptr %req_flags.i197 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %req_flags.i197, align 2
  %127 = or i8 %126, 1
  store i8 %127, ptr %req_flags.i197, align 2
  br label %if.end21.i200

if.end21.i200:                                    ; preds = %if.then17.i198, %if.end14.i196.if.end21.i200_crit_edge
  %req_event.i199 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i205, i32 0, i32 3, i32 15
  %128 = ptrtoint ptr %req_event.i199 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %req_event.i199, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i194, ptr noundef nonnull %call.i.i.i205) #10
  br label %cleanup112

cleanup112:                                       ; preds = %if.end21.i200, %if.then9.i193, %do.end.i188.cleanup112_crit_edge, %if.else103.cleanup112_crit_edge, %if.then97.cleanup112_crit_edge, %land.lhs.true.cleanup112_crit_edge, %hci_req_add_ev.exit.cleanup112_crit_edge, %adv_use_rpa.exit.cleanup112_crit_edge, %lor.lhs.false45.i.cleanup112_crit_edge, %land.lhs.true39.critedge.i.cleanup112_crit_edge, %land.lhs.true29.i.cleanup112_crit_edge, %lor.lhs.false.i.cleanup112_crit_edge, %land.lhs.true8.critedge.i.cleanup112_crit_edge, %land.lhs.true.i.cleanup112_crit_edge, %if.then.cleanup112_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup112_crit_edge ], [ %call15, %adv_use_rpa.exit.cleanup112_crit_edge ], [ 0, %hci_req_add_ev.exit.cleanup112_crit_edge ], [ 0, %land.lhs.true.cleanup112_crit_edge ], [ 0, %do.end.i188.cleanup112_crit_edge ], [ 0, %if.then9.i193 ], [ 0, %if.end21.i200 ], [ 0, %if.else103.cleanup112_crit_edge ], [ 0, %if.then97.cleanup112_crit_edge ], [ -1, %land.lhs.true.i.cleanup112_crit_edge ], [ -1, %lor.lhs.false.i.cleanup112_crit_edge ], [ -1, %land.lhs.true8.critedge.i.cleanup112_crit_edge ], [ -1, %land.lhs.true29.i.cleanup112_crit_edge ], [ -1, %lor.lhs.false45.i.cleanup112_crit_edge ], [ -1, %land.lhs.true39.critedge.i.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_addr_type) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %random_addr) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_adv_instance_is_scannable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_random_addr(ptr noundef %req, ptr nocapture noundef readonly %rpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  %5 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %lor.lhs.false.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.rcu_read_lock.exit.i_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %lor.lhs.false.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b38.i = load i1, ptr @hci_lookup_le_connect.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hci_lookup_le_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1096, ptr noundef nonnull @.str.55) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %9 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %c.060.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not61.i = icmp eq ptr %c.060.i, %conn_hash.i
  br i1 %cmp.not61.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.062.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.060.i, %do.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 14
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %11)
  %cmp11.i = icmp eq i8 %11, -128
  br i1 %cmp11.i, label %land.lhs.true13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 12
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %13)
  %cmp15.i = icmp eq i16 %13, 5
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %land.lhs.true13.i
  %flags.i = getelementptr inbounds %struct.hci_conn, ptr %c.062.i, i32 0, i32 47
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not.i = icmp eq i32 %16, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %call.i39.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i39.i, label %if.then20.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i42.i

if.then20.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i42.i:                              ; preds = %if.then20.i
  %call1.i40.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool.not.i41.i, label %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i44.i

land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i44.i:                             ; preds = %land.lhs.true.i42.i
  %.b4.i43.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43.i, label %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i45.i

land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i45.i:                                    ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i45.i, %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, %if.then20.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  br label %hci_lookup_le_connect.exit

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %land.lhs.true13.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %c.062.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %c.0.i = load volatile ptr, ptr %c.062.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i48.i, label %for.end.i.rcu_read_unlock.exit58.i_crit_edge, label %land.lhs.true.i51.i

for.end.i.rcu_read_unlock.exit58.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58.i

land.lhs.true.i51.i:                              ; preds = %for.end.i
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit58.i

rcu_read_unlock.exit58.i:                         ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock.exit58.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock.exit58.i_crit_edge, %for.end.i.rcu_read_unlock.exit58.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  br label %hci_lookup_le_connect.exit

hci_lookup_le_connect.exit:                       ; preds = %rcu_read_unlock.exit58.i, %rcu_read_unlock.exit.i
  %retval.0.i17 = phi ptr [ %c.062.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit58.i ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i55.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i57.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i57.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool3.not = icmp eq ptr %retval.0.i17, null
  br i1 %tobool3.not, label %if.end12, label %hci_lookup_le_connect.exit.do.body_crit_edge

hci_lookup_le_connect.exit.do.body_crit_edge:     ; preds = %hci_lookup_le_connect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %hci_lookup_le_connect.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_random_addr.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_random_addr, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !197

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_random_addr.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.65, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @_set_bit(i32 noundef 20, ptr noundef %dev_flags) #10
  br label %cleanup

if.end12:                                         ; preds = %hci_lookup_le_connect.exit
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_random_addr, %if.then.i18)) #10
          to label %do.end.i19 [label %if.then.i18], !srcloc !197

if.then.i18:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8197, i32 noundef 6) #10
  br label %do.end.i19

do.end.i19:                                       ; preds = %if.then.i18, %if.end12
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.i = icmp eq i32 %25, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i19.cleanup_crit_edge

do.end.i19.cleanup_crit_edge:                     ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i19
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i20 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i20, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i21 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %30 = ptrtoint ptr %call1.i21 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 1312, ptr %call1.i21, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i21, i32 0, i32 1
  %31 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %plen3.i, align 1
  %call.i.i22 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #10
  %32 = call ptr @memcpy(ptr %call.i.i22, ptr %rpa, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_random_addr, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i23 = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i23, i32 noundef %34) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8197) #10
  %35 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 8197, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %39, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %40 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %req_flags.i, align 2
  %42 = or i8 %41, 1
  store i8 %42, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %43 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i19.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_enable_ext_advertising(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %cmp.not = icmp eq i8 %instance, 0
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %data.sroa.11.2.insert.ext = zext i8 %instance to i32
  %data.sroa.11.2.insert.shift = shl nuw i32 %data.sroa.11.2.insert.ext, 24
  %duration = getelementptr inbounds %struct.adv_info, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %duration, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool9.not = icmp eq i16 %3, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end17_crit_edge, label %if.then10

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %timeout = getelementptr inbounds %struct.adv_info, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %timeout, align 4
  %mul = mul i16 %5, 1000
  %6 = udiv i16 %mul, 10
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %data.sroa.11.3.insert.ext = zext i16 %7 to i32
  %data.sroa.11.3.insert.shift = shl nuw nsw i32 %data.sroa.11.3.insert.ext, 8
  %data.sroa.11.3.insert.insert = or i32 %data.sroa.11.2.insert.shift, %data.sroa.11.3.insert.shift
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %data.sroa.11.0 = phi i32 [ %data.sroa.11.2.insert.shift, %land.lhs.true.if.end17_crit_edge ], [ %data.sroa.11.3.insert.insert, %if.then10 ], [ 0, %entry.if.end17_crit_edge ]
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_ext_advertising, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8249, i32 noundef 6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end17
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 14624, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %17 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #10
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 257, ptr %call.i.i, align 1
  %data.sroa.11.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %19 = ptrtoint ptr %data.sroa.11.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %data.sroa.11.0, ptr %data.sroa.11.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_enable_ext_advertising, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i38 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i38, i32 noundef %21) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8249) #10
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8249, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %req_flags.i, align 2
  %29 = or i8 %28, 1
  store i8 %29, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %30 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_remove_ext_adv_instance(ptr noundef %req, i8 noundef zeroext %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %cmp.not = icmp eq i8 %instance, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %call = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %instance) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_remove_ext_adv_instance, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8252, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 15392, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %11 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %instance, ptr %call.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_remove_ext_adv_instance, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i4 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i4, i32 noundef %14) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8252) #10
  %15 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8252, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %20 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %req_flags.i, align 2
  %22 = or i8 %21, 1
  store i8 %22, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %23 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_req_clear_adv_instance(ptr noundef %hdev, ptr noundef %sk, ptr noundef %req, i8 noundef zeroext %instance, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %instance)
  %tobool.not = icmp eq i8 %instance, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cur_adv_instance = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 215
  %0 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_adv_instance, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %instance)
  %cmp = icmp eq i8 %1, %instance
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %adv_instance_timeout.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 216
  %2 = ptrtoint ptr %adv_instance_timeout.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %adv_instance_timeout.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %adv_instance_timeout.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %adv_instance_timeout.i, align 2
  %adv_instance_expire.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %adv_instance_expire.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge
  br i1 %tobool.not, label %if.then15, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %cur_adv_instance5 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 215
  %5 = ptrtoint ptr %cur_adv_instance5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_adv_instance5, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %instance)
  %cmp8 = icmp eq i8 %6, %instance
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @hci_get_next_instance(ptr noundef %hdev, i8 noundef zeroext %instance) #10
  br label %if.else

if.then15:                                        ; preds = %if.end
  %adv_instances = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 213
  %7 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adv_instances, align 4
  %cmp22.not138 = icmp eq ptr %8, %adv_instances
  br i1 %cmp22.not138, label %if.then15.if.end67_crit_edge, label %if.then15.for.body_crit_edge

if.then15.for.body_crit_edge:                     ; preds = %if.then15
  br label %for.body

if.then15.if.end67_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then15.for.body_crit_edge
  %adv_instance.0139 = phi ptr [ %n.0141, %for.inc.for.body_crit_edge ], [ %8, %if.then15.for.body_crit_edge ]
  %9 = ptrtoint ptr %adv_instance.0139 to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0141 = load ptr, ptr %adv_instance.0139, align 4
  br i1 %force, label %for.body.if.end30_crit_edge, label %lor.lhs.false26

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

lor.lhs.false26:                                  ; preds = %for.body
  %timeout = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0139, i32 0, i32 5
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool28.not = icmp eq i16 %11, 0
  br i1 %tobool28.not, label %lor.lhs.false26.for.inc_crit_edge, label %lor.lhs.false26.if.end30_crit_edge

lor.lhs.false26.if.end30_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

lor.lhs.false26.for.inc_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end30:                                         ; preds = %lor.lhs.false26.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %instance31 = getelementptr inbounds %struct.adv_info, ptr %adv_instance.0139, i32 0, i32 3
  %12 = ptrtoint ptr %instance31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %instance31, align 2
  %call32 = tail call i32 @hci_remove_adv_instance(ptr noundef %hdev, i8 noundef zeroext %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mgmt_advertising_removed(ptr noundef %sk, ptr noundef %hdev, i8 noundef zeroext %13) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.end30.for.inc_crit_edge, %lor.lhs.false26.for.inc_crit_edge
  %cmp22.not = icmp eq ptr %n.0141, %adv_instances
  br i1 %cmp22.not, label %for.inc.if.end67_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.else:                                          ; preds = %if.then10, %land.lhs.true.if.else_crit_edge
  %next_instance.0.ph = phi ptr [ null, %land.lhs.true.if.else_crit_edge ], [ %call, %if.then10 ]
  %call41 = tail call ptr @hci_find_adv_instance(ptr noundef %hdev, i8 noundef zeroext %instance) #10
  br i1 %force, label %if.else.if.then52_crit_edge, label %lor.lhs.false44

if.else.if.then52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

lor.lhs.false44:                                  ; preds = %if.else
  %tobool45.not = icmp eq ptr %call41, null
  br i1 %tobool45.not, label %lor.lhs.false44.if.end67_crit_edge, label %land.lhs.true46

lor.lhs.false44.if.end67_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true46:                                  ; preds = %lor.lhs.false44
  %timeout47 = getelementptr inbounds %struct.adv_info, ptr %call41, i32 0, i32 5
  %14 = ptrtoint ptr %timeout47 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %timeout47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool49.not = icmp eq i16 %15, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end67_crit_edge, label %land.lhs.true50

land.lhs.true46.if.end67_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %remaining_time = getelementptr inbounds %struct.adv_info, ptr %call41, i32 0, i32 6
  %16 = ptrtoint ptr %remaining_time to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %remaining_time, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool51.not = icmp eq i16 %17, 0
  br i1 %tobool51.not, label %land.lhs.true50.if.then52_crit_edge, label %land.lhs.true50.if.end67_crit_edge

land.lhs.true50.if.end67_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true50.if.then52_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %land.lhs.true50.if.then52_crit_edge, %if.else.if.then52_crit_edge
  %tobool53.not = icmp eq ptr %next_instance.0.ph, null
  br i1 %tobool53.not, label %if.then52.if.end61_crit_edge, label %land.lhs.true54

if.then52.if.end61_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true54:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %instance55 = getelementptr inbounds %struct.adv_info, ptr %next_instance.0.ph, i32 0, i32 3
  %18 = ptrtoint ptr %instance55 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %instance55, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %instance)
  %cmp58 = icmp eq i8 %19, %instance
  %spec.store.select = select i1 %cmp58, ptr null, ptr %next_instance.0.ph
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true54, %if.then52.if.end61_crit_edge
  %next_instance.1 = phi ptr [ %spec.store.select, %land.lhs.true54 ], [ null, %if.then52.if.end61_crit_edge ]
  %call62 = tail call i32 @hci_remove_adv_instance(ptr noundef %hdev, i8 noundef zeroext %instance) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mgmt_advertising_removed(ptr noundef %sk, ptr noundef %hdev, i8 noundef zeroext %instance) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge, %land.lhs.true50.if.end67_crit_edge, %land.lhs.true46.if.end67_crit_edge, %lor.lhs.false44.if.end67_crit_edge, %for.inc.if.end67_crit_edge, %if.then15.if.end67_crit_edge
  %next_instance.2 = phi ptr [ %next_instance.1, %if.end61.if.end67_crit_edge ], [ %next_instance.1, %if.then64 ], [ %next_instance.0.ph, %land.lhs.true50.if.end67_crit_edge ], [ %next_instance.0.ph, %land.lhs.true46.if.end67_crit_edge ], [ %next_instance.0.ph, %lor.lhs.false44.if.end67_crit_edge ], [ null, %if.then15.if.end67_crit_edge ], [ null, %for.inc.if.end67_crit_edge ]
  %tobool68.not = icmp eq ptr %req, null
  br i1 %tobool68.not, label %if.end67.cleanup_crit_edge, label %lor.lhs.false69

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false69:                                  ; preds = %if.end67
  %flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool71.not = icmp eq i32 %and1.i, 0
  br i1 %tobool71.not, label %lor.lhs.false69.cleanup_crit_edge, label %land.lhs.true72

lor.lhs.false69.cleanup_crit_edge:                ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true72:                                  ; preds = %lor.lhs.false69
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %22 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dev_flags, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not = icmp eq i32 %24, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false75:                                  ; preds = %land.lhs.true72
  %25 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dev_flags, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool79.not = icmp ne i32 %27, 0
  %tobool82.not = icmp eq ptr %next_instance.2, null
  %or.cond = select i1 %tobool79.not, i1 true, i1 %tobool82.not
  br i1 %or.cond, label %lor.lhs.false75.cleanup_crit_edge, label %land.lhs.true83

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true83:                                  ; preds = %lor.lhs.false75
  %arrayidx = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 22, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %30 = and i8 %29, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool85.not = icmp eq i8 %30, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true83.cleanup_crit_edge

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  %instance87 = getelementptr inbounds %struct.adv_info, ptr %next_instance.2, i32 0, i32 3
  %31 = ptrtoint ptr %instance87 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %instance87, align 2
  %call88 = tail call i32 @__hci_req_schedule_adv_instance(ptr noundef nonnull %req, i8 noundef zeroext %32, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %land.lhs.true83.cleanup_crit_edge, %lor.lhs.false75.cleanup_crit_edge, %land.lhs.true72.cleanup_crit_edge, %lor.lhs.false69.cleanup_crit_edge, %if.end67.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_next_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_advertising_removed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_scan(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %scan = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan) #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i61 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i61)
  %tobool3.not = icmp eq i32 %and1.i61, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true
  %call10 = tail call zeroext i1 @mgmt_powering_down(ptr noundef %1) #10
  br i1 %call10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %scanning_paused = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 178
  %9 = ptrtoint ptr %scanning_paused to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %scanning_paused, align 8, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dev_flags, align 4
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

lor.lhs.false:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %1)
  %spec.select = select i1 %call20, i8 2, i8 0
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.end15.if.end22_crit_edge
  %storemerge = phi i8 [ 2, %if.end15.if.end22_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %14 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %scan, align 1
  %15 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dev_flags, align 4
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i8 %storemerge, 1
  %19 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %scan, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %shr.i67 = lshr i32 %21, 3
  %and1.i68 = and i32 %shr.i67, 1
  %22 = ptrtoint ptr %scan to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %scan, align 1
  %24 = lshr i8 %23, 1
  %.lobit = and i8 %24, 1
  %25 = zext i8 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i68, i32 %25)
  %cmp = icmp eq i32 %and1.i68, %25
  br i1 %cmp, label %land.lhs.true36, label %if.end29.if.end49_crit_edge

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true36:                                  ; preds = %if.end29
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %shr.i69 = lshr i32 %27, 4
  %and1.i70 = and i32 %shr.i69, 1
  %28 = and i8 %23, 1
  %29 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i70, i32 %29)
  %cmp46 = icmp eq i32 %and1.i70, %29
  br i1 %cmp46, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true36.if.end49_crit_edge

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true36.if.end49_crit_edge, %if.end29.if.end49_crit_edge
  call void @hci_req_add_ev(ptr noundef %req, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %scan, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %land.lhs.true36.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_powering_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %accept_list = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 186
  %0 = ptrtoint ptr %accept_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %b.023 = load ptr, ptr %accept_list, align 4
  %cmp.not24 = icmp eq ptr %b.023, %accept_list
  br i1 %cmp.not24, label %entry.cleanup15_crit_edge, label %for.body.lr.ph

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %b.025 = phi ptr [ %b.023, %for.body.lr.ph ], [ %b.0, %for.inc.critedge.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.bdaddr_list, ptr %b.025, i32 0, i32 1
  %1 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !203
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %for.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.rcu_read_lock.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1033, ptr noundef nonnull @.str.55) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %c.024.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not25.i = icmp eq ptr %c.024.i, %conn_hash.i
  br i1 %cmp.not25.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.026.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.024.i, %do.end.i.for.body.i_crit_edge ]
  %type11.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 14
  %6 = ptrtoint ptr %type11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp13.i = icmp eq i8 %7, 1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %bdaddr, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i:                                      ; preds = %land.lhs.true15.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i, label %if.then18.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

if.then18.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %if.then18.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %if.then18.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  br label %hci_conn_hash_lookup_ba.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %c.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %c.0.i = load volatile ptr, ptr %c.026.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i12.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i12.i, label %for.end.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true.i15.i

for.end.i.rcu_read_unlock.exit22.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit22.i

land.lhs.true.i15.i:                              ; preds = %for.end.i
  %call1.i13.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool.not.i14.i, label %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true2.i17.i

land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit22.i

land.lhs.true2.i17.i:                             ; preds = %land.lhs.true.i15.i
  %.b4.i16.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i, label %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, label %if.then.i18.i

land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit22.i

if.then.i18.i:                                    ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_unlock.exit22.i

rcu_read_unlock.exit22.i:                         ; preds = %if.then.i18.i, %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, %for.end.i.rcu_read_unlock.exit22.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !204
  br label %hci_conn_hash_lookup_ba.exit

hci_conn_hash_lookup_ba.exit:                     ; preds = %rcu_read_unlock.exit22.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %c.026.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit22.i ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i19.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i20.i, align 4
  %sub.i.i.i21.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i21.i, ptr %preempt_count.i.i.i.i20.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %hci_conn_hash_lookup_ba.exit.cleanup15_crit_edge, label %if.end

hci_conn_hash_lookup_ba.exit.cleanup15_crit_edge: ; preds = %hci_conn_hash_lookup_ba.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

if.end:                                           ; preds = %hci_conn_hash_lookup_ba.exit
  %state = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i, i32 0, i32 12
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %state, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %14, label %if.end.cleanup15_crit_edge [
    i16 1, label %if.end.for.inc.critedge_crit_edge
    i16 7, label %if.end.for.inc.critedge_crit_edge34
  ]

if.end.for.inc.critedge_crit_edge34:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.critedge

if.end.for.inc.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.critedge

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

for.inc.critedge:                                 ; preds = %if.end.for.inc.critedge_crit_edge, %if.end.for.inc.critedge_crit_edge34
  %16 = ptrtoint ptr %b.025 to i32
  call void @__asan_load4_noabort(i32 %16)
  %b.0 = load ptr, ptr %b.025, align 4
  %cmp.not = icmp eq ptr %b.0, %accept_list
  br i1 %cmp.not, label %for.inc.critedge.cleanup15_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.critedge.cleanup15_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.critedge.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %hci_conn_hash_lookup_ba.exit.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup15_crit_edge ], [ false, %for.inc.critedge.cleanup15_crit_edge ], [ true, %hci_conn_hash_lookup_ba.exit.cleanup15_crit_edge ], [ true, %if.end.cleanup15_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_req_update_class(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %cod = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cod) #10
  %2 = getelementptr inbounds [3 x i8], ptr %cod, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %cod, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hci_req_update_class.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_class, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__hci_req_update_class.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i53 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i53)
  %tobool14.not = icmp eq i32 %and1.i53, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dev_flags, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %minor_class = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %minor_class to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %minor_class, align 4
  %16 = ptrtoint ptr %cod to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cod, align 1
  %major_class = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %major_class to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %major_class, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  %uuids.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 187
  %20 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %uuid.014.i = load ptr, ptr %uuids.i, align 4
  %cmp.not15.i = icmp eq ptr %uuid.014.i, %uuids.i
  br i1 %cmp.not15.i, label %if.end22.get_service_classes.exit_crit_edge, label %if.end22.for.body.i_crit_edge

if.end22.for.body.i_crit_edge:                    ; preds = %if.end22
  br label %for.body.i

if.end22.get_service_classes.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_service_classes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end22.for.body.i_crit_edge
  %uuid.017.i = phi ptr [ %uuid.0.i, %for.body.i.for.body.i_crit_edge ], [ %uuid.014.i, %if.end22.for.body.i_crit_edge ]
  %val.016.i = phi i8 [ %or13.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end22.for.body.i_crit_edge ]
  %svc_hint.i = getelementptr inbounds %struct.bt_uuid, ptr %uuid.017.i, i32 0, i32 3
  %21 = ptrtoint ptr %svc_hint.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %svc_hint.i, align 1
  %or13.i = or i8 %22, %val.016.i
  %23 = ptrtoint ptr %uuid.017.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %uuid.0.i = load ptr, ptr %uuid.017.i, align 4
  %cmp.not.i = icmp eq ptr %uuid.0.i, %uuids.i
  br i1 %cmp.not.i, label %for.body.i.get_service_classes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.get_service_classes.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_service_classes.exit

get_service_classes.exit:                         ; preds = %for.body.i.get_service_classes.exit_crit_edge, %if.end22.get_service_classes.exit_crit_edge
  %val.0.lcssa.i = phi i8 [ 0, %if.end22.get_service_classes.exit_crit_edge ], [ %or13.i, %for.body.i.get_service_classes.exit_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %val.0.lcssa.i, ptr %3, align 1
  %25 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dev_flags, align 4
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %get_service_classes.exit.if.end33_crit_edge, label %if.then30

get_service_classes.exit.if.end33_crit_edge:      ; preds = %get_service_classes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %get_service_classes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = or i8 %18, 32
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %2, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %get_service_classes.exit.if.end33_crit_edge
  %dev_class = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %cod, ptr noundef dereferenceable(3) %dev_class, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_req_update_class, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %31, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3108, i32 noundef 3) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end39
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %32 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool4.not.i = icmp eq i32 %33, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call7.i = call ptr @hci_prepare_cmd(ptr noundef %31, i16 noundef zeroext 3108, i32 noundef 3, ptr noundef nonnull %cod) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %31, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3108) #10
  %34 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.end6.i
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 3, i32 14
  %37 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %req_flags.i, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call7.i, i32 0, i32 3, i32 15
  %40 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cod) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hci_abort_conn(ptr noundef %req, ptr noundef %conn, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %1, label %sw.default [
    i16 1, label %entry.sw.bb_crit_edge
    i16 7, label %entry.sw.bb_crit_edge233
    i16 5, label %sw.bb10
    i16 6, label %sw.bb31
  ]

entry.sw.bb_crit_edge233:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge233
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %4)
  %cmp = icmp eq i8 %4, -127
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %handle, align 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %conv4 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 1079, i32 noundef 2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 14084, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #10
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %call.i.i, align 1
  %cp.sroa.5.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %18 = ptrtoint ptr %cp.sroa.5.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %reason, ptr %cp.sroa.5.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i168 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i168, i32 noundef %20) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 1079) #10
  %21 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -12, ptr %err.i, align 4
  br label %if.end

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1079, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %26 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %req_flags.i, align 2
  %28 = or i8 %27, 1
  store i8 %28, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %29 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %30 = tail call i16 @llvm.bswap.i16(i16 %6)
  %31 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i79)) #10
          to label %do.end.i82 [label %if.then.i79], !srcloc !197

if.then.i79:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i78 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i78, i32 noundef 1030, i32 noundef 3) #10
  br label %do.end.i82

do.end.i82:                                       ; preds = %if.then.i79, %if.else
  %err.i80 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %err.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not.i81 = icmp eq i32 %34, 0
  br i1 %tobool4.not.i81, label %if.end6.i85, label %do.end.i82.if.end_crit_edge

do.end.i82.if.end_crit_edge:                      ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end6.i85:                                      ; preds = %do.end.i82
  %call.i.i.i170 = tail call ptr @__alloc_skb(i32 noundef 14, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i171 = icmp eq ptr %call.i.i.i170, null
  br i1 %tobool.not.i.i171, label %if.then9.i87, label %if.end.i178

if.end.i178:                                      ; preds = %if.end6.i85
  %data.i.i.i172 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i172, align 4
  %add.ptr.i.i.i173 = getelementptr i8, ptr %36, i32 8
  store ptr %add.ptr.i.i.i173, ptr %data.i.i.i172, align 4
  %tail.i.i.i174 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i174, align 8
  %add.ptr1.i.i.i175 = getelementptr i8, ptr %38, i32 8
  store ptr %add.ptr1.i.i.i175, ptr %tail.i.i.i174, align 8
  %call1.i176 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i170, i32 noundef 3) #10
  %39 = ptrtoint ptr %call1.i176 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 1540, ptr %call1.i176, align 1
  %plen3.i177 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i176, i32 0, i32 1
  %40 = ptrtoint ptr %plen3.i177 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %plen3.i177, align 1
  %call.i.i179 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i170, i32 noundef 3) #10
  %41 = ptrtoint ptr %call.i.i179 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %30, ptr %call.i.i179, align 1
  %dc.sroa.5.0.call.i.i179.sroa_idx = getelementptr inbounds i8, ptr %call.i.i179, i32 2
  %42 = ptrtoint ptr %dc.sroa.5.0.call.i.i179.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %reason, ptr %dc.sroa.5.0.call.i.i179.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then12.i182)) #10
          to label %if.end14.i90 [label %if.then12.i182], !srcloc !197

if.then12.i182:                                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #12
  %name.i180 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 2
  %len13.i181 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 6
  %43 = ptrtoint ptr %len13.i181 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len13.i181, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i180, i32 noundef %44) #10
  br label %if.end14.i90

if.then9.i87:                                     ; preds = %if.end6.i85
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i86 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i86, i32 noundef 1030) #10
  %45 = ptrtoint ptr %err.i80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -12, ptr %err.i80, align 4
  br label %if.end

if.end14.i90:                                     ; preds = %if.then12.i182, %if.end.i178
  %cb.i183 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i183 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %cb.i183, align 8
  %opcode18.i184 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 3, i32 12
  %47 = ptrtoint ptr %opcode18.i184 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1030, ptr %opcode18.i184, align 4
  %cmd_q.i88 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %48 = ptrtoint ptr %cmd_q.i88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmd_q.i88, align 4
  %cmp.i.not.i89 = icmp eq ptr %49, %cmd_q.i88
  br i1 %cmp.i.not.i89, label %if.then17.i92, label %if.end14.i90.if.end21.i94_crit_edge

if.end14.i90.if.end21.i94_crit_edge:              ; preds = %if.end14.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i94

if.then17.i92:                                    ; preds = %if.end14.i90
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i91 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 3, i32 14
  %50 = ptrtoint ptr %req_flags.i91 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %req_flags.i91, align 2
  %52 = or i8 %51, 1
  store i8 %52, ptr %req_flags.i91, align 2
  br label %if.end21.i94

if.end21.i94:                                     ; preds = %if.then17.i92, %if.end14.i90.if.end21.i94_crit_edge
  %req_event.i93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i170, i32 0, i32 3, i32 15
  %53 = ptrtoint ptr %req_event.i93 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %req_event.i93, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i88, ptr noundef nonnull %call.i.i.i170) #10
  br label %if.end

if.end:                                           ; preds = %if.end21.i94, %if.then9.i87, %do.end.i82.if.end_crit_edge, %if.end21.i, %if.then9.i, %do.end.i.if.end_crit_edge
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 8, ptr %state, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %type11 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %55 = ptrtoint ptr %type11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type11, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %56, label %sw.bb10.sw.epilog_crit_edge [
    i8 -128, label %if.then15
    i8 1, label %if.then23
  ]

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb10
  %flags = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 47
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  %60 = and i32 %59, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not = icmp eq i32 %60, 0
  br i1 %tobool.not, label %if.end17, label %if.then15.sw.epilog_crit_edge

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end17:                                         ; preds = %if.then15
  %61 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i97)) #10
          to label %do.end.i100 [label %if.then.i97], !srcloc !197

if.then.i97:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %name.i96 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i96, i32 noundef 8206, i32 noundef 0) #10
  br label %do.end.i100

do.end.i100:                                      ; preds = %if.then.i97, %if.end17
  %err.i98 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %63 = ptrtoint ptr %err.i98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %err.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool4.not.i99 = icmp eq i32 %64, 0
  br i1 %tobool4.not.i99, label %if.end6.i103, label %do.end.i100.sw.epilog_crit_edge

do.end.i100.sw.epilog_crit_edge:                  ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end6.i103:                                     ; preds = %do.end.i100
  %call7.i101 = tail call ptr @hci_prepare_cmd(ptr noundef %62, i16 noundef zeroext 8206, i32 noundef 0, ptr noundef null) #10
  %tobool8.not.i102 = icmp eq ptr %call7.i101, null
  br i1 %tobool8.not.i102, label %if.then9.i105, label %if.end14.i108

if.then9.i105:                                    ; preds = %if.end6.i103
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i104 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i104, i32 noundef 8206) #10
  %65 = ptrtoint ptr %err.i98 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -12, ptr %err.i98, align 4
  br label %sw.epilog

if.end14.i108:                                    ; preds = %if.end6.i103
  %cmd_q.i106 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %66 = ptrtoint ptr %cmd_q.i106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cmd_q.i106, align 4
  %cmp.i.not.i107 = icmp eq ptr %67, %cmd_q.i106
  br i1 %cmp.i.not.i107, label %if.then17.i110, label %if.end14.i108.if.end21.i112_crit_edge

if.end14.i108.if.end21.i112_crit_edge:            ; preds = %if.end14.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i112

if.then17.i110:                                   ; preds = %if.end14.i108
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i109 = getelementptr inbounds %struct.sk_buff, ptr %call7.i101, i32 0, i32 3, i32 14
  %68 = ptrtoint ptr %req_flags.i109 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %req_flags.i109, align 2
  %70 = or i8 %69, 1
  store i8 %70, ptr %req_flags.i109, align 2
  br label %if.end21.i112

if.end21.i112:                                    ; preds = %if.then17.i110, %if.end14.i108.if.end21.i112_crit_edge
  %req_event.i111 = getelementptr inbounds %struct.sk_buff, ptr %call7.i101, i32 0, i32 3, i32 15
  %71 = ptrtoint ptr %req_event.i111 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %req_event.i111, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i106, ptr noundef nonnull %call7.i101) #10
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb10
  %72 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %req, align 4
  %hci_ver = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 28
  %74 = ptrtoint ptr %hci_ver to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hci_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp25 = icmp ult i8 %75, 2
  br i1 %cmp25, label %if.then23.sw.epilog_crit_edge, label %if.end28

if.then23.sw.epilog_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end28:                                         ; preds = %if.then23
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i115)) #10
          to label %do.end.i118 [label %if.then.i115], !srcloc !197

if.then.i115:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %name.i114 = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i114, i32 noundef 1032, i32 noundef 6) #10
  br label %do.end.i118

do.end.i118:                                      ; preds = %if.then.i115, %if.end28
  %err.i116 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %76 = ptrtoint ptr %err.i116 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool4.not.i117 = icmp eq i32 %77, 0
  br i1 %tobool4.not.i117, label %if.end6.i121, label %do.end.i118.sw.epilog_crit_edge

do.end.i118.sw.epilog_crit_edge:                  ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end6.i121:                                     ; preds = %do.end.i118
  %call7.i119 = tail call ptr @hci_prepare_cmd(ptr noundef %73, i16 noundef zeroext 1032, i32 noundef 6, ptr noundef %dst) #10
  %tobool8.not.i120 = icmp eq ptr %call7.i119, null
  br i1 %tobool8.not.i120, label %if.then9.i123, label %if.end14.i126

if.then9.i123:                                    ; preds = %if.end6.i121
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i122 = getelementptr inbounds %struct.hci_dev, ptr %73, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i122, i32 noundef 1032) #10
  %78 = ptrtoint ptr %err.i116 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -12, ptr %err.i116, align 4
  br label %sw.epilog

if.end14.i126:                                    ; preds = %if.end6.i121
  %cmd_q.i124 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %79 = ptrtoint ptr %cmd_q.i124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmd_q.i124, align 4
  %cmp.i.not.i125 = icmp eq ptr %80, %cmd_q.i124
  br i1 %cmp.i.not.i125, label %if.then17.i128, label %if.end14.i126.if.end21.i130_crit_edge

if.end14.i126.if.end21.i130_crit_edge:            ; preds = %if.end14.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i130

if.then17.i128:                                   ; preds = %if.end14.i126
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i127 = getelementptr inbounds %struct.sk_buff, ptr %call7.i119, i32 0, i32 3, i32 14
  %81 = ptrtoint ptr %req_flags.i127 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %req_flags.i127, align 2
  %83 = or i8 %82, 1
  store i8 %83, ptr %req_flags.i127, align 2
  br label %if.end21.i130

if.end21.i130:                                    ; preds = %if.then17.i128, %if.end14.i126.if.end21.i130_crit_edge
  %req_event.i129 = getelementptr inbounds %struct.sk_buff, ptr %call7.i119, i32 0, i32 3, i32 15
  %84 = ptrtoint ptr %req_event.i129 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %req_event.i129, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i124, ptr noundef nonnull %call7.i119) #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %type32 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %85 = ptrtoint ptr %type32 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %type32, align 1
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %86, label %sw.bb31.sw.epilog_crit_edge [
    i8 1, label %if.then36
    i8 0, label %sw.bb31.if.then48_crit_edge
    i8 2, label %sw.bb31.if.then48_crit_edge234
  ]

sw.bb31.if.then48_crit_edge234:                   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

sw.bb31.if.then48_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then36:                                        ; preds = %sw.bb31
  %dst37 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %88 = ptrtoint ptr %dst37 to i32
  call void @__asan_load1_noabort(i32 %88)
  %rej.sroa.0.0.copyload227 = load i8, ptr %dst37, align 1
  %rej.sroa.5.0.dst37.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 1
  %89 = ptrtoint ptr %rej.sroa.5.0.dst37.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %89)
  %rej.sroa.5.0.copyload228 = load i8, ptr %rej.sroa.5.0.dst37.sroa_idx, align 1
  %rej.sroa.6.0.dst37.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 2
  %90 = ptrtoint ptr %rej.sroa.6.0.dst37.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %90)
  %rej.sroa.6.0.copyload229 = load i8, ptr %rej.sroa.6.0.dst37.sroa_idx, align 1
  %rej.sroa.7.0.dst37.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 3
  %91 = ptrtoint ptr %rej.sroa.7.0.dst37.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %91)
  %rej.sroa.7.0.copyload230 = load i8, ptr %rej.sroa.7.0.dst37.sroa_idx, align 1
  %rej.sroa.8.0.dst37.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 4
  %92 = ptrtoint ptr %rej.sroa.8.0.dst37.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %92)
  %rej.sroa.8.0.copyload231 = load i8, ptr %rej.sroa.8.0.dst37.sroa_idx, align 1
  %rej.sroa.9.0.dst37.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 5
  %93 = ptrtoint ptr %rej.sroa.9.0.dst37.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %93)
  %rej.sroa.9.0.copyload232 = load i8, ptr %rej.sroa.9.0.dst37.sroa_idx, align 1
  %94 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i133)) #10
          to label %do.end.i136 [label %if.then.i133], !srcloc !197

if.then.i133:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %name.i132 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i132, i32 noundef 1034, i32 noundef 7) #10
  br label %do.end.i136

do.end.i136:                                      ; preds = %if.then.i133, %if.then36
  %err.i134 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %96 = ptrtoint ptr %err.i134 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %err.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool4.not.i135 = icmp eq i32 %97, 0
  br i1 %tobool4.not.i135, label %if.end6.i139, label %do.end.i136.sw.epilog_crit_edge

do.end.i136.sw.epilog_crit_edge:                  ; preds = %do.end.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end6.i139:                                     ; preds = %do.end.i136
  %call.i.i.i187 = tail call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i188 = icmp eq ptr %call.i.i.i187, null
  br i1 %tobool.not.i.i188, label %if.then9.i141, label %if.end.i195

if.end.i195:                                      ; preds = %if.end6.i139
  %data.i.i.i189 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 19
  %98 = ptrtoint ptr %data.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i.i.i189, align 4
  %add.ptr.i.i.i190 = getelementptr i8, ptr %99, i32 8
  store ptr %add.ptr.i.i.i190, ptr %data.i.i.i189, align 4
  %tail.i.i.i191 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 16
  %100 = ptrtoint ptr %tail.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tail.i.i.i191, align 8
  %add.ptr1.i.i.i192 = getelementptr i8, ptr %101, i32 8
  store ptr %add.ptr1.i.i.i192, ptr %tail.i.i.i191, align 8
  %call1.i193 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i187, i32 noundef 3) #10
  %102 = ptrtoint ptr %call1.i193 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 2564, ptr %call1.i193, align 1
  %plen3.i194 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i193, i32 0, i32 1
  %103 = ptrtoint ptr %plen3.i194 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 7, ptr %plen3.i194, align 1
  %call.i.i196 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i187, i32 noundef 7) #10
  %104 = ptrtoint ptr %call.i.i196 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %rej.sroa.0.0.copyload227, ptr %call.i.i196, align 1
  %rej.sroa.5.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 1
  %105 = ptrtoint ptr %rej.sroa.5.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %rej.sroa.5.0.copyload228, ptr %rej.sroa.5.0.call.i.i196.sroa_idx, align 1
  %rej.sroa.6.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 2
  %106 = ptrtoint ptr %rej.sroa.6.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %rej.sroa.6.0.copyload229, ptr %rej.sroa.6.0.call.i.i196.sroa_idx, align 1
  %rej.sroa.7.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 3
  %107 = ptrtoint ptr %rej.sroa.7.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %rej.sroa.7.0.copyload230, ptr %rej.sroa.7.0.call.i.i196.sroa_idx, align 1
  %rej.sroa.8.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 4
  %108 = ptrtoint ptr %rej.sroa.8.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %rej.sroa.8.0.copyload231, ptr %rej.sroa.8.0.call.i.i196.sroa_idx, align 1
  %rej.sroa.9.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 5
  %109 = ptrtoint ptr %rej.sroa.9.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %rej.sroa.9.0.copyload232, ptr %rej.sroa.9.0.call.i.i196.sroa_idx, align 1
  %rej.sroa.10.0.call.i.i196.sroa_idx = getelementptr inbounds i8, ptr %call.i.i196, i32 6
  %110 = ptrtoint ptr %rej.sroa.10.0.call.i.i196.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %reason, ptr %rej.sroa.10.0.call.i.i196.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then12.i199)) #10
          to label %if.end14.i144 [label %if.then12.i199], !srcloc !197

if.then12.i199:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #12
  %name.i197 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  %len13.i198 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 6
  %111 = ptrtoint ptr %len13.i198 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len13.i198, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i197, i32 noundef %112) #10
  br label %if.end14.i144

if.then9.i141:                                    ; preds = %if.end6.i139
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i140 = getelementptr inbounds %struct.hci_dev, ptr %95, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i140, i32 noundef 1034) #10
  %113 = ptrtoint ptr %err.i134 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -12, ptr %err.i134, align 4
  br label %sw.epilog

if.end14.i144:                                    ; preds = %if.then12.i199, %if.end.i195
  %cb.i200 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 3
  %114 = ptrtoint ptr %cb.i200 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %cb.i200, align 8
  %opcode18.i201 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 3, i32 12
  %115 = ptrtoint ptr %opcode18.i201 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1034, ptr %opcode18.i201, align 4
  %cmd_q.i142 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %116 = ptrtoint ptr %cmd_q.i142 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cmd_q.i142, align 4
  %cmp.i.not.i143 = icmp eq ptr %117, %cmd_q.i142
  br i1 %cmp.i.not.i143, label %if.then17.i146, label %if.end14.i144.if.end21.i148_crit_edge

if.end14.i144.if.end21.i148_crit_edge:            ; preds = %if.end14.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i148

if.then17.i146:                                   ; preds = %if.end14.i144
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i145 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 3, i32 14
  %118 = ptrtoint ptr %req_flags.i145 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %req_flags.i145, align 2
  %120 = or i8 %119, 1
  store i8 %120, ptr %req_flags.i145, align 2
  br label %if.end21.i148

if.end21.i148:                                    ; preds = %if.then17.i146, %if.end14.i144.if.end21.i148_crit_edge
  %req_event.i147 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i187, i32 0, i32 3, i32 15
  %121 = ptrtoint ptr %req_event.i147 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %req_event.i147, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i142, ptr noundef nonnull %call.i.i.i187) #10
  br label %sw.epilog

if.then48:                                        ; preds = %sw.bb31.if.then48_crit_edge, %sw.bb31.if.then48_crit_edge234
  %dst51 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %122 = ptrtoint ptr %dst51 to i32
  call void @__asan_load1_noabort(i32 %122)
  %rej49.sroa.0.0.copyload221 = load i8, ptr %dst51, align 1
  %rej49.sroa.5.0.dst51.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 1
  %123 = ptrtoint ptr %rej49.sroa.5.0.dst51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %123)
  %rej49.sroa.5.0.copyload222 = load i8, ptr %rej49.sroa.5.0.dst51.sroa_idx, align 1
  %rej49.sroa.6.0.dst51.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 2
  %124 = ptrtoint ptr %rej49.sroa.6.0.dst51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %124)
  %rej49.sroa.6.0.copyload223 = load i8, ptr %rej49.sroa.6.0.dst51.sroa_idx, align 1
  %rej49.sroa.7.0.dst51.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 3
  %125 = ptrtoint ptr %rej49.sroa.7.0.dst51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %125)
  %rej49.sroa.7.0.copyload224 = load i8, ptr %rej49.sroa.7.0.dst51.sroa_idx, align 1
  %rej49.sroa.8.0.dst51.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 4
  %126 = ptrtoint ptr %rej49.sroa.8.0.dst51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %126)
  %rej49.sroa.8.0.copyload225 = load i8, ptr %rej49.sroa.8.0.dst51.sroa_idx, align 1
  %rej49.sroa.9.0.dst51.sroa_idx = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2, i32 0, i32 5
  %127 = ptrtoint ptr %rej49.sroa.9.0.dst51.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %127)
  %rej49.sroa.9.0.copyload226 = load i8, ptr %rej49.sroa.9.0.dst51.sroa_idx, align 1
  %128 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then.i151)) #10
          to label %do.end.i154 [label %if.then.i151], !srcloc !197

if.then.i151:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %name.i150 = getelementptr inbounds %struct.hci_dev, ptr %129, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i150, i32 noundef 1066, i32 noundef 7) #10
  br label %do.end.i154

do.end.i154:                                      ; preds = %if.then.i151, %if.then48
  %err.i152 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %130 = ptrtoint ptr %err.i152 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %err.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool4.not.i153 = icmp eq i32 %131, 0
  br i1 %tobool4.not.i153, label %if.end6.i157, label %do.end.i154.sw.epilog_crit_edge

do.end.i154.sw.epilog_crit_edge:                  ; preds = %do.end.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end6.i157:                                     ; preds = %do.end.i154
  %call.i.i.i204 = tail call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i205 = icmp eq ptr %call.i.i.i204, null
  br i1 %tobool.not.i.i205, label %if.then9.i159, label %if.end.i212

if.end.i212:                                      ; preds = %if.end6.i157
  %data.i.i.i206 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 19
  %132 = ptrtoint ptr %data.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i.i206, align 4
  %add.ptr.i.i.i207 = getelementptr i8, ptr %133, i32 8
  store ptr %add.ptr.i.i.i207, ptr %data.i.i.i206, align 4
  %tail.i.i.i208 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 16
  %134 = ptrtoint ptr %tail.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tail.i.i.i208, align 8
  %add.ptr1.i.i.i209 = getelementptr i8, ptr %135, i32 8
  store ptr %add.ptr1.i.i.i209, ptr %tail.i.i.i208, align 8
  %call1.i210 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i204, i32 noundef 3) #10
  %136 = ptrtoint ptr %call1.i210 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 10756, ptr %call1.i210, align 1
  %plen3.i211 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i210, i32 0, i32 1
  %137 = ptrtoint ptr %plen3.i211 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 7, ptr %plen3.i211, align 1
  %call.i.i213 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i204, i32 noundef 7) #10
  %138 = ptrtoint ptr %call.i.i213 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %rej49.sroa.0.0.copyload221, ptr %call.i.i213, align 1
  %rej49.sroa.5.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 1
  %139 = ptrtoint ptr %rej49.sroa.5.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %rej49.sroa.5.0.copyload222, ptr %rej49.sroa.5.0.call.i.i213.sroa_idx, align 1
  %rej49.sroa.6.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 2
  %140 = ptrtoint ptr %rej49.sroa.6.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %rej49.sroa.6.0.copyload223, ptr %rej49.sroa.6.0.call.i.i213.sroa_idx, align 1
  %rej49.sroa.7.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 3
  %141 = ptrtoint ptr %rej49.sroa.7.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %rej49.sroa.7.0.copyload224, ptr %rej49.sroa.7.0.call.i.i213.sroa_idx, align 1
  %rej49.sroa.8.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 4
  %142 = ptrtoint ptr %rej49.sroa.8.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %rej49.sroa.8.0.copyload225, ptr %rej49.sroa.8.0.call.i.i213.sroa_idx, align 1
  %rej49.sroa.9.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 5
  %143 = ptrtoint ptr %rej49.sroa.9.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %rej49.sroa.9.0.copyload226, ptr %rej49.sroa.9.0.call.i.i213.sroa_idx, align 1
  %rej49.sroa.10.0.call.i.i213.sroa_idx = getelementptr inbounds i8, ptr %call.i.i213, i32 6
  %144 = ptrtoint ptr %rej49.sroa.10.0.call.i.i213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 13, ptr %rej49.sroa.10.0.call.i.i213.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hci_abort_conn, %if.then12.i216)) #10
          to label %if.end14.i162 [label %if.then12.i216], !srcloc !197

if.then12.i216:                                   ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #12
  %name.i214 = getelementptr inbounds %struct.hci_dev, ptr %129, i32 0, i32 2
  %len13.i215 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 6
  %145 = ptrtoint ptr %len13.i215 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len13.i215, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i214, i32 noundef %146) #10
  br label %if.end14.i162

if.then9.i159:                                    ; preds = %if.end6.i157
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i158 = getelementptr inbounds %struct.hci_dev, ptr %129, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i158, i32 noundef 1066) #10
  %147 = ptrtoint ptr %err.i152 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -12, ptr %err.i152, align 4
  br label %sw.epilog

if.end14.i162:                                    ; preds = %if.then12.i216, %if.end.i212
  %cb.i217 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 3
  %148 = ptrtoint ptr %cb.i217 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %cb.i217, align 8
  %opcode18.i218 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 3, i32 12
  %149 = ptrtoint ptr %opcode18.i218 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1066, ptr %opcode18.i218, align 4
  %cmd_q.i160 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %150 = ptrtoint ptr %cmd_q.i160 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cmd_q.i160, align 4
  %cmp.i.not.i161 = icmp eq ptr %151, %cmd_q.i160
  br i1 %cmp.i.not.i161, label %if.then17.i164, label %if.end14.i162.if.end21.i166_crit_edge

if.end14.i162.if.end21.i166_crit_edge:            ; preds = %if.end14.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i166

if.then17.i164:                                   ; preds = %if.end14.i162
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i163 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 3, i32 14
  %152 = ptrtoint ptr %req_flags.i163 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %req_flags.i163, align 2
  %154 = or i8 %153, 1
  store i8 %154, ptr %req_flags.i163, align 2
  br label %if.end21.i166

if.end21.i166:                                    ; preds = %if.then17.i164, %if.end14.i162.if.end21.i166_crit_edge
  %req_event.i165 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i204, i32 0, i32 3, i32 15
  %155 = ptrtoint ptr %req_event.i165 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %req_event.i165, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i160, ptr noundef nonnull %call.i.i.i204) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 9, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21.i166, %if.then9.i159, %do.end.i154.sw.epilog_crit_edge, %if.end21.i148, %if.then9.i141, %do.end.i136.sw.epilog_crit_edge, %sw.bb31.sw.epilog_crit_edge, %if.end21.i130, %if.then9.i123, %do.end.i118.sw.epilog_crit_edge, %if.then23.sw.epilog_crit_edge, %if.end21.i112, %if.then9.i105, %do.end.i100.sw.epilog_crit_edge, %if.then15.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_abort_conn(ptr noundef %conn, i8 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %3 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %err.i, align 4
  call void @__hci_abort_conn(ptr noundef nonnull %req, ptr noundef %conn, i8 noundef zeroext %reason)
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef nonnull @abort_conn_complete, ptr noundef null) #10
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call.i, label %if.then [
    i32 0, label %entry.cleanup_crit_edge
    i32 -61, label %entry.cleanup_crit_edge8
  ]

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge8
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abort_conn_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @abort_conn_complete.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@abort_conn_complete, %if.then4)) #10
          to label %if.end5 [label %if.then4], !srcloc !197

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @abort_conn_complete.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %conv) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_req_stop_discovery(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %discovery = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_stop_discovery.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_stop_discovery, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %state = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_stop_discovery.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 1
  %4 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state5, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %5, label %if.else [
    i32 2, label %do.end.if.then8_crit_edge
    i32 4, label %do.end.if.then8_crit_edge120
  ]

do.end.if.then8_crit_edge120:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %do.end.if.then8_crit_edge, %do.end.if.then8_crit_edge120
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then8.if.end12_crit_edge, label %if.then11

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.then8
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_stop_discovery, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 1026, i32 noundef 0) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then11
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.end12_crit_edge

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 516, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %plen3.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_stop_discovery, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i95 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i95, i32 noundef %21) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 1026) #10
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -12, ptr %err.i, align 4
  br label %if.end12

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %24 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1026, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %req_flags.i, align 2
  %29 = or i8 %28, 1
  store i8 %29, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %30 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end21.i, %if.then9.i, %do.end.i.if.end12_crit_edge, %if.then8.if.end12_crit_edge
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %31 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dev_flags, align 4
  %33 = and i32 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not = icmp eq i32 %33, 0
  br i1 %tobool15.not, label %if.end12.if.end26_crit_edge, label %if.then16

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %le_scan_disable = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 157
  %call17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %le_scan_disable) #10
  %le_scan_restart = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 158
  %call18 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %le_scan_restart) #10
  br label %if.end26.sink.split

if.else:                                          ; preds = %do.end
  %dev_flags20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %34 = ptrtoint ptr %dev_flags20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %dev_flags20, align 4
  %36 = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool23.not = icmp eq i32 %36, 0
  br i1 %tobool23.not, label %if.else.if.end26_crit_edge, label %if.else.if.end26.sink.split_crit_edge

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.else.if.end26.sink.split_crit_edge, %if.then16
  tail call void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext false)
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.else.if.end26_crit_edge ], [ true, %if.end12.if.end26_crit_edge ], [ true, %if.end26.sink.split ]
  %37 = ptrtoint ptr %discovery to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %discovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp27 = icmp eq i32 %38, 6
  br i1 %cmp27, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %39 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state5, align 4
  %.off = add i32 %40, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %if.end30
  %41 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %call41 = call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %1, ptr noundef nonnull %.compoundliteral, i32 noundef 2) #10
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then36.cleanup_crit_edge, label %if.end45

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.then36
  %data = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %42)
  %cp.sroa.0.0.copyload = load i8, ptr %data, align 1
  %cp.sroa.5.0.data.sroa_idx = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %cp.sroa.5.0.data.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %43)
  %cp.sroa.5.0.copyload = load i8, ptr %cp.sroa.5.0.data.sroa_idx, align 1
  %cp.sroa.6.0.data.sroa_idx = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %cp.sroa.6.0.data.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %cp.sroa.6.0.copyload = load i8, ptr %cp.sroa.6.0.data.sroa_idx, align 1
  %cp.sroa.7.0.data.sroa_idx = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4, i32 0, i32 0, i32 3
  %45 = ptrtoint ptr %cp.sroa.7.0.data.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %cp.sroa.7.0.copyload = load i8, ptr %cp.sroa.7.0.data.sroa_idx, align 1
  %cp.sroa.8.0.data.sroa_idx = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4, i32 0, i32 0, i32 4
  %46 = ptrtoint ptr %cp.sroa.8.0.data.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %cp.sroa.8.0.copyload = load i8, ptr %cp.sroa.8.0.data.sroa_idx, align 1
  %cp.sroa.9.0.data.sroa_idx = getelementptr inbounds %struct.inquiry_entry, ptr %call41, i32 0, i32 4, i32 0, i32 0, i32 5
  %47 = ptrtoint ptr %cp.sroa.9.0.data.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %cp.sroa.9.0.copyload = load i8, ptr %cp.sroa.9.0.data.sroa_idx, align 1
  %48 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_stop_discovery, %if.then.i78)) #10
          to label %do.end.i81 [label %if.then.i78], !srcloc !197

if.then.i78:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %name.i77 = getelementptr inbounds %struct.hci_dev, ptr %49, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i77, i32 noundef 1050, i32 noundef 6) #10
  br label %do.end.i81

do.end.i81:                                       ; preds = %if.then.i78, %if.end45
  %err.i79 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %50 = ptrtoint ptr %err.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %err.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool4.not.i80 = icmp eq i32 %51, 0
  br i1 %tobool4.not.i80, label %if.end6.i84, label %do.end.i81.cleanup_crit_edge

do.end.i81.cleanup_crit_edge:                     ; preds = %do.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i84:                                      ; preds = %do.end.i81
  %call.i.i.i97 = call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i98 = icmp eq ptr %call.i.i.i97, null
  br i1 %tobool.not.i.i98, label %if.then9.i86, label %if.end.i105

if.end.i105:                                      ; preds = %if.end6.i84
  %data.i.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i99, align 4
  %add.ptr.i.i.i100 = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr.i.i.i100, ptr %data.i.i.i99, align 4
  %tail.i.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i101, align 8
  %add.ptr1.i.i.i102 = getelementptr i8, ptr %55, i32 8
  store ptr %add.ptr1.i.i.i102, ptr %tail.i.i.i101, align 8
  %call1.i103 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i97, i32 noundef 3) #10
  %56 = ptrtoint ptr %call1.i103 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 6660, ptr %call1.i103, align 1
  %plen3.i104 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i103, i32 0, i32 1
  %57 = ptrtoint ptr %plen3.i104 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %plen3.i104, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i97, i32 noundef 6) #10
  %58 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %cp.sroa.0.0.copyload, ptr %call.i.i, align 1
  %cp.sroa.5.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %59 = ptrtoint ptr %cp.sroa.5.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %cp.sroa.5.0.copyload, ptr %cp.sroa.5.0.call.i.i.sroa_idx, align 1
  %cp.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %60 = ptrtoint ptr %cp.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %cp.sroa.6.0.copyload, ptr %cp.sroa.6.0.call.i.i.sroa_idx, align 1
  %cp.sroa.7.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 3
  %61 = ptrtoint ptr %cp.sroa.7.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %cp.sroa.7.0.copyload, ptr %cp.sroa.7.0.call.i.i.sroa_idx, align 1
  %cp.sroa.8.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %62 = ptrtoint ptr %cp.sroa.8.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %cp.sroa.8.0.copyload, ptr %cp.sroa.8.0.call.i.i.sroa_idx, align 1
  %cp.sroa.9.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 5
  %63 = ptrtoint ptr %cp.sroa.9.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %cp.sroa.9.0.copyload, ptr %cp.sroa.9.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_stop_discovery, %if.then12.i108)) #10
          to label %if.end14.i89 [label %if.then12.i108], !srcloc !197

if.then12.i108:                                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #12
  %name.i106 = getelementptr inbounds %struct.hci_dev, ptr %49, i32 0, i32 2
  %len13.i107 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 6
  %64 = ptrtoint ptr %len13.i107 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len13.i107, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i106, i32 noundef %65) #10
  br label %if.end14.i89

if.then9.i86:                                     ; preds = %if.end6.i84
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i85 = getelementptr inbounds %struct.hci_dev, ptr %49, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i85, i32 noundef 1050) #10
  %66 = ptrtoint ptr %err.i79 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -12, ptr %err.i79, align 4
  br label %cleanup

if.end14.i89:                                     ; preds = %if.then12.i108, %if.end.i105
  %cb.i109 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 3
  %67 = ptrtoint ptr %cb.i109 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %cb.i109, align 8
  %opcode18.i110 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 3, i32 12
  %68 = ptrtoint ptr %opcode18.i110 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1050, ptr %opcode18.i110, align 4
  %cmd_q.i87 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %69 = ptrtoint ptr %cmd_q.i87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmd_q.i87, align 4
  %cmp.i.not.i88 = icmp eq ptr %70, %cmd_q.i87
  br i1 %cmp.i.not.i88, label %if.then17.i91, label %if.end14.i89.if.end21.i93_crit_edge

if.end14.i89.if.end21.i93_crit_edge:              ; preds = %if.end14.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i93

if.then17.i91:                                    ; preds = %if.end14.i89
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i90 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 3, i32 14
  %71 = ptrtoint ptr %req_flags.i90 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %req_flags.i90, align 2
  %73 = or i8 %72, 1
  store i8 %73, ptr %req_flags.i90, align 2
  br label %if.end21.i93

if.end21.i93:                                     ; preds = %if.then17.i91, %if.end14.i89.if.end21.i93_crit_edge
  %req_event.i92 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 3, i32 15
  %74 = ptrtoint ptr %req_event.i92 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %req_event.i92, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i87, ptr noundef nonnull %call.i.i.i97) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i93, %if.then9.i86, %do.end.i81.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %if.end26.cleanup_crit_edge ], [ %ret.0.off0, %if.then36.cleanup_crit_edge ], [ %ret.0.off0, %if.end30.cleanup_crit_edge ], [ true, %do.end.i81.cleanup_crit_edge ], [ true, %if.then9.i86 ], [ true, %if.end21.i93 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup_resolve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hci_req_configure_datapath(ptr noundef %hdev, ptr noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  %vnd_len = alloca i8, align 1
  %vnd_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vnd_len) #10
  %1 = ptrtoint ptr %vnd_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %vnd_len, align 1, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnd_data) #10
  %2 = ptrtoint ptr %vnd_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vnd_data, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %3 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdev, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %err.i, align 4
  %get_codec_config_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 247
  %8 = ptrtoint ptr %get_codec_config_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_codec_config_data, align 4
  %call = call i32 %9(ptr noundef %hdev, i8 noundef zeroext 2, ptr noundef %codec, ptr noundef nonnull %vnd_len, ptr noundef nonnull %vnd_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end8.i.i

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8.i.i:                                      ; preds = %entry
  %10 = ptrtoint ptr %vnd_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vnd_len, align 1
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.error_crit_edge, label %if.end3

if.end8.i.i.error_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end3:                                          ; preds = %if.end8.i.i
  %get_data_path_id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 246
  %12 = ptrtoint ptr %get_data_path_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_data_path_id, align 8
  %data_path_id = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %call9.i.i, i32 0, i32 1
  %call4 = call i32 %13(ptr noundef %hdev, ptr noundef %data_path_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.error_crit_edge, label %if.end8

if.end3.error_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %vnd_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vnd_len, align 1
  %vnd_len9 = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %call9.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %vnd_len9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %vnd_len9, align 2
  %vnd_data10 = getelementptr inbounds %struct.hci_op_configure_data_path, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %vnd_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vnd_data, align 4
  %conv11 = zext i8 %15 to i32
  %19 = call ptr @memcpy(ptr %vnd_data10, ptr %18, i32 %conv11)
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call9.i.i, align 128
  %add13 = add nuw nsw i32 %conv11, 3
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_configure_datapath, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3203, i32 noundef %add13) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end8
  %23 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %add.i.i = add nuw nsw i32 %conv11, 14
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %29 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 -31988, ptr %call1.i, align 1
  %conv.i = trunc i32 %add13 to i8
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %30 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add13) #10
  %31 = call ptr @memcpy(ptr %call.i.i, ptr %call9.i.i, i32 %add13)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_configure_datapath, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i52 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i52, i32 noundef %33) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3203) #10
  %34 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3203, ptr %opcode18.i, align 4
  %37 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %38, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %39 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %req_flags.i, align 2
  %41 = or i8 %40, 1
  store i8 %41, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %42 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %43 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %call9.i.i, align 128
  %44 = ptrtoint ptr %vnd_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vnd_len, align 1
  %conv15 = zext i8 %45 to i32
  %add16 = add nuw nsw i32 %conv15, 3
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_configure_datapath, %if.then.i35)) #10
          to label %do.end.i38 [label %if.then.i35], !srcloc !197

if.then.i35:                                      ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name.i34 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i34, i32 noundef 3203, i32 noundef %add16) #10
  br label %do.end.i38

do.end.i38:                                       ; preds = %if.then.i35, %hci_req_add_ev.exit
  %48 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.i37 = icmp eq i32 %49, 0
  br i1 %tobool4.not.i37, label %if.end6.i41, label %do.end.i38.hci_req_add_ev.exit51_crit_edge

do.end.i38.hci_req_add_ev.exit51_crit_edge:       ; preds = %do.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit51

if.end6.i41:                                      ; preds = %do.end.i38
  %add.i.i54 = add nuw nsw i32 %conv15, 14
  %call.i.i.i55 = call ptr @__alloc_skb(i32 noundef %add.i.i54, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i56 = icmp eq ptr %call.i.i.i55, null
  br i1 %tobool.not.i.i56, label %if.then9.i43, label %if.end.i64

if.end.i64:                                       ; preds = %if.end6.i41
  %data.i.i.i57 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i57, align 4
  %add.ptr.i.i.i58 = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i.i58, ptr %data.i.i.i57, align 4
  %tail.i.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i59, align 8
  %add.ptr1.i.i.i60 = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i.i60, ptr %tail.i.i.i59, align 8
  %call1.i61 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i55, i32 noundef 3) #10
  %54 = ptrtoint ptr %call1.i61 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 -31988, ptr %call1.i61, align 1
  %conv.i62 = trunc i32 %add16 to i8
  %plen3.i63 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i61, i32 0, i32 1
  %55 = ptrtoint ptr %plen3.i63 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i62, ptr %plen3.i63, align 1
  %call.i.i65 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i55, i32 noundef %add16) #10
  %56 = call ptr @memcpy(ptr %call.i.i65, ptr %call9.i.i, i32 %add16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_configure_datapath, %if.then12.i68)) #10
          to label %if.end14.i46 [label %if.then12.i68], !srcloc !197

if.then12.i68:                                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  %name.i66 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  %len13.i67 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 6
  %57 = ptrtoint ptr %len13.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len13.i67, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i66, i32 noundef %58) #10
  br label %if.end14.i46

if.then9.i43:                                     ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i42 = getelementptr inbounds %struct.hci_dev, ptr %47, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i42, i32 noundef 3203) #10
  %59 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit51

if.end14.i46:                                     ; preds = %if.then12.i68, %if.end.i64
  %cb.i69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i69 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %cb.i69, align 8
  %opcode18.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 3, i32 12
  %61 = ptrtoint ptr %opcode18.i70 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 3203, ptr %opcode18.i70, align 4
  %62 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i45 = icmp eq ptr %63, %cmd_q.i
  br i1 %cmp.i.not.i45, label %if.then17.i48, label %if.end14.i46.if.end21.i50_crit_edge

if.end14.i46.if.end21.i50_crit_edge:              ; preds = %if.end14.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i50

if.then17.i48:                                    ; preds = %if.end14.i46
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i47 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 3, i32 14
  %64 = ptrtoint ptr %req_flags.i47 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %req_flags.i47, align 2
  %66 = or i8 %65, 1
  store i8 %66, ptr %req_flags.i47, align 2
  br label %if.end21.i50

if.end21.i50:                                     ; preds = %if.then17.i48, %if.end14.i46.if.end21.i50_crit_edge
  %req_event.i49 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i55, i32 0, i32 3, i32 15
  %67 = ptrtoint ptr %req_event.i49 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %req_event.i49, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i55) #10
  br label %hci_req_add_ev.exit51

hci_req_add_ev.exit51:                            ; preds = %if.end21.i50, %if.then9.i43, %do.end.i38.hci_req_add_ev.exit51_crit_edge
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef nonnull @config_data_path_complete, ptr noundef null) #10
  br label %error

error:                                            ; preds = %hci_req_add_ev.exit51, %if.end3.error_crit_edge, %if.end8.i.i.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call4, %if.end3.error_crit_edge ], [ %call.i, %hci_req_add_ev.exit51 ], [ -12, %if.end8.i.i.error_crit_edge ]
  %cmd.0 = phi ptr [ null, %entry.error_crit_edge ], [ %call9.i.i, %if.end3.error_crit_edge ], [ %call9.i.i, %hci_req_add_ev.exit51 ], [ null, %if.end8.i.i.error_crit_edge ]
  call void @kfree(ptr noundef %cmd.0) #10
  %68 = ptrtoint ptr %vnd_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vnd_data, align 4
  call void @kfree(ptr noundef %69) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnd_data) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vnd_len) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @config_data_path_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_data_path_complete.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_data_path_complete, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @config_data_path_complete.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hci_req_hci_power_on(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smp_register(ptr noundef %hdev) #10
  %call2 = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef nonnull @powered_update_hci, i32 noundef 0, i32 noundef 200, ptr noundef null)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powered_update_hci(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  %support = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.lhs.true

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3158, i32 noundef 1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 22028, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %17 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #10
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %call.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i251 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i251, i32 noundef %20) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3158) #10
  %21 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 3158, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %26 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %req_flags.i, align 2
  %28 = or i8 %27, 1
  store i8 %28, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %29 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %arrayidx6 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx6, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  br i1 %tobool9.not, label %hci_req_add_ev.exit.if.end23_crit_edge, label %land.lhs.true10

hci_req_add_ev.exit.if.end23_crit_edge:           ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true10:                                  ; preds = %hci_req_add_ev.exit
  %33 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dev_flags, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool14.not = icmp eq i32 %35, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end23_crit_edge, label %land.lhs.true15

land.lhs.true10.if.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 2
  %38 = and i8 %37, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool21.not = icmp eq i8 %38, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %support) #10
  %39 = ptrtoint ptr %support to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %support, align 1
  %40 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then.i198)) #10
          to label %do.end.i201 [label %if.then.i198], !srcloc !197

if.then.i198:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %name.i197 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i197, i32 noundef 3194, i32 noundef 1) #10
  br label %do.end.i201

do.end.i201:                                      ; preds = %if.then.i198, %if.then22
  %42 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool4.not.i200 = icmp eq i32 %43, 0
  br i1 %tobool4.not.i200, label %if.end6.i204, label %do.end.i201.hci_req_add_ev.exit214_crit_edge

do.end.i201.hci_req_add_ev.exit214_crit_edge:     ; preds = %do.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit214

if.end6.i204:                                     ; preds = %do.end.i201
  %call7.i202 = call ptr @hci_prepare_cmd(ptr noundef %41, i16 noundef zeroext 3194, i32 noundef 1, ptr noundef nonnull %support) #10
  %tobool8.not.i203 = icmp eq ptr %call7.i202, null
  br i1 %tobool8.not.i203, label %if.then9.i206, label %if.end14.i209

if.then9.i206:                                    ; preds = %if.end6.i204
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i205 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i205, i32 noundef 3194) #10
  %44 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit214

if.end14.i209:                                    ; preds = %if.end6.i204
  %cmd_q.i207 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %45 = ptrtoint ptr %cmd_q.i207 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd_q.i207, align 4
  %cmp.i.not.i208 = icmp eq ptr %46, %cmd_q.i207
  br i1 %cmp.i.not.i208, label %if.then17.i211, label %if.end14.i209.if.end21.i213_crit_edge

if.end14.i209.if.end21.i213_crit_edge:            ; preds = %if.end14.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i213

if.then17.i211:                                   ; preds = %if.end14.i209
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i210 = getelementptr inbounds %struct.sk_buff, ptr %call7.i202, i32 0, i32 3, i32 14
  %47 = ptrtoint ptr %req_flags.i210 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %req_flags.i210, align 2
  %49 = or i8 %48, 1
  store i8 %49, ptr %req_flags.i210, align 2
  br label %if.end21.i213

if.end21.i213:                                    ; preds = %if.then17.i211, %if.end14.i209.if.end21.i213_crit_edge
  %req_event.i212 = getelementptr inbounds %struct.sk_buff, ptr %call7.i202, i32 0, i32 3, i32 15
  %50 = ptrtoint ptr %req_event.i212 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %req_event.i212, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i207, ptr noundef nonnull %call7.i202) #10
  br label %hci_req_add_ev.exit214

hci_req_add_ev.exit214:                           ; preds = %if.end21.i213, %if.then9.i206, %do.end.i201.hci_req_add_ev.exit214_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %support) #10
  br label %if.end23

if.end23:                                         ; preds = %hci_req_add_ev.exit214, %land.lhs.true15.if.end23_crit_edge, %land.lhs.true10.if.end23_crit_edge, %hci_req_add_ev.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  %51 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dev_flags, align 4
  %53 = and i32 %52, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool27.not = icmp eq i32 %53, 0
  br i1 %tobool27.not, label %if.end23.if.end62_crit_edge, label %land.lhs.true28

if.end23.if.end62_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true28:                                  ; preds = %if.end23
  %arrayidx31 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx31, align 2
  %56 = and i8 %55, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool34.not = icmp eq i8 %56, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true28.if.end62_crit_edge

land.lhs.true28.if.end62_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then35:                                        ; preds = %land.lhs.true28
  %arrayidx39 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 1
  %57 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx39, align 2
  %59 = and i8 %58, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %60 = icmp eq i8 %59, 2
  br i1 %60, label %if.then35.if.end62_crit_edge, label %if.then60

if.then35.if.end62_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then60:                                        ; preds = %if.then35
  %61 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then.i216)) #10
          to label %do.end.i219 [label %if.then.i216], !srcloc !197

if.then.i216:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %name.i215 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i215, i32 noundef 3181, i32 noundef 2) #10
  br label %do.end.i219

do.end.i219:                                      ; preds = %if.then.i216, %if.then60
  %err.i217 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %63 = ptrtoint ptr %err.i217 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %err.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool4.not.i218 = icmp eq i32 %64, 0
  br i1 %tobool4.not.i218, label %if.end6.i222, label %do.end.i219.if.end62_crit_edge

do.end.i219.if.end62_crit_edge:                   ; preds = %do.end.i219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end6.i222:                                     ; preds = %do.end.i219
  %call.i.i.i253 = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i254 = icmp eq ptr %call.i.i.i253, null
  br i1 %tobool.not.i.i254, label %if.then9.i224, label %if.end.i261

if.end.i261:                                      ; preds = %if.end6.i222
  %data.i.i.i255 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i255, align 4
  %add.ptr.i.i.i256 = getelementptr i8, ptr %66, i32 8
  store ptr %add.ptr.i.i.i256, ptr %data.i.i.i255, align 4
  %tail.i.i.i257 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 16
  %67 = ptrtoint ptr %tail.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i.i.i257, align 8
  %add.ptr1.i.i.i258 = getelementptr i8, ptr %68, i32 8
  store ptr %add.ptr1.i.i.i258, ptr %tail.i.i.i257, align 8
  %call1.i259 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i253, i32 noundef 3) #10
  %69 = ptrtoint ptr %call1.i259 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 27916, ptr %call1.i259, align 1
  %plen3.i260 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i259, i32 0, i32 1
  %70 = ptrtoint ptr %plen3.i260 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %plen3.i260, align 1
  %call.i.i262 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i253, i32 noundef 2) #10
  %71 = ptrtoint ptr %call.i.i262 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %call.i.i262, align 1
  %cp.sroa.5.0.call.i.i262.sroa_idx = getelementptr inbounds i8, ptr %call.i.i262, i32 1
  %72 = ptrtoint ptr %cp.sroa.5.0.call.i.i262.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %cp.sroa.5.0.call.i.i262.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then12.i265)) #10
          to label %if.end14.i227 [label %if.then12.i265], !srcloc !197

if.then12.i265:                                   ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #12
  %name.i263 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 2
  %len13.i264 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 6
  %73 = ptrtoint ptr %len13.i264 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len13.i264, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i263, i32 noundef %74) #10
  br label %if.end14.i227

if.then9.i224:                                    ; preds = %if.end6.i222
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i223 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i223, i32 noundef 3181) #10
  %75 = ptrtoint ptr %err.i217 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -12, ptr %err.i217, align 4
  br label %if.end62

if.end14.i227:                                    ; preds = %if.then12.i265, %if.end.i261
  %cb.i266 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 3
  %76 = ptrtoint ptr %cb.i266 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %cb.i266, align 8
  %opcode18.i267 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 3, i32 12
  %77 = ptrtoint ptr %opcode18.i267 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 3181, ptr %opcode18.i267, align 4
  %cmd_q.i225 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %78 = ptrtoint ptr %cmd_q.i225 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmd_q.i225, align 4
  %cmp.i.not.i226 = icmp eq ptr %79, %cmd_q.i225
  br i1 %cmp.i.not.i226, label %if.then17.i229, label %if.end14.i227.if.end21.i231_crit_edge

if.end14.i227.if.end21.i231_crit_edge:            ; preds = %if.end14.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i231

if.then17.i229:                                   ; preds = %if.end14.i227
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i228 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 3, i32 14
  %80 = ptrtoint ptr %req_flags.i228 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %req_flags.i228, align 2
  %82 = or i8 %81, 1
  store i8 %82, ptr %req_flags.i228, align 2
  br label %if.end21.i231

if.end21.i231:                                    ; preds = %if.then17.i229, %if.end14.i227.if.end21.i231_crit_edge
  %req_event.i230 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i253, i32 0, i32 3, i32 15
  %83 = ptrtoint ptr %req_event.i230 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %req_event.i230, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i225, ptr noundef nonnull %call.i.i.i253) #10
  br label %if.end62

if.end62:                                         ; preds = %if.end21.i231, %if.then9.i224, %do.end.i219.if.end62_crit_edge, %if.then35.if.end62_crit_edge, %land.lhs.true28.if.end62_crit_edge, %if.end23.if.end62_crit_edge
  %84 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %dev_flags, align 4
  %86 = and i32 %85, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool66.not = icmp eq i32 %86, 0
  br i1 %tobool66.not, label %if.end62.if.end113_crit_edge, label %if.then67

if.end62.if.end113_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then67:                                        ; preds = %if.end62
  %87 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %dev_flags, align 4
  %89 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool71.not = icmp eq i32 %89, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.then67.if.then75_crit_edge

if.then67.if.then75_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false72:                                  ; preds = %if.then67
  %adv_instances = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 213
  %90 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %adv_instances, align 4
  %cmp.i.not = icmp eq ptr %91, %adv_instances
  br i1 %cmp.i.not, label %lor.lhs.false72.if.then75_crit_edge, label %if.else104

lor.lhs.false72.if.then75_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false72.if.then75_crit_edge, %if.then67.if.then75_crit_edge
  %arrayidx76 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %92 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx76, align 1
  %94 = and i8 %93, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool79.not = icmp eq i8 %94, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.then75
  %call81 = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %req, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end85.sink.split_crit_edge, label %if.then80.if.end85_crit_edge

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then80.if.end85.sink.split_crit_edge:          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.sink.split

if.else:                                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_update_adv_data(ptr noundef %req, i8 noundef zeroext 0)
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.else, %if.then80.if.end85.sink.split_crit_edge
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext 0)
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.then80.if.end85_crit_edge
  %err.0 = phi i32 [ %call81, %if.then80.if.end85_crit_edge ], [ 0, %if.end85.sink.split ]
  %95 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dev_flags, align 4
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool89.not = icmp eq i32 %97, 0
  br i1 %tobool89.not, label %if.end85.if.end113_crit_edge, label %if.then90

if.end85.if.end113_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then90:                                        ; preds = %if.end85
  %98 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx76, align 1
  %100 = and i8 %99, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool95.not = icmp eq i8 %100, 0
  br i1 %tobool95.not, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_enable_advertising(ptr noundef %req)
  br label %if.end113

if.else97:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool98.not = icmp eq i32 %err.0, 0
  br i1 %tobool98.not, label %if.then99, label %if.else97.if.end113_crit_edge

if.else97.if.end113_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then99:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 @__hci_req_enable_ext_advertising(ptr noundef %req, i8 noundef zeroext 0)
  br label %if.end113

if.else104:                                       ; preds = %lor.lhs.false72
  %101 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %adv_instances, align 4
  %cmp.i195.not = icmp eq ptr %102, %adv_instances
  br i1 %cmp.i195.not, label %if.else104.if.end113_crit_edge, label %if.then108

if.else104.if.end113_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  %instance = getelementptr inbounds %struct.adv_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %instance to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %instance, align 2
  %call110 = tail call i32 @__hci_req_schedule_adv_instance(ptr noundef %req, i8 noundef zeroext %104, i1 noundef zeroext true)
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.else104.if.end113_crit_edge, %if.then99, %if.else97.if.end113_crit_edge, %if.then96, %if.end85.if.end113_crit_edge, %if.end62.if.end113_crit_edge
  %105 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %dev_flags, align 4
  %shr.i190 = lshr i32 %106, 29
  %and1.i191 = and i32 %shr.i190, 1
  %conv117 = trunc i32 %and1.i191 to i8
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags, align 4
  %shr.i192 = lshr i32 %108, 5
  %and1.i193 = and i32 %shr.i192, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i191, i32 %and1.i193)
  %cmp120.not = icmp eq i32 %and1.i191, %and1.i193
  br i1 %cmp120.not, label %if.end113.if.end123_crit_edge, label %if.then122

if.end113.if.end123_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then122:                                       ; preds = %if.end113
  %109 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then.i234)) #10
          to label %do.end.i237 [label %if.then.i234], !srcloc !197

if.then.i234:                                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %name.i233 = getelementptr inbounds %struct.hci_dev, ptr %110, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i233, i32 noundef 3104, i32 noundef 1) #10
  br label %do.end.i237

do.end.i237:                                      ; preds = %if.then.i234, %if.then122
  %err.i235 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %111 = ptrtoint ptr %err.i235 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool4.not.i236 = icmp eq i32 %112, 0
  br i1 %tobool4.not.i236, label %if.end6.i240, label %do.end.i237.if.end123_crit_edge

do.end.i237.if.end123_crit_edge:                  ; preds = %do.end.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.end6.i240:                                     ; preds = %do.end.i237
  %call.i.i.i270 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i271 = icmp eq ptr %call.i.i.i270, null
  br i1 %tobool.not.i.i271, label %if.then9.i242, label %if.end.i278

if.end.i278:                                      ; preds = %if.end6.i240
  %data.i.i.i272 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 19
  %113 = ptrtoint ptr %data.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i.i272, align 4
  %add.ptr.i.i.i273 = getelementptr i8, ptr %114, i32 8
  store ptr %add.ptr.i.i.i273, ptr %data.i.i.i272, align 4
  %tail.i.i.i274 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 16
  %115 = ptrtoint ptr %tail.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tail.i.i.i274, align 8
  %add.ptr1.i.i.i275 = getelementptr i8, ptr %116, i32 8
  store ptr %add.ptr1.i.i.i275, ptr %tail.i.i.i274, align 8
  %call1.i276 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i270, i32 noundef 3) #10
  %117 = ptrtoint ptr %call1.i276 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 8204, ptr %call1.i276, align 1
  %plen3.i277 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i276, i32 0, i32 1
  %118 = ptrtoint ptr %plen3.i277 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %plen3.i277, align 1
  %call.i.i279 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i270, i32 noundef 1) #10
  %119 = ptrtoint ptr %call.i.i279 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv117, ptr %call.i.i279, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@powered_update_hci, %if.then12.i282)) #10
          to label %if.end14.i245 [label %if.then12.i282], !srcloc !197

if.then12.i282:                                   ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  %name.i280 = getelementptr inbounds %struct.hci_dev, ptr %110, i32 0, i32 2
  %len13.i281 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 6
  %120 = ptrtoint ptr %len13.i281 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len13.i281, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i280, i32 noundef %121) #10
  br label %if.end14.i245

if.then9.i242:                                    ; preds = %if.end6.i240
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i241 = getelementptr inbounds %struct.hci_dev, ptr %110, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i241, i32 noundef 3104) #10
  %122 = ptrtoint ptr %err.i235 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -12, ptr %err.i235, align 4
  br label %if.end123

if.end14.i245:                                    ; preds = %if.then12.i282, %if.end.i278
  %cb.i283 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 3
  %123 = ptrtoint ptr %cb.i283 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %cb.i283, align 8
  %opcode18.i284 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 3, i32 12
  %124 = ptrtoint ptr %opcode18.i284 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 3104, ptr %opcode18.i284, align 4
  %cmd_q.i243 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %125 = ptrtoint ptr %cmd_q.i243 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cmd_q.i243, align 4
  %cmp.i.not.i244 = icmp eq ptr %126, %cmd_q.i243
  br i1 %cmp.i.not.i244, label %if.then17.i247, label %if.end14.i245.if.end21.i249_crit_edge

if.end14.i245.if.end21.i249_crit_edge:            ; preds = %if.end14.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i249

if.then17.i247:                                   ; preds = %if.end14.i245
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i246 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 3, i32 14
  %127 = ptrtoint ptr %req_flags.i246 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %req_flags.i246, align 2
  %129 = or i8 %128, 1
  store i8 %129, ptr %req_flags.i246, align 2
  br label %if.end21.i249

if.end21.i249:                                    ; preds = %if.then17.i247, %if.end14.i245.if.end21.i249_crit_edge
  %req_event.i248 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i270, i32 0, i32 3, i32 15
  %130 = ptrtoint ptr %req_event.i248 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %req_event.i248, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i243, ptr noundef nonnull %call.i.i.i270) #10
  br label %if.end123

if.end123:                                        ; preds = %if.end21.i249, %if.then9.i242, %do.end.i237.if.end123_crit_edge, %if.end113.if.end123_crit_edge
  %arrayidx126 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %131 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx126, align 2
  %133 = and i8 %132, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool129.not = icmp eq i8 %133, 0
  br i1 %tobool129.not, label %if.then130, label %if.end123.if.end138_crit_edge

if.end123.if.end138_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then130:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %dev_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool134.not = icmp slt i32 %135, 0
  tail call void @__hci_req_write_fast_connectable(ptr noundef %req, i1 noundef zeroext %tobool134.not)
  tail call void @__hci_req_update_scan(ptr noundef %req)
  tail call void @__hci_req_update_class(ptr noundef %req)
  tail call void @__hci_req_update_name(ptr noundef %req)
  tail call void @__hci_req_update_eir(ptr noundef %req)
  br label %if.end138

if.end138:                                        ; preds = %if.then130, %if.end123.if.end138_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_request_setup(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %discov_update = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155
  tail call void @__init_work(ptr noundef %discov_update, i32 noundef 0) #10
  %0 = ptrtoint ptr %discov_update to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %discov_update, align 4
  %lockdep_map = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @hci_request_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @discov_update, ptr %func, align 4
  %scan_update = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156
  tail call void @__init_work(ptr noundef %scan_update, i32 noundef 0) #10
  %4 = ptrtoint ptr %scan_update to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %scan_update, align 8
  %lockdep_map12 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.25, ptr noundef nonnull @hci_request_setup.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i170 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i170, align 4
  %func16 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156, i32 2
  %7 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @scan_update_work, ptr %func16, align 4
  %discov_off = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148
  tail call void @__init_work(ptr noundef %discov_off, i32 noundef 0) #10
  %8 = ptrtoint ptr %discov_off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %discov_off, align 8
  %lockdep_map27 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.27, ptr noundef nonnull @hci_request_setup.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry30 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148, i32 0, i32 1
  %9 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i171 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i171 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry30, ptr %prev.i171, align 4
  %func33 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148, i32 0, i32 2
  %11 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @discov_off, ptr %func33, align 4
  %timer = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @hci_request_setup.__key.28) #10
  %le_scan_disable = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157
  tail call void @__init_work(ptr noundef %le_scan_disable, i32 noundef 0) #10
  %12 = ptrtoint ptr %le_scan_disable to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %le_scan_disable, align 4
  %lockdep_map49 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.31, ptr noundef nonnull @hci_request_setup.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry52 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157, i32 0, i32 1
  %13 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i172 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry52, ptr %prev.i172, align 4
  %func55 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157, i32 0, i32 2
  %15 = ptrtoint ptr %func55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @le_scan_disable_work, ptr %func55, align 4
  %timer59 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157, i32 1
  tail call void @init_timer_key(ptr noundef %timer59, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @hci_request_setup.__key.32) #10
  %le_scan_restart = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158
  tail call void @__init_work(ptr noundef %le_scan_restart, i32 noundef 0) #10
  %16 = ptrtoint ptr %le_scan_restart to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %le_scan_restart, align 8
  %lockdep_map72 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map72, ptr noundef nonnull @.str.35, ptr noundef nonnull @hci_request_setup.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry75 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158, i32 0, i32 1
  %17 = ptrtoint ptr %entry75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry75, ptr %entry75, align 4
  %prev.i173 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i173 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry75, ptr %prev.i173, align 4
  %func78 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158, i32 0, i32 2
  %19 = ptrtoint ptr %func78 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @le_scan_restart_work, ptr %func78, align 4
  %timer82 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158, i32 1
  tail call void @init_timer_key(ptr noundef %timer82, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @hci_request_setup.__key.36) #10
  %adv_instance_expire = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217
  tail call void @__init_work(ptr noundef %adv_instance_expire, i32 noundef 0) #10
  %20 = ptrtoint ptr %adv_instance_expire to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %adv_instance_expire, align 4
  %lockdep_map95 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map95, ptr noundef nonnull @.str.39, ptr noundef nonnull @hci_request_setup.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry98 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217, i32 0, i32 1
  %21 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i174 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry98, ptr %prev.i174, align 4
  %func101 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217, i32 0, i32 2
  %23 = ptrtoint ptr %func101 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @adv_timeout_expire, ptr %func101, align 4
  %timer105 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217, i32 1
  tail call void @init_timer_key(ptr noundef %timer105, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.41, ptr noundef nonnull @hci_request_setup.__key.40) #10
  %interleave_scan = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225
  tail call void @__init_work(ptr noundef %interleave_scan, i32 noundef 0) #10
  %24 = ptrtoint ptr %interleave_scan to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %interleave_scan, align 4
  %lockdep_map118 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map118, ptr noundef nonnull @.str.43, ptr noundef nonnull @hci_request_setup.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry121 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225, i32 0, i32 1
  %25 = ptrtoint ptr %entry121 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry121, ptr %entry121, align 4
  %prev.i175 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry121, ptr %prev.i175, align 4
  %func124 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225, i32 0, i32 2
  %27 = ptrtoint ptr %func124 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @interleave_scan_work, ptr %func124, align 4
  %timer128 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225, i32 1
  tail call void @init_timer_key(ptr noundef %timer128, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.45, ptr noundef nonnull @hci_request_setup.__key.44) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @discov_update(ptr noundef %work) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2620
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  %state = getelementptr i8, ptr %work, i32 628
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @start_discovery(ptr noundef %add.ptr, ptr noundef nonnull %status)
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  call void @mgmt_start_discovery_complete(ptr noundef %add.ptr, i8 noundef zeroext %5) #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i32 2, i32 0
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  %req_lock.i = getelementptr i8, ptr %work, i32 460
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -2512
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %sw.bb1.hci_req_sync.exit_crit_edge, label %if.then.i

sw.bb1.hci_req_sync.exit_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @stop_discovery, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %status) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %sw.bb1.hci_req_sync.exit_crit_edge
  call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  call void @mgmt_stop_discovery_complete(ptr noundef %add.ptr, i8 noundef zeroext %11) #10
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %hci_req_sync.exit.cleanup.sink.split_crit_edge, label %hci_req_sync.exit.cleanup_crit_edge

hci_req_sync.exit.cleanup_crit_edge:              ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

hci_req_sync.exit.cleanup.sink.split_crit_edge:   ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %hci_req_sync.exit.cleanup.sink.split_crit_edge, %sw.bb
  %.sink = phi i32 [ %., %sw.bb ], [ 0, %hci_req_sync.exit.cleanup.sink.split_crit_edge ]
  call void @hci_discovery_set_state(ptr noundef %add.ptr, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %hci_req_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scan_update_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock.i = getelementptr i8, ptr %work, i32 416
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -2556
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %entry.hci_req_sync.exit_crit_edge, label %if.then.i

entry.hci_req_sync.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %work, i32 -2664
  %call1.i = tail call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @update_scan, i32 noundef 0, i32 noundef 200, ptr noundef null) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %entry.hci_req_sync.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %req_lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @discov_off(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @discov_off.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@discov_off, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -1988
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @discov_off.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -2088
  %lock = getelementptr i8, ptr %work, i32 -2080
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev_flags = getelementptr i8, ptr %work, i32 2444
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %dev_flags) #10
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %dev_flags) #10
  %discov_timeout = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %discov_timeout to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %discov_timeout, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %req_lock.i = getelementptr i8, ptr %work, i32 992
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -1980
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.end.hci_req_sync.exit_crit_edge, label %if.then.i

do.end.hci_req_sync.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @discoverable_update, i32 noundef 0, i32 noundef 200, ptr noundef null) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %do.end.hci_req_sync.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %call10 = tail call i32 @mgmt_new_settings(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le_scan_disable_work(ptr noundef %work) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2708
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @le_scan_disable_work.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_disable_work, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -2608
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @le_scan_disable_work.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_flags = getelementptr i8, ptr %work, i32 1824
  %1 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dev_flags, align 4
  %3 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %le_scan_restart = getelementptr i8, ptr %work, i32 100
  %call9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %le_scan_restart) #10
  %req_lock.i = getelementptr i8, ptr %work, i32 372
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -2600
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end8.hci_req_sync.exit_crit_edge, label %if.then.i

if.end8.hci_req_sync.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @le_scan_disable, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %status) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %if.end8.hci_req_sync.exit_crit_edge
  call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name14 = getelementptr i8, ptr %work, i32 -2608
  %conv = zext i8 %7 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.78, ptr noundef %name14, i32 noundef %conv) #10
  br label %cleanup

if.end16:                                         ; preds = %hci_req_sync.exit
  %discovery = getelementptr i8, ptr %work, i32 536
  %scan_start = getelementptr i8, ptr %work, i32 628
  %8 = ptrtoint ptr %scan_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %scan_start, align 4
  %9 = ptrtoint ptr %discovery to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %discovery, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %10, label %if.end16.cleanup_crit_edge [
    i32 6, label %if.end16.discov_stopped_crit_edge
    i32 7, label %if.end26
  ]

if.end16.discov_stopped_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %discov_stopped

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %quirks = getelementptr i8, ptr %work, i32 -1076
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %quirks, align 4
  %14 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  br i1 %tobool28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %if.end26
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp eq i32 %17, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then29
  %state = getelementptr i8, ptr %work, i32 540
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp33.not = icmp eq i32 %19, 3
  br i1 %cmp33.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.discov_stopped_crit_edge

land.lhs.true.discov_stopped_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %discov_stopped

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i73 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i73)
  %tobool.not.i74 = icmp eq i32 %and1.i.i73, 0
  br i1 %tobool.not.i74, label %if.end37.hci_req_sync.exit78_crit_edge, label %if.then.i76

if.end37.hci_req_sync.exit78_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit78

if.then.i76:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i75 = call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @bredr_inquiry, i32 noundef 4, i32 noundef 200, ptr noundef nonnull %status) #10
  br label %hci_req_sync.exit78

hci_req_sync.exit78:                              ; preds = %if.then.i76, %if.end37.hci_req_sync.exit78_crit_edge
  call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %hci_req_sync.exit78.cleanup_crit_edge, label %if.then41

hci_req_sync.exit78.cleanup_crit_edge:            ; preds = %hci_req_sync.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %hci_req_sync.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %name42 = getelementptr i8, ptr %work, i32 -2608
  %conv44 = zext i8 %23 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.79, ptr noundef %name42, i32 noundef %conv44) #10
  br label %discov_stopped

discov_stopped:                                   ; preds = %if.then41, %land.lhs.true.discov_stopped_crit_edge, %if.end16.discov_stopped_crit_edge
  %lock = getelementptr i8, ptr %work, i32 -2700
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @hci_discovery_set_state(ptr noundef %add.ptr, i32 noundef 0) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %discov_stopped, %hci_req_sync.exit78.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @le_scan_restart_work(ptr noundef %work) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2808
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @le_scan_restart_work.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart_work, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -2708
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @le_scan_restart_work.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %req_lock.i = getelementptr i8, ptr %work, i32 272
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -2700
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.end.hci_req_sync.exit_crit_edge, label %if.then.i

do.end.hci_req_sync.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @le_scan_restart, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %status) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %do.end.hci_req_sync.exit_crit_edge
  call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name8 = getelementptr i8, ptr %work, i32 -2708
  %conv = zext i8 %4 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.81, ptr noundef %name8, i32 noundef %conv) #10
  br label %cleanup

if.end10:                                         ; preds = %hci_req_sync.exit
  %lock = getelementptr i8, ptr %work, i32 -2800
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %quirks = getelementptr i8, ptr %work, i32 -1176
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %quirks, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end10.unlock_crit_edge, label %lor.lhs.false

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end10
  %scan_start13 = getelementptr i8, ptr %work, i32 528
  %8 = ptrtoint ptr %scan_start13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_start13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %lor.lhs.false.unlock_crit_edge, label %if.end16

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end16:                                         ; preds = %lor.lhs.false
  %scan_duration = getelementptr i8, ptr %work, i32 532
  %10 = ptrtoint ptr %scan_duration to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_duration, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp.not = icmp ugt i32 %sub, %11
  br i1 %cmp.not, label %if.end16.if.end30_crit_edge, label %if.then21

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp22.not = icmp ult i32 %12, %9
  %sub26 = xor i32 %9, -1
  %add = add i32 %12, %sub26
  %elapsed.0 = select i1 %cmp22.not, i32 %add, i32 %sub
  %sub28 = sub i32 %11, %elapsed.0
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end16.if.end30_crit_edge
  %timeout.0 = phi i32 [ %sub28, %if.then21 ], [ 0, %if.end16.if.end30_crit_edge ]
  %req_workqueue = getelementptr i8, ptr %work, i32 -1104
  %13 = ptrtoint ptr %req_workqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req_workqueue, align 8
  %le_scan_disable = getelementptr i8, ptr %work, i32 -100
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %le_scan_disable, i32 noundef %timeout.0) #10
  br label %unlock

unlock:                                           ; preds = %if.end30, %lor.lhs.false.unlock_crit_edge, %if.end10.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv_timeout_expire(ptr noundef %work) #0 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5068
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv_timeout_expire.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv_timeout_expire, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -4968
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adv_timeout_expire.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %work, i32 -5060
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %adv_instance_timeout = getelementptr i8, ptr %work, i32 -2
  %1 = ptrtoint ptr %adv_instance_timeout to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %adv_instance_timeout, align 2
  %cur_adv_instance = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %cur_adv_instance to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_adv_instance, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.end.unlock_crit_edge, label %if.end6

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end6:                                          ; preds = %do.end
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %4 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd_q.i, ptr %cmd_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i.i, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %req, align 4
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err.i, align 4
  call void @hci_req_clear_adv_instance(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull %req, i8 noundef zeroext %3, i1 noundef zeroext false)
  %adv_instances = getelementptr i8, ptr %work, i32 -16
  %9 = ptrtoint ptr %adv_instances to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %adv_instances, align 4
  %cmp.i.not = icmp eq ptr %10, %adv_instances
  br i1 %cmp.i.not, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__hci_req_disable_advertising(ptr noundef nonnull %req)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %call.i = call fastcc i32 @req_run(ptr noundef nonnull %req, ptr noundef null, ptr noundef null) #10
  br label %unlock

unlock:                                           ; preds = %if.end10, %do.end.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @interleave_scan_work(ptr noundef %work) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5364
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !202
  %interleave_scan_state = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interleave_scan_state, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %2, label %if.else7 [
    i32 2, label %if.else.i
    i32 1, label %if.else.i29
  ]

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %advmon_allowlist_duration = getelementptr i8, ptr %work, i32 -4508
  br label %if.end8

if.else.i29:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %advmon_no_filter_duration = getelementptr i8, ptr %work, i32 -4506
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %work, i32 -5264
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.84, ptr noundef %name) #10
  br label %cleanup

if.end8:                                          ; preds = %if.else.i29, %if.else.i
  %.sink.in = phi ptr [ %advmon_no_filter_duration, %if.else.i29 ], [ %advmon_allowlist_duration, %if.else.i ]
  %4 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv5 = zext i16 %.sink to i32
  %call2.i28 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv5) #10
  %req_lock.i = getelementptr i8, ptr %work, i32 -2284
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr i8, ptr %work, i32 -5256
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end8.hci_req_sync.exit_crit_edge, label %if.then.i

if.end8.hci_req_sync.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @__hci_req_sync(ptr noundef %add.ptr, ptr noundef nonnull @hci_req_add_le_interleaved_scan, i32 noundef 0, i32 noundef 200, ptr noundef nonnull %status) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %if.end8.hci_req_sync.exit_crit_edge
  call void @mutex_unlock(ptr noundef %req_lock.i) #10
  %7 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interleave_scan_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %hci_req_sync.exit.cleanup_crit_edge, label %if.then12

hci_req_sync.exit.cleanup_crit_edge:              ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %hci_req_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %req_workqueue = getelementptr i8, ptr %work, i32 -3660
  %9 = ptrtoint ptr %req_workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_workqueue, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef %call2.i28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %hci_req_sync.exit.cleanup_crit_edge, %if.else7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_request_cancel_all(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__hci_cmd_sync_cancel(ptr noundef %hdev, i32 noundef 19) #10
  %discov_update = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 155
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %discov_update) #10
  %scan_update = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 156
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %scan_update) #10
  %discov_off = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 148
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %discov_off) #10
  %le_scan_disable = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %le_scan_disable) #10
  %le_scan_restart = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 158
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %le_scan_restart) #10
  %adv_instance_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 216
  %0 = ptrtoint ptr %adv_instance_timeout to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %adv_instance_timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %adv_instance_expire = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 217
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %adv_instance_expire) #10
  %2 = ptrtoint ptr %adv_instance_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %adv_instance_timeout, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cancel_interleave_scan.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_request_cancel_all, %if.then.i)) #10
          to label %cancel_interleave_scan.exit [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cancel_interleave_scan.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.90, ptr noundef %name.i) #10
  br label %cancel_interleave_scan.exit

cancel_interleave_scan.exit:                      ; preds = %if.then.i, %if.end
  %interleave_scan.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 225
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %interleave_scan.i) #10
  %interleave_scan_state.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 224
  %3 = ptrtoint ptr %interleave_scan_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %interleave_scan_state.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hci_cmd_sync_cancel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_adv_monitor_offload_ext(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @del_from_accept_list(ptr noundef %req, ptr noundef %bdaddr, i8 noundef zeroext %bdaddr_type) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_le_del_from_accept_list, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cp) #10
  %0 = getelementptr inbounds %struct.hci_cp_le_del_from_accept_list, ptr %cp, i32 0, i32 1
  %1 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bdaddr_type, ptr %cp, align 1
  %2 = call ptr @memcpy(ptr %0, ptr %bdaddr, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @del_from_accept_list.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@del_from_accept_list, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cp, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @del_from_accept_list.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef %0, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@del_from_accept_list, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8210, i32 noundef 7) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 4640, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %16 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7) #10
  %17 = call ptr @memcpy(ptr %call.i.i, ptr %cp, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@del_from_accept_list, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i51 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i51, i32 noundef %19) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8210) #10
  %20 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8210, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %25 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %req_flags.i, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %le_features, align 2
  %33 = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  br i1 %tobool9.not, label %hci_req_add_ev.exit.if.end23_crit_edge, label %land.lhs.true

hci_req_add_ev.exit.if.end23_crit_edge:           ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %hci_req_add_ev.exit
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %30, i32 0, i32 206, i32 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i, align 4
  %36 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not = icmp eq i32 %36, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end23_crit_edge, label %if.then14

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then14:                                        ; preds = %land.lhs.true
  %call16 = call ptr @hci_find_irk_by_addr(ptr noundef %30, ptr noundef %bdaddr, i8 noundef zeroext %bdaddr_type) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then14.if.end23_crit_edge, label %if.then18

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.then14
  %37 = ptrtoint ptr %bdaddr to i32
  call void @__asan_load1_noabort(i32 %37)
  %cp19.sroa.5.1.copyload = load i8, ptr %bdaddr, align 1
  %cp19.sroa.7.1.bdaddr.sroa_idx = getelementptr inbounds i8, ptr %bdaddr, i32 1
  %38 = ptrtoint ptr %cp19.sroa.7.1.bdaddr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %cp19.sroa.7.1.copyload = load i8, ptr %cp19.sroa.7.1.bdaddr.sroa_idx, align 1
  %cp19.sroa.8.1.bdaddr.sroa_idx = getelementptr inbounds i8, ptr %bdaddr, i32 2
  %39 = ptrtoint ptr %cp19.sroa.8.1.bdaddr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %cp19.sroa.8.1.copyload = load i8, ptr %cp19.sroa.8.1.bdaddr.sroa_idx, align 1
  %cp19.sroa.9.1.bdaddr.sroa_idx = getelementptr inbounds i8, ptr %bdaddr, i32 3
  %40 = ptrtoint ptr %cp19.sroa.9.1.bdaddr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %cp19.sroa.9.1.copyload = load i8, ptr %cp19.sroa.9.1.bdaddr.sroa_idx, align 1
  %cp19.sroa.10.1.bdaddr.sroa_idx = getelementptr inbounds i8, ptr %bdaddr, i32 4
  %41 = ptrtoint ptr %cp19.sroa.10.1.bdaddr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %cp19.sroa.10.1.copyload = load i8, ptr %cp19.sroa.10.1.bdaddr.sroa_idx, align 1
  %cp19.sroa.11.1.bdaddr.sroa_idx = getelementptr inbounds i8, ptr %bdaddr, i32 5
  %42 = ptrtoint ptr %cp19.sroa.11.1.bdaddr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %cp19.sroa.11.1.copyload = load i8, ptr %cp19.sroa.11.1.bdaddr.sroa_idx, align 1
  %43 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@del_from_accept_list, %if.then.i34)) #10
          to label %do.end.i37 [label %if.then.i34], !srcloc !197

if.then.i34:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %name.i33 = getelementptr inbounds %struct.hci_dev, ptr %44, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i33, i32 noundef 8232, i32 noundef 7) #10
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then.i34, %if.then18
  %45 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i36 = icmp eq i32 %46, 0
  br i1 %tobool4.not.i36, label %if.end6.i40, label %do.end.i37.if.end23_crit_edge

do.end.i37.if.end23_crit_edge:                    ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end6.i40:                                      ; preds = %do.end.i37
  %call.i.i.i53 = call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i54 = icmp eq ptr %call.i.i.i53, null
  br i1 %tobool.not.i.i54, label %if.then9.i42, label %if.end.i61

if.end.i61:                                       ; preds = %if.end6.i40
  %data.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i55, align 4
  %add.ptr.i.i.i56 = getelementptr i8, ptr %48, i32 8
  store ptr %add.ptr.i.i.i56, ptr %data.i.i.i55, align 4
  %tail.i.i.i57 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i57, align 8
  %add.ptr1.i.i.i58 = getelementptr i8, ptr %50, i32 8
  store ptr %add.ptr1.i.i.i58, ptr %tail.i.i.i57, align 8
  %call1.i59 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i53, i32 noundef 3) #10
  %51 = ptrtoint ptr %call1.i59 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 10272, ptr %call1.i59, align 1
  %plen3.i60 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i59, i32 0, i32 1
  %52 = ptrtoint ptr %plen3.i60 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 7, ptr %plen3.i60, align 1
  %call.i.i62 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i53, i32 noundef 7) #10
  %53 = ptrtoint ptr %call.i.i62 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bdaddr_type, ptr %call.i.i62, align 1
  %cp19.sroa.5.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 1
  %54 = ptrtoint ptr %cp19.sroa.5.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %cp19.sroa.5.1.copyload, ptr %cp19.sroa.5.0.call.i.i62.sroa_idx, align 1
  %cp19.sroa.7.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 2
  %55 = ptrtoint ptr %cp19.sroa.7.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %cp19.sroa.7.1.copyload, ptr %cp19.sroa.7.0.call.i.i62.sroa_idx, align 1
  %cp19.sroa.8.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 3
  %56 = ptrtoint ptr %cp19.sroa.8.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %cp19.sroa.8.1.copyload, ptr %cp19.sroa.8.0.call.i.i62.sroa_idx, align 1
  %cp19.sroa.9.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 4
  %57 = ptrtoint ptr %cp19.sroa.9.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %cp19.sroa.9.1.copyload, ptr %cp19.sroa.9.0.call.i.i62.sroa_idx, align 1
  %cp19.sroa.10.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 5
  %58 = ptrtoint ptr %cp19.sroa.10.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %cp19.sroa.10.1.copyload, ptr %cp19.sroa.10.0.call.i.i62.sroa_idx, align 1
  %cp19.sroa.11.0.call.i.i62.sroa_idx = getelementptr inbounds i8, ptr %call.i.i62, i32 6
  %59 = ptrtoint ptr %cp19.sroa.11.0.call.i.i62.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %cp19.sroa.11.1.copyload, ptr %cp19.sroa.11.0.call.i.i62.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@del_from_accept_list, %if.then12.i65)) #10
          to label %if.end14.i45 [label %if.then12.i65], !srcloc !197

if.then12.i65:                                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  %name.i63 = getelementptr inbounds %struct.hci_dev, ptr %44, i32 0, i32 2
  %len13.i64 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 6
  %60 = ptrtoint ptr %len13.i64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len13.i64, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i63, i32 noundef %61) #10
  br label %if.end14.i45

if.then9.i42:                                     ; preds = %if.end6.i40
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i41 = getelementptr inbounds %struct.hci_dev, ptr %44, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i41, i32 noundef 8232) #10
  %62 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -12, ptr %err.i, align 4
  br label %if.end23

if.end14.i45:                                     ; preds = %if.then12.i65, %if.end.i61
  %cb.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i66 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %cb.i66, align 8
  %opcode18.i67 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 3, i32 12
  %64 = ptrtoint ptr %opcode18.i67 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 8232, ptr %opcode18.i67, align 4
  %cmd_q.i43 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %65 = ptrtoint ptr %cmd_q.i43 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd_q.i43, align 4
  %cmp.i.not.i44 = icmp eq ptr %66, %cmd_q.i43
  br i1 %cmp.i.not.i44, label %if.then17.i47, label %if.end14.i45.if.end21.i49_crit_edge

if.end14.i45.if.end21.i49_crit_edge:              ; preds = %if.end14.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i49

if.then17.i47:                                    ; preds = %if.end14.i45
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i46 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 3, i32 14
  %67 = ptrtoint ptr %req_flags.i46 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %req_flags.i46, align 2
  %69 = or i8 %68, 1
  store i8 %69, ptr %req_flags.i46, align 2
  br label %if.end21.i49

if.end21.i49:                                     ; preds = %if.then17.i47, %if.end14.i45.if.end21.i49_crit_edge
  %req_event.i48 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 3, i32 15
  %70 = ptrtoint ptr %req_event.i48 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %req_event.i48, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i43, ptr noundef nonnull %call.i.i.i53) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end21.i49, %if.then9.i42, %do.end.i37.if.end23_crit_edge, %if.then14.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %hci_req_add_ev.exit.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_addr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_to_accept_list(ptr noundef %req, ptr noundef %params, ptr nocapture noundef %num_entries, i1 noundef zeroext %allow_rpa) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_le_add_to_accept_list, align 1
  %cp52 = alloca %struct.hci_cp_le_add_to_resolv_list, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cp) #10
  %0 = getelementptr inbounds %struct.hci_cp_le_add_to_accept_list, ptr %cp, i32 0, i32 1
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %le_accept_list = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 192
  %addr = getelementptr inbounds %struct.hci_conn_params, ptr %params, i32 0, i32 2
  %addr_type = getelementptr inbounds %struct.hci_conn_params, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_type, align 2
  %call = tail call ptr @hci_bdaddr_list_lookup(ptr noundef %le_accept_list, ptr noundef %addr, i8 noundef zeroext %4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %num_entries to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_entries, align 1
  %le_accept_list_size = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 23
  %7 = ptrtoint ptr %le_accept_list_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %le_accept_list_size, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp.not = icmp ult i8 %6, %8
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %allow_rpa, label %if.end5.if.end15_crit_edge, label %land.lhs.true

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %2, i32 0, i32 206, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_type, align 2
  %call12 = tail call ptr @hci_find_irk_by_addr(ptr noundef %2, ptr noundef %addr, i8 noundef zeroext %13) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %land.lhs.true9.if.end15_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %suspended = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 179
  %14 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %suspended, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true18:                                  ; preds = %if.end15
  %flags = getelementptr inbounds %struct.hci_conn_params, ptr %params, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %and1.i97 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i97)
  %tobool21.not = icmp eq i32 %and1.i97, 0
  br i1 %tobool21.not, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true18.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %18 = ptrtoint ptr %num_entries to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_entries, align 1
  %add = add i8 %19, 1
  store i8 %add, ptr %num_entries, align 1
  %20 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr_type, align 2
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %cp, align 1
  %23 = call ptr @memcpy(ptr %0, ptr %addr, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_accept_list.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_accept_list, %if.then33)) #10
          to label %do.end [label %if.then33], !srcloc !197

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 2
  %24 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cp, align 1
  %conv37 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_accept_list.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.54, ptr noundef %name, ptr noundef %0, i32 noundef %conv37) #10
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end23
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_accept_list, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8209, i32 noundef 7) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %28 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool4.not.i = icmp eq i32 %29, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.hci_req_add_ev.exit_crit_edge

do.end.i.hci_req_add_ev.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_add_ev.exit

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %33, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %34 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 4384, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %35 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 7, ptr %plen3.i, align 1
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7) #10
  %36 = call ptr @memcpy(ptr %call.i.i, ptr %cp, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_accept_list, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i103 = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len13.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i103, i32 noundef %38) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %27, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8209) #10
  %39 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -12, ptr %err.i, align 4
  br label %hci_req_add_ev.exit

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 8209, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %43, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %44 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %req_flags.i, align 2
  %46 = or i8 %45, 1
  store i8 %46, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %47 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %req_event.i, align 1
  call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %hci_req_add_ev.exit

hci_req_add_ev.exit:                              ; preds = %if.end21.i, %if.then9.i, %do.end.i.hci_req_add_ev.exit_crit_edge
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 22
  %48 = ptrtoint ptr %le_features to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %le_features, align 2
  %50 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool40.not = icmp eq i8 %50, 0
  br i1 %tobool40.not, label %hci_req_add_ev.exit.cleanup_crit_edge, label %land.lhs.true41

hci_req_add_ev.exit.cleanup_crit_edge:            ; preds = %hci_req_add_ev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true41:                                  ; preds = %hci_req_add_ev.exit
  %dev_flags42 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 206
  %arrayidx.i98 = getelementptr %struct.hci_dev, ptr %2, i32 0, i32 206, i32 1
  %51 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i98, align 4
  %53 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not = icmp eq i32 %53, 0
  br i1 %tobool45.not, label %land.lhs.true41.cleanup_crit_edge, label %if.then46

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true41
  %54 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr_type, align 2
  %call49 = call ptr @hci_find_irk_by_addr(ptr noundef %2, ptr noundef %addr, i8 noundef zeroext %55) #10
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then46.cleanup_crit_edge, label %if.then51

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %cp52) #10
  %56 = getelementptr inbounds i8, ptr %cp52, i32 23
  %57 = call ptr @memset(ptr %56, i32 255, i32 16)
  %58 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %addr_type, align 2
  %60 = ptrtoint ptr %cp52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %cp52, align 1
  %bdaddr55 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %cp52, i32 0, i32 1
  %61 = call ptr @memcpy(ptr %bdaddr55, ptr %addr, i32 6)
  %peer_irk = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %cp52, i32 0, i32 2
  %val = getelementptr inbounds %struct.smp_irk, ptr %call49, i32 0, i32 5
  %62 = call ptr @memcpy(ptr %peer_irk, ptr %val, i32 16)
  %63 = ptrtoint ptr %dev_flags42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %dev_flags42, align 4
  %65 = and i32 %64, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool62.not = icmp eq i32 %65, 0
  %local_irk67 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %cp52, i32 0, i32 3
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %irk65 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 220
  %66 = call ptr @memcpy(ptr %local_irk67, ptr %irk65, i32 16)
  br label %if.end69

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %67 = call ptr @memset(ptr %local_irk67, i32 0, i32 16)
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then63
  call void @hci_req_add_ev(ptr noundef %req, i16 noundef zeroext 8231, i32 noundef 39, ptr noundef nonnull %cp52, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %cp52) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then46.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %hci_req_add_ev.exit.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ 0, %if.then46.cleanup_crit_edge ], [ 0, %if.end69 ], [ 0, %land.lhs.true41.cleanup_crit_edge ], [ 0, %hci_req_add_ev.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_discovery(ptr noundef %hdev, ptr noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_discovery.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_discovery, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %discovery = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 170
  %0 = ptrtoint ptr %discovery to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %discovery, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_discovery.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.71, ptr noundef %name, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %discovery3 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 170
  %2 = ptrtoint ptr %discovery3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %discovery3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb12
    i32 6, label %sw.bb26
  ]

sw.bb:                                            ; preds = %do.end
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 206
  %5 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dev_flags, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  %req_lock.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 163
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i, i32 noundef 0) #10
  %flags.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then8.hci_req_sync.exit_crit_edge, label %if.then.i

if.then8.hci_req_sync.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %hci_req_sync.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef nonnull @bredr_inquiry, i32 noundef 8, i32 noundef 200, ptr noundef %status) #10
  br label %hci_req_sync.exit

hci_req_sync.exit:                                ; preds = %if.then.i, %if.then8.hci_req_sync.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %req_lock.i) #10
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 118
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %quirks, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.else.i, label %if.then15

if.then15:                                        ; preds = %sw.bb12
  %le_scan_int_discovery = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 51
  %13 = ptrtoint ptr %le_scan_int_discovery to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %le_scan_int_discovery, align 2
  %req_lock.i109 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 163
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i109, i32 noundef 0) #10
  %flags.i110 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i110, align 4
  %and1.i.i111 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i111)
  %tobool.not.i112 = icmp eq i32 %and1.i.i111, 0
  br i1 %tobool.not.i112, label %if.then15.sw.epilog_crit_edge, label %if.then.i114

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i114:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %14 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %call1.i113 = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef nonnull @interleaved_discov, i32 noundef %mul, i32 noundef 200, ptr noundef %status) #10
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb12
  %discov_interleaved_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 69
  %17 = ptrtoint ptr %discov_interleaved_timeout to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %discov_interleaved_timeout, align 4
  %conv20 = zext i16 %18 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv20) #10
  %le_scan_int_discovery22 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 51
  %19 = ptrtoint ptr %le_scan_int_discovery22 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %le_scan_int_discovery22, align 2
  %req_lock.i118 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 163
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i118, i32 noundef 0) #10
  %flags.i119 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i119, align 4
  %and1.i.i120 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i120)
  %tobool.not.i121 = icmp eq i32 %and1.i.i120, 0
  br i1 %tobool.not.i121, label %if.else.i.sw.epilog_crit_edge, label %if.then.i123

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i123:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = zext i16 %20 to i32
  %call1.i122 = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef nonnull @active_scan, i32 noundef %conv23, i32 noundef 200, ptr noundef %status) #10
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end
  %le_scan_int_discovery28 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 51
  %23 = ptrtoint ptr %le_scan_int_discovery28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %le_scan_int_discovery28, align 2
  %req_lock.i127 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 163
  tail call void @mutex_lock_nested(ptr noundef %req_lock.i127, i32 noundef 0) #10
  %flags.i128 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i128, align 4
  %and1.i.i129 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i129)
  %tobool.not.i130 = icmp eq i32 %and1.i.i129, 0
  br i1 %tobool.not.i130, label %sw.bb26.sw.epilog_crit_edge, label %if.then.i132

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i132:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  %conv29 = zext i16 %24 to i32
  %call1.i131 = tail call i32 @__hci_req_sync(ptr noundef %hdev, ptr noundef nonnull @active_scan, i32 noundef %conv29, i32 noundef 200, ptr noundef %status) #10
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 31, ptr %status, align 1
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.i132, %sw.bb26.sw.epilog_crit_edge, %if.then.i123, %if.else.i.sw.epilog_crit_edge, %if.then.i114, %if.then15.sw.epilog_crit_edge
  %req_lock.i127.sink = phi ptr [ %req_lock.i109, %if.then15.sw.epilog_crit_edge ], [ %req_lock.i109, %if.then.i114 ], [ %req_lock.i118, %if.else.i.sw.epilog_crit_edge ], [ %req_lock.i118, %if.then.i123 ], [ %req_lock.i127, %sw.bb26.sw.epilog_crit_edge ], [ %req_lock.i127, %if.then.i132 ]
  %timeout.0 = phi i32 [ 1024, %if.then15.sw.epilog_crit_edge ], [ 1024, %if.then.i114 ], [ %call2.i, %if.else.i.sw.epilog_crit_edge ], [ %call2.i, %if.then.i123 ], [ 1024, %sw.bb26.sw.epilog_crit_edge ], [ 1024, %if.then.i132 ]
  tail call void @mutex_unlock(ptr noundef %req_lock.i127.sink) #10
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %do.body35, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body35:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_discovery.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_discovery, %if.then47)) #10
          to label %do.end53 [label %if.then47], !srcloc !197

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %name48 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %call50 = tail call i32 @jiffies_to_msecs(i32 noundef %timeout.0) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_discovery.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.72, ptr noundef %name48, i32 noundef %call50) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body35
  %quirks54 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 118
  %30 = ptrtoint ptr %quirks54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %quirks54, align 4
  %32 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool56.not = icmp eq i32 %32, 0
  br i1 %tobool56.not, label %do.end53.if.end63_crit_edge, label %land.lhs.true

do.end53.if.end63_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true:                                    ; preds = %do.end53
  %result_filtering = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 170, i32 13
  %33 = ptrtoint ptr %result_filtering to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result_filtering, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool58.not = icmp eq i8 %34, 0
  br i1 %tobool58.not, label %land.lhs.true.if.end63_crit_edge, label %if.then60

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %scan_start = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 170, i32 18
  %36 = ptrtoint ptr %scan_start to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %scan_start, align 4
  %scan_duration = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 170, i32 19
  %37 = ptrtoint ptr %scan_duration to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %timeout.0, ptr %scan_duration, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %land.lhs.true.if.end63_crit_edge, %do.end53.if.end63_crit_edge
  %req_workqueue = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 139
  %38 = ptrtoint ptr %req_workqueue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req_workqueue, align 8
  %le_scan_disable = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 157
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %le_scan_disable, i32 noundef %timeout.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %sw.epilog.cleanup_crit_edge, %sw.default, %hci_req_sync.exit, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_start_discovery_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_discovery_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop_discovery(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call zeroext i1 @hci_req_stop_discovery(ptr noundef %req)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %lock2 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_stop_discovery_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bredr_inquiry(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %opt to i8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bredr_inquiry.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bredr_inquiry, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !197

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bredr_inquiry.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  tail call void @hci_inquiry_cache_flush(ptr noundef %10) #10
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %lock11 = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock11) #10
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %limited = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 14
  %15 = ptrtoint ptr %limited to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %limited, align 2, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  %spec.select = select i1 %tobool13.not, i8 51, i8 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bredr_inquiry, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 1025, i32 noundef 5) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %23 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 260, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %24 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5) #10
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %call.i.i, align 1
  %cp.sroa.7.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %26 = ptrtoint ptr %cp.sroa.7.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -117, ptr %cp.sroa.7.0.call.i.i.sroa_idx, align 1
  %cp.sroa.8.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %27 = ptrtoint ptr %cp.sroa.8.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -98, ptr %cp.sroa.8.0.call.i.i.sroa_idx, align 1
  %cp.sroa.9.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 3
  %28 = ptrtoint ptr %cp.sroa.9.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %cp.sroa.9.0.call.i.i.sroa_idx, align 1
  %cp.sroa.11.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %29 = ptrtoint ptr %cp.sroa.11.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %cp.sroa.11.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bredr_inquiry, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i29 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i29, i32 noundef %31) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 1025) #10
  %32 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1025, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %37 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %req_flags.i, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %40 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interleaved_discov(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interleaved_discov.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@interleaved_discov, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @interleaved_discov.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @active_scan(ptr noundef %req, i32 noundef %opt)
  %call7 = tail call i32 @bredr_inquiry(ptr noundef %req, i32 noundef 8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_scan(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  %own_addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_addr_type) #10
  %2 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %own_addr_type, align 1, !annotation !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @active_scan.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@active_scan, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @active_scan.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.19, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_flags, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %do.end
  tail call void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext false)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cancel_interleave_scan.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@active_scan, %if.then.i)) #10
          to label %cancel_interleave_scan.exit [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cancel_interleave_scan.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.90, ptr noundef %name.i) #10
  br label %cancel_interleave_scan.exit

cancel_interleave_scan.exit:                      ; preds = %if.then.i, %if.then7
  %interleave_scan.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 225
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %interleave_scan.i) #10
  %interleave_scan_state.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 224
  %6 = ptrtoint ptr %interleave_scan_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %interleave_scan_state.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %cancel_interleave_scan.exit, %do.end.if.end8_crit_edge
  %7 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dev_flags, align 4
  %9 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i = icmp ne i32 %9, 0
  %call10 = call i32 @hci_update_random_address(ptr noundef %req, i1 noundef zeroext true, i1 noundef zeroext %tobool.i, ptr noundef nonnull %own_addr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %own_addr_type, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %call14 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %1) #10
  %11 = xor i1 %call14, true
  %conv = trunc i32 %opt to i16
  %le_scan_window_discovery = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 52
  %12 = ptrtoint ptr %le_scan_window_discovery to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %le_scan_window_discovery, align 4
  %14 = ptrtoint ptr %own_addr_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %own_addr_type, align 1
  tail call fastcc void @hci_req_start_scan(ptr noundef %req, i8 noundef zeroext 1, i16 noundef zeroext %conv, i16 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0, i1 noundef zeroext %11, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_addr_type) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_inquiry_cache_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_scan(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call void @__hci_req_update_scan(ptr noundef %req)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %lock2 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @discoverable_update(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @write_iac(ptr noundef %req)
  tail call void @__hci_req_update_scan(ptr noundef %req)
  tail call void @__hci_req_update_class(ptr noundef %req)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then6:                                         ; preds = %if.end
  tail call void @__hci_req_update_adv_data(ptr noundef %req, i8 noundef zeroext 0)
  %7 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dev_flags, align 4
  %9 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then6.if.end17_crit_edge, label %if.then11

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.then6
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %call.i = tail call ptr @hci_find_adv_instance(ptr noundef %14, i8 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then13.if.end.i_crit_edge, label %land.lhs.true.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then13
  %pending.i = getelementptr inbounds %struct.adv_info, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pending.i, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @__hci_req_disable_ext_adv_instance(ptr noundef %req, i8 noundef zeroext 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then13.if.end.i_crit_edge
  %call4.i = tail call i32 @__hci_req_setup_ext_adv_instance(ptr noundef %req, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end.i.if.end17_crit_edge, label %if.end6.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_update_scan_rsp_data(ptr noundef %req, i8 noundef zeroext 0) #10
  %call7.i = tail call i32 @__hci_req_enable_ext_advertising(ptr noundef %req, i8 noundef zeroext 0) #10
  br label %if.end17

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__hci_req_enable_advertising(ptr noundef %req)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end6.i, %if.end.i.if.end17_crit_edge, %if.then6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_new_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_iac(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_write_current_iac_lap, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cp)
  %cp.1.cp.1..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 1
  %cp.2.cp.2..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 2
  %cp.3.cp.3..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 3
  %cp.4.cp.4..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 4
  %cp.5.cp.5..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 5
  %cp.6.cp.6..sroa_idx = getelementptr inbounds i8, ptr %cp, i32 6
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = call ptr @memset(ptr %cp, i32 255, i32 7)
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_flags, align 4
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_flags, align 4
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_iac = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 34
  %9 = ptrtoint ptr %num_iac to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_iac, align 4
  %11 = tail call i8 @llvm.umin.i8(i8 %10, i8 2)
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %cp, align 1
  %13 = ptrtoint ptr %cp.4.cp.4..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 51, ptr %cp.4.cp.4..sroa_idx, align 1
  %14 = ptrtoint ptr %cp.5.cp.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -117, ptr %cp.5.cp.5..sroa_idx, align 1
  %15 = ptrtoint ptr %cp.6.cp.6..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -98, ptr %cp.6.cp.6..sroa_idx, align 1
  br label %if.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cp, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then6
  %.sink = phi i8 [ 51, %if.else ], [ 0, %if.then6 ]
  %17 = ptrtoint ptr %cp.1.cp.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %cp.1.cp.1..sroa_idx, align 1
  %18 = ptrtoint ptr %cp.2.cp.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -117, ptr %cp.2.cp.2..sroa_idx, align 1
  %19 = ptrtoint ptr %cp.3.cp.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -98, ptr %cp.3.cp.3..sroa_idx, align 1
  %20 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %20)
  %cp.0.cp.0. = load i8, ptr %cp, align 1
  %conv32 = zext i8 %cp.0.cp.0. to i32
  %mul = mul nuw nsw i32 %conv32, 3
  %add = add nuw nsw i32 %mul, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_iac, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 3130, i32 noundef %add) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end30
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %add.i.i = add nuw nsw i32 %mul, 12
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %27 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 14860, ptr %call1.i, align 1
  %conv.i = trunc i32 %add to i8
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %28 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add) #10
  %29 = call ptr @memcpy(ptr %call.i.i, ptr %cp, i32 %add)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_iac, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i41, i32 noundef %31) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 3130) #10
  %32 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 3130, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %37 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %req_flags.i, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %40 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @le_scan_disable(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @le_scan_restart(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %scanning_paused = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 178
  %5 = ptrtoint ptr %scanning_paused to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scanning_paused, align 8, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @le_scan_restart.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !197

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @le_scan_restart.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.13, ptr noundef %name) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext false)
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 37
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %9)
  %.not = icmp eq i8 %9, 96
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  br i1 %.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !197

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 8258, i32 noundef 6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then18
  %err.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i = icmp eq i32 %13, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.i, label %if.end.i

if.end.i:                                         ; preds = %if.end6.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #10
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 16928, ptr %call1.i, align 1
  %plen3.i = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %plen3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %plen3.i, align 1
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #10
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %call.i.i, align 1
  %ext_enable_cp.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 1
  %21 = ptrtoint ptr %ext_enable_cp.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %ext_enable_cp.sroa.6.0.call.i.i.sroa_idx, align 1
  %ext_enable_cp.sroa.8.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 2
  %22 = ptrtoint ptr %ext_enable_cp.sroa.8.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %ext_enable_cp.sroa.8.0.call.i.i.sroa_idx, align 1
  %ext_enable_cp.sroa.9.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %23 = ptrtoint ptr %ext_enable_cp.sroa.9.0.call.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %ext_enable_cp.sroa.9.0.call.i.i.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart, %if.then12.i)) #10
          to label %if.end14.i [label %if.then12.i], !srcloc !197

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i47 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  %len13.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len13.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i47, i32 noundef %25) #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i, i32 noundef 8258) #10
  %26 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -12, ptr %err.i, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %cb.i, align 8
  %opcode18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %opcode18.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8258, ptr %opcode18.i, align 4
  %cmd_q.i = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %cmd_q.i
  br i1 %cmp.i.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 14
  %31 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %req_flags.i, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %req_flags.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %req_event.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 15
  %34 = ptrtoint ptr %req_event.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %req_event.i, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i, ptr noundef nonnull %call.i.i.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart, %if.then.i30)) #10
          to label %do.end.i33 [label %if.then.i30], !srcloc !197

if.then.i30:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name.i29 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_ev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.10, ptr noundef %name.i29, i32 noundef 8204, i32 noundef 2) #10
  br label %do.end.i33

do.end.i33:                                       ; preds = %if.then.i30, %if.else
  %err.i31 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 2
  %35 = ptrtoint ptr %err.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool4.not.i32 = icmp eq i32 %36, 0
  br i1 %tobool4.not.i32, label %if.end6.i36, label %do.end.i33.cleanup_crit_edge

do.end.i33.cleanup_crit_edge:                     ; preds = %do.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i36:                                      ; preds = %do.end.i33
  %call.i.i.i49 = tail call ptr @__alloc_skb(i32 noundef 13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i50 = icmp eq ptr %call.i.i.i49, null
  br i1 %tobool.not.i.i50, label %if.then9.i38, label %if.end.i57

if.end.i57:                                       ; preds = %if.end6.i36
  %data.i.i.i51 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i51, align 4
  %add.ptr.i.i.i52 = getelementptr i8, ptr %38, i32 8
  store ptr %add.ptr.i.i.i52, ptr %data.i.i.i51, align 4
  %tail.i.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i53, align 8
  %add.ptr1.i.i.i54 = getelementptr i8, ptr %40, i32 8
  store ptr %add.ptr1.i.i.i54, ptr %tail.i.i.i53, align 8
  %call1.i55 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i49, i32 noundef 3) #10
  %41 = ptrtoint ptr %call1.i55 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 3104, ptr %call1.i55, align 1
  %plen3.i56 = getelementptr inbounds %struct.hci_command_hdr, ptr %call1.i55, i32 0, i32 1
  %42 = ptrtoint ptr %plen3.i56 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %plen3.i56, align 1
  %call.i.i58 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i49, i32 noundef 2) #10
  %43 = ptrtoint ptr %call.i.i58 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %call.i.i58, align 1
  %cp.sroa.6.0.call.i.i58.sroa_idx = getelementptr inbounds i8, ptr %call.i.i58, i32 1
  %44 = ptrtoint ptr %cp.sroa.6.0.call.i.i58.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %cp.sroa.6.0.call.i.i58.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@le_scan_restart, %if.then12.i61)) #10
          to label %if.end14.i41 [label %if.then12.i61], !srcloc !197

if.then12.i61:                                    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  %name.i59 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  %len13.i60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 6
  %45 = ptrtoint ptr %len13.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len13.i60, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_prepare_cmd.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.8, ptr noundef %name.i59, i32 noundef %46) #10
  br label %if.end14.i41

if.then9.i38:                                     ; preds = %if.end6.i36
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i37 = getelementptr inbounds %struct.hci_dev, ptr %11, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name10.i37, i32 noundef 8204) #10
  %47 = ptrtoint ptr %err.i31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -12, ptr %err.i31, align 4
  br label %cleanup

if.end14.i41:                                     ; preds = %if.then12.i61, %if.end.i57
  %cb.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i62 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %cb.i62, align 8
  %opcode18.i63 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %opcode18.i63 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 8204, ptr %opcode18.i63, align 4
  %cmd_q.i39 = getelementptr inbounds %struct.hci_request, ptr %req, i32 0, i32 1
  %50 = ptrtoint ptr %cmd_q.i39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_q.i39, align 4
  %cmp.i.not.i40 = icmp eq ptr %51, %cmd_q.i39
  br i1 %cmp.i.not.i40, label %if.then17.i43, label %if.end14.i41.if.end21.i45_crit_edge

if.end14.i41.if.end21.i45_crit_edge:              ; preds = %if.end14.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i45

if.then17.i43:                                    ; preds = %if.end14.i41
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags.i42 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 3, i32 14
  %52 = ptrtoint ptr %req_flags.i42 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %req_flags.i42, align 2
  %54 = or i8 %53, 1
  store i8 %54, ptr %req_flags.i42, align 2
  br label %if.end21.i45

if.end21.i45:                                     ; preds = %if.then17.i43, %if.end14.i41.if.end21.i45_crit_edge
  %req_event.i44 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i49, i32 0, i32 3, i32 15
  %55 = ptrtoint ptr %req_event.i44 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %req_event.i44, align 1
  tail call void @skb_queue_tail(ptr noundef %cmd_q.i39, ptr noundef nonnull %call.i.i.i49) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i45, %if.then9.i38, %do.end.i33.cleanup_crit_edge, %if.end21.i, %if.then9.i, %do.end.i.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_req_add_le_interleaved_scan(ptr noundef %req, i32 noundef %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hci_req_add_le_scan_disable(ptr noundef %req, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hci_req_add_le_passive_scan(ptr noundef %req)
  %interleave_scan_state = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 224
  %5 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interleave_scan_state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 2, label %do.body
    i32 1, label %do.body11
    i32 0, label %sw.bb30
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_interleaved_scan, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !197

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.86, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %8 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %interleave_scan_state, align 8
  br label %sw.epilog

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_req_add_le_interleaved_scan, %if.then23)) #10
          to label %do.end28 [label %if.then23], !srcloc !197

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %name24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.87, ptr noundef %name24) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  %9 = ptrtoint ptr %interleave_scan_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %interleave_scan_state, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.88) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %do.end28, %do.end, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ -1, %sw.bb30 ], [ 0, %do.end28 ], [ 0, %do.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !161, !163, !164, !166, !168, !169, !171, !172, !174, !176, !177, !178, !180, !181, !183, !185, !186}
!llvm.named.register.sp = !{!187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hci_request.c", i32 103, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hci_req_sync_complete.__UNIQUE_ID_ddebug476, !1, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/hci_request.c", i32 122, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__hci_req_sync.__UNIQUE_ID_ddebug477, !7, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/hci_request.c", i32 186, i32 2}
!12 = !{ptr @__hci_req_sync.__UNIQUE_ID_ddebug478, !11, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bluetooth/hci_request.c", i32 230, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hci_prepare_cmd.__UNIQUE_ID_ddebug479, !14, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bluetooth/hci_request.c", i32 245, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hci_req_add_ev.__UNIQUE_ID_ddebug480, !18, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bluetooth/hci_request.c", i32 255, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bluetooth/hci_request.c", i32 404, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hci_req_add_le_scan_disable.__UNIQUE_ID_ddebug483, !24, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/hci_request.c", i32 740, i32 3}
!29 = !{ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug489, !28, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/hci_request.c", i32 758, i32 2}
!32 = !{ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug490, !31, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/bluetooth/hci_request.c", i32 806, i32 2}
!35 = !{ptr @hci_req_add_le_passive_scan.__UNIQUE_ID_ddebug491, !34, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bluetooth/hci_request.c", i32 1260, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/bluetooth/hci_request.c", i32 1869, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__hci_req_update_class.__UNIQUE_ID_ddebug498, !39, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bluetooth/hci_request.c", i32 2042, i32 3}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bluetooth/hci_request.c", i32 2376, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hci_req_stop_discovery.__UNIQUE_ID_ddebug510, !45, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!48 = !{ptr @hci_request_setup.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/bluetooth/hci_request.c", i32 2634, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hci_request_setup.__key.24, !52, !"__key", i1 false, i1 false}
!52 = !{!"../net/bluetooth/hci_request.c", i32 2635, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hci_request_setup.__key.26, !55, !"__key", i1 false, i1 false}
!55 = !{!"../net/bluetooth/hci_request.c", i32 2636, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hci_request_setup.__key.28, !55, !"__key", i1 false, i1 false}
!58 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hci_request_setup.__key.30, !60, !"__key", i1 false, i1 false}
!60 = !{!"../net/bluetooth/hci_request.c", i32 2637, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hci_request_setup.__key.32, !60, !"__key", i1 false, i1 false}
!63 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hci_request_setup.__key.34, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/bluetooth/hci_request.c", i32 2638, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hci_request_setup.__key.36, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hci_request_setup.__key.38, !70, !"__key", i1 false, i1 false}
!70 = !{!"../net/bluetooth/hci_request.c", i32 2639, i32 2}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hci_request_setup.__key.40, !70, !"__key", i1 false, i1 false}
!73 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @hci_request_setup.__key.42, !75, !"__key", i1 false, i1 false}
!75 = !{!"../net/bluetooth/hci_request.c", i32 2640, i32 2}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hci_request_setup.__key.44, !75, !"__key", i1 false, i1 false}
!78 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @skb_queue_head_init.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bluetooth/hci_request.c", i32 59, i32 2}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @req_run.__UNIQUE_ID_ddebug475, !83, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/hci_request.c", i32 350, i32 3}
!88 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__hci_update_interleaved_scan.__UNIQUE_ID_ddebug482, !87, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/bluetooth/hci_request.c", i32 439, i32 2}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @del_from_accept_list.__UNIQUE_ID_ddebug484, !91, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bluetooth/hci_request.c", i32 492, i32 2}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @add_to_accept_list.__UNIQUE_ID_ddebug485, !95, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/bluetooth/hci_request.c", i32 711, i32 2}
!100 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/bluetooth/hci_request.c", i32 620, i32 3}
!110 = !{ptr @hci_req_start_scan.__UNIQUE_ID_ddebug486, !109, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/bluetooth/hci_request.c", i32 1094, i32 2}
!113 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @enable_addr_resolution_complete.__UNIQUE_ID_ddebug492, !112, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/bluetooth/hci_request.c", i32 1114, i32 2}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @adv_enable_complete.__UNIQUE_ID_ddebug493, !116, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/bluetooth/hci_request.c", i32 1324, i32 3}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @set_random_addr.__UNIQUE_ID_ddebug497, !120, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/net/bluetooth/hci_core.h", i32 1096, i32 2}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/net/bluetooth/hci_core.h", i32 1033, i32 2}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/bluetooth/hci_request.c", i32 2028, i32 3}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @abort_conn_complete.__UNIQUE_ID_ddebug501, !129, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/bluetooth/hci_request.c", i32 2419, i32 2}
!134 = !{ptr @config_data_path_complete.__UNIQUE_ID_ddebug511, !133, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/bluetooth/hci_request.c", i32 2303, i32 2}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @start_discovery.__UNIQUE_ID_ddebug508, !136, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/bluetooth/hci_request.c", i32 2351, i32 2}
!141 = !{ptr @start_discovery.__UNIQUE_ID_ddebug509, !140, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/bluetooth/hci_request.c", i32 2065, i32 2}
!144 = !{ptr @bredr_inquiry.__UNIQUE_ID_ddebug502, !143, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/bluetooth/hci_request.c", i32 2290, i32 2}
!147 = !{ptr @interleaved_discov.__UNIQUE_ID_ddebug507, !146, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/bluetooth/hci_request.c", i32 2243, i32 2}
!150 = !{ptr @active_scan.__UNIQUE_ID_ddebug506, !149, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/bluetooth/hci_request.c", i32 2504, i32 2}
!153 = !{ptr @discov_off.__UNIQUE_ID_ddebug512, !152, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/bluetooth/hci_request.c", i32 2091, i32 2}
!156 = !{ptr @le_scan_disable_work.__UNIQUE_ID_ddebug503, !155, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/bluetooth/hci_request.c", i32 2100, i32 3}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/hci_request.c", i32 2132, i32 3}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/bluetooth/hci_request.c", i32 2187, i32 2}
!163 = !{ptr @le_scan_restart_work.__UNIQUE_ID_ddebug505, !162, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/bluetooth/hci_request.c", i32 2191, i32 3}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/bluetooth/hci_request.c", i32 2153, i32 3}
!168 = !{ptr @le_scan_restart.__UNIQUE_ID_ddebug504, !167, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/bluetooth/hci_request.c", i32 1151, i32 2}
!171 = !{ptr @adv_timeout_expire.__UNIQUE_ID_ddebug494, !170, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/bluetooth/hci_request.c", i32 1217, i32 3}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/bluetooth/hci_request.c", i32 1188, i32 3}
!176 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug495, !175, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/bluetooth/hci_request.c", i32 1192, i32 3}
!180 = !{ptr @hci_req_add_le_interleaved_scan.__UNIQUE_ID_ddebug496, !179, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/bluetooth/hci_request.c", i32 1196, i32 3}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/bluetooth/hci_request.c", i32 322, i32 2}
!185 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cancel_interleave_scan.__UNIQUE_ID_ddebug481, !184, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!187 = !{!"sp"}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148850838, i64 2148850843, i64 2148850856, i64 2148850900, i64 2148850934, i64 2148850955}
!198 = !{i64 2148386889, i64 2148386921, i64 2148386950, i64 2148386984, i64 2148387015, i64 2148387038}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i8 0, i8 2}
!202 = !{!"auto-init"}
!203 = !{i64 2149253889}
!204 = !{i64 2149254155}
