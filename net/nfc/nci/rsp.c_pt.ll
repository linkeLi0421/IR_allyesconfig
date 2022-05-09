; ModuleID = '/llk/IR_all_yes/net/nfc/nci/rsp.c_pt.bc'
source_filename = "../net/nfc/nci/rsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_core_reset_rsp = type { i8, i8, i8 }
%struct.nci_nfcee_discover_rsp = type { i8, i8 }
%struct.nci_core_init_rsp_1 = type <{ i8, i32, i8, [0 x i8] }>
%struct.nci_core_init_rsp_2 = type <{ i8, i16, i8, i16, i8, i32 }>
%struct.nci_core_init_rsp_nci_ver2 = type <{ i8, i32, i8, i16, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.nci_core_conn_create_rsp = type { i8, i8, i8, i8 }
%struct.nci_hci_dev = type { i8, ptr, ptr, %struct.nci_hci_init_data, [128 x %struct.nci_hci_pipe], [256 x i8], i32, i32, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head }
%struct.nci_hci_init_data = type { i8, [50 x %struct.nci_hci_gate], [9 x i8] }
%struct.nci_hci_gate = type { i8, i8, i8 }
%struct.nci_hci_pipe = type { i8, i8 }

@nci_rsp_packet.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nci\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nci_rsp_packet\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/nfc/nci/rsp.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NCI RX: MT=rsp, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nci: %s: NCI RX: MT=rsp, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@nci_rsp_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nci: %s: unsupported rsp opcode 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@nci_rsp_packet._entry_ptr = internal global ptr @nci_rsp_packet._entry, section ".printk_index", align 4
@nci_rsp_packet._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013nci: %s: unknown rsp opcode 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@nci_rsp_packet._entry_ptr.8 = internal global ptr @nci_rsp_packet._entry.6, section ".printk_index", align 4
@nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nci_core_reset_rsp_packet\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nci: %s: status 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nci_ver 0x%x, config_status 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nci: %s: nci_ver 0x%x, config_status 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nci_core_init_rsp_packet\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfcc_features 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nci: %s: nfcc_features 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"num_supported_rf_interfaces %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nci: %s: num_supported_rf_interfaces %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"supported_rf_interfaces[0] 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nci: %s: supported_rf_interfaces[0] 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.21, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"supported_rf_interfaces[1] 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nci: %s: supported_rf_interfaces[1] 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.23, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"supported_rf_interfaces[2] 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nci: %s: supported_rf_interfaces[2] 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.25, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"supported_rf_interfaces[3] 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nci: %s: supported_rf_interfaces[3] 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.27, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max_logical_connections %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nci: %s: max_logical_connections %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.29, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max_routing_table_size %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nci: %s: max_routing_table_size %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.31, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max_ctrl_pkt_payload_len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nci: %s: max_ctrl_pkt_payload_len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.33, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max_size_for_large_params %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nci: %s: max_size_for_large_params %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.35, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"manufact_id 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci: %s: manufact_id 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.37, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"manufact_specific_info 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nci: %s: manufact_specific_info 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet_v1.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.10, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nci_core_init_rsp_packet_v1\00", [36 x i8] zeroinitializer }, align 32
@nci_core_init_rsp_packet_v2.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nci_core_init_rsp_packet_v2\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status %x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nci: %s: status %x\0A\00", [44 x i8] zeroinitializer }, align 32
@nci_core_set_config_rsp_packet.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.10, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nci_core_set_config_rsp_packet\00", [33 x i8] zeroinitializer }, align 32
@nci_core_conn_create_rsp_packet.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.10, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nci_core_conn_create_rsp_packet\00", [32 x i8] zeroinitializer }, align 32
@nci_core_conn_close_rsp_packet.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.10, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nci_core_conn_close_rsp_packet\00", [33 x i8] zeroinitializer }, align 32
@nci_rf_disc_map_rsp_packet.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.10, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci_rf_disc_map_rsp_packet\00", [37 x i8] zeroinitializer }, align 32
@nci_rf_disc_rsp_packet.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.10, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nci_rf_disc_rsp_packet\00", [41 x i8] zeroinitializer }, align 32
@nci_rf_disc_select_rsp_packet.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.10, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nci_rf_disc_select_rsp_packet\00", [34 x i8] zeroinitializer }, align 32
@nci_rf_deactivate_rsp_packet.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.10, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nci_rf_deactivate_rsp_packet\00", [35 x i8] zeroinitializer }, align 32
@nci_nfcee_mode_set_rsp_packet.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.10, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nci_nfcee_mode_set_rsp_packet\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 256, i64 259, i64 260, i64 262, i64 512, i64 513]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 352, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 363, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 416, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 33, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 39, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 136, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 138, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 140, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 142, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 144, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 146, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 148, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 150, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 152, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 154, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 156, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 158, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 53, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 94, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 170, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 277, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 331, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 180, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 191, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 221, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 233, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [21 x i8] c"../net/nfc/nci/rsp.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 266, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @nci_rsp_packet._entry, ptr @nci_rsp_packet._entry.6, ptr @nci_rsp_packet._entry_ptr, ptr @nci_rsp_packet._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rsp_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rsp_packet._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_rsp_packet(ptr noundef %ndev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 15
  %conv2 = zext i8 %4 to i16
  %shl = shl nuw nsw i16 %conv2, 8
  %arrayidx4 = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %7 = and i8 %6, 63
  %conv8 = zext i8 %7 to i16
  %or = or i16 %shl, %conv8
  %cmd_timer = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 11
  %call = tail call i32 @del_timer(ptr noundef %cmd_timer) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rsp_packet.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  %conv18 = zext i8 %13 to i32
  %conv23 = zext i8 %4 to i32
  %conv27 = zext i8 %7 to i32
  %arrayidx29 = getelementptr i8, ptr %9, i32 2
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rsp_packet.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv18, i32 noundef %conv23, i32 noundef %conv27, i32 noundef %conv30) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call31 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #4
  %conv32 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp = icmp eq i8 %4, 15
  br i1 %cmp, label %if.then38, label %if.end50

