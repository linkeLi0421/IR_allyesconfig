; ModuleID = '/llk/IR_all_yes/drivers/nfc/microread/microread.c_pt.bc'
source_filename = "../drivers/nfc/microread/microread.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+microread_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_microread_probe\09\09\09\09"
module asm "\09.long\09__crc_microread_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_microread_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22microread_probe\22\09\09\09\09\09"
module asm "__kstrtabns_microread_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+microread_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_microread_remove\09\09\09\09"
module asm "\09.long\09__crc_microread_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_microread_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22microread_remove\22\09\09\09\09\09"
module asm "__kstrtabns_microread_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.microread_info = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@microread_gates = internal constant { [13 x %struct.nfc_hci_gate], [38 x i8] } { [13 x %struct.nfc_hci_gate] [%struct.nfc_hci_gate { i8 0, i8 1 }, %struct.nfc_hci_gate { i8 4, i8 4 }, %struct.nfc_hci_gate { i8 5, i8 5 }, %struct.nfc_hci_gate { i8 6, i8 0 }, %struct.nfc_hci_gate { i8 17, i8 16 }, %struct.nfc_hci_gate { i8 19, i8 18 }, %struct.nfc_hci_gate { i8 25, i8 24 }, %struct.nfc_hci_gate { i8 1, i8 2 }, %struct.nfc_hci_gate { i8 2, i8 3 }, %struct.nfc_hci_gate { i8 18, i8 17 }, %struct.nfc_hci_gate { i8 20, i8 21 }, %struct.nfc_hci_gate { i8 49, i8 31 }, %struct.nfc_hci_gate { i8 50, i8 32 }], [38 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICROREA\00", [23 x i8] zeroinitializer }, align 32
@microread_hci_ops = internal constant { %struct.nfc_hci_ops, [44 x i8] } { %struct.nfc_hci_ops { ptr @microread_open, ptr @microread_close, ptr null, ptr @microread_hci_ready, ptr @microread_xmit, ptr @microread_start_poll, ptr null, ptr @microread_dep_link_up, ptr @microread_dep_link_down, ptr @microread_target_from_gate, ptr @microread_complete_target_discovered, ptr @microread_im_transceive, ptr @microread_tm_send, ptr null, ptr @microread_event_received, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@microread_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013microread: Cannot allocate nfc hdev\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"microread_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/nfc/microread/microread.c\00", [62 x i8] zeroinitializer }, align 32
@microread_probe._entry_ptr = internal global ptr @microread_probe._entry, section ".printk_index", align 4
@__kstrtab_microread_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_microread_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_microread_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @microread_probe to i32), ptr @__kstrtab_microread_probe, ptr @__kstrtabns_microread_probe }, section "___ksymtab+microread_probe", align 4
@__kstrtab_microread_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_microread_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_microread_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @microread_remove to i32), ptr @__kstrtab_microread_remove, ptr @__kstrtabns_microread_remove }, section "___ksymtab+microread_remove", align 4
@__UNIQUE_ID_file271 = internal constant [47 x i8] c"microread.file=drivers/nfc/microread/microread\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [22 x i8] c"microread.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [47 x i8] c"microread.description=NFC driver for microread\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@microread_im_transceive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016microread: data exchange to gate 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"microread_im_transceive\00", [40 x i8] zeroinitializer }, align 32
@microread_im_transceive._entry_ptr = internal global ptr @microread_im_transceive._entry, section ".printk_index", align 4
@microread_im_transceive._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016microread: Abort im_transceive to invalid gate 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@microread_im_transceive._entry_ptr.8 = internal global ptr @microread_im_transceive._entry.6, section ".printk_index", align 4
@microread_event_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016microread: Microread received event 0x%x to gate 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"microread_event_received\00", [39 x i8] zeroinitializer }, align 32
@microread_event_received._entry_ptr = internal global ptr @microread_event_received._entry, section ".printk_index", align 4
@microread_target_discovered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016microread: target discovered to gate 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"microread_target_discovered\00", [36 x i8] zeroinitializer }, align 32
@microread_target_discovered._entry_ptr = internal global ptr @microread_target_discovered._entry, section ".printk_index", align 4
@microread_target_discovered._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016microread: discard target discovered to gate 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@microread_target_discovered._entry_ptr.15 = internal global ptr @microread_target_discovered._entry.13, section ".printk_index", align 4
@microread_target_discovered._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013microread: Failed to handle discovered target err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@microread_target_discovered._entry_ptr.18 = internal global ptr @microread_target_discovered._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 17, i64 18, i64 19, i64 20, i64 25, i64 50]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 33, i64 61]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 8, i64 17, i64 18, i64 19, i64 20, i64 25]
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"microread_gates\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 133, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 665, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"microread_hci_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 627, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 684, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 406, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 438, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 554, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 474, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 531, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [37 x i8] c"../drivers/nfc/microread/microread.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 544, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__ksymtab_microread_probe, ptr @__ksymtab_microread_remove, ptr @microread_event_received._entry, ptr @microread_event_received._entry_ptr, ptr @microread_im_transceive._entry, ptr @microread_im_transceive._entry.6, ptr @microread_im_transceive._entry_ptr, ptr @microread_im_transceive._entry_ptr.8, ptr @microread_probe._entry, ptr @microread_probe._entry_ptr, ptr @microread_target_discovered._entry, ptr @microread_target_discovered._entry.13, ptr @microread_target_discovered._entry.16, ptr @microread_target_discovered._entry_ptr, ptr @microread_target_discovered._entry_ptr.15, ptr @microread_target_discovered._entry_ptr.18, ptr @microread_gates, ptr @.str, ptr @microread_hci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_gates to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_hci_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_im_transceive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_im_transceive._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_event_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_target_discovered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_target_discovered._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microread_target_discovered._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @microread_probe(ptr noundef %phy_id, ptr noundef %phy_ops, ptr noundef %llc_name, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, i32 noundef %phy_payload, ptr nocapture noundef writeonly %hdev) #0 align 64 {
entry:
  %quirks = alloca i32, align 4
  %init_data = alloca %struct.nfc_hci_init_data, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quirks) #8
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %quirks, align 4
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %init_data) #8
  %1 = getelementptr inbounds i8, ptr %init_data, i32 27
  %2 = call ptr @memset(ptr %1, i32 255, i32 74)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy_ops, ptr %call7.i.i, align 8
  %phy_id2 = getelementptr inbounds %struct.microread_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %phy_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phy_id, ptr %phy_id2, align 4
  %6 = ptrtoint ptr %init_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 13, ptr %init_data, align 1
  %gates = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %gates, ptr @microread_gates, i32 26)
  %session_id = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %session_id, ptr @.str, i32 9)
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %quirks) #8
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  %add = add i32 %phy_headroom, 2
  %add5 = add i32 %phy_tailroom, 2
  %call6 = call ptr @nfc_hci_allocate_device(ptr noundef nonnull @microread_hci_ops, ptr noundef nonnull %init_data, i32 noundef %10, i32 noundef 126, ptr noundef %llc_name, i32 noundef %add, i32 noundef %add5, i32 noundef %phy_payload) #8
  %hdev7 = getelementptr inbounds %struct.microread_info, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %hdev7, align 8
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %err_alloc_hdev

