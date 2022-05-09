; ModuleID = '/llk/IR_all_yes/net/nfc/nci/ntf.c_pt.bc'
source_filename = "../net/nfc/nci/ntf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.nci_core_reset_ntf = type <{ i8, i8, i8, i8, i8, i32 }>
%struct.nci_core_intf_error_ntf = type { i8, i8 }
%struct.nci_core_conn_credit_ntf = type { i8, [10 x %struct.conn_credit_entry] }
%struct.conn_credit_entry = type { i8, i8 }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.nci_rf_discover_ntf = type { i8, i8, i8, i8, %union.anon.149, i8 }
%union.anon.149 = type { %struct.rf_tech_specific_params_nfcf_poll }
%struct.rf_tech_specific_params_nfcf_poll = type { i8, i8, [18 x i8] }
%struct.nci_rf_intf_activated_ntf = type { i8, i8, i8, i8, i8, i8, i8, %union.anon.150, i8, i8, i8, i8, %union.anon.151 }
%union.anon.150 = type { %struct.rf_tech_specific_params_nfcf_poll }
%union.anon.151 = type { %struct.activation_params_poll_nfc_dep }
%struct.activation_params_poll_nfc_dep = type { i8, [62 x i8] }
%struct.nci_rf_deactivate_ntf = type { i8, i8 }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.rf_tech_specific_params_nfca_poll = type <{ i16, i8, [10 x i8], i8, i8 }>
%struct.rf_tech_specific_params_nfcb_poll = type { i8, [12 x i8] }
%struct.rf_tech_specific_params_nfcv_poll = type { i8, i8, [8 x i8] }

@nci_ntf_packet.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nci\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nci_ntf_packet\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/nfc/nci/ntf.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NCI RX: MT=ntf, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nci: %s: NCI RX: MT=ntf, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@nci_ntf_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nci: %s: unsupported ntf opcode 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@nci_ntf_packet._entry_ptr = internal global ptr @nci_ntf_packet._entry, section ".printk_index", align 4
@nci_ntf_packet._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013nci: %s: unknown ntf opcode 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@nci_ntf_packet._entry_ptr.8 = internal global ptr @nci_ntf_packet._entry.6, section ".printk_index", align 4
@nci_core_reset_ntf_packet.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nci_core_reset_ntf_packet\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nci_ver 0x%x, config_status 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nci: %s: nci_ver 0x%x, config_status 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nci_core_conn_credits_ntf_packet\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"num_entries %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nci: %s: num_entries %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"entry[%d]: conn_id %d, credits %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nci: %s: entry[%d]: conn_id %d, credits %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nci_core_generic_error_ntf_packet.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nci_core_generic_error_ntf_packet\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nci: %s: status 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@nci_core_conn_intf_error_ntf_packet.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nci_core_conn_intf_error_ntf_packet\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"status 0x%x, conn_id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nci: %s: status 0x%x, conn_id %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci_rf_discover_ntf_packet\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rf_discovery_id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nci: %s: rf_discovery_id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rf_protocol 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci: %s: rf_protocol 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rf_tech_and_mode 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nci: %s: rf_tech_and_mode 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.30, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rf_tech_specific_params_len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nci: %s: rf_tech_specific_params_len %d\0A\00", [55 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nci: %s: unsupported rf_tech_and_mode 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@nci_rf_discover_ntf_packet._entry_ptr = internal global ptr @nci_rf_discover_ntf_packet._entry, section ".printk_index", align 4
@nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.33, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntf_type %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nci: %s: ntf_type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nci_extract_rf_params_nfca_passive_poll\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sens_res 0x%x, nfcid1_len %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nci: %s: sens_res 0x%x, nfcid1_len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sel_res_len %d, sel_res 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nci: %s: sel_res_len %d, sel_res 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nci_extract_rf_params_nfcb_passive_poll\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sensb_res_len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nci: %s: sensb_res_len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nci_extract_rf_params_nfcf_passive_poll\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bit_rate %d, sensf_res_len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nci: %s: bit_rate %d, sensf_res_len %d\0A\00", [56 x i8] zeroinitializer }, align 32
@nci_add_new_target.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nci_add_new_target\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"not enough room, ignoring new target...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nci: %s: not enough room, ignoring new target...\0A\00", [46 x i8] zeroinitializer }, align 32
@nci_add_new_target.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"logical idx %d, n_targets %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nci: %s: logical idx %d, n_targets %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nci_add_new_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013nci: %s: the target found does not have the desired protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nci_add_new_protocol\00", [43 x i8] zeroinitializer }, align 32
@nci_add_new_protocol._entry_ptr = internal global ptr @nci_add_new_protocol._entry, section ".printk_index", align 4
@nci_add_new_protocol._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.52, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nci_add_new_protocol._entry_ptr.54 = internal global ptr @nci_add_new_protocol._entry.53, section ".printk_index", align 4
@nci_add_new_protocol.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"protocol 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nci: %s: protocol 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.24, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nci_rf_intf_activated_ntf_packet\00", [63 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rf_interface 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nci: %s: rf_interface 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.26, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.60, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"activation_rf_tech_and_mode 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nci: %s: activation_rf_tech_and_mode 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.62, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max_data_pkt_payload_size 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nci: %s: max_data_pkt_payload_size 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.64, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"initial_num_credits 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nci: %s: initial_num_credits 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.30, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nci_rf_intf_activated_ntf_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013nci: %s: unsupported activation_rf_tech_and_mode 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet._entry_ptr = internal global ptr @nci_rf_intf_activated_ntf_packet._entry, section ".printk_index", align 4
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.67, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"data_exch_rf_tech_and_mode 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nci: %s: data_exch_rf_tech_and_mode 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.69, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"data_exch_tx_bit_rate 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nci: %s: data_exch_tx_bit_rate 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.71, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"data_exch_rx_bit_rate 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nci: %s: data_exch_rx_bit_rate 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.73, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"activation_params_len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nci: %s: activation_params_len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.57, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nci: %s: unsupported rf_interface 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet._entry_ptr.77 = internal global ptr @nci_rf_intf_activated_ntf_packet._entry.75, section ".printk_index", align 4
@nci_rf_intf_activated_ntf_packet._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.57, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nci: %s: unable to store general bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet._entry_ptr.80 = internal global ptr @nci_rf_intf_activated_ntf_packet._entry.78, section ".printk_index", align 4
@nci_rf_intf_activated_ntf_packet._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.57, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nci: %s: error when signaling tm activation\0A\00", [49 x i8] zeroinitializer }, align 32
@nci_rf_intf_activated_ntf_packet._entry_ptr.83 = internal global ptr @nci_rf_intf_activated_ntf_packet._entry.81, section ".printk_index", align 4
@nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nci_extract_activation_params_iso_dep\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rats_res_len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nci: %s: rats_res_len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.87, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"attrib_res_len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nci: %s: attrib_res_len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_iso_dep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.84, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_iso_dep._entry_ptr = internal global ptr @nci_extract_activation_params_iso_dep._entry, section ".printk_index", align 4
@nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nci_extract_activation_params_nfc_dep\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atr_res_len %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nci: %s: atr_res_len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.92, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atr_req_len %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nci: %s: atr_req_len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_nfc_dep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.89, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nci_extract_activation_params_nfc_dep._entry_ptr = internal global ptr @nci_extract_activation_params_nfc_dep._entry, section ".printk_index", align 4
@nci_store_general_bytes_nfc_dep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.94, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nci_store_general_bytes_nfc_dep\00", [32 x i8] zeroinitializer }, align 32
@nci_store_general_bytes_nfc_dep._entry_ptr = internal global ptr @nci_store_general_bytes_nfc_dep._entry, section ".printk_index", align 4
@nci_target_auto_activated.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.49, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nci_target_auto_activated\00", [38 x i8] zeroinitializer }, align 32
@nci_rf_deactivate_ntf_packet.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nci_rf_deactivate_ntf_packet\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"entry, type 0x%x, reason 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nci: %s: entry, type 0x%x, reason 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 6, i64 7, i64 8, i64 259, i64 261, i64 262, i64 265, i64 512]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 6, i64 128, i64 130]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 128, i64 130]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 128, i64 130]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 756, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 767, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 811, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 37, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 54, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 64, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 87, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 103, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 338, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 339, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 340, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 341, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 367, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 375, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 120, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 131, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 145, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 161, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 300, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 313, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 233, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 270, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 276, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 544, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 545, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 547, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 549, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 551, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 596, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 608, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 610, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 611, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 612, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 631, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 655, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 685, i32 5 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 400, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 410, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 418, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 439, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 449, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 455, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 520, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 480, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private constant [21 x i8] c"../net/nfc/nci/ntf.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 696, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @nci_add_new_protocol._entry, ptr @nci_add_new_protocol._entry.53, ptr @nci_add_new_protocol._entry_ptr, ptr @nci_add_new_protocol._entry_ptr.54, ptr @nci_extract_activation_params_iso_dep._entry, ptr @nci_extract_activation_params_iso_dep._entry_ptr, ptr @nci_extract_activation_params_nfc_dep._entry, ptr @nci_extract_activation_params_nfc_dep._entry_ptr, ptr @nci_ntf_packet._entry, ptr @nci_ntf_packet._entry.6, ptr @nci_ntf_packet._entry_ptr, ptr @nci_ntf_packet._entry_ptr.8, ptr @nci_rf_discover_ntf_packet._entry, ptr @nci_rf_discover_ntf_packet._entry_ptr, ptr @nci_rf_intf_activated_ntf_packet._entry, ptr @nci_rf_intf_activated_ntf_packet._entry.75, ptr @nci_rf_intf_activated_ntf_packet._entry.78, ptr @nci_rf_intf_activated_ntf_packet._entry.81, ptr @nci_rf_intf_activated_ntf_packet._entry_ptr, ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.77, ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.80, ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.83, ptr @nci_store_general_bytes_nfc_dep._entry, ptr @nci_store_general_bytes_nfc_dep._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_ntf_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_ntf_packet._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rf_discover_ntf_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_add_new_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_add_new_protocol._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rf_intf_activated_ntf_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rf_intf_activated_ntf_packet._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rf_intf_activated_ntf_packet._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_rf_intf_activated_ntf_packet._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_extract_activation_params_iso_dep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_extract_activation_params_nfc_dep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_store_general_bytes_nfc_dep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nci_clear_target_list(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targets = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 29
  %0 = call ptr @memset(ptr %targets, i32 0, i32 764)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nci_ntf_packet(ptr noundef %ndev, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_ntf_packet.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_ntf_packet, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  %conv17 = zext i8 %13 to i32
  %conv22 = zext i8 %4 to i32
  %conv26 = zext i8 %7 to i32
  %arrayidx28 = getelementptr i8, ptr %9, i32 2
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_ntf_packet.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv17, i32 noundef %conv22, i32 noundef %conv26, i32 noundef %conv29) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call30 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #7
  %conv31 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp = icmp eq i8 %4, 15
  br i1 %cmp, label %if.then37, label %if.end49

if.then37:                                        ; preds = %do.end
  %call38 = tail call i32 @nci_prop_ntf_packet(ptr noundef %ndev, i16 noundef zeroext %or, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -524
  br i1 %cmp39, label %do.end44, label %if.then37.end_crit_edge

if.then37.end_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %conv31) #10
  br label %end

if.end49:                                         ; preds = %do.end
  %16 = zext i32 %conv31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv31, label %do.end60 [
    i32 0, label %sw.bb
    i32 6, label %sw.bb51
    i32 7, label %sw.bb52
    i32 8, label %sw.bb53
    i32 259, label %sw.bb54
    i32 261, label %sw.bb55
    i32 262, label %sw.bb56
    i32 512, label %sw.bb57
    i32 265, label %if.end49.sw.epilog_crit_edge
  ]

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end49
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %nci_ver.i = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nci_ver.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nci_ver.i, align 1
  %nci_ver1.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 31
  %21 = ptrtoint ptr %nci_ver1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %nci_ver1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_reset_ntf_packet.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_ntf_packet, %if.then.i)) #7
          to label %nci_core_reset_ntf_packet.exit [label %if.then.i], !srcloc !204

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %nci_ver.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nci_ver.i, align 1
  %conv.i = zext i8 %23 to i32
  %config_status.i = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %config_status.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config_status.i, align 1
  %conv5.i = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_reset_ntf_packet.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef %conv5.i) #7
  br label %nci_core_reset_ntf_packet.exit