if.then38:                                        ; preds = %do.end
  %call39 = tail call i32 @nci_prop_rsp_packet(ptr noundef %ndev, i16 noundef zeroext %or, ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call39)
  %cmp40 = icmp eq i32 %call39, -524
  br i1 %cmp40, label %do.end45, label %if.then38.end_crit_edge

if.then38.end_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %conv32) #7
  br label %end

if.end50:                                         ; preds = %do.end
  %16 = zext i32 %conv32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv32, label %do.end64 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb52
    i32 2, label %sw.bb53
    i32 4, label %sw.bb54
    i32 5, label %sw.bb55
    i32 256, label %sw.bb56
    i32 259, label %sw.bb57
    i32 260, label %sw.bb58
    i32 262, label %sw.bb59
    i32 512, label %sw.bb60
    i32 513, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end50
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 1
  br i1 %cmp.not.i, label %do.end.i.sw.epilog_crit_edge, label %if.then4.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then4.i:                                       ; preds = %do.end.i
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp7.i = icmp eq i8 %24, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.then4.i.if.end30.i_crit_edge

if.then4.i.if.end30.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  %nci_ver.i = getelementptr inbounds %struct.nci_core_reset_rsp, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %nci_ver.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nci_ver.i, align 1
  %nci_ver10.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 31
  %27 = ptrtoint ptr %nci_ver10.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %nci_ver10.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then23.i)) #4
          to label %if.end30.i [label %if.then23.i], !srcloc !114

if.then23.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %nci_ver.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nci_ver.i, align 1
  %conv25.i = zext i8 %29 to i32
  %config_status.i = getelementptr inbounds %struct.nci_core_reset_rsp, ptr %18, i32 0, i32 2
  %30 = ptrtoint ptr %config_status.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config_status.i, align 1
  %conv26.i = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef %conv25.i, i32 noundef %conv26.i) #4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.then9.i, %if.then4.i.if.end30.i_crit_edge
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %18, align 1
  %conv32.i = zext i8 %33 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv32.i) #4
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @nci_core_init_rsp_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end50
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_set_config_rsp_packet.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i118)) #4
          to label %nci_core_set_config_rsp_packet.exit [label %if.then.i118], !srcloc !114

if.then.i118:                                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv.i117 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_set_config_rsp_packet.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43, i32 noundef %conv.i117) #4
  br label %nci_core_set_config_rsp_packet.exit

nci_core_set_config_rsp_packet.exit:              ; preds = %if.then.i118, %sw.bb53
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %35, align 1
  %conv4.i = zext i8 %39 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv4.i) #4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @nci_core_conn_create_rsp_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @nci_core_conn_close_rsp_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end50
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_disc_map_rsp_packet.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i122)) #4
          to label %nci_rf_disc_map_rsp_packet.exit [label %if.then.i122], !srcloc !114

if.then.i122:                                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i121 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_disc_map_rsp_packet.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.46, i32 noundef %conv.i121) #4
  br label %nci_rf_disc_map_rsp_packet.exit

nci_rf_disc_map_rsp_packet.exit:                  ; preds = %if.then.i122, %sw.bb56
  %conv3.i = zext i8 %43 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv3.i) #4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @nci_rf_disc_rsp_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end50
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_disc_select_rsp_packet.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i126)) #4
          to label %do.end.i128 [label %if.then.i126], !srcloc !114

if.then.i126:                                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i125 = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_disc_select_rsp_packet.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.48, i32 noundef %conv.i125) #4
  br label %do.end.i128