if.end12:                                         ; preds = %if.end
  call void @nfc_hci_set_clientdata(ptr noundef nonnull %call6, ptr noundef nonnull %call7.i.i) #8
  %12 = ptrtoint ptr %hdev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev7, align 8
  %call15 = call i32 @nfc_hci_register_device(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %14 = ptrtoint ptr %hdev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev7, align 8
  br i1 %tobool16.not, label %if.end18, label %err_regdev

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %hdev, align 4
  br label %cleanup

err_regdev:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @nfc_hci_free_device(ptr noundef %15) #8
  br label %err_alloc_hdev

err_alloc_hdev:                                   ; preds = %err_regdev, %do.end
  %r.0 = phi i32 [ %call15, %err_regdev ], [ -12, %do.end ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_hdev, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %r.0, %err_alloc_hdev ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %init_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quirks) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_allocate_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_set_clientdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @microread_remove(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #8
  tail call void @nfc_hci_unregister_device(ptr noundef %hdev) #8
  tail call void @nfc_hci_free_device(ptr noundef %hdev) #8
  tail call void @kfree(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_get_clientdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_open(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %phy_id = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %3(ptr noundef %5) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microread_close(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %disable = getelementptr inbounds %struct.nfc_phy_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  %phy_id = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  tail call void %3(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_hci_ready(ptr noundef %hdev) #0 align 64 {
entry:
  %param = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #8
  %0 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %param, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 3)
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %param, align 1
  %call = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 63, ptr noundef nonnull %param, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 25, i8 noundef zeroext 63, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 1
  %call9 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 17, i8 noundef zeroext 63, ptr noundef nonnull %param, i32 noundef 3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 18, i8 noundef zeroext 63, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %param, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %2, align 1
  %call22 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 63, ptr noundef nonnull %param, i32 noundef 4, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.end4.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_xmit(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %phy_id = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %3(ptr noundef %5, ptr noundef %skb) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_start_poll(ptr noundef %hdev, i32 noundef %im_protocols, i32 noundef %tm_protocols) #0 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #8
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %mode, align 1, !annotation !57
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %param, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %and = and i32 %im_protocols, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %param, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %im_protocols, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %param, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %and12 = and i32 %im_protocols, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %0, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %and20 = and i32 %im_protocols, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param, align 1
  %11 = or i8 %10, 2
  store i8 %11, ptr %param, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %and28 = and i32 %im_protocols, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %param, align 1
  %14 = or i8 %13, 32
  store i8 %14, ptr %param, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %and36 = and i32 %im_protocols, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %if.then38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %17 = or i8 %16, 2
  store i8 %17, ptr %0, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end35.if.end43_crit_edge
  %or44 = or i32 %tm_protocols, %im_protocols
  %and45 = and i32 %or44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end57_crit_edge, label %if.then47

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then47:                                        ; preds = %if.end43
  %18 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev, align 4
  %gb_len = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %call = tail call ptr @nfc_get_local_general_bytes(ptr noundef %19, ptr noundef %gb_len) #8
  %gb = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %20 = ptrtoint ptr %gb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %gb, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then47.if.then53_crit_edge, label %lor.lhs.false

if.then47.if.then53_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false:                                    ; preds = %if.then47
  %21 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp51 = icmp eq i32 %22, 0
  br i1 %cmp51, label %lor.lhs.false.if.then53_crit_edge, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %if.then47.if.then53_crit_edge
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %lor.lhs.false.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  %im_protocols.addr.0 = phi i32 [ 0, %if.then53 ], [ %im_protocols, %lor.lhs.false.if.end57_crit_edge ], [ %im_protocols, %if.end43.if.end57_crit_edge ]
  %tm_protocols.addr.0 = phi i32 [ 0, %if.then53 ], [ %tm_protocols, %lor.lhs.false.if.end57_crit_edge ], [ %tm_protocols, %if.end43.if.end57_crit_edge ]
  %call58 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %mode, align 1
  %call62 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 1, ptr noundef nonnull %mode, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %and66 = and i32 %im_protocols.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %if.then68

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then68:                                        ; preds = %if.end65
  %gb69 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %24 = ptrtoint ptr %gb69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gb69, align 4
  %gb_len70 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %26 = ptrtoint ptr %gb_len70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gb_len70, align 4
  %call71 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 50, i8 noundef zeroext 1, ptr noundef %25, i32 noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then68.if.end75_crit_edge, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68.if.end75_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.end75:                                         ; preds = %if.then68.if.end75_crit_edge, %if.end65.if.end75_crit_edge
  %and76 = and i32 %tm_protocols.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end89_crit_edge, label %if.then78

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then78:                                        ; preds = %if.end75
  %gb79 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %28 = ptrtoint ptr %gb79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gb79, align 4
  %gb_len80 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %30 = ptrtoint ptr %gb_len80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gb_len80, align 4
  %call81 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 4, ptr noundef %29, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.then78
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %mode, align 1
  %call85 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 1, ptr noundef nonnull %mode, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end84.if.end89_crit_edge, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %if.end84.if.end89_crit_edge, %if.end75.if.end89_crit_edge
  %call90 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 62, ptr noundef nonnull %param, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end84.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ %call90, %if.end89 ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call71, %if.then68.cleanup_crit_edge ], [ %call81, %if.then78.cleanup_crit_edge ], [ %call85, %if.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_dep_link_up(ptr noundef %hdev, ptr nocapture noundef readonly %target, i8 noundef zeroext %comm_mode, ptr nocapture noundef readnone %gb, i32 noundef %gb_len) #0 align 64 {
entry:
  %rgb_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rgb_skb) #8
  %0 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rgb_skb, align 4
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %1 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hci_reader_gate, align 1
  %call = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext %2, i8 noundef zeroext 3, ptr noundef nonnull %rgb_skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rgb_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = add i32 %6, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %7)
  %8 = icmp ult i32 %7, -48
  br i1 %8, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %conv = trunc i32 %6 to i8
  %call7 = call i32 @nfc_set_remote_general_bytes(ptr noundef %10, ptr noundef %12, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end5.exit_crit_edge

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %15 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target, align 4
  %call12 = call i32 @nfc_dep_link_is_up(ptr noundef %14, i32 noundef %16, i8 noundef zeroext %comm_mode, i8 noundef zeroext 0) #8
  br label %exit

exit:                                             ; preds = %if.then10, %if.end5.exit_crit_edge, %if.end.exit_crit_edge
  %r.0 = phi i32 [ %call12, %if.then10 ], [ %call7, %if.end5.exit_crit_edge ], [ -71, %if.end.exit_crit_edge ]
  %17 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rgb_skb, align 4
  call void @kfree_skb_reason(ptr noundef %18, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgb_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_dep_link_down(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 50, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @microread_target_from_gate(ptr nocapture noundef readnone %hdev, i8 noundef zeroext %gate, ptr nocapture noundef writeonly %target) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %gate)
  %cond = icmp eq i8 %gate, 50
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported_protocols, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -71, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @microread_complete_target_discovered(ptr nocapture noundef readnone %hdev, i8 noundef zeroext %gate, ptr nocapture noundef readnone %target) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_im_transceive(ptr noundef %hdev, ptr nocapture noundef readonly %target, ptr noundef %skb, ptr noundef %cb, ptr noundef %cb_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #8
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %0 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hci_reader_gate, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #12
  %2 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hci_reader_gate, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end25 [
    i8 50, label %if.then
    i8 19, label %entry.sw.epilog_crit_edge
    i8 25, label %entry.sw.epilog_crit_edge59
    i8 17, label %entry.sw.epilog_crit_edge60
    i8 18, label %sw.bb12
    i8 20, label %sw.bb22
  ]

entry.sw.epilog_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call5, align 1
  %6 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hci_reader_gate, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call7 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext %7, i8 noundef zeroext 32, ptr noundef %9, i32 noundef %11) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data13, align 4
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len14, align 4
  %call15 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %13, i32 noundef %15) #8
  %neg = xor i16 %call15, -1
  %conv19 = trunc i16 %neg to i8
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %call.i, align 1
  %17 = lshr i16 %neg, 8
  %conv21 = trunc i16 %17 to i8
  %call.i58 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %18 = ptrtoint ptr %call.i58 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %call.i58, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = zext i8 %3 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv3) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb12, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge59, %entry.sw.epilog_crit_edge60
  %control_bits.0 = phi i8 [ -37, %sw.bb22 ], [ 27, %sw.bb12 ], [ -53, %entry.sw.epilog_crit_edge ], [ -53, %entry.sw.epilog_crit_edge59 ], [ -53, %entry.sw.epilog_crit_edge60 ]
  %call30 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  %19 = ptrtoint ptr %call30 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %control_bits.0, ptr %call30, align 1
  %async_cb_type = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %async_cb_type, align 4
  %async_cb = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %async_cb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cb, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.microread_info, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cb_context, ptr %async_cb_context, align 4
  %23 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hci_reader_gate, align 1
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data32, align 4
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len33, align 4
  %call34 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %24, i8 noundef zeroext 16, ptr noundef %26, i32 noundef %28, ptr noundef nonnull @microread_im_transceive_cb, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end25, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ 1, %do.end25 ], [ %call34, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_tm_send(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 16, ptr noundef %1, i32 noundef %3) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @microread_event_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %event, ptr noundef %skb) #0 align 64 {
entry:
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %conv = zext i8 %event to i32
  %conv2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv2) #12
  %2 = zext i8 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %event, label %entry.cleanup_crit_edge [
    i8 61, label %sw.bb
    i8 33, label %sw.bb4
    i8 17, label %entry.sw.bb13_crit_edge
    i8 20, label %entry.sw.bb13_crit_edge76
    i8 19, label %sw.bb14
    i8 16, label %sw.bb19
    i8 18, label %sw.bb36
  ]

entry.sw.bb13_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 76) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %exit.thread.i, label %if.end.i

exit.thread.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %do.end81.i

if.end.i:                                         ; preds = %sw.bb
  %hci_reader_gate.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %hci_reader_gate.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %hci_reader_gate.i, align 1
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %1, label %do.end73.i [
    i8 19, label %sw.bb.i
    i8 25, label %sw.bb21.i
    i8 17, label %sw.bb47.i
    i8 18, label %sw.bb54.i
    i8 20, label %sw.bb64.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %call4.i = tail call i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext %9) #8
  %supported_protocols.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %supported_protocols.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i, ptr %supported_protocols.i, align 4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %sens_res.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %sens_res.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %sens_res.i, align 8
  %arrayidx8.i = getelementptr i8, ptr %12, i32 2
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  %sel_res.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %sel_res.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sel_res.i, align 2
  %arrayidx10.i = getelementptr i8, ptr %12, i32 3
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i, align 1
  %nfcid1_len.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %nfcid1_len.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %nfcid1_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp13.i = icmp ugt i8 %20, 10
  br i1 %cmp13.i, label %sw.bb.i.exit.i_crit_edge, label %if.end16.i

sw.bb.i.exit.i_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end16.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv12.i = zext i8 %20 to i32
  %nfcid1.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 5
  %arrayidx18.i = getelementptr i8, ptr %12, i32 4
  %22 = call ptr @memcpy(ptr %nfcid1.i, ptr %arrayidx18.i, i32 %conv12.i)
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  %data22.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data22.i, align 4
  %arrayidx23.i = getelementptr i8, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23.i, align 1
  %call24.i = tail call i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext %26) #8
  %supported_protocols25.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %supported_protocols25.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call24.i, ptr %supported_protocols25.i, align 4
  %28 = ptrtoint ptr %data22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data22.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %sens_res28.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %sens_res28.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %sens_res28.i, align 8
  %arrayidx30.i = getelementptr i8, ptr %29, i32 2
  %33 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx30.i, align 1
  %sel_res31.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %sel_res31.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %sel_res31.i, align 2
  %arrayidx33.i = getelementptr i8, ptr %29, i32 3
  %36 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.i, align 1
  %nfcid1_len34.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %nfcid1_len34.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %nfcid1_len34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %37)
  %cmp37.i = icmp ugt i8 %37, 10
  br i1 %cmp37.i, label %sw.bb21.i.exit.i_crit_edge, label %if.end40.i