nci_core_reset_ntf_packet.exit:                   ; preds = %if.then.i, %sw.bb
  %manufact_id.i = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %manufact_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %manufact_id.i, align 1
  %manufact_id6.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 39
  %28 = ptrtoint ptr %manufact_id6.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %manufact_id6.i, align 4
  %manufact_specific_info.i = getelementptr inbounds %struct.nci_core_reset_ntf, ptr %18, i32 0, i32 5
  %29 = ptrtoint ptr %manufact_specific_info.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %manufact_specific_info.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %manufact_specific_info7.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 40
  %32 = ptrtoint ptr %manufact_specific_info7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %manufact_specific_info7.i, align 4
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef 0) #7
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nci_core_conn_credits_ntf_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end49
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_generic_error_ntf_packet.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_ntf_packet, %if.then.i98)) #7
          to label %do.end.i [label %if.then.i98], !srcloc !204

if.then.i98:                                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i97 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_generic_error_ntf_packet.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv.i97) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i98, %sw.bb52
  %state.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i = icmp eq i32 %38, 3
  br i1 %cmp.i, label %if.then5.i, label %do.end.i.sw.epilog_crit_edge

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %36 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv6.i) #7
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end49
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %conn_id.i = getelementptr inbounds %struct.nci_core_intf_error_ntf, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %conn_id.i, align 1
  %43 = and i8 %42, 15
  store i8 %43, ptr %conn_id.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_conn_intf_error_ntf_packet.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_ntf_packet, %if.then.i101)) #7
          to label %do.end.i102 [label %if.then.i101], !srcloc !204

if.then.i101:                                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %40, align 1
  %conv5.i100 = zext i8 %45 to i32
  %46 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %conn_id.i, align 1
  %conv7.i = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_conn_intf_error_ntf_packet.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %conv5.i100, i32 noundef %conv7.i) #7
  br label %do.end.i102

do.end.i102:                                      ; preds = %if.then.i101, %sw.bb53
  %flags.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 6
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool9.not.i = icmp eq i32 %50, 0
  br i1 %tobool9.not.i, label %do.end.i102.sw.epilog_crit_edge, label %if.then10.i

do.end.i102.sw.epilog_crit_edge:                  ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then10.i:                                      ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %conn_id.i, align 1
  tail call void @nci_data_exchange_complete(ptr noundef %ndev, ptr noundef null, i8 noundef zeroext %52, i32 noundef -5) #7
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nci_rf_discover_ntf_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nci_rf_intf_activated_ntf_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nci_rf_deactivate_ntf_packet(ptr noundef %ndev, ptr noundef %skb)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %hci_dev.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 2
  %57 = ptrtoint ptr %hci_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci_dev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %58, align 4
  %60 = load i8, ptr %54, align 1
  %cur_params.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 41
  %61 = ptrtoint ptr %cur_params.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %cur_params.i, align 4
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef 0) #7
  br label %sw.epilog

do.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %conv31) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end60, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %if.then10.i, %do.end.i102.sw.epilog_crit_edge, %if.then5.i, %do.end.i.sw.epilog_crit_edge, %sw.bb51, %nci_core_reset_ntf_packet.exit, %if.end49.sw.epilog_crit_edge
  %call64 = tail call i32 @nci_core_ntf_packet(ptr noundef %ndev, i16 noundef zeroext %or, ptr noundef %skb) #7
  br label %end

end:                                              ; preds = %sw.epilog, %do.end44, %if.then37.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_ntf_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_core_conn_credits_ntf_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_conn_credits_ntf_packet, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp = icmp ugt i8 %5, 10
  br i1 %cmp, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %1, align 1
  br label %for.body.preheader

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1188.not = icmp eq i8 %5, 0
  br i1 %cmp1188.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body.preheader_crit_edge

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end8.for.body.preheader_crit_edge, %if.end8.thread
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %for.body.preheader
  %i.089 = phi i32 [ %inc, %if.end49.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.nci_core_conn_credit_ntf, ptr %1, i32 0, i32 1, i32 %i.089
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 15
  store i8 %9, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_core_conn_credits_ntf_packet, %if.then31)) #7
          to label %do.end41 [label %if.then31], !srcloc !204

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv35 = zext i8 %11 to i32
  %credits = getelementptr %struct.nci_core_conn_credit_ntf, ptr %1, i32 0, i32 1, i32 %i.089, i32 1
  %12 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %credits, align 1
  %conv38 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, i32 noundef %i.089, i32 noundef %conv35, i32 noundef %conv38) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then31, %for.body
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv45 = zext i8 %15 to i32
  %call46 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %ndev, i32 noundef %conv45) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end41.cleanup_crit_edge, label %if.end49

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %do.end41
  %credits52 = getelementptr %struct.nci_core_conn_credit_ntf, ptr %1, i32 0, i32 1, i32 %i.089, i32 1
  %16 = ptrtoint ptr %credits52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %credits52, align 1
  %conv53 = zext i8 %17 to i32
  %credits_cnt = getelementptr inbounds %struct.nci_conn_info, ptr %call46, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %credits_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %credits_cnt, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %credits_cnt, ptr %credits_cnt, i32 %conv53, ptr elementtype(i32) %credits_cnt) #7, !srcloc !205
  %inc = add nuw nsw i32 %i.089, 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %conv10 = zext i8 %20 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %if.end49.for.body_crit_edge, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %if.end8.for.end_crit_edge
  %tx_q = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21
  %21 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_q, align 4
  %cmp.i.not = icmp eq ptr %22, %tx_q
  br i1 %cmp.i.not, label %for.end.cleanup_crit_edge, label %if.then56

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_wq = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 17
  %23 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %tx_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %for.end.cleanup_crit_edge, %do.end41.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_rf_discover_ntf_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  %ntf = alloca %struct.nci_rf_discover_ntf, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %ntf) #7
  %0 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4
  %4 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4, i32 0, i32 2, i32 11
  %8 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4, i32 0, i32 2, i32 12
  %9 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 5
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = call ptr @memset(ptr %ntf, i32 255, i32 25)
  %11 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data1, align 4
  %incdec.ptr = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = ptrtoint ptr %ntf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ntf, align 1
  %incdec.ptr2 = getelementptr i8, ptr %12, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %0, align 1
  %incdec.ptr3 = getelementptr i8, ptr %12, i32 3
  %19 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr2, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %1, align 1
  %incdec.ptr4 = getelementptr i8, ptr %12, i32 4
  %22 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr3, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then)) #7
          to label %do.body8 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ntf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ntf, align 1
  %conv = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %conv) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then20)) #7
          to label %do.body26 [label %if.then20], !srcloc !204

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv22 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23, i32 noundef %conv22) #7
  br label %do.body26