do.end.i128:                                      ; preds = %if.then.i126, %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.not.i127 = icmp eq i8 %47, 0
  br i1 %cmp.not.i127, label %do.end.i128.sw.epilog_crit_edge, label %if.then5.i

do.end.i128.sw.epilog_crit_edge:                  ; preds = %do.end.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then5.i:                                       ; preds = %do.end.i128
  call void @__sanitizer_cov_trace_pc() #6
  %conv3.i129 = zext i8 %47 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv3.i129) #4
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end50
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_deactivate_rsp_packet.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i132)) #4
          to label %do.end.i135 [label %if.then.i132], !srcloc !114

if.then.i132:                                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i131 = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_deactivate_rsp_packet.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.49, i32 noundef %conv.i131) #4
  br label %do.end.i135

do.end.i135:                                      ; preds = %if.then.i132, %sw.bb59
  %conv3.i133 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.not.i134 = icmp eq i8 %51, 0
  br i1 %cmp.not.i134, label %lor.lhs.false.i, label %do.end.i135.if.then8.i_crit_edge

do.end.i135.if.then8.i_crit_edge:                 ; preds = %do.end.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %do.end.i135
  %state.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #4
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp6.not.i = icmp eq i32 %53, 4
  br i1 %cmp6.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %do.end.i135.if.then8.i_crit_edge
  tail call void @nci_clear_target_list(ptr noundef %ndev) #4
  %state9.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state9.i, i32 noundef 4) #4
  %54 = ptrtoint ptr %state9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %state9.i, align 4
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv3.i133) #4
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end50
  %len.i136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %55 = ptrtoint ptr %len.i136 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.not.i137 = icmp eq i32 %56, 2
  br i1 %cmp.not.i137, label %if.end.i, label %sw.bb60.cleanup.sink.split.i_crit_edge

sw.bb60.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.bb60
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp1.not.i = icmp eq i8 %60, 0
  br i1 %cmp1.not.i, label %lor.lhs.false.i139, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

lor.lhs.false.i139:                               ; preds = %if.end.i
  %num_nfcee.i = getelementptr inbounds %struct.nci_nfcee_discover_rsp, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %num_nfcee.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_nfcee.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp4.i = icmp eq i8 %62, 0
  br i1 %cmp4.i, label %lor.lhs.false.i139.if.then6.i_crit_edge, label %lor.lhs.false.i139.sw.epilog_crit_edge

lor.lhs.false.i139.sw.epilog_crit_edge:           ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false.i139.if.then6.i_crit_edge:          ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i139.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %conv8.i = zext i8 %60 to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %sw.bb60.cleanup.sink.split.i_crit_edge
  %conv8.sink.i = phi i32 [ %conv8.i, %if.then6.i ], [ 194, %sw.bb60.cleanup.sink.split.i_crit_edge ]
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv8.sink.i) #4
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end50
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_nfcee_mode_set_rsp_packet.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rsp_packet, %if.then.i142)) #4
          to label %nci_nfcee_mode_set_rsp_packet.exit [label %if.then.i142], !srcloc !114

if.then.i142:                                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i141 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_nfcee_mode_set_rsp_packet.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.50, i32 noundef %conv.i141) #4
  br label %nci_nfcee_mode_set_rsp_packet.exit

nci_nfcee_mode_set_rsp_packet.exit:               ; preds = %if.then.i142, %sw.bb61
  %conv3.i143 = zext i8 %66 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv3.i143) #4
  br label %sw.epilog

do.end64:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %conv32) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end64, %nci_nfcee_mode_set_rsp_packet.exit, %cleanup.sink.split.i, %lor.lhs.false.i139.sw.epilog_crit_edge, %if.then8.i, %lor.lhs.false.i.sw.epilog_crit_edge, %if.then5.i, %do.end.i128.sw.epilog_crit_edge, %sw.bb57, %nci_rf_disc_map_rsp_packet.exit, %sw.bb55, %sw.bb54, %nci_core_set_config_rsp_packet.exit, %sw.bb52, %if.end30.i, %do.end.i.sw.epilog_crit_edge
  %call68 = tail call i32 @nci_core_rsp_packet(ptr noundef %ndev, i16 noundef zeroext %or, ptr noundef %skb) #4
  br label %end

end:                                              ; preds = %sw.epilog, %do.end45, %if.then38.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  %cmd_cnt = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_cnt, i32 noundef 4) #4
  %67 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %cmd_cnt, align 4
  %cmd_q = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 19
  %68 = ptrtoint ptr %cmd_q to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd_q, align 4
  %cmp.i.not = icmp eq ptr %69, %cmd_q
  br i1 %cmp.i.not, label %end.if.end73_crit_edge, label %if.then71