sw.bb21.i.exit.i_crit_edge:                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end40.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv36.i = zext i8 %37 to i32
  %nfcid141.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 5
  %arrayidx44.i = getelementptr i8, ptr %29, i32 4
  %39 = call ptr @memcpy(ptr %nfcid141.i, ptr %arrayidx44.i, i32 %conv36.i)
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %supported_protocols48.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %supported_protocols48.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 64, ptr %supported_protocols48.i, align 4
  %nfcid149.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 5
  %data51.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data51.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data51.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %42, align 1
  %45 = ptrtoint ptr %nfcid149.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %nfcid149.i, align 4
  %nfcid1_len53.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %nfcid1_len53.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %nfcid1_len53.i, align 1
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %supported_protocols55.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %supported_protocols55.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %supported_protocols55.i, align 4
  %data56.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data56.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #8
  %sens_res58.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %sens_res58.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %sens_res58.i, align 8
  %nfcid159.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 5
  %arrayidx62.i = getelementptr i8, ptr %49, i32 4
  %54 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx62.i, align 1
  %56 = ptrtoint ptr %nfcid159.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %nfcid159.i, align 4
  %nfcid1_len63.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %nfcid1_len63.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %nfcid1_len63.i, align 1
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %supported_protocols65.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %supported_protocols65.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %supported_protocols65.i, align 4
  %nfcid166.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 5
  %data68.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data68.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data68.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %60, align 1
  %63 = ptrtoint ptr %nfcid166.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %nfcid166.i, align 4
  %nfcid1_len70.i = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %nfcid1_len70.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 8, ptr %nfcid1_len70.i, align 1
  br label %sw.epilog.i