do.body26:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then38)) #7
          to label %do.body44 [label %if.then38], !srcloc !204

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv40 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23, i32 noundef %conv40) #7
  br label %do.body44

do.body44:                                        ; preds = %if.then38, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then56)) #7
          to label %do.end61 [label %if.then56], !srcloc !204

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv58 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef %conv58) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body44
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not = icmp eq i8 %34, 0
  br i1 %cmp.not, label %do.end61.if.end87_crit_edge, label %if.then65

do.end61.if.end87_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then65:                                        ; preds = %do.end61
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %36, label %do.end80 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb69
    i8 2, label %sw.bb72
    i8 6, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.then65
  %38 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %incdec.ptr4, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #7
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %3, align 1
  %add.ptr.i = getelementptr i8, ptr %12, i32 6
  %incdec.ptr.i = getelementptr i8, ptr %12, i32 7
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i, align 1
  %44 = tail call i8 @llvm.umin.i8(i8 %43, i8 10) #7
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !204

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %3, align 1
  %conv10.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %5, align 1
  %conv12.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %conv10.i, i32 noundef %conv12.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %5, align 1
  %conv14.i = zext i8 %51 to i32
  %52 = call ptr @memcpy(ptr %6, ptr %incdec.ptr.i, i32 %conv14.i)
  %add.ptr17.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv14.i
  %incdec.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 1
  %53 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr17.i, align 1
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp21.not.i = icmp eq i8 %54, 0
  br i1 %cmp21.not.i, label %do.end.i.do.body26.i_crit_edge, label %if.then23.i

do.end.i.do.body26.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

if.then23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr24.i = getelementptr i8, ptr %incdec.ptr18.i, i32 1
  %56 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr18.i, align 1
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %8, align 1
  br label %do.body26.i

do.body26.i:                                      ; preds = %if.then23.i, %do.end.i.do.body26.i_crit_edge
  %data.addr.0.i = phi ptr [ %incdec.ptr24.i, %if.then23.i ], [ %incdec.ptr18.i, %do.end.i.do.body26.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then38.i)) #7
          to label %if.end87 [label %if.then38.i], !srcloc !204

if.then38.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %7, align 1
  %conv40.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %8, align 1
  %conv42.i = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %conv40.i, i32 noundef %conv42.i) #7
  br label %if.end87

sw.bb69:                                          ; preds = %if.then65
  %63 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr4, align 1
  %65 = tail call i8 @llvm.umin.i8(i8 %64, i8 12) #7
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then.i153)) #7
          to label %nci_extract_rf_params_nfcb_passive_poll.exit [label %if.then.i153], !srcloc !204

if.then.i153:                                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %3, align 1
  %conv10.i152 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %conv10.i152) #7
  br label %nci_extract_rf_params_nfcb_passive_poll.exit

nci_extract_rf_params_nfcb_passive_poll.exit:     ; preds = %if.then.i153, %sw.bb69
  %incdec.ptr.i154 = getelementptr i8, ptr %12, i32 5
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %3, align 1
  %conv12.i155 = zext i8 %70 to i32
  %71 = call ptr @memcpy(ptr %4, ptr %incdec.ptr.i154, i32 %conv12.i155)
  %add.ptr.i156 = getelementptr i8, ptr %incdec.ptr.i154, i32 %conv12.i155
  br label %if.end87

sw.bb72:                                          ; preds = %if.then65
  %incdec.ptr.i158 = getelementptr i8, ptr %12, i32 5
  %72 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr4, align 1
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %3, align 1
  %75 = ptrtoint ptr %incdec.ptr.i158 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr.i158, align 1
  %77 = tail call i8 @llvm.umin.i8(i8 %76, i8 18) #7
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then.i159)) #7
          to label %nci_extract_rf_params_nfcf_passive_poll.exit [label %if.then.i159], !srcloc !204

if.then.i159:                                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %3, align 1
  %conv11.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %4, align 1
  %conv13.i = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv11.i, i32 noundef %conv13.i) #7
  br label %nci_extract_rf_params_nfcf_passive_poll.exit

nci_extract_rf_params_nfcf_passive_poll.exit:     ; preds = %if.then.i159, %sw.bb72
  %incdec.ptr1.i = getelementptr i8, ptr %12, i32 6
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %4, align 1
  %conv15.i = zext i8 %84 to i32
  %85 = call ptr @memcpy(ptr %5, ptr %incdec.ptr1.i, i32 %conv15.i)
  %add.ptr.i160 = getelementptr i8, ptr %incdec.ptr1.i, i32 %conv15.i
  br label %if.end87

sw.bb75:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i162 = getelementptr i8, ptr %12, i32 5
  %incdec.ptr1.i163 = getelementptr i8, ptr %12, i32 6
  %86 = ptrtoint ptr %incdec.ptr.i162 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr.i162, align 1
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %4, align 1
  %89 = ptrtoint ptr %incdec.ptr1.i163 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %incdec.ptr1.i163, align 1
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %5, align 1
  %add.ptr.i164 = getelementptr i8, ptr %12, i32 14
  br label %if.end87

do.end80:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %conv67 = zext i8 %36 to i32
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.23, i32 noundef %conv67) #10
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %2, align 1
  %conv86 = zext i8 %93 to i32
  %add.ptr = getelementptr i8, ptr %incdec.ptr4, i32 %conv86
  br label %if.end87

if.end87:                                         ; preds = %do.end80, %sw.bb75, %nci_extract_rf_params_nfcf_passive_poll.exit, %nci_extract_rf_params_nfcb_passive_poll.exit, %if.then38.i, %do.body26.i, %do.end61.if.end87_crit_edge
  %add_target.0.off0 = phi i1 [ false, %do.end80 ], [ true, %sw.bb75 ], [ true, %nci_extract_rf_params_nfcf_passive_poll.exit ], [ true, %nci_extract_rf_params_nfcb_passive_poll.exit ], [ true, %do.end61.if.end87_crit_edge ], [ true, %do.body26.i ], [ true, %if.then38.i ]
  %data.0 = phi ptr [ %add.ptr, %do.end80 ], [ %add.ptr.i164, %sw.bb75 ], [ %add.ptr.i160, %nci_extract_rf_params_nfcf_passive_poll.exit ], [ %add.ptr.i156, %nci_extract_rf_params_nfcb_passive_poll.exit ], [ %incdec.ptr4, %do.end61.if.end87_crit_edge ], [ %data.addr.0.i, %do.body26.i ], [ %data.addr.0.i, %if.then38.i ]
  %94 = ptrtoint ptr %data.0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data.0, align 1
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_discover_ntf_packet, %if.then101)) #7
          to label %do.end106 [label %if.then101], !srcloc !204

if.then101:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %9, align 1
  %conv103 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, i32 noundef %conv103) #7
  br label %do.end106

do.end106:                                        ; preds = %if.then101, %if.end87
  br i1 %add_target.0.off0, label %if.then111, label %do.end106.if.end112_crit_edge

do.end106.if.end112_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then111:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nci_add_new_target(ptr noundef %ndev, ptr noundef nonnull %ntf)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %do.end106.if.end112_crit_edge
  %99 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %100)
  %cmp115 = icmp eq i8 %100, 2
  %state = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #7
  br i1 %cmp115, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 2, ptr %state, align 4
  br label %if.end120

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 3, ptr %state, align 4
  %103 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ndev, align 4
  %targets = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 29
  %n_targets = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 30
  %105 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_targets, align 4
  %call119 = tail call i32 @nfc_targets_found(ptr noundef %104, ptr noundef %targets, i32 noundef %106) #7
  br label %if.end120

if.end120:                                        ; preds = %if.else, %if.then117
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %ntf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_rf_intf_activated_ntf_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  %ntf = alloca %struct.nci_rf_intf_activated_ntf, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 94, ptr nonnull %ntf) #7
  %0 = call ptr @memset(ptr %ntf, i32 255, i32 94)
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1, align 4
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = ptrtoint ptr %ntf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ntf, align 1
  %incdec.ptr2 = getelementptr i8, ptr %2, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %rf_interface = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 1
  %8 = ptrtoint ptr %rf_interface to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rf_interface, align 1
  %incdec.ptr3 = getelementptr i8, ptr %2, i32 3
  %9 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr2, align 1
  %rf_protocol = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 2
  %11 = ptrtoint ptr %rf_protocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rf_protocol, align 1
  %incdec.ptr4 = getelementptr i8, ptr %2, i32 4
  %12 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr3, align 1
  %activation_rf_tech_and_mode = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 3
  %14 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %activation_rf_tech_and_mode, align 1
  %incdec.ptr5 = getelementptr i8, ptr %2, i32 5
  %15 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr4, align 1
  %max_data_pkt_payload_size = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 4
  %17 = ptrtoint ptr %max_data_pkt_payload_size to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %max_data_pkt_payload_size, align 1
  %incdec.ptr6 = getelementptr i8, ptr %2, i32 6
  %18 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr5, align 1
  %initial_num_credits = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 5
  %20 = ptrtoint ptr %initial_num_credits to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %initial_num_credits, align 1
  %incdec.ptr7 = getelementptr i8, ptr %2, i32 7
  %21 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr6, align 1
  %rf_tech_specific_params_len = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 6
  %23 = ptrtoint ptr %rf_tech_specific_params_len to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %rf_tech_specific_params_len, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then)) #7
          to label %do.body11 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %ntf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ntf, align 1
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.57, i32 noundef %conv) #7
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then23)) #7
          to label %do.body29 [label %if.then23], !srcloc !204

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rf_interface to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rf_interface, align 1
  %conv25 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %conv25) #7
  br label %do.body29