end.if.end73_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then71:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_wq = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 13
  %70 = ptrtoint ptr %cmd_wq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmd_wq, align 4
  %cmd_work = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %cmd_work) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %end.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_rsp_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_core_init_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nci_ver = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 31
  %0 = ptrtoint ptr %nci_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nci_ver, align 4
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet_v1.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv.i = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet_v1.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.39, i32 noundef %conv.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i, label %if.end8.i, label %do.end.i.exit_crit_edge

do.end.i.exit_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %nfcc_features.i = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %nfcc_features.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %nfcc_features.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %nfcc_features9.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 32
  %12 = ptrtoint ptr %nfcc_features9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nfcc_features9.i, align 4
  %num_supported_rf_interfaces.i = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %num_supported_rf_interfaces.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_supported_rf_interfaces.i, align 1
  %num_supported_rf_interfaces10.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 33
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 4) #4
  %16 = ptrtoint ptr %num_supported_rf_interfaces10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_supported_rf_interfaces10.i, align 4
  %supported_rf_interfaces.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 34
  %supported_rf_interfaces18.i = getelementptr inbounds %struct.nci_core_init_rsp_1, ptr %4, i32 0, i32 3
  %conv21.i = zext i8 %15 to i32
  %17 = call ptr @memcpy(ptr %supported_rf_interfaces.i, ptr %supported_rf_interfaces18.i, i32 %conv21.i)
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 6
  %20 = ptrtoint ptr %num_supported_rf_interfaces.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_supported_rf_interfaces.i, align 1
  %conv24.i = zext i8 %21 to i32
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i, i32 %conv24.i
  %22 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr25.i, align 1
  %max_logical_connections26.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 35
  %24 = ptrtoint ptr %max_logical_connections26.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %max_logical_connections26.i, align 1
  %max_routing_table_size.i = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %add.ptr25.i, i32 0, i32 1
  %25 = ptrtoint ptr %max_routing_table_size.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %max_routing_table_size.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #4
  %max_routing_table_size27.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 36
  %28 = ptrtoint ptr %max_routing_table_size27.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %max_routing_table_size27.i, align 2
  %max_ctrl_pkt_payload_len.i = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %add.ptr25.i, i32 0, i32 2
  %29 = ptrtoint ptr %max_ctrl_pkt_payload_len.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_ctrl_pkt_payload_len.i, align 1
  %max_ctrl_pkt_payload_len28.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 37
  %31 = ptrtoint ptr %max_ctrl_pkt_payload_len28.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %max_ctrl_pkt_payload_len28.i, align 4
  %max_size_for_large_params.i = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %add.ptr25.i, i32 0, i32 3
  %32 = ptrtoint ptr %max_size_for_large_params.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %max_size_for_large_params.i, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #4
  %max_size_for_large_params29.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 38
  %35 = ptrtoint ptr %max_size_for_large_params29.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %max_size_for_large_params29.i, align 2
  %manufact_id.i = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %add.ptr25.i, i32 0, i32 4
  %36 = ptrtoint ptr %manufact_id.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %manufact_id.i, align 1
  %manufact_id30.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 39
  %38 = ptrtoint ptr %manufact_id30.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %manufact_id30.i, align 4
  %manufact_specific_info.i = getelementptr inbounds %struct.nci_core_init_rsp_2, ptr %add.ptr25.i, i32 0, i32 5
  %39 = ptrtoint ptr %manufact_specific_info.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %manufact_specific_info.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %manufact_specific_info31.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 40
  %42 = ptrtoint ptr %manufact_specific_info31.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %manufact_specific_info31.i, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %supported_rf_interfaces.i256 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet_v2.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then.i258)) #4
          to label %do.end.i260 [label %if.then.i258], !srcloc !114

if.then.i258:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %4, align 1
  %conv.i257 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet_v2.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %conv.i257) #4
  br label %do.end.i260

do.end.i260:                                      ; preds = %if.then.i258, %if.else
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.not.i259 = icmp eq i8 %46, 0
  br i1 %cmp.not.i259, label %if.end8.i265, label %do.end.i260.exit_crit_edge

do.end.i260.exit_crit_edge:                       ; preds = %do.end.i260
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end8.i265:                                     ; preds = %do.end.i260
  %nfcc_features.i261 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 1
  %47 = ptrtoint ptr %nfcc_features.i261 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %nfcc_features.i261, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %nfcc_features9.i262 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 32
  %50 = ptrtoint ptr %nfcc_features9.i262 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %nfcc_features9.i262, align 4
  %num_supported_rf_interfaces.i263 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 8
  %51 = ptrtoint ptr %num_supported_rf_interfaces.i263 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_supported_rf_interfaces.i263, align 1
  %num_supported_rf_interfaces10.i264 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 33
  %53 = tail call i8 @llvm.umin.i8(i8 %52, i8 4) #4
  %54 = ptrtoint ptr %num_supported_rf_interfaces10.i264 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %num_supported_rf_interfaces10.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp2155.not.i = icmp eq i8 %53, 0
  br i1 %cmp2155.not.i, label %if.end8.i265.while.end.i_crit_edge, label %while.body.i