do.end73.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv2) #12
  br label %exit.i

sw.epilog.i:                                      ; preds = %sw.bb64.i, %sw.bb54.i, %sw.bb47.i, %if.end40.i, %if.end16.i
  %65 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hdev, align 4
  %call77.i = tail call i32 @nfc_targets_found(ptr noundef %66, ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #8
  br label %exit.i

exit.i:                                           ; preds = %sw.epilog.i, %do.end73.i, %sw.bb21.i.exit.i_crit_edge, %sw.bb.i.exit.i_crit_edge
  %r.0.i = phi i32 [ 0, %do.end73.i ], [ %call77.i, %sw.epilog.i ], [ -22, %sw.bb.i.exit.i_crit_edge ], [ -22, %sw.bb21.i.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not.i, label %exit.i.cleanup_crit_edge, label %exit.i.do.end81.i_crit_edge

exit.i.do.end81.i_crit_edge:                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81.i

exit.i.cleanup_crit_edge:                         ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end81.i:                                       ; preds = %exit.i.do.end81.i_crit_edge, %exit.thread.i
  %r.1132.i = phi i32 [ -12, %exit.thread.i ], [ %r.0.i, %exit.i.do.end81.i_crit_edge ]
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %r.1132.i) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp = icmp eq i32 %68, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %sub = add i32 %68, -1
  %arrayidx7 = getelementptr i8, ptr %70, i32 %sub
  %71 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not = icmp eq i8 %72, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #8
  %73 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hdev, align 4
  %call12 = tail call i32 @nfc_tm_data_received(ptr noundef %74, ptr noundef %skb) #8
  br label %cleanup

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge76
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hdev, align 4
  %data16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %77 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data16, align 4
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len17, align 4
  %call18 = tail call i32 @nfc_tm_activated(ptr noundef %76, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %78, i32 noundef %80) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %81 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp21 = icmp eq i32 %82, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end24:                                         ; preds = %sw.bb19
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %83 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data25, align 4
  %sub27 = add i32 %82, -1
  %arrayidx28 = getelementptr i8, ptr %84, i32 %sub27
  %85 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool29.not = icmp eq i8 %86, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub27) #8
  %87 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hdev, align 4
  %call35 = tail call i32 @nfc_tm_data_received(ptr noundef %88, ptr noundef %skb) #8
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %89 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %mode, align 1
  %call37 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 1, ptr noundef nonnull %mode, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %sw.bb36.cleanup_crit_edge

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext %1, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %sw.bb36.cleanup_crit_edge, %if.end31, %if.then30, %if.then23, %sw.bb14, %sw.bb13, %if.end9, %if.then8, %if.then, %do.end81.i, %exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %if.then23 ], [ -5, %if.then30 ], [ 0, %sw.bb13 ], [ -71, %if.then ], [ -5, %if.then8 ], [ 1, %entry.cleanup_crit_edge ], [ %call37, %sw.bb36.cleanup_crit_edge ], [ %call41, %if.end40 ], [ %call35, %if.end31 ], [ %call18, %sw.bb14 ], [ %call12, %if.end9 ], [ 0, %exit.i.cleanup_crit_edge ], [ 0, %do.end81.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_set_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @microread_im_transceive_cb(ptr nocapture noundef readonly %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %async_cb_type = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_cb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %cmp = icmp eq i32 %err, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %cmp, label %if.then, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %sw.bb
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %async_cb = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 4
  %4 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 5
  %6 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async_cb_context, align 4
  tail call void %5(ptr noundef %7, ptr noundef null, i32 noundef -71) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr i8, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp4.not = icmp eq i8 %11, 0
  br i1 %cmp4.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @nfc_hci_result_to_errno(i8 noundef zeroext %11) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %async_cb11 = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 4
  %12 = ptrtoint ptr %async_cb11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %async_cb11, align 4
  %async_cb_context12 = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 5
  %14 = ptrtoint ptr %async_cb_context12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async_cb_context12, align 4
  tail call void %13(ptr noundef %15, ptr noundef null, i32 noundef %call) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %sw.bb.if.end16_crit_edge
  %async_cb17 = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 4
  %16 = ptrtoint ptr %async_cb17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async_cb17, align 4
  %async_cb_context18 = getelementptr inbounds %struct.microread_info, ptr %context, i32 0, i32 5
  %18 = ptrtoint ptr %async_cb_context18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %async_cb_context18, align 4
  tail call void %17(ptr noundef %19, ptr noundef %skb, i32 noundef %err) #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  br i1 %cmp, label %if.then21, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.default.cleanup_crit_edge, %if.end16, %if.then6, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_result_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/microread/microread.c", i32 665, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nfc/microread/microread.c", i32 684, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @microread_probe._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @microread_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_microread_probe, !9, !"__ksymtab_microread_probe", i1 false, i1 false}
!9 = !{!"../drivers/nfc/microread/microread.c", i32 708, i32 1}
!10 = !{ptr @__ksymtab_microread_remove, !11, !"__ksymtab_microread_remove", i1 false, i1 false}
!11 = !{!"../drivers/nfc/microread/microread.c", i32 718, i32 1}
!12 = !{ptr @__UNIQUE_ID_file271, !13, !"__UNIQUE_ID_file271", i1 false, i1 false}
!13 = !{!"../drivers/nfc/microread/microread.c", i32 720, i32 1}
!14 = !{ptr @__UNIQUE_ID_license272, !13, !"__UNIQUE_ID_license272", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description273, !16, !"__UNIQUE_ID_description273", i1 false, i1 false}
!16 = !{!"../drivers/nfc/microread/microread.c", i32 721, i32 1}
!17 = !{ptr @microread_gates, !18, !"microread_gates", i1 false, i1 false}
!18 = !{!"../drivers/nfc/microread/microread.c", i32 133, i32 34}
!19 = !{ptr @microread_hci_ops, !20, !"microread_hci_ops", i1 false, i1 false}
!20 = !{!"../drivers/nfc/microread/microread.c", i32 627, i32 33}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nfc/microread/microread.c", i32 406, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @microread_im_transceive._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @microread_im_transceive._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nfc/microread/microread.c", i32 438, i32 3}
!28 = !{ptr @microread_im_transceive._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @microread_im_transceive._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/microread/microread.c", i32 554, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @microread_event_received._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @microread_event_received._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/microread/microread.c", i32 474, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @microread_target_discovered._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @microread_target_discovered._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/microread/microread.c", i32 531, i32 3}
!42 = !{ptr @microread_target_discovered._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @microread_target_discovered._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/microread/microread.c", i32 544, i32 3}
!46 = !{ptr @microread_target_discovered._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @microread_target_discovered._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