do.body29:                                        ; preds = %if.then23, %do.body11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then41)) #7
          to label %do.body47 [label %if.then41], !srcloc !204

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rf_protocol to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rf_protocol, align 1
  %conv43 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.57, i32 noundef %conv43) #7
  br label %do.body47

do.body47:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then59)) #7
          to label %do.body65 [label %if.then59], !srcloc !204

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %conv61 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.57, i32 noundef %conv61) #7
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then77)) #7
          to label %do.body83 [label %if.then77], !srcloc !204

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %max_data_pkt_payload_size to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_data_pkt_payload_size, align 1
  %conv79 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.57, i32 noundef %conv79) #7
  br label %do.body83

do.body83:                                        ; preds = %if.then77, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then95)) #7
          to label %do.body101 [label %if.then95], !srcloc !204

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %initial_num_credits to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %initial_num_credits, align 1
  %conv97 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.57, i32 noundef %conv97) #7
  br label %do.body101

do.body101:                                       ; preds = %if.then95, %do.body83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then113)) #7
          to label %do.end118 [label %if.then113], !srcloc !204

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %rf_tech_specific_params_len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rf_tech_specific_params_len, align 1
  %conv115 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.57, i32 noundef %conv115) #7
  br label %do.end118

do.end118:                                        ; preds = %if.then113, %do.body101
  %38 = ptrtoint ptr %rf_interface to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rf_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp = icmp eq i8 %39, 0
  br i1 %cmp, label %do.end118.listen_crit_edge, label %if.end123

do.end118.listen_crit_edge:                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %listen

if.end123:                                        ; preds = %do.end118
  %40 = ptrtoint ptr %rf_tech_specific_params_len to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rf_tech_specific_params_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp126.not = icmp eq i8 %41, 0
  br i1 %cmp126.not, label %if.end123.if.end151_crit_edge, label %if.then128

if.end123.if.end151_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then128:                                       ; preds = %if.end123
  %42 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %43, label %do.end146 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb132
    i8 2, label %sw.bb135
    i8 6, label %sw.bb138
    i8 -128, label %if.then128.if.end151_crit_edge
    i8 -126, label %sw.bb141
  ]

if.then128.if.end151_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

sw.bb:                                            ; preds = %if.then128
  %rf_tech_specific_params = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7
  %45 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %incdec.ptr7, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #7
  %48 = ptrtoint ptr %rf_tech_specific_params to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %rf_tech_specific_params, align 1
  %add.ptr.i = getelementptr i8, ptr %2, i32 9
  %incdec.ptr.i = getelementptr i8, ptr %2, i32 10
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i, align 1
  %51 = tail call i8 @llvm.umin.i8(i8 %50, i8 10) #7
  %nfcid1_len.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2
  %52 = ptrtoint ptr %nfcid1_len.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %nfcid1_len.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !204

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %rf_tech_specific_params to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %rf_tech_specific_params, align 1
  %conv10.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %nfcid1_len.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nfcid1_len.i, align 1
  %conv12.i = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %conv10.i, i32 noundef %conv12.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %nfcid1.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %nfcid1_len.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nfcid1_len.i, align 1
  %conv14.i = zext i8 %58 to i32
  %59 = call ptr @memcpy(ptr %nfcid1.i, ptr %incdec.ptr.i, i32 %conv14.i)
  %add.ptr17.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv14.i
  %incdec.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 1
  %60 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr17.i, align 1
  %sel_res_len.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2, i32 11
  %62 = ptrtoint ptr %sel_res_len.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %sel_res_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp21.not.i = icmp eq i8 %61, 0
  br i1 %cmp21.not.i, label %do.end.i.do.body26.i_crit_edge, label %if.then23.i

do.end.i.do.body26.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

if.then23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr24.i = getelementptr i8, ptr %incdec.ptr18.i, i32 1
  %63 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr18.i, align 1
  %sel_res.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2, i32 12
  %65 = ptrtoint ptr %sel_res.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sel_res.i, align 1
  br label %do.body26.i

do.body26.i:                                      ; preds = %if.then23.i, %do.end.i.do.body26.i_crit_edge
  %data.addr.0.i = phi ptr [ %incdec.ptr24.i, %if.then23.i ], [ %incdec.ptr18.i, %do.end.i.do.body26.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then38.i)) #7
          to label %if.end151 [label %if.then38.i], !srcloc !204

if.then38.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %sel_res_len.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sel_res_len.i, align 1
  %conv40.i = zext i8 %67 to i32
  %sel_res41.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2, i32 12
  %68 = ptrtoint ptr %sel_res41.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sel_res41.i, align 1
  %conv42.i = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %conv40.i, i32 noundef %conv42.i) #7
  br label %if.end151

sw.bb132:                                         ; preds = %if.then128
  %rf_tech_specific_params133 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7
  %70 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr7, align 1
  %72 = tail call i8 @llvm.umin.i8(i8 %71, i8 12) #7
  %73 = ptrtoint ptr %rf_tech_specific_params133 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %rf_tech_specific_params133, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then.i395)) #7
          to label %nci_extract_rf_params_nfcb_passive_poll.exit [label %if.then.i395], !srcloc !204

if.then.i395:                                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %rf_tech_specific_params133 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rf_tech_specific_params133, align 1
  %conv10.i394 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %conv10.i394) #7
  br label %nci_extract_rf_params_nfcb_passive_poll.exit

nci_extract_rf_params_nfcb_passive_poll.exit:     ; preds = %if.then.i395, %sw.bb132
  %incdec.ptr.i396 = getelementptr i8, ptr %2, i32 8
  %sensb_res.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 1
  %76 = ptrtoint ptr %rf_tech_specific_params133 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rf_tech_specific_params133, align 1
  %conv12.i397 = zext i8 %77 to i32
  %78 = call ptr @memcpy(ptr %sensb_res.i, ptr %incdec.ptr.i396, i32 %conv12.i397)
  %add.ptr.i398 = getelementptr i8, ptr %incdec.ptr.i396, i32 %conv12.i397
  br label %if.end151

sw.bb135:                                         ; preds = %if.then128
  %rf_tech_specific_params136 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7
  %incdec.ptr.i400 = getelementptr i8, ptr %2, i32 8
  %79 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr7, align 1
  %81 = ptrtoint ptr %rf_tech_specific_params136 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %rf_tech_specific_params136, align 1
  %82 = ptrtoint ptr %incdec.ptr.i400 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i400, align 1
  %84 = tail call i8 @llvm.umin.i8(i8 %83, i8 18) #7
  %sensf_res_len.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 1
  %85 = ptrtoint ptr %sensf_res_len.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %sensf_res_len.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then.i401)) #7
          to label %nci_extract_rf_params_nfcf_passive_poll.exit [label %if.then.i401], !srcloc !204

if.then.i401:                                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %rf_tech_specific_params136 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rf_tech_specific_params136, align 1
  %conv11.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %sensf_res_len.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sensf_res_len.i, align 1
  %conv13.i = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv11.i, i32 noundef %conv13.i) #7
  br label %nci_extract_rf_params_nfcf_passive_poll.exit

nci_extract_rf_params_nfcf_passive_poll.exit:     ; preds = %if.then.i401, %sw.bb135
  %incdec.ptr1.i = getelementptr i8, ptr %2, i32 9
  %sensf_res.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2
  %90 = ptrtoint ptr %sensf_res_len.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sensf_res_len.i, align 1
  %conv15.i = zext i8 %91 to i32
  %92 = call ptr @memcpy(ptr %sensf_res.i, ptr %incdec.ptr1.i, i32 %conv15.i)
  %add.ptr.i402 = getelementptr i8, ptr %incdec.ptr1.i, i32 %conv15.i
  br label %if.end151

sw.bb138:                                         ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i404 = getelementptr i8, ptr %2, i32 8
  %incdec.ptr1.i405 = getelementptr i8, ptr %2, i32 9
  %93 = ptrtoint ptr %incdec.ptr.i404 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %incdec.ptr.i404, align 1
  %dsfid.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 1
  %95 = ptrtoint ptr %dsfid.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %dsfid.i, align 1
  %uid.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 2
  %96 = ptrtoint ptr %incdec.ptr1.i405 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %incdec.ptr1.i405, align 1
  %98 = ptrtoint ptr %uid.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %uid.i, align 1
  %add.ptr.i406 = getelementptr i8, ptr %2, i32 17
  br label %if.end151

sw.bb141:                                         ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %rf_tech_specific_params142 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7
  %99 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %incdec.ptr7, align 1
  %101 = tail call i8 @llvm.umin.i8(i8 %100, i8 8) #7
  %incdec.ptr.i407 = getelementptr i8, ptr %2, i32 8
  %102 = ptrtoint ptr %rf_tech_specific_params142 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %rf_tech_specific_params142, align 1
  %local_nfcid2.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7, i32 0, i32 1
  %conv7.i = zext i8 %101 to i32
  %103 = call ptr @memcpy(ptr %local_nfcid2.i, ptr %incdec.ptr.i407, i32 %conv7.i)
  %add.ptr.i408 = getelementptr i8, ptr %incdec.ptr.i407, i32 %conv7.i
  br label %if.end151