if.end8.i265.while.end.i_crit_edge:               ; preds = %if.end8.i265
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %if.end8.i265
  %55 = ptrtoint ptr %supported_rf_interfaces.i256 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %supported_rf_interfaces.i256, align 1
  %arrayidx.i = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 0
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %exitcond.not.i = icmp eq i8 %53, 1
  br i1 %exitcond.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.1

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %incdec.ptr24.i = getelementptr i8, ptr %supported_rf_interfaces.i256, i32 2
  %incdec.ptr.i = getelementptr %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 1, i32 1
  %58 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr.i, align 1
  %conv25.i = zext i8 %59 to i32
  %add.ptr.i266 = getelementptr i8, ptr %incdec.ptr24.i, i32 %conv25.i
  %60 = ptrtoint ptr %add.ptr.i266 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i266, align 1
  %arrayidx.i.1 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 1
  %62 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %exitcond.not.i.1 = icmp eq i8 %53, 2
  br i1 %exitcond.not.i.1, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %incdec.ptr24.i.1 = getelementptr i8, ptr %add.ptr.i266, i32 2
  %incdec.ptr.i.1 = getelementptr i8, ptr %add.ptr.i266, i32 1
  %63 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv25.i.1 = zext i8 %64 to i32
  %add.ptr.i266.1 = getelementptr i8, ptr %incdec.ptr24.i.1, i32 %conv25.i.1
  %65 = ptrtoint ptr %add.ptr.i266.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i266.1, align 1
  %arrayidx.i.2 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 2
  %67 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %exitcond.not.i.2 = icmp eq i8 %53, 3
  br i1 %exitcond.not.i.2, label %while.body.i.2.while.end.i_crit_edge, label %while.body.i.3

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr24.i.2 = getelementptr i8, ptr %add.ptr.i266.1, i32 2
  %incdec.ptr.i.2 = getelementptr i8, ptr %add.ptr.i266.1, i32 1
  %68 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv25.i.2 = zext i8 %69 to i32
  %add.ptr.i266.2 = getelementptr i8, ptr %incdec.ptr24.i.2, i32 %conv25.i.2
  %70 = ptrtoint ptr %add.ptr.i266.2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i266.2, align 1
  %arrayidx.i.3 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 3
  %72 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx.i.3, align 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.3, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end8.i265.while.end.i_crit_edge
  %max_logical_connections.i = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 2
  %73 = ptrtoint ptr %max_logical_connections.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %max_logical_connections.i, align 1
  %max_logical_connections26.i267 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 35
  %75 = ptrtoint ptr %max_logical_connections26.i267 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %max_logical_connections26.i267, align 1
  %max_routing_table_size.i268 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 3
  %76 = ptrtoint ptr %max_routing_table_size.i268 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %max_routing_table_size.i268, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #4
  %max_routing_table_size27.i269 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 36
  %79 = ptrtoint ptr %max_routing_table_size27.i269 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %max_routing_table_size27.i269, align 2
  %max_ctrl_pkt_payload_len.i270 = getelementptr inbounds %struct.nci_core_init_rsp_nci_ver2, ptr %4, i32 0, i32 4
  %80 = ptrtoint ptr %max_ctrl_pkt_payload_len.i270 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %max_ctrl_pkt_payload_len.i270, align 1
  %max_ctrl_pkt_payload_len28.i271 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 37
  %82 = ptrtoint ptr %max_ctrl_pkt_payload_len28.i271 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %max_ctrl_pkt_payload_len28.i271, align 4
  %max_size_for_large_params.i272 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 38
  %83 = ptrtoint ptr %max_size_for_large_params.i272 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 15, ptr %max_size_for_large_params.i272, align 2
  br label %do.body

do.body:                                          ; preds = %while.end.i, %if.end8.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then10)) #4
          to label %do.body12 [label %if.then10], !srcloc !114

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %nfcc_features = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 32
  %84 = ptrtoint ptr %nfcc_features to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nfcc_features, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %85) #4
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then24)) #4
          to label %do.body29 [label %if.then24], !srcloc !114

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %num_supported_rf_interfaces = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 33
  %86 = ptrtoint ptr %num_supported_rf_interfaces to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_supported_rf_interfaces, align 4
  %conv25 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %conv25) #4
  br label %do.body29