do.end146:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %conv130 = zext i8 %43 to i32
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.57, i32 noundef %conv130) #10
  br label %if.end276

if.end151:                                        ; preds = %sw.bb141, %sw.bb138, %nci_extract_rf_params_nfcf_passive_poll.exit, %nci_extract_rf_params_nfcb_passive_poll.exit, %if.then38.i, %do.body26.i, %if.then128.if.end151_crit_edge, %if.end123.if.end151_crit_edge
  %data.0 = phi ptr [ %add.ptr.i408, %sw.bb141 ], [ %incdec.ptr7, %if.then128.if.end151_crit_edge ], [ %add.ptr.i406, %sw.bb138 ], [ %add.ptr.i402, %nci_extract_rf_params_nfcf_passive_poll.exit ], [ %add.ptr.i398, %nci_extract_rf_params_nfcb_passive_poll.exit ], [ %incdec.ptr7, %if.end123.if.end151_crit_edge ], [ %data.addr.0.i, %do.body26.i ], [ %data.addr.0.i, %if.then38.i ]
  %incdec.ptr152 = getelementptr i8, ptr %data.0, i32 1
  %104 = ptrtoint ptr %data.0 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %data.0, align 1
  %data_exch_rf_tech_and_mode = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 8
  %106 = ptrtoint ptr %data_exch_rf_tech_and_mode to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %data_exch_rf_tech_and_mode, align 1
  %incdec.ptr153 = getelementptr i8, ptr %data.0, i32 2
  %107 = ptrtoint ptr %incdec.ptr152 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %incdec.ptr152, align 1
  %data_exch_tx_bit_rate = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 9
  %109 = ptrtoint ptr %data_exch_tx_bit_rate to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %data_exch_tx_bit_rate, align 1
  %incdec.ptr154 = getelementptr i8, ptr %data.0, i32 3
  %110 = ptrtoint ptr %incdec.ptr153 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %incdec.ptr153, align 1
  %data_exch_rx_bit_rate = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 10
  %112 = ptrtoint ptr %data_exch_rx_bit_rate to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %data_exch_rx_bit_rate, align 1
  %incdec.ptr155 = getelementptr i8, ptr %data.0, i32 4
  %113 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %incdec.ptr154, align 1
  %activation_params_len = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 11
  %115 = ptrtoint ptr %activation_params_len to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %activation_params_len, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then168)) #7
          to label %do.body174 [label %if.then168], !srcloc !204

if.then168:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %data_exch_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data_exch_rf_tech_and_mode, align 1
  %conv170 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.57, i32 noundef %conv170) #7
  br label %do.body174

do.body174:                                       ; preds = %if.then168, %if.end151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then186)) #7
          to label %do.body192 [label %if.then186], !srcloc !204

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %data_exch_tx_bit_rate to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data_exch_tx_bit_rate, align 1
  %conv188 = zext i8 %119 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.57, i32 noundef %conv188) #7
  br label %do.body192

do.body192:                                       ; preds = %if.then186, %do.body174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then204)) #7
          to label %do.body210 [label %if.then204], !srcloc !204

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %data_exch_rx_bit_rate to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %data_exch_rx_bit_rate, align 1
  %conv206 = zext i8 %121 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.57, i32 noundef %conv206) #7
  br label %do.body210

do.body210:                                       ; preds = %if.then204, %do.body192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then222)) #7
          to label %do.end227 [label %if.then222], !srcloc !204

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %activation_params_len to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %activation_params_len, align 1
  %conv224 = zext i8 %123 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.57, i32 noundef %conv224) #7
  br label %do.end227

do.end227:                                        ; preds = %if.then222, %do.body210
  %124 = ptrtoint ptr %activation_params_len to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %activation_params_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp230.not = icmp eq i8 %125, 0
  br i1 %cmp230.not, label %do.end227.if.then251_crit_edge, label %if.then232

do.end227.if.then251_crit_edge:                   ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

if.then232:                                       ; preds = %do.end227
  %126 = ptrtoint ptr %rf_interface to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %rf_interface, align 1
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %127, label %do.end242 [
    i8 2, label %sw.bb235
    i8 3, label %exit
    i8 1, label %if.then232.if.then251_crit_edge
  ]

if.then232.if.then251_crit_edge:                  ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

sw.bb235:                                         ; preds = %if.then232
  %129 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %131 = zext i8 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %130, label %do.end64.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %sw.bb235
  %activation_params.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %132 = ptrtoint ptr %incdec.ptr155 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %incdec.ptr155, align 1
  %134 = tail call i8 @llvm.umin.i8(i8 %133, i8 20) #7
  %135 = ptrtoint ptr %activation_params.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %activation_params.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then.i411)) #7
          to label %do.end.i412 [label %if.then.i411], !srcloc !204

if.then.i411:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %activation_params.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %activation_params.i, align 1
  %conv11.i410 = zext i8 %137 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef %conv11.i410) #7
  br label %do.end.i412

do.end.i412:                                      ; preds = %if.then.i411, %sw.bb.i
  %138 = ptrtoint ptr %activation_params.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %activation_params.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp14.not.i = icmp eq i8 %139, 0
  br i1 %cmp14.not.i, label %do.end.i412.if.then251_crit_edge, label %do.end.i412.if.then251.sink.split_crit_edge

do.end.i412.if.then251.sink.split_crit_edge:      ; preds = %do.end.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251.sink.split

do.end.i412.if.then251_crit_edge:                 ; preds = %do.end.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

sw.bb20.i:                                        ; preds = %sw.bb235
  %activation_params21.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %140 = ptrtoint ptr %incdec.ptr155 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %incdec.ptr155, align 1
  %142 = tail call i8 @llvm.umin.i8(i8 %141, i8 50) #7
  %143 = ptrtoint ptr %activation_params21.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %activation_params21.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then47.i)) #7
          to label %do.end52.i [label %if.then47.i], !srcloc !204

if.then47.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %activation_params21.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %activation_params21.i, align 1
  %conv49.i = zext i8 %145 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, i32 noundef %conv49.i) #7
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then47.i, %sw.bb20.i
  %146 = ptrtoint ptr %activation_params21.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %activation_params21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp55.not.i = icmp eq i8 %147, 0
  br i1 %cmp55.not.i, label %do.end52.i.if.then251_crit_edge, label %do.end52.i.if.then251.sink.split_crit_edge

do.end52.i.if.then251.sink.split_crit_edge:       ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251.sink.split

do.end52.i.if.then251_crit_edge:                  ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

do.end64.i:                                       ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %130 to i32
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.84, i32 noundef %conv.i) #10
  br label %if.end276

do.end242:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #9
  %conv234 = zext i8 %127 to i32
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.57, i32 noundef %conv234) #10
  br label %if.end276thread-pre-split

exit:                                             ; preds = %if.then232
  %call238 = call fastcc i32 @nci_extract_activation_params_nfc_dep(ptr noundef nonnull %ntf, ptr noundef %incdec.ptr155)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp249 = icmp eq i32 %call238, 0
  br i1 %cmp249, label %exit.if.then251_crit_edge, label %exit.if.end276thread-pre-split_crit_edge

exit.if.end276thread-pre-split_crit_edge:         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276thread-pre-split

exit.if.then251_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then251

if.then251.sink.split:                            ; preds = %do.end52.i.if.then251.sink.split_crit_edge, %do.end.i412.if.then251.sink.split_crit_edge
  %.sink = phi i8 [ %139, %do.end.i412.if.then251.sink.split_crit_edge ], [ %147, %do.end52.i.if.then251.sink.split_crit_edge ]
  %incdec.ptr.i409.sink = getelementptr i8, ptr %data.0, i32 5
  %conv13.i413 = zext i8 %.sink to i32
  %rats_res.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12, i32 0, i32 1
  %148 = call ptr @memcpy(ptr %rats_res.i, ptr %incdec.ptr.i409.sink, i32 %conv13.i413)
  br label %if.then251

if.then251:                                       ; preds = %if.then251.sink.split, %exit.if.then251_crit_edge, %do.end52.i.if.then251_crit_edge, %do.end.i412.if.then251_crit_edge, %if.then232.if.then251_crit_edge, %do.end227.if.then251_crit_edge
  %rf_conn_info = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 10
  %149 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rf_conn_info, align 4
  %tobool252.not = icmp eq ptr %150, null
  br i1 %tobool252.not, label %if.then251.cleanup_crit_edge, label %if.end254

if.then251.cleanup_crit_edge:                     ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end254:                                        ; preds = %if.then251
  %151 = ptrtoint ptr %max_data_pkt_payload_size to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %max_data_pkt_payload_size, align 1
  %max_pkt_payload_len = getelementptr inbounds %struct.nci_conn_info, ptr %150, i32 0, i32 4
  %153 = ptrtoint ptr %max_pkt_payload_len to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %max_pkt_payload_len, align 2
  %154 = ptrtoint ptr %initial_num_credits to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %initial_num_credits, align 1
  %initial_num_credits257 = getelementptr inbounds %struct.nci_conn_info, ptr %150, i32 0, i32 6
  %156 = ptrtoint ptr %initial_num_credits257 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %initial_num_credits257, align 4
  %credits_cnt = getelementptr inbounds %struct.nci_conn_info, ptr %150, i32 0, i32 5
  %conv259 = zext i8 %155 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %credits_cnt, i32 noundef 4) #7
  %157 = ptrtoint ptr %credits_cnt to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 %conv259, ptr %credits_cnt, align 4
  %158 = ptrtoint ptr %rf_interface to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rf_interface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %159)
  %cmp262 = icmp eq i8 %159, 3
  br i1 %cmp262, label %if.then264, label %if.end254.if.end276thread-pre-split_crit_edge

if.end254.if.end276thread-pre-split_crit_edge:    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276thread-pre-split

if.then264:                                       ; preds = %if.end254
  %remote_gb_len.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 45
  %160 = ptrtoint ptr %remote_gb_len.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %remote_gb_len.i, align 4
  %161 = ptrtoint ptr %activation_params_len to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %activation_params_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %cmp.i = icmp eq i8 %162, 0
  br i1 %cmp.i, label %if.then264.if.end276thread-pre-split_crit_edge, label %if.end.i

if.then264.if.end276thread-pre-split_crit_edge:   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276thread-pre-split

if.end.i:                                         ; preds = %if.then264
  %163 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %165 = zext i8 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %164, label %do.end271 [
    i8 0, label %if.end.i.sw.bb.i418_crit_edge
    i8 2, label %if.end.i.sw.bb.i418_crit_edge445
    i8 -128, label %if.end.i.sw.bb17.i_crit_edge
    i8 -126, label %if.end.i.sw.bb17.i_crit_edge446
  ]

if.end.i.sw.bb17.i_crit_edge446:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.end.i.sw.bb17.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.end.i.sw.bb.i418_crit_edge445:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i418

if.end.i.sw.bb.i418_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i418

sw.bb.i418:                                       ; preds = %if.end.i.sw.bb.i418_crit_edge, %if.end.i.sw.bb.i418_crit_edge445
  %activation_params.i416 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %166 = ptrtoint ptr %activation_params.i416 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %activation_params.i416, align 1
  %sub.i = add i8 %167, -15
  %168 = tail call i8 @llvm.umin.i8(i8 %sub.i, i8 47) #7
  %169 = ptrtoint ptr %remote_gb_len.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %remote_gb_len.i, align 4
  %remote_gb.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 44
  %add.ptr.i417 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12, i32 0, i32 1, i32 15
  %conv16.i = zext i8 %168 to i32
  %170 = call ptr @memcpy(ptr %remote_gb.i, ptr %add.ptr.i417, i32 %conv16.i)
  br label %if.end276thread-pre-split

sw.bb17.i:                                        ; preds = %if.end.i.sw.bb17.i_crit_edge, %if.end.i.sw.bb17.i_crit_edge446
  %activation_params18.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %171 = ptrtoint ptr %activation_params18.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %activation_params18.i, align 1
  %sub20.i = add i8 %172, -14
  %173 = tail call i8 @llvm.umin.i8(i8 %sub20.i, i8 48) #7
  %174 = ptrtoint ptr %remote_gb_len.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %remote_gb_len.i, align 4
  %remote_gb35.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 44
  %add.ptr39.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12, i32 0, i32 1, i32 14
  %conv41.i = zext i8 %173 to i32
  %175 = call ptr @memcpy(ptr %remote_gb35.i, ptr %add.ptr39.i, i32 %conv41.i)
  br label %if.end276thread-pre-split

do.end271:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = zext i8 %164 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.94, i32 noundef %conv2.i) #10
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.57) #10
  br label %if.end276

if.end276thread-pre-split:                        ; preds = %sw.bb17.i, %sw.bb.i418, %if.then264.if.end276thread-pre-split_crit_edge, %if.end254.if.end276thread-pre-split_crit_edge, %exit.if.end276thread-pre-split_crit_edge, %do.end242
  %err.1.ph = phi i32 [ 0, %sw.bb.i418 ], [ 0, %sw.bb17.i ], [ 0, %if.then264.if.end276thread-pre-split_crit_edge ], [ 177, %do.end242 ], [ %call238, %exit.if.end276thread-pre-split_crit_edge ], [ 0, %if.end254.if.end276thread-pre-split_crit_edge ]
  %176 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %176)
  %.pr = load i8, ptr %activation_rf_tech_and_mode, align 1
  br label %if.end276

if.end276:                                        ; preds = %if.end276thread-pre-split, %do.end271, %do.end64.i, %do.end146
  %177 = phi i8 [ %.pr, %if.end276thread-pre-split ], [ %130, %do.end64.i ], [ %43, %do.end146 ], [ %164, %do.end271 ]
  %err.1 = phi i32 [ %err.1.ph, %if.end276thread-pre-split ], [ 177, %do.end64.i ], [ 177, %do.end146 ], [ 177, %do.end271 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %tobool279.not = icmp sgt i8 %177, -1
  br i1 %tobool279.not, label %if.then280, label %if.end276.listen_crit_edge

if.end276.listen_crit_edge:                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #9
  br label %listen

if.then280:                                       ; preds = %if.end276
  %state = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i390 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #7
  %178 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp282 = icmp eq i32 %179, 1
  %call.i.i391 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #7
  %180 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 4, ptr %state, align 4
  br i1 %cmp282, label %if.then284, label %if.else

if.then284:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp286 = icmp eq i32 %err.1, 0
  br i1 %cmp286, label %if.then288, label %if.then284.cleanup_crit_edge

if.then284.cleanup_crit_edge:                     ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then288:                                       ; preds = %if.then284
  %targets.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 29
  %n_targets.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 30
  %181 = ptrtoint ptr %n_targets.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %n_targets.i, align 4
  %arrayidx.i = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %182
  %183 = ptrtoint ptr %rf_protocol to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %rf_protocol, align 1
  %185 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %rf_tech_specific_params.i = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 7
  %call.i422 = call fastcc i32 @nci_add_new_protocol(ptr noundef %ndev, ptr noundef %arrayidx.i, i8 noundef zeroext %184, i8 noundef zeroext %186, ptr noundef %rf_tech_specific_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i422)
  %tobool.not.i = icmp eq i32 %call.i422, 0
  br i1 %tobool.not.i, label %if.end.i423, label %if.then288.cleanup_crit_edge

if.then288.cleanup_crit_edge:                     ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i423:                                      ; preds = %if.then288
  %187 = ptrtoint ptr %ntf to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %ntf, align 1
  %logical_idx.i = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %182, i32 13
  %189 = ptrtoint ptr %logical_idx.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %logical_idx.i, align 4
  %190 = ptrtoint ptr %n_targets.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %n_targets.i, align 4
  %inc.i = add i32 %191, 1
  store i32 %inc.i, ptr %n_targets.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_target_auto_activated.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_intf_activated_ntf_packet, %if.then6.i)) #7
          to label %do.end.i425 [label %if.then6.i], !srcloc !204

if.then6.i:                                       ; preds = %if.end.i423
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %logical_idx.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %logical_idx.i, align 4
  %conv.i424 = zext i8 %193 to i32
  %194 = ptrtoint ptr %n_targets.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %n_targets.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_target_auto_activated.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.95, i32 noundef %conv.i424, i32 noundef %195) #7
  br label %do.end.i425

do.end.i425:                                      ; preds = %if.then6.i, %if.end.i423
  %196 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ndev, align 4
  %198 = ptrtoint ptr %n_targets.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %n_targets.i, align 4
  %call12.i = tail call i32 @nfc_targets_found(ptr noundef %197, ptr noundef %targets.i, i32 noundef %199) #7
  br label %cleanup

if.else:                                          ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %err.1) #7
  br label %cleanup

listen:                                           ; preds = %if.end276.listen_crit_edge, %do.end118.listen_crit_edge
  %err.2 = phi i32 [ 0, %do.end118.listen_crit_edge ], [ %err.1, %if.end276.listen_crit_edge ]
  %state293 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i393 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state293, i32 noundef 4) #7
  %200 = ptrtoint ptr %state293 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile i32 5, ptr %state293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp294 = icmp eq i32 %err.2, 0
  br i1 %cmp294, label %land.lhs.true, label %listen.cleanup_crit_edge

listen.cleanup_crit_edge:                         ; preds = %listen
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %listen
  %201 = ptrtoint ptr %rf_protocol to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %rf_protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %202)
  %cmp298 = icmp eq i8 %202, 5
  br i1 %cmp298, label %if.then300, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then300:                                       ; preds = %land.lhs.true
  %203 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ndev, align 4
  %remote_gb = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 44
  %remote_gb_len = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 45
  %205 = ptrtoint ptr %remote_gb_len to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %remote_gb_len, align 4
  %conv301 = zext i8 %206 to i32
  %call302 = tail call i32 @nfc_tm_activated(ptr noundef %204, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %remote_gb, i32 noundef %conv301) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %cmp303.not = icmp eq i32 %call302, 0
  br i1 %cmp303.not, label %if.then300.cleanup_crit_edge, label %do.end308

if.then300.cleanup_crit_edge:                     ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end308:                                        ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.57) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end308, %if.then300.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %listen.cleanup_crit_edge, %if.else, %do.end.i425, %if.then288.cleanup_crit_edge, %if.then284.cleanup_crit_edge, %if.then251.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 94, ptr nonnull %ntf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_rf_deactivate_ntf_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_rf_deactivate_ntf_packet.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_rf_deactivate_ntf_packet, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %reason = getelementptr inbounds %struct.nci_rf_deactivate_ntf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reason, align 1
  %conv3 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_rf_deactivate_ntf_packet.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef %conv, i32 noundef %conv3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rf_conn_info = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 10
  %6 = ptrtoint ptr %rf_conn_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf_conn_info, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %tx_q = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %tx_q) #7
  %rx_data_reassembly = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 43
  %8 = ptrtoint ptr %rx_data_reassembly to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_data_reassembly, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #7
  %10 = ptrtoint ptr %rx_data_reassembly to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_data_reassembly, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nci_data_exchange_complete(ptr noundef %ndev, ptr noundef null, i8 noundef zeroext 0, i32 noundef -5) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %15, label %if.end15.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end15.sw.bb18_crit_edge
    i8 2, label %if.end15.sw.bb18_crit_edge41
    i8 3, label %sw.bb20
  ]