do.body29:                                        ; preds = %if.then24, %do.body12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then41)) #4
          to label %do.body46 [label %if.then41], !srcloc !114

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %supported_rf_interfaces = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 34
  %88 = ptrtoint ptr %supported_rf_interfaces to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %supported_rf_interfaces, align 1
  %conv42 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14, i32 noundef %conv42) #4
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then58)) #4
          to label %do.body65 [label %if.then58], !srcloc !114

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx60 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 1
  %90 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, i32 noundef %conv61) #4
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then77)) #4
          to label %do.body84 [label %if.then77], !srcloc !114

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx79 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 2
  %92 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14, i32 noundef %conv80) #4
  br label %do.body84

do.body84:                                        ; preds = %if.then77, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then96)) #4
          to label %do.body103 [label %if.then96], !srcloc !114

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx98 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 34, i32 3
  %94 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.14, i32 noundef %conv99) #4
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then115)) #4
          to label %do.body120 [label %if.then115], !srcloc !114

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  %max_logical_connections = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 35
  %96 = ptrtoint ptr %max_logical_connections to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %max_logical_connections, align 1
  %conv116 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14, i32 noundef %conv116) #4
  br label %do.body120

do.body120:                                       ; preds = %if.then115, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then132)) #4
          to label %do.body137 [label %if.then132], !srcloc !114

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  %max_routing_table_size = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 36
  %98 = ptrtoint ptr %max_routing_table_size to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %max_routing_table_size, align 2
  %conv133 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.14, i32 noundef %conv133) #4
  br label %do.body137

do.body137:                                       ; preds = %if.then132, %do.body120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then149)) #4
          to label %do.body154 [label %if.then149], !srcloc !114

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  %max_ctrl_pkt_payload_len = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 37
  %100 = ptrtoint ptr %max_ctrl_pkt_payload_len to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %max_ctrl_pkt_payload_len, align 4
  %conv150 = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, i32 noundef %conv150) #4
  br label %do.body154

do.body154:                                       ; preds = %if.then149, %do.body137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then166)) #4
          to label %do.body171 [label %if.then166], !srcloc !114

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #6
  %max_size_for_large_params = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 38
  %102 = ptrtoint ptr %max_size_for_large_params to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %max_size_for_large_params, align 2
  %conv167 = zext i16 %103 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.14, i32 noundef %conv167) #4
  br label %do.body171

do.body171:                                       ; preds = %if.then166, %do.body154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then183)) #4
          to label %do.body188 [label %if.then183], !srcloc !114

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  %manufact_id = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 39
  %104 = ptrtoint ptr %manufact_id to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %manufact_id, align 4
  %conv184 = zext i8 %105 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.14, i32 noundef %conv184) #4
  br label %do.body188

do.body188:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_init_rsp_packet, %if.then200)) #4
          to label %exit [label %if.then200], !srcloc !114

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #6
  %manufact_specific_info = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 40
  %106 = ptrtoint ptr %manufact_specific_info to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %manufact_specific_info, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14, i32 noundef %107) #4
  br label %exit

exit:                                             ; preds = %if.then200, %do.body188, %do.end.i260.exit_crit_edge, %do.end.i.exit_crit_edge
  %status.0276 = phi i8 [ 0, %if.then200 ], [ %8, %do.end.i.exit_crit_edge ], [ %46, %do.end.i260.exit_crit_edge ], [ 0, %do.body188 ]
  %conv2 = zext i8 %status.0276 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_core_conn_create_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_conn_create_rsp_packet.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_conn_create_rsp_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_conn_create_rsp_packet.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.44, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %3, label %do.end.exit_crit_edge [
    i8 0, label %if.then5
    i8 1, label %do.end.if.then43_crit_edge
  ]

do.end.if.then43_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then5:                                         ; preds = %do.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then5.exit_crit_edge, label %if.end10

if.then5.exit_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end10:                                         ; preds = %if.then5
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %dev12 = getelementptr inbounds %struct.nfc_dev, ptr %10, i32 0, i32 5
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev12, i32 noundef 2, i32 noundef 3520) #4
  %dest_params = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dest_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i78, ptr %dest_params, align 4
  %tobool15.not = icmp eq ptr %call.i78, null
  br i1 %tobool15.not, label %if.end10.if.then43_crit_edge, label %if.end17

if.end10.if.then43_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end17:                                         ; preds = %if.end10
  %cur_dest_type = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 42
  %12 = ptrtoint ptr %cur_dest_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_dest_type, align 2
  %dest_type = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %dest_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %dest_type, align 4
  %cur_params = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 41
  %15 = ptrtoint ptr %cur_params to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cur_params, align 4
  %17 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %call.i78, align 1
  %protocol = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 41, i32 1
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol, align 1
  %protocol22 = getelementptr inbounds %struct.dest_spec_params, ptr %call.i78, i32 0, i32 1
  %20 = ptrtoint ptr %protocol22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %protocol22, align 1
  %conn_id = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %6, i32 0, i32 3
  %21 = ptrtoint ptr %conn_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %conn_id, align 1
  %conn_id23 = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %conn_id23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %conn_id23, align 1
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %prev.i, align 4
  %conn_info_list = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 9
  %26 = ptrtoint ptr %conn_info_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn_info_list, align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %conn_info_list, ptr noundef %27) #4
  br i1 %call.i.i79, label %if.end.i.i, label %if.end17.list_add.exit_crit_edge