if.end15.sw.bb18_crit_edge41:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

if.end15.sw.bb18_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %targets.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 29
  %17 = call ptr @memset(ptr %targets.i, i32 0, i32 764)
  %state = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %state, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end15.sw.bb18_crit_edge, %if.end15.sw.bb18_crit_edge41
  %state19 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state19, i32 noundef 4) #7
  %19 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 3, ptr %state19, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %targets.i39 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 29
  %20 = call ptr @memset(ptr %targets.i39, i32 0, i32 764)
  %state21 = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 5
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state21, i32 noundef 4) #7
  %21 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %state21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb18, %sw.bb, %if.end15.sw.epilog_crit_edge
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_ntf_packet(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_data_exchange_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nci_add_new_target(ptr noundef %ndev, ptr nocapture noundef readonly %ntf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n_targets = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 30
  %0 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_targets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp78 = icmp sgt i32 %1, 0
  br i1 %cmp78, label %for.body.lr.ph, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %ntf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ntf, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %logical_idx = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %i.079, i32 13
  %4 = ptrtoint ptr %logical_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %logical_idx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp2 = icmp eq i8 %5, %3
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %i.079
  %rf_protocol = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 1
  %6 = ptrtoint ptr %rf_protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rf_protocol, align 1
  %rf_tech_and_mode = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 2
  %8 = ptrtoint ptr %rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_tech_and_mode, align 1
  %rf_tech_specific_params = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4
  %call = tail call fastcc i32 @nci_add_new_protocol(ptr noundef %ndev, ptr noundef %arrayidx, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef %rf_tech_specific_params)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp5 = icmp eq i32 %1, 10
  br i1 %cmp5, label %do.body, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_add_new_target.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_add_new_target, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !204

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_add_new_target.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.end13:                                         ; preds = %for.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %arrayidx16 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %1
  %rf_protocol17 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 1
  %10 = ptrtoint ptr %rf_protocol17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rf_protocol17, align 1
  %rf_tech_and_mode18 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 2
  %12 = ptrtoint ptr %rf_tech_and_mode18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_tech_and_mode18, align 1
  %rf_tech_specific_params19 = getelementptr inbounds %struct.nci_rf_discover_ntf, ptr %ntf, i32 0, i32 4
  %call20 = tail call fastcc i32 @nci_add_new_protocol(ptr noundef %ndev, ptr noundef %arrayidx16, i8 noundef zeroext %11, i8 noundef zeroext %13, ptr noundef %rf_tech_specific_params19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ntf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ntf, align 1
  %logical_idx24 = getelementptr %struct.nci_dev, ptr %ndev, i32 0, i32 29, i32 %1, i32 13
  %16 = ptrtoint ptr %logical_idx24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %logical_idx24, align 4
  %17 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_targets, align 4
  %inc26 = add i32 %18, 1
  store i32 %inc26, ptr %n_targets, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_add_new_target.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_add_new_target, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !204

if.then39:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %logical_idx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %logical_idx24, align 4
  %conv41 = zext i8 %20 to i32
  %21 = ptrtoint ptr %n_targets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_targets, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_add_new_target.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.46, i32 noundef %conv41, i32 noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then22, %if.end13.cleanup_crit_edge, %if.then11, %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nci_add_new_protocol(ptr noundef %ndev, ptr nocapture noundef %target, i8 noundef zeroext %rf_protocol, i8 noundef zeroext %rf_tech_and_mode, ptr nocapture noundef readonly %params) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rf_protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %rf_protocol, label %if.else31 [
    i8 1, label %entry.if.end37_crit_edge
    i8 2, label %if.then5
    i8 4, label %if.then10
    i8 3, label %if.then20
    i8 5, label %if.then25
    i8 6, label %if.then30
  ]

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_tech_and_mode)
  %cmp12 = icmp eq i8 %rf_tech_and_mode, 0
  %. = select i1 %cmp12, i32 16, i32 64
  br label %if.end37

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else31:                                        ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %get_rfprotocol.i = getelementptr inbounds %struct.nci_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %get_rfprotocol.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_rfprotocol.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else31.if.end37_crit_edge, label %if.then.i

if.else31.if.end37_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then.i:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %4(ptr noundef %ndev, i8 noundef zeroext %rf_protocol) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %if.else31.if.end37_crit_edge, %if.then30, %if.then25, %if.then20, %if.then10, %if.then5, %entry.if.end37_crit_edge
  %protocol.0 = phi i32 [ 4, %if.then5 ], [ 8, %if.then20 ], [ 32, %if.then25 ], [ 128, %if.then30 ], [ 2, %entry.if.end37_crit_edge ], [ %., %if.then10 ], [ %call.i, %if.then.i ], [ 0, %if.else31.if.end37_crit_edge ]
  %poll_prots = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 27
  %5 = ptrtoint ptr %poll_prots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_prots, align 4
  %and = and i32 %6, %protocol.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %7 = zext i8 %rf_tech_and_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %rf_tech_and_mode, label %do.end102 [
    i8 0, label %if.then44
    i8 1, label %if.then62
    i8 2, label %if.then79
    i8 6, label %if.then96
  ]

if.then44:                                        ; preds = %if.end40
  %8 = ptrtoint ptr %params to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %params, align 1
  %sens_res45 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 2
  %10 = ptrtoint ptr %sens_res45 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sens_res45, align 4
  %sel_res = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %sel_res to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sel_res, align 1
  %sel_res46 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 3
  %13 = ptrtoint ptr %sel_res46 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %sel_res46, align 2
  %nfcid1_len = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nfcid1_len, align 1
  %nfcid1_len47 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 4
  %16 = ptrtoint ptr %nfcid1_len47 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %nfcid1_len47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp50.not = icmp eq i8 %15, 0
  br i1 %cmp50.not, label %if.then44.if.end109_crit_edge, label %if.then52

if.then44.if.end109_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then52:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %conv49 = zext i8 %15 to i32
  %nfcid1 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 5
  %nfcid153 = getelementptr inbounds %struct.rf_tech_specific_params_nfca_poll, ptr %params, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %nfcid1, ptr %nfcid153, i32 %conv49)
  br label %if.end109

if.then62:                                        ; preds = %if.end40
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %params, align 1
  %sensb_res_len63 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 8
  %20 = ptrtoint ptr %sensb_res_len63 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %sensb_res_len63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp66.not = icmp eq i8 %19, 0
  br i1 %cmp66.not, label %if.then62.if.end109_crit_edge, label %if.then68

if.then62.if.end109_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %conv65 = zext i8 %19 to i32
  %sensb_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 9
  %sensb_res70 = getelementptr inbounds %struct.rf_tech_specific_params_nfcb_poll, ptr %params, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %sensb_res, ptr %sensb_res70, i32 %conv65)
  br label %if.end109

if.then79:                                        ; preds = %if.end40
  %sensf_res_len = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, ptr %params, i32 0, i32 1
  %22 = ptrtoint ptr %sensf_res_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensf_res_len, align 1
  %sensf_res_len80 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 10
  %24 = ptrtoint ptr %sensf_res_len80 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sensf_res_len80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp83.not = icmp eq i8 %23, 0
  br i1 %cmp83.not, label %if.then79.if.end109_crit_edge, label %if.then85

if.then79.if.end109_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %conv82 = zext i8 %23 to i32
  %sensf_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 11
  %sensf_res87 = getelementptr inbounds %struct.rf_tech_specific_params_nfcf_poll, ptr %params, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %sensf_res, ptr %sensf_res87, i32 %conv82)
  br label %if.end109

if.then96:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %is_iso15693 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 14
  %26 = ptrtoint ptr %is_iso15693 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %is_iso15693, align 1
  %dsfid = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, ptr %params, i32 0, i32 1
  %27 = ptrtoint ptr %dsfid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dsfid, align 1
  %iso15693_dsfid = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 15
  %29 = ptrtoint ptr %iso15693_dsfid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %iso15693_dsfid, align 2
  %iso15693_uid = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 16
  %uid = getelementptr inbounds %struct.rf_tech_specific_params_nfcv_poll, ptr %params, i32 0, i32 2
  %30 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %uid, align 1
  %32 = ptrtoint ptr %iso15693_uid to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %iso15693_uid, align 1
  br label %if.end109

do.end102:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = zext i8 %rf_tech_and_mode to i32
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.52, i32 noundef %conv41) #10
  br label %cleanup