if.end17.list_add.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %call.i, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %conn_info_list, ptr %prev.i, align 4
  %31 = ptrtoint ptr %conn_info_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i, ptr %conn_info_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end17.list_add.exit_crit_edge
  %32 = ptrtoint ptr %cur_params to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cur_params, align 4
  %hci_dev = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 2
  %34 = ptrtoint ptr %hci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci_dev, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %37)
  %cmp29 = icmp eq i8 %33, %37
  br i1 %cmp29, label %if.then31, label %list_add.exit.free_conn_info.thread86_crit_edge

list_add.exit.free_conn_info.thread86_crit_edge:  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_conn_info.thread86

if.then31:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conn_info33 = getelementptr inbounds %struct.nci_hci_dev, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %conn_info33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %conn_info33, align 4
  br label %free_conn_info.thread86

free_conn_info.thread86:                          ; preds = %if.then31, %list_add.exit.free_conn_info.thread86_crit_edge
  %39 = ptrtoint ptr %conn_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %conn_id, align 1
  %41 = ptrtoint ptr %conn_id23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %conn_id23, align 1
  %max_ctrl_pkt_payload_len = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %6, i32 0, i32 1
  %42 = ptrtoint ptr %max_ctrl_pkt_payload_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_ctrl_pkt_payload_len, align 1
  %max_pkt_payload_len = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %max_pkt_payload_len to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %max_pkt_payload_len, align 2
  %credits_cnt = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 5
  %credits_cnt37 = getelementptr inbounds %struct.nci_core_conn_create_rsp, ptr %6, i32 0, i32 2
  %45 = ptrtoint ptr %credits_cnt37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %credits_cnt37, align 1
  %conv38 = zext i8 %46 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %credits_cnt, i32 noundef 4) #4
  %47 = ptrtoint ptr %credits_cnt to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %conv38, ptr %credits_cnt, align 4
  br label %exit

if.then43:                                        ; preds = %if.end10.if.then43_crit_edge, %do.end.if.then43_crit_edge
  %conn_info.084 = phi ptr [ %call.i, %if.end10.if.then43_crit_edge ], [ null, %do.end.if.then43_crit_edge ]
  %48 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev, align 4
  %dev45 = getelementptr inbounds %struct.nfc_dev, ptr %49, i32 0, i32 5
  tail call void @devm_kfree(ptr noundef %dev45, ptr noundef %conn_info.084) #4
  br label %exit

exit:                                             ; preds = %if.then43, %free_conn_info.thread86, %if.then5.exit_crit_edge, %do.end.exit_crit_edge
  %status.1 = phi i8 [ 1, %if.then43 ], [ 1, %if.then5.exit_crit_edge ], [ 0, %free_conn_info.thread86 ], [ %3, %do.end.exit_crit_edge ]
  %conv47 = zext i8 %status.1 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv47) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_core_conn_close_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_conn_close_rsp_packet.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_conn_close_rsp_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_conn_close_rsp_packet.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.45, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then5:                                         ; preds = %do.end
  %cur_conn_id = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 8
  %4 = ptrtoint ptr %cur_conn_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_conn_id, align 4
  %conv6 = zext i8 %5 to i32
  %call7 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv6) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end16_crit_edge, label %if.then9

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then9:                                         ; preds = %if.then5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %call7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rf_conn_info = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 10
  %14 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rf_conn_info, align 4
  %cmp10 = icmp eq ptr %call7, %15
  br i1 %cmp10, label %if.then12, label %list_del.exit.if.end14_crit_edge

list_del.exit.if.end14_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rf_conn_info, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %list_del.exit.if.end14_crit_edge
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %18, i32 0, i32 5
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call7) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.then5.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %conv3 = zext i8 %3 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_rf_disc_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_disc_rsp_packet.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_disc_rsp_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_disc_rsp_packet.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.47, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then5, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then5:                                         ; preds = %do.end
  %state = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %state, align 4
  %rf_conn_info = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 10
  %5 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf_conn_info, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then7, label %if.then5.exit_crit_edge

if.then5.exit_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.then7:                                         ; preds = %if.then5
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then7.exit_crit_edge, label %if.end11

if.then7.exit_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end11:                                         ; preds = %if.then7
  %conn_id = getelementptr inbounds %struct.nci_conn_info, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %conn_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %conn_id, align 1
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %prev.i, align 4
  %conn_info_list = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 9
  %12 = ptrtoint ptr %conn_info_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn_info_list, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %conn_info_list, ptr noundef %13) #4
  br i1 %call.i.i29, label %if.end.i.i, label %if.end11.list_add.exit_crit_edge

if.end11.list_add.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call.i, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %conn_info_list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %conn_info_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call.i, ptr %conn_info_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end11.list_add.exit_crit_edge
  %18 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %rf_conn_info, align 4
  br label %exit

exit:                                             ; preds = %list_add.exit, %if.then7.exit_crit_edge, %if.then5.exit_crit_edge, %do.end.exit_crit_edge
  %status.0 = phi i8 [ 0, %if.then5.exit_crit_edge ], [ 0, %list_add.exit ], [ %3, %do.end.exit_crit_edge ], [ 1, %if.then7.exit_crit_edge ]
  %conv16 = zext i8 %status.0 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv16) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_rsp_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_clear_target_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/rsp.c", i32 352, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nci_rsp_packet.__UNIQUE_ID_ddebug485, !1, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/nci/rsp.c", i32 363, i32 4}
!9 = !{ptr @nci_rsp_packet._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @nci_rsp_packet._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/nfc/nci/rsp.c", i32 416, i32 3}
!13 = !{ptr @nci_rsp_packet._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nci_rsp_packet._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/nfc/nci/rsp.c", i32 33, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug457, !16, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/nfc/nci/rsp.c", i32 39, i32 4}
!22 = !{ptr @nci_core_reset_rsp_packet.__UNIQUE_ID_ddebug458, !21, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/nfc/nci/rsp.c", i32 136, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug465, !25, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/nfc/nci/rsp.c", i32 138, i32 2}
!31 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug466, !30, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!32 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/nfc/nci/rsp.c", i32 140, i32 2}
!35 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug467, !34, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/nfc/nci/rsp.c", i32 142, i32 2}
!39 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug468, !38, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!40 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/nfc/nci/rsp.c", i32 144, i32 2}
!43 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug469, !42, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!44 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/nfc/nci/rsp.c", i32 146, i32 2}
!47 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug470, !46, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/nfc/nci/rsp.c", i32 148, i32 2}
!51 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug471, !50, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!52 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/nfc/nci/rsp.c", i32 150, i32 2}
!55 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug472, !54, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!56 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/nfc/nci/rsp.c", i32 152, i32 2}
!59 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug473, !58, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!60 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/nfc/nci/rsp.c", i32 154, i32 2}
!63 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug474, !62, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!64 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/nfc/nci/rsp.c", i32 156, i32 2}
!67 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug475, !66, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!68 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/nfc/nci/rsp.c", i32 158, i32 2}
!71 = !{ptr @nci_core_init_rsp_packet.__UNIQUE_ID_ddebug476, !70, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/nfc/nci/rsp.c", i32 53, i32 2}
!75 = !{ptr @nci_core_init_rsp_packet_v1.__UNIQUE_ID_ddebug459, !74, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/nfc/nci/rsp.c", i32 94, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nci_core_init_rsp_packet_v2.__UNIQUE_ID_ddebug462, !77, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!80 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/nfc/nci/rsp.c", i32 170, i32 2}
!83 = !{ptr @nci_core_set_config_rsp_packet.__UNIQUE_ID_ddebug477, !82, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/nfc/nci/rsp.c", i32 277, i32 2}
!86 = !{ptr @nci_core_conn_create_rsp_packet.__UNIQUE_ID_ddebug483, !85, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/nfc/nci/rsp.c", i32 331, i32 2}
!89 = !{ptr @nci_core_conn_close_rsp_packet.__UNIQUE_ID_ddebug484, !88, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/nfc/nci/rsp.c", i32 180, i32 2}
!92 = !{ptr @nci_rf_disc_map_rsp_packet.__UNIQUE_ID_ddebug478, !91, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/nfc/nci/rsp.c", i32 191, i32 2}
!95 = !{ptr @nci_rf_disc_rsp_packet.__UNIQUE_ID_ddebug479, !94, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/nfc/nci/rsp.c", i32 221, i32 2}
!98 = !{ptr @nci_rf_disc_select_rsp_packet.__UNIQUE_ID_ddebug480, !97, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/nfc/nci/rsp.c", i32 233, i32 2}
!101 = !{ptr @nci_rf_deactivate_rsp_packet.__UNIQUE_ID_ddebug481, !100, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/nfc/nci/rsp.c", i32 266, i32 2}
!104 = !{ptr @nci_nfcee_mode_set_rsp_packet.__UNIQUE_ID_ddebug482, !103, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148726578, i64 2148726583, i64 2148726596, i64 2148726640, i64 2148726674, i64 2148726695}