if.end109:                                        ; preds = %if.then96, %if.then85, %if.then79.if.end109_crit_edge, %if.then68, %if.then62.if.end109_crit_edge, %if.then52, %if.then44.if.end109_crit_edge
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %33 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %supported_protocols, align 4
  %or = or i32 %34, %protocol.0
  store i32 %or, ptr %supported_protocols, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_add_new_protocol.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_add_new_protocol, %if.then116)) #7
          to label %cleanup [label %if.then116], !srcloc !204

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_add_new_protocol.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef %protocol.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %if.end109, %do.end102, %do.end
  %retval.0 = phi i32 [ -71, %do.end102 ], [ -71, %do.end ], [ 0, %if.then116 ], [ 0, %if.end109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nci_extract_activation_params_nfc_dep(ptr nocapture noundef %ntf, ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %activation_rf_tech_and_mode = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 3
  %0 = ptrtoint ptr %activation_rf_tech_and_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %activation_rf_tech_and_mode, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %1, label %do.end64 [
    i8 0, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge7
    i8 -128, label %entry.sw.bb20_crit_edge
    i8 -126, label %entry.sw.bb20_crit_edge8
  ]

entry.sw.bb20_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7
  %activation_params = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %5 = tail call i8 @llvm.umin.i8(i8 %4, i8 62)
  %6 = ptrtoint ptr %activation_params to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %activation_params, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_extract_activation_params_nfc_dep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !204

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %activation_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %activation_params, align 1
  %conv11 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef %conv11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %9 = ptrtoint ptr %activation_params to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %activation_params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp14.not = icmp eq i8 %10, 0
  br i1 %cmp14.not, label %do.end.cleanup_crit_edge, label %if.then16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i8 %10 to i32
  %atr_res = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %atr_res, ptr %incdec.ptr, i32 %conv13)
  br label %cleanup

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge8
  %activation_params21 = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12
  %incdec.ptr22 = getelementptr i8, ptr %data, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %14 = tail call i8 @llvm.umin.i8(i8 %13, i8 62)
  %15 = ptrtoint ptr %activation_params21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %activation_params21, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nci_extract_activation_params_nfc_dep, %if.then47)) #7
          to label %do.end52 [label %if.then47], !srcloc !204

if.then47:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %activation_params21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %activation_params21, align 1
  %conv49 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.89, i32 noundef %conv49) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %sw.bb20
  %18 = ptrtoint ptr %activation_params21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %activation_params21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp55.not = icmp eq i8 %19, 0
  br i1 %cmp55.not, label %do.end52.cleanup_crit_edge, label %if.then57

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = zext i8 %19 to i32
  %atr_req = getelementptr inbounds %struct.nci_rf_intf_activated_ntf, ptr %ntf, i32 0, i32 12, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %atr_req, ptr %incdec.ptr22, i32 %conv54)
  br label %cleanup

do.end64:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.89, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then57, %do.end52.cleanup_crit_edge, %if.then16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 177, %do.end64 ], [ 0, %do.end52.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/ntf.c", i32 756, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nci_ntf_packet.__UNIQUE_ID_ddebug511, !1, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/nci/ntf.c", i32 767, i32 4}
!9 = !{ptr @nci_ntf_packet._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @nci_ntf_packet._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/nfc/nci/ntf.c", i32 811, i32 3}
!13 = !{ptr @nci_ntf_packet._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nci_ntf_packet._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/nfc/nci/ntf.c", i32 37, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nci_core_reset_ntf_packet.__UNIQUE_ID_ddebug457, !16, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/nfc/nci/ntf.c", i32 54, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug458, !21, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/nfc/nci/ntf.c", i32 64, i32 3}
!27 = !{ptr @nci_core_conn_credits_ntf_packet.__UNIQUE_ID_ddebug459, !26, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/nfc/nci/ntf.c", i32 87, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nci_core_generic_error_ntf_packet.__UNIQUE_ID_ddebug460, !30, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!33 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/nfc/nci/ntf.c", i32 103, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nci_core_conn_intf_error_ntf_packet.__UNIQUE_ID_ddebug461, !35, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!38 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/nfc/nci/ntf.c", i32 338, i32 2}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug477, !40, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!43 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/nfc/nci/ntf.c", i32 339, i32 2}
!46 = !{ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug478, !45, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!47 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/nfc/nci/ntf.c", i32 340, i32 2}
!50 = !{ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug479, !49, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!51 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/nfc/nci/ntf.c", i32 341, i32 2}
!54 = !{ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug480, !53, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!55 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/nfc/nci/ntf.c", i32 367, i32 4}
!58 = !{ptr @nci_rf_discover_ntf_packet._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nci_rf_discover_ntf_packet._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/nfc/nci/ntf.c", i32 375, i32 2}
!62 = !{ptr @nci_rf_discover_ntf_packet.__UNIQUE_ID_ddebug481, !61, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!63 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/nfc/nci/ntf.c", i32 120, i32 2}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug464, !65, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!68 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/nfc/nci/ntf.c", i32 131, i32 2}
!71 = !{ptr @nci_extract_rf_params_nfca_passive_poll.__UNIQUE_ID_ddebug465, !70, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!72 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/nfc/nci/ntf.c", i32 145, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nci_extract_rf_params_nfcb_passive_poll.__UNIQUE_ID_ddebug468, !74, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!77 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/nfc/nci/ntf.c", i32 161, i32 2}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nci_extract_rf_params_nfcf_passive_poll.__UNIQUE_ID_ddebug471, !79, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!82 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/nfc/nci/ntf.c", i32 300, i32 3}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nci_add_new_target.__UNIQUE_ID_ddebug475, !84, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!87 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/nfc/nci/ntf.c", i32 313, i32 3}
!90 = !{ptr @nci_add_new_target.__UNIQUE_ID_ddebug476, !89, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!91 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/nfc/nci/ntf.c", i32 233, i32 3}
!94 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nci_add_new_protocol._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nci_add_new_protocol._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @nci_add_new_protocol._entry.53, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../net/nfc/nci/ntf.c", i32 270, i32 3}
!99 = !{ptr @nci_add_new_protocol._entry_ptr.54, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/nfc/nci/ntf.c", i32 276, i32 2}
!102 = !{ptr @nci_add_new_protocol.__UNIQUE_ID_ddebug474, !101, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!103 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/nfc/nci/ntf.c", i32 544, i32 2}
!106 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug499, !105, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/nfc/nci/ntf.c", i32 545, i32 2}
!109 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug500, !108, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!110 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug501, !112, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!112 = !{!"../net/nfc/nci/ntf.c", i32 546, i32 2}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/nfc/nci/ntf.c", i32 547, i32 2}
!115 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug502, !114, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!116 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/nfc/nci/ntf.c", i32 549, i32 2}
!119 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug503, !118, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!120 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/nfc/nci/ntf.c", i32 551, i32 2}
!123 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug504, !122, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!124 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug505, !126, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!126 = !{!"../net/nfc/nci/ntf.c", i32 553, i32 2}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/nfc/nci/ntf.c", i32 596, i32 4}
!129 = !{ptr @nci_rf_intf_activated_ntf_packet._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nci_rf_intf_activated_ntf_packet._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/nfc/nci/ntf.c", i32 608, i32 2}
!133 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug506, !132, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!134 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/nfc/nci/ntf.c", i32 610, i32 2}
!137 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug507, !136, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!138 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/nfc/nci/ntf.c", i32 611, i32 2}
!141 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug508, !140, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!142 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/nfc/nci/ntf.c", i32 612, i32 2}
!145 = !{ptr @nci_rf_intf_activated_ntf_packet.__UNIQUE_ID_ddebug509, !144, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!146 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/nfc/nci/ntf.c", i32 631, i32 4}
!149 = !{ptr @nci_rf_intf_activated_ntf_packet._entry.75, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.77, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/nfc/nci/ntf.c", i32 655, i32 5}
!153 = !{ptr @nci_rf_intf_activated_ntf_packet._entry.78, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.80, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/nfc/nci/ntf.c", i32 685, i32 5}
!157 = !{ptr @nci_rf_intf_activated_ntf_packet._entry.81, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @nci_rf_intf_activated_ntf_packet._entry_ptr.83, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/nfc/nci/ntf.c", i32 400, i32 3}
!161 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug484, !160, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!163 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/nfc/nci/ntf.c", i32 410, i32 3}
!166 = !{ptr @nci_extract_activation_params_iso_dep.__UNIQUE_ID_ddebug487, !165, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!167 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nci_extract_activation_params_iso_dep._entry, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../net/nfc/nci/ntf.c", i32 418, i32 3}
!170 = !{ptr @nci_extract_activation_params_iso_dep._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/nfc/nci/ntf.c", i32 439, i32 3}
!173 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug490, !172, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!175 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/nfc/nci/ntf.c", i32 449, i32 3}
!178 = !{ptr @nci_extract_activation_params_nfc_dep.__UNIQUE_ID_ddebug493, !177, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!179 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @nci_extract_activation_params_nfc_dep._entry, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../net/nfc/nci/ntf.c", i32 455, i32 3}
!182 = !{ptr @nci_extract_activation_params_nfc_dep._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/nfc/nci/ntf.c", i32 520, i32 3}
!185 = !{ptr @nci_store_general_bytes_nfc_dep._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @nci_store_general_bytes_nfc_dep._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/nfc/nci/ntf.c", i32 480, i32 2}
!189 = !{ptr @nci_target_auto_activated.__UNIQUE_ID_ddebug494, !188, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/nfc/nci/ntf.c", i32 696, i32 2}
!192 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @nci_rf_deactivate_ntf_packet.__UNIQUE_ID_ddebug510, !191, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!194 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 2148738546, i64 2148738551, i64 2148738564, i64 2148738608, i64 2148738642, i64 2148738663}
!205 = !{i64 2148256731, i64 2148256757, i64 2148256786, i64 2148256820, i64 2148256851, i64 2148256874}
