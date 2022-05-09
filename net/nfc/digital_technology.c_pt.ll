; ModuleID = '/llk/IR_all_yes/net/nfc/digital_technology.c_pt.bc'
source_filename = "../net/nfc/digital_technology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.70, %union.anon.73, %union.anon.74, [48 x i8], %union.anon.75, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.77, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr, %union.anon.72 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%union.anon.74 = type { i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.79, i32, i32, i32, i16, i16, %union.anon.81, i32, %union.anon.82, %union.anon.83, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.79 = type { i32 }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.digital_sensb_req = type { i8, i8, i8 }
%struct.digital_sensb_res = type { i8, [4 x i8], [4 x i8], [3 x i8] }
%struct.digital_attrib_req = type { i8, [4 x i8], i8, i8, i8, i8 }
%struct.digital_sensf_req = type { i8, i8, i8, i8, i8 }
%struct.digital_sensf_res = type { i8, [8 x i8], [2 x i8], [3 x i8], i8, i8, i8, [2 x i8] }
%struct.digital_iso15693_inv_req = type <{ i8, i8, i8, i64 }>
%struct.digital_iso15693_inv_res = type <{ i8, i8, i64 }>
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.digital_sdd_res = type { [4 x i8], i8 }
%struct.digital_sel_req = type { i8, i8, [4 x i8], i8 }

@digital_in_iso_dep_pull_sod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013digital: %s: ISO_DEP R-block and S-block not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"digital_in_iso_dep_pull_sod\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/nfc/digital_technology.c\00", [35 x i8] zeroinitializer }, align 32
@digital_in_iso_dep_pull_sod._entry_ptr = internal global ptr @digital_in_iso_dep_pull_sod._entry, section ".printk_index", align 4
@digital_in_iso_dep_pull_sod._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013digital: %s: DID field in ISO_DEP PCB not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@digital_in_iso_dep_pull_sod._entry_ptr.5 = internal global ptr @digital_in_iso_dep_pull_sod._entry.3, section ".printk_index", align 4
@digital_in_recv_mifare_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013digital: %s: %d: NFC Digital Protocol error: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"digital_in_recv_mifare_res\00", [37 x i8] zeroinitializer }, align 32
@digital_in_recv_mifare_res._entry_ptr = internal global ptr @digital_in_recv_mifare_res._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"9.4.1.2\00", [24 x i8] zeroinitializer }, align 32
@digital_tg_recv_sensf_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.2, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digital_tg_recv_sensf_req\00", [38 x i8] zeroinitializer }, align 32
@digital_tg_recv_sensf_req._entry_ptr = internal global ptr @digital_tg_recv_sensf_req._entry, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6.4.1.8\00", [24 x i8] zeroinitializer }, align 32
@digital_in_recv_sens_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"digital_in_recv_sens_res\00", [39 x i8] zeroinitializer }, align 32
@digital_in_recv_sens_res._entry_ptr = internal global ptr @digital_in_recv_sens_res._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4.6.3.3\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@digital_in_recv_sdd_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_recv_sdd_res\00", [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sdd_res._entry_ptr = internal global ptr @digital_in_recv_sdd_res._entry, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4.7.2.8\00", [24 x i8] zeroinitializer }, align 32
@digital_in_recv_sdd_res._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sdd_res._entry_ptr.16 = internal global ptr @digital_in_recv_sdd_res._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4.7.2.6\00", [24 x i8] zeroinitializer }, align 32
@digital_in_recv_sel_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.18, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_recv_sel_res\00", [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sel_res._entry_ptr = internal global ptr @digital_in_recv_sel_res._entry, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4.4.1.3\00", [24 x i8] zeroinitializer }, align 32
@digital_ats_fsc = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\10\18 (0@`\80", [24 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digital_in_recv_sensb_res\00", [38 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry_ptr = internal global ptr @digital_in_recv_sensb_res._entry, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.6.2.1\00", [24 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry_ptr.23 = internal global ptr @digital_in_recv_sensb_res._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.6.2\00", [26 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry_ptr.26 = internal global ptr @digital_in_recv_sensb_res._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5.6.2.12\00", [23 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_sensb_res._entry_ptr.29 = internal global ptr @digital_in_recv_sensb_res._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5.6.2.16\00", [23 x i8] zeroinitializer }, align 32
@digital_in_recv_attrib_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.31, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"digital_in_recv_attrib_res\00", [37 x i8] zeroinitializer }, align 32
@digital_in_recv_attrib_res._entry_ptr = internal global ptr @digital_in_recv_attrib_res._entry, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"12.6.2\00", [25 x i8] zeroinitializer }, align 32
@digital_in_recv_attrib_res._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.31, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_attrib_res._entry_ptr.34 = internal global ptr @digital_in_recv_attrib_res._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"12.6.2.1\00", [23 x i8] zeroinitializer }, align 32
@digital_in_recv_sensf_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.36, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digital_in_recv_sensf_res\00", [38 x i8] zeroinitializer }, align 32
@digital_in_recv_sensf_res._entry_ptr = internal global ptr @digital_in_recv_sensf_res._entry, section ".printk_index", align 4
@digital_in_recv_iso15693_inv_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.37, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"digital_in_recv_iso15693_inv_res\00", [63 x i8] zeroinitializer }, align 32
@digital_in_recv_iso15693_inv_res._entry_ptr = internal global ptr @digital_in_recv_iso15693_inv_res._entry, section ".printk_index", align 4
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ISO15693 - 10.3.1\00", [46 x i8] zeroinitializer }, align 32
@digital_tg_recv_sel_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.39, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_tg_recv_sel_req\00", [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_sel_req._entry_ptr = internal global ptr @digital_tg_recv_sel_req._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 38, i64 82]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 181, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 186, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 558, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1188, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 502, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 403, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 414, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 289, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"digital_ats_fsc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 83, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 660, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 668, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 674, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 680, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 589, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 597, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 764, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 861, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [32 x i8] c"../net/nfc/digital_technology.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 970, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @digital_in_iso_dep_pull_sod._entry, ptr @digital_in_iso_dep_pull_sod._entry.3, ptr @digital_in_iso_dep_pull_sod._entry_ptr, ptr @digital_in_iso_dep_pull_sod._entry_ptr.5, ptr @digital_in_recv_attrib_res._entry, ptr @digital_in_recv_attrib_res._entry.33, ptr @digital_in_recv_attrib_res._entry_ptr, ptr @digital_in_recv_attrib_res._entry_ptr.34, ptr @digital_in_recv_iso15693_inv_res._entry, ptr @digital_in_recv_iso15693_inv_res._entry_ptr, ptr @digital_in_recv_mifare_res._entry, ptr @digital_in_recv_mifare_res._entry_ptr, ptr @digital_in_recv_sdd_res._entry, ptr @digital_in_recv_sdd_res._entry.15, ptr @digital_in_recv_sdd_res._entry_ptr, ptr @digital_in_recv_sdd_res._entry_ptr.16, ptr @digital_in_recv_sel_res._entry, ptr @digital_in_recv_sel_res._entry_ptr, ptr @digital_in_recv_sens_res._entry, ptr @digital_in_recv_sens_res._entry_ptr, ptr @digital_in_recv_sensb_res._entry, ptr @digital_in_recv_sensb_res._entry.22, ptr @digital_in_recv_sensb_res._entry.25, ptr @digital_in_recv_sensb_res._entry.28, ptr @digital_in_recv_sensb_res._entry_ptr, ptr @digital_in_recv_sensb_res._entry_ptr.23, ptr @digital_in_recv_sensb_res._entry_ptr.26, ptr @digital_in_recv_sensb_res._entry_ptr.29, ptr @digital_in_recv_sensf_res._entry, ptr @digital_in_recv_sensf_res._entry_ptr, ptr @digital_tg_recv_sel_req._entry, ptr @digital_tg_recv_sel_req._entry_ptr, ptr @digital_tg_recv_sensf_req._entry, ptr @digital_tg_recv_sensf_req._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @digital_ats_fsc, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_iso_dep_pull_sod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_iso_dep_pull_sod._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_mifare_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_sensf_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sens_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sdd_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sdd_res._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sel_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ats_fsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sensb_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sensb_res._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sensb_res._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sensb_res._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_attrib_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_attrib_res._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_sensf_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_iso15693_inv_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_sel_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_iso_dep_pull_sod(ptr nocapture noundef readnone %ddev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp3.not = icmp ult i8 %5, 64
  br i1 %cmp3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end12 ], [ 0, %if.end15 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_iso_dep_push_sod(ptr nocapture noundef %ddev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 3
  %target_fsc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 28
  %2 = ptrtoint ptr %target_fsc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %target_fsc, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %6 = or i8 %5, 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %8, align 1
  %10 = load i8, ptr %curr_nfc_dep_pni, align 2
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  store i8 %12, ptr %curr_nfc_dep_pni, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sens_req(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef 1) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 38, ptr %call.i, align 1
  %call.i25 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call5, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sens_res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool10.not = icmp eq i32 %call.i25, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i25, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @digital_skb_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_sens_res(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then37.sink.split_crit_edge, label %if.end

entry.if.then37.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37.sink.split

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.end.if.then37.sink.split_crit_edge, label %if.end3

if.end.if.then37.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37.sink.split

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end3.if.then37.sink.split_crit_edge, label %if.end6

if.end3.if.then37.sink.split_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37.sink.split

if.end6:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %sens_res = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %sens_res to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %sens_res, align 8
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %and11 = and i32 %conv, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 3072
  %9 = and i32 %conv, 3103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %9)
  %10 = icmp ne i32 %9, 3072
  %or.cond54 = or i1 %tobool8.not, %cmp12
  %or.cond60 = and i1 %10, %or.cond54
  br i1 %or.cond60, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, i32 noundef 502, ptr noundef nonnull @.str.12) #9
  br label %if.then37.sink.split

if.end26:                                         ; preds = %if.end6
  %11 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %11)
  %cmp30 = icmp eq i16 %11, 3072
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 @digital_target_found(ptr noundef %ddev, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1) #6
  br label %exit

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call fastcc i32 @digital_in_send_sdd_req(ptr noundef %ddev, ptr noundef nonnull %call7.i.i)
  br label %exit

exit:                                             ; preds = %if.else, %if.then32
  %rc.0 = phi i32 [ %call33, %if.then32 ], [ %call34, %if.else ]
  tail call void @consume_skb(ptr noundef %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool36.not = icmp eq i32 %rc.0, 0
  br i1 %tobool36.not, label %exit.if.end38_crit_edge, label %exit.if.then37_crit_edge

exit.if.then37_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

exit.if.end38_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37.sink.split:                             ; preds = %do.end, %if.end3.if.then37.sink.split_crit_edge, %if.end.if.then37.sink.split_crit_edge, %entry.if.then37.sink.split_crit_edge
  %.sink = phi ptr [ null, %entry.if.then37.sink.split_crit_edge ], [ %resp, %do.end ], [ %resp, %if.end.if.then37.sink.split_crit_edge ], [ %resp, %if.end3.if.then37.sink.split_crit_edge ]
  %target.059.ph = phi ptr [ null, %entry.if.then37.sink.split_crit_edge ], [ %call7.i.i, %do.end ], [ null, %if.end.if.then37.sink.split_crit_edge ], [ null, %if.end3.if.then37.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  br label %if.then37

if.then37:                                        ; preds = %if.then37.sink.split, %exit.if.then37_crit_edge
  %target.059 = phi ptr [ %call7.i.i, %exit.if.then37_crit_edge ], [ %target.059.ph, %if.then37.sink.split ]
  tail call void @kfree(ptr noundef %target.059) #6
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %exit.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_recv_mifare_res(ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 18, label %if.then
    i32 1, label %land.lhs.true
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @digital_skb_check_crc(ptr noundef %resp, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 558, ptr noundef nonnull @.str.8) #9
  br label %return

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp6 = icmp eq i8 %6, 10
  br i1 %cmp6, label %if.then8, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  br label %return

return:                                           ; preds = %if.then8, %land.lhs.true.return_crit_edge, %do.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then8 ], [ 0, %if.then.return_crit_edge ], [ -5, %entry.return_crit_edge ], [ -5, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sensb_req(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 3) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef 3) #6
  %0 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %call9, align 1
  %afi = getelementptr inbounds %struct.digital_sensb_req, ptr %call9, i32 0, i32 1
  %1 = ptrtoint ptr %afi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %afi, align 1
  %param = getelementptr inbounds %struct.digital_sensb_req, ptr %call9, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %param, align 1
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call5, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sensb_res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then12 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_sensb_res(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then53_crit_edge, label %if.end

entry.if.then53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp.not = icmp eq i32 %1, 12
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef 660, ptr noundef nonnull @.str.21) #9
  br label %if.then53

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %5)
  %cmp5.not = icmp eq i8 %5, 80
  br i1 %cmp5.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef 668, ptr noundef nonnull @.str.24) #9
  br label %if.then53

if.end13:                                         ; preds = %if.end4
  %arrayidx = getelementptr %struct.digital_sensb_res, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %7 to i32
  %and = and i32 %conv14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef 674, ptr noundef nonnull @.str.27) #9
  br label %if.then53

if.end21:                                         ; preds = %if.end13
  %and25 = and i32 %conv14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef 680, ptr noundef nonnull @.str.30) #9
  br label %if.then53

if.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp40 = icmp slt i8 %7, 0
  br i1 %cmp40, label %if.end33.if.end46_crit_edge, label %if.else

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %8 = lshr i8 %7, 4
  %conv39 = zext i8 %8 to i32
  %arrayidx43 = getelementptr [8 x i8], ptr @digital_ats_fsc, i32 0, i32 %conv39
  %9 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %10 to i16
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end33.if.end46_crit_edge
  %conv44.sink = phi i16 [ %conv44, %if.else ], [ 256, %if.end33.if.end46_crit_edge ]
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 28
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv44.sink, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 76) #10
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %if.end46.if.then53_crit_edge, label %if.end50

if.end46.if.then53_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.end50:                                         ; preds = %if.end46
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 9) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end50.if.then53_crit_edge, label %if.end.i

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.end.i:                                         ; preds = %if.end50
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #6
  %14 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 29, ptr %call1.i, align 1
  %nfcid0.i = getelementptr inbounds %struct.digital_attrib_req, ptr %call1.i, i32 0, i32 1
  %nfcid02.i = getelementptr inbounds %struct.digital_sensb_res, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %nfcid02.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nfcid02.i, align 1
  %17 = ptrtoint ptr %nfcid0.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %nfcid0.i, align 1
  %param1.i = getelementptr inbounds %struct.digital_attrib_req, ptr %call1.i, i32 0, i32 2
  %18 = ptrtoint ptr %param1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %param1.i, align 1
  %param2.i = getelementptr inbounds %struct.digital_attrib_req, ptr %call1.i, i32 0, i32 3
  %19 = ptrtoint ptr %param2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %param2.i, align 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = and i8 %21, 7
  %param3.i = getelementptr inbounds %struct.digital_attrib_req, ptr %call1.i, i32 0, i32 4
  %23 = ptrtoint ptr %param3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %param3.i, align 1
  %param4.i = getelementptr inbounds %struct.digital_attrib_req, ptr %call1.i, i32 0, i32 5
  %24 = ptrtoint ptr %param4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %param4.i, align 1
  %call.i.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_attrib_res, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %exit.thread74, label %if.then7.i

exit.thread74:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %resp) #6
  br label %if.end54

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.then53

if.then53:                                        ; preds = %if.then7.i, %if.end50.if.then53_crit_edge, %if.end46.if.then53_crit_edge, %do.end30, %do.end18, %do.end10, %do.end, %entry.if.then53_crit_edge
  %.sink = phi ptr [ %resp, %do.end ], [ %resp, %do.end10 ], [ %resp, %do.end30 ], [ %resp, %do.end18 ], [ %resp, %if.end46.if.then53_crit_edge ], [ %resp, %if.end50.if.then53_crit_edge ], [ %resp, %if.then7.i ], [ null, %entry.if.then53_crit_edge ]
  %target.073 = phi ptr [ null, %do.end ], [ null, %do.end10 ], [ null, %do.end30 ], [ null, %do.end18 ], [ null, %if.end46.if.then53_crit_edge ], [ %call7.i.i, %if.end50.if.then53_crit_edge ], [ %call7.i.i, %if.then7.i ], [ null, %entry.if.then53_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  tail call void @kfree(ptr noundef %target.073) #6
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %exit.thread74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sensf_req(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rf_tech to i32
  %call = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 5) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call6, i32 noundef 5) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %sc1 = getelementptr inbounds %struct.digital_sensf_req, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %sc1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %sc1, align 1
  %sc2 = getelementptr inbounds %struct.digital_sensf_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sc2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sc2, align 1
  %rc12 = getelementptr inbounds %struct.digital_sensf_req, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %rc12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rc12, align 1
  %tsn = getelementptr inbounds %struct.digital_sensf_req, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tsn to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tsn, align 1
  %call15 = tail call ptr @skb_push(ptr noundef nonnull %call6, i32 noundef 1) #6
  %7 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %call15, align 1
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %8 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_skb_add_crc(ptr noundef nonnull %call6, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end9.if.end18_crit_edge
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call6, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sensf_res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call6, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then21 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_sensf_res(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  %target = alloca %struct.nfc_target, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %target) #6
  %0 = call ptr @memset(ptr %target, i32 255, i32 76)
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31.critedge, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %2)
  %cmp = icmp ult i32 %2, 17
  br i1 %cmp, label %if.end.exit.thread_crit_edge, label %if.end3

if.end.exit.thread_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.end3:                                          ; preds = %if.end
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %3 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end3
  %call.i = tail call i32 @digital_skb_check_crc(ptr noundef %resp, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then4.if.end10_crit_edge, label %do.end

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.36, i32 noundef 764, ptr noundef nonnull @.str.10) #9
  br label %exit.thread

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %call11 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #6
  %5 = call ptr @memset(ptr %target, i32 0, i32 76)
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %sensf_res12 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 11
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = call ptr @memcpy(ptr %sensf_res12, ptr %7, i32 %9)
  %conv = trunc i32 %9 to i8
  %sensf_res_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 10
  %11 = ptrtoint ptr %sensf_res_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %sensf_res_len, align 4
  %nfcid2 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 7
  %nfcid216 = getelementptr inbounds %struct.digital_sensf_res, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %nfcid216 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %nfcid216, align 1
  %14 = ptrtoint ptr %nfcid2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %nfcid2, align 1
  %nfcid2_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 6
  %15 = ptrtoint ptr %nfcid2_len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %nfcid2_len, align 2
  %.mask = and i64 %13, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %.mask)
  %cmp20 = icmp eq i64 %.mask, 72057594037927936
  br i1 %cmp20, label %land.lhs.true, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %arrayidx23 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %17)
  %cmp25 = icmp eq i8 %17, -2
  br i1 %cmp25, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end10.if.else_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else, %land.lhs.true.if.end28_crit_edge
  %proto.0 = phi i8 [ 3, %if.else ], [ 5, %land.lhs.true.if.end28_crit_edge ]
  %call29 = call i32 @digital_target_found(ptr noundef %ddev, ptr noundef nonnull %target, i8 noundef zeroext %proto.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %phi.cmp = icmp eq i32 %call29, 0
  call void @consume_skb(ptr noundef %resp) #6
  br i1 %phi.cmp, label %if.end28.if.end32_crit_edge, label %if.end28.if.then31_crit_edge

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

exit.thread:                                      ; preds = %do.end, %if.end.exit.thread_crit_edge
  tail call void @consume_skb(ptr noundef %resp) #6
  br label %if.then31

if.then31.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef null) #6
  br label %if.then31

if.then31:                                        ; preds = %if.then31.critedge, %exit.thread, %if.end28.if.then31_crit_edge
  call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %target) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_iso15693_inv_req(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 11) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef 3) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 38, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_iso15693_inv_req, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cmd, align 1
  %mask_len = getelementptr inbounds %struct.digital_iso15693_inv_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mask_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mask_len, align 1
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call5, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_iso15693_inv_res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call.i, %if.then12 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_iso15693_inv_res(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then13.sink.split_crit_edge, label %if.end

entry.if.then13.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.sink.split

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end3, label %if.end.if.then13.sink.split_crit_edge

if.end.if.then13.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.sink.split

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.37, i32 noundef 861, ptr noundef nonnull @.str.38) #9
  br label %if.then13.sink.split

if.end6:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.if.then13.sink.split_crit_edge, label %if.end10

if.end6.if.then13.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.sink.split

if.end10:                                         ; preds = %if.end6
  %is_iso15693 = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %is_iso15693 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_iso15693, align 1
  %dsfid = getelementptr inbounds %struct.digital_iso15693_inv_res, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dsfid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dsfid, align 1
  %iso15693_dsfid = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %iso15693_dsfid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %iso15693_dsfid, align 2
  %iso15693_uid = getelementptr inbounds %struct.nfc_target, ptr %call7.i.i, i32 0, i32 16
  %uid = getelementptr inbounds %struct.digital_iso15693_inv_res, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %uid, align 1
  %14 = ptrtoint ptr %iso15693_uid to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %iso15693_uid, align 1
  %call11 = tail call i32 @digital_target_found(ptr noundef %ddev, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 7) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  tail call void @consume_skb(ptr noundef %resp) #6
  br i1 %phi.cmp, label %if.end10.if.end14_crit_edge, label %if.end10.if.then13_crit_edge

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13.sink.split:                             ; preds = %if.end6.if.then13.sink.split_crit_edge, %do.end, %if.end.if.then13.sink.split_crit_edge, %entry.if.then13.sink.split_crit_edge
  %.sink = phi ptr [ %resp, %do.end ], [ %resp, %if.end.if.then13.sink.split_crit_edge ], [ %resp, %if.end6.if.then13.sink.split_crit_edge ], [ null, %entry.if.then13.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  br label %if.then13

if.then13:                                        ; preds = %if.then13.sink.split, %if.end10.if.then13_crit_edge
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_sens_req(ptr noundef %ddev, ptr nocapture readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then10_crit_edge, label %if.end

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.then10_crit_edge, label %lor.lhs.false

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %5, label %lor.lhs.false.if.then10_crit_edge [
    i8 38, label %lor.lhs.false.if.end7_crit_edge
    i8 82, label %lor.lhs.false.if.end7_crit_edge27
  ]

lor.lhs.false.if.end7_crit_edge27:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge27
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 2) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.if.then10_crit_edge, label %if.end.i

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #6
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %call1.i, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx2.i, align 1
  %call3.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sdd_req, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end11_crit_edge, label %if.end6.i.cleanup.sink.split.i_crit_edge

if.end6.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end6.i.if.end11_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

cleanup.sink.split.i:                             ; preds = %if.end6.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.then10

if.then10:                                        ; preds = %cleanup.sink.split.i, %if.end7.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge, %entry.if.then10_crit_edge
  %resp.addr.021 = phi ptr [ %resp, %lor.lhs.false.if.then10_crit_edge ], [ %resp, %if.end.if.then10_crit_edge ], [ %resp, %if.end7.if.then10_crit_edge ], [ %resp, %cleanup.sink.split.i ], [ null, %entry.if.then10_crit_edge ]
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.i.if.end11_crit_edge
  %resp.addr.022 = phi ptr [ %resp.addr.021, %if.then10 ], [ %resp, %if.end6.i.if.end11_crit_edge ]
  tail call void @consume_skb(ptr noundef %resp.addr.022) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_poll_next_tech(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_sensf_req(ptr noundef %ddev, ptr nocapture readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then18_crit_edge, label %if.end

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end:                                           ; preds = %entry
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @digital_skb_check_crc(ptr noundef %resp, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 1188, ptr noundef nonnull @.str.10) #9
  br label %if.then18

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end10, label %if.end8.if.then18_crit_edge

if.end8.if.then18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end10:                                         ; preds = %if.end8
  %call11 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12.not = icmp eq i8 %7, 0
  br i1 %cmp12.not, label %if.end15, label %if.end10.if.then18_crit_edge

if.end10.if.then18_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end15:                                         ; preds = %if.end10
  %rc1.i = getelementptr inbounds %struct.digital_sensf_req, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rc1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i30 = icmp eq i8 %9, 0
  %spec.select.i = select i1 %cmp.i30, i32 17, i32 19
  %call.i31 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef %spec.select.i) #6
  %tobool.not.i = icmp eq ptr %call.i31, null
  br i1 %tobool.not.i, label %if.end15.if.then18_crit_edge, label %if.end7.i

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end7.i:                                        ; preds = %if.end15
  %call9.i = tail call ptr @skb_put(ptr noundef nonnull %call.i31, i32 noundef %spec.select.i) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i31, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 %spec.select.i)
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %11, align 1
  %nfcid2.i = getelementptr inbounds %struct.digital_sensf_res, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %nfcid2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %nfcid2.i, align 1
  %arrayidx12.i = getelementptr %struct.digital_sensf_res, ptr %11, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -2, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.digital_sensf_res, ptr %11, i32 0, i32 1, i32 2
  tail call void @get_random_bytes(ptr noundef %arrayidx14.i, i32 noundef 6) #6
  %16 = ptrtoint ptr %rc1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rc1.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %17, label %if.end7.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb20.i
  ]

if.end7.i.sw.epilog.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sc1.i = getelementptr inbounds %struct.digital_sensf_req, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sc1.i, align 1
  %rd.i = getelementptr inbounds %struct.digital_sensf_res, ptr %11, i32 0, i32 7
  %21 = ptrtoint ptr %rd.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rd.i, align 1
  %sc2.i = getelementptr inbounds %struct.digital_sensf_req, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %sc2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sc2.i, align 1
  br label %sw.epilog.sink.split.i

sw.bb20.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %rd21.i = getelementptr inbounds %struct.digital_sensf_res, ptr %11, i32 0, i32 7
  %24 = ptrtoint ptr %rd21.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rd21.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb20.i, %sw.bb.i
  %.sink.i = phi i8 [ -113, %sw.bb20.i ], [ %23, %sw.bb.i ]
  %arrayidx24.i = getelementptr %struct.digital_sensf_res, ptr %11, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink.i, ptr %arrayidx24.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end7.i.sw.epilog.i_crit_edge
  %26 = trunc i32 %spec.select.i to i8
  %conv26.i = add nuw nsw i8 %26, 1
  %call27.i = tail call ptr @skb_push(ptr noundef nonnull %call.i31, i32 noundef 1) #6
  %27 = ptrtoint ptr %call27.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26.i, ptr %call27.i, align 1
  %28 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_capabilities, align 4
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %sw.epilog.i.if.end30.i_crit_edge

sw.epilog.i.if.end30.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then29.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_skb_add_crc(ptr noundef nonnull %call.i31, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %sw.epilog.i.if.end30.i_crit_edge
  %call.i.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call.i31, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_atr_or_sensf_req, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end19_crit_edge, label %if.then33.i

if.end30.i.if.end19_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i31, i32 noundef 0) #6
  br label %if.then18

if.then18:                                        ; preds = %if.then33.i, %if.end15.if.then18_crit_edge, %if.end10.if.then18_crit_edge, %if.end8.if.then18_crit_edge, %do.end, %entry.if.then18_crit_edge
  %resp.addr.035 = phi ptr [ %resp, %do.end ], [ %resp, %if.end8.if.then18_crit_edge ], [ %resp, %if.end10.if.then18_crit_edge ], [ %resp, %if.end15.if.then18_crit_edge ], [ %resp, %if.then33.i ], [ null, %entry.if.then18_crit_edge ]
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end30.i.if.end19_crit_edge
  %resp.addr.036 = phi ptr [ %resp.addr.035, %if.then18 ], [ %resp, %if.end30.i.if.end19_crit_edge ]
  tail call void @consume_skb(ptr noundef %resp.addr.036) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_tg_listen_nfca(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %digital_tg_config_nfca.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

digital_tg_config_nfca.exit:                      ; preds = %entry
  %call1.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %digital_tg_config_nfca.exit.cleanup_crit_edge

digital_tg_config_nfca.exit.cleanup_crit_edge:    ; preds = %digital_tg_config_nfca.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %digital_tg_config_nfca.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i4 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sens_req, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %digital_tg_config_nfca.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i4, %if.end ], [ %call1.i, %digital_tg_config_nfca.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_tg_listen_nfcf(ptr noundef %ddev, i8 noundef zeroext %rf_tech) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %rf_tech to i32
  %call.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %digital_tg_config_nfcf.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

digital_tg_config_nfcf.exit:                      ; preds = %entry
  %call1.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %digital_tg_config_nfcf.exit.cleanup_crit_edge

digital_tg_config_nfcf.exit.cleanup_crit_edge:    ; preds = %digital_tg_config_nfcf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %digital_tg_config_nfcf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i4 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sensf_req, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %digital_tg_config_nfcf.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i4, %if.end ], [ %call1.i, %digital_tg_config_nfcf.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_md_req(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  %rf_tech = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_tech) #6
  %0 = ptrtoint ptr %rf_tech to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rf_tech, align 1, !annotation !90
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.exit_free_skb_crit_edge, label %if.end

entry.exit_free_skb_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %tg_get_rf_tech = getelementptr inbounds %struct.nfc_digital_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %tg_get_rf_tech to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tg_get_rf_tech, align 4
  %call1 = call i32 %4(ptr noundef %ddev, ptr noundef nonnull %rf_tech) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.exit_free_skb_crit_edge

if.end.exit_free_skb_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %rf_tech to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rf_tech, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %6, label %if.end3.exit_free_skb_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end3.sw.bb8_crit_edge
    i8 2, label %if.end3.sw.bb8_crit_edge35
  ]

if.end3.sw.bb8_crit_edge35:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end3.sw.bb8_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end3.exit_free_skb_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

sw.bb:                                            ; preds = %if.end3
  %call.i = call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %digital_tg_config_nfca.exit, label %sw.bb.exit_free_skb_crit_edge

sw.bb.exit_free_skb_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

digital_tg_config_nfca.exit:                      ; preds = %sw.bb
  %call1.i = call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %if.end7, label %digital_tg_config_nfca.exit.exit_free_skb_crit_edge

digital_tg_config_nfca.exit.exit_free_skb_crit_edge: ; preds = %digital_tg_config_nfca.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end7:                                          ; preds = %digital_tg_config_nfca.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @digital_tg_recv_sens_req(ptr noundef %ddev, ptr undef, ptr noundef %resp)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end3.sw.bb8_crit_edge, %if.end3.sw.bb8_crit_edge35
  %conv.i = zext i8 %6 to i32
  %call.i26 = call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %digital_tg_config_nfcf.exit, label %sw.bb8.exit_free_skb_crit_edge

sw.bb8.exit_free_skb_crit_edge:                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

digital_tg_config_nfcf.exit:                      ; preds = %sw.bb8
  %call1.i28 = call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool10.not = icmp eq i32 %call1.i28, 0
  br i1 %tobool10.not, label %if.end12, label %digital_tg_config_nfcf.exit.exit_free_skb_crit_edge

digital_tg_config_nfcf.exit.exit_free_skb_crit_edge: ; preds = %digital_tg_config_nfcf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end12:                                         ; preds = %digital_tg_config_nfcf.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @digital_tg_recv_sensf_req(ptr noundef %ddev, ptr undef, ptr noundef %resp)
  br label %cleanup

exit_free_skb:                                    ; preds = %digital_tg_config_nfcf.exit.exit_free_skb_crit_edge, %sw.bb8.exit_free_skb_crit_edge, %digital_tg_config_nfca.exit.exit_free_skb_crit_edge, %sw.bb.exit_free_skb_crit_edge, %if.end3.exit_free_skb_crit_edge, %if.end.exit_free_skb_crit_edge, %entry.exit_free_skb_crit_edge
  %resp.addr.0 = phi ptr [ %resp, %if.end.exit_free_skb_crit_edge ], [ %resp, %if.end3.exit_free_skb_crit_edge ], [ %resp, %digital_tg_config_nfcf.exit.exit_free_skb_crit_edge ], [ %resp, %digital_tg_config_nfca.exit.exit_free_skb_crit_edge ], [ null, %entry.exit_free_skb_crit_edge ], [ %resp, %sw.bb.exit_free_skb_crit_edge ], [ %resp, %sw.bb8.exit_free_skb_crit_edge ]
  call void @digital_poll_next_tech(ptr noundef %ddev) #6
  call void @consume_skb(ptr noundef %resp.addr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_free_skb, %if.end12, %if.end7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_tech) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_send_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_target_found(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_sdd_req(ptr noundef %ddev, ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 2) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %nfcid1_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 4
  %0 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nfcid1_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %switch.selectcmp = icmp eq i8 %1, 3
  %switch.select = select i1 %switch.selectcmp, i8 -107, i8 -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.selectcmp32 = icmp eq i8 %1, 0
  %switch.select33 = select i1 %switch.selectcmp32, i8 -109, i8 %switch.select
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef 1) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %switch.select33, ptr %call.i, align 1
  %call.i34 = tail call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef 1) #6
  %3 = ptrtoint ptr %call.i34 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %call.i34, align 1
  %call.i35 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call1, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sdd_res, ptr noundef %target) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool16.not = icmp eq i32 %call.i35, 0
  br i1 %tobool16.not, label %if.end4.cleanup_crit_edge, label %if.then17

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i35, %if.then17 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_sdd_res(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then41_crit_edge, label %if.end

entry.if.then41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13, i32 noundef 403, ptr noundef nonnull @.str.14) #9
  br label %if.then41

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %arrayidx.1 = getelementptr [4 x i8], ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %xor.171 = xor i8 %5, %7
  %arrayidx.2 = getelementptr [4 x i8], ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %xor.272 = xor i8 %xor.171, %9
  %arrayidx.3 = getelementptr [4 x i8], ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3, align 1
  %xor.373 = xor i8 %xor.272, %11
  %bcc11 = getelementptr inbounds %struct.digital_sdd_res, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %bcc11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bcc11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor.373, i8 %13)
  %cmp13.not = icmp eq i8 %xor.373, %13
  br i1 %cmp13.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13, i32 noundef 414, ptr noundef nonnull @.str.17) #9
  br label %if.then41

if.end21:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %15)
  %cmp25 = icmp eq i8 %15, -120
  %. = zext i1 %cmp25 to i32
  %.60 = select i1 %cmp25, i32 3, i32 4
  %nfcid129 = getelementptr inbounds %struct.nfc_target, ptr %arg, i32 0, i32 5
  %nfcid1_len = getelementptr inbounds %struct.nfc_target, ptr %arg, i32 0, i32 4
  %16 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nfcid1_len, align 1
  %conv30 = zext i8 %17 to i32
  %add.ptr = getelementptr i8, ptr %nfcid129, i32 %conv30
  %add.ptr34 = getelementptr i8, ptr %3, i32 %.
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr34, i32 %.60)
  %19 = load i8, ptr %nfcid1_len, align 1
  %20 = trunc i32 %.60 to i8
  %conv39 = add i8 %19, %20
  store i8 %conv39, ptr %nfcid1_len, align 1
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 7) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end21.if.then41_crit_edge, label %if.end.i

if.end21.if.then41_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 7) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nfcid1_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp.i61 = icmp ult i8 %24, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp6.i = icmp ult i8 %24, 10
  %..i = select i1 %cmp6.i, i8 -107, i8 -105
  %sel_cmd.0.i = select i1 %cmp.i61, i8 -109, i8 %..i
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sel_cmd.0.i, ptr %22, align 1
  %b2.i = getelementptr inbounds %struct.digital_sel_req, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %b2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 112, ptr %b2.i, align 1
  %nfcid1.i = getelementptr inbounds %struct.digital_sel_req, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %3, align 1
  %29 = ptrtoint ptr %nfcid1.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %nfcid1.i, align 1
  %30 = ptrtoint ptr %bcc11 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bcc11, align 1
  %bcc15.i = getelementptr inbounds %struct.digital_sel_req, ptr %22, i32 0, i32 3
  %32 = ptrtoint ptr %bcc15.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bcc15.i, align 1
  %driver_capabilities.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %33 = ptrtoint ptr %driver_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_capabilities.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.else22.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  %call18.i = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.exit.i_crit_edge, label %if.then17.i.if.then26.i_crit_edge

if.then17.i.if.then26.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then17.i.exit.i_crit_edge:                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_skb_add_crc(ptr noundef nonnull %call.i, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %exit.i

exit.i:                                           ; preds = %if.else22.i, %if.then17.i.exit.i_crit_edge
  %call.i.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sel_res, ptr noundef %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not.i, label %exit.thread65, label %exit.i.if.then26.i_crit_edge

exit.i.if.then26.i_crit_edge:                     ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

exit.thread65:                                    ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %resp) #6
  br label %if.end42

if.then26.i:                                      ; preds = %exit.i.if.then26.i_crit_edge, %if.then17.i.if.then26.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.then41

if.then41:                                        ; preds = %if.then26.i, %if.end21.if.then41_crit_edge, %do.end18, %do.end, %entry.if.then41_crit_edge
  %.sink = phi ptr [ %resp, %do.end ], [ %resp, %do.end18 ], [ %resp, %if.end21.if.then41_crit_edge ], [ %resp, %if.then26.i ], [ null, %entry.if.then41_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  tail call void @kfree(ptr noundef %arg) #6
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %exit.thread65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_sel_res(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.exit_free_skb_crit_edge, label %if.end

entry.exit_free_skb_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end:                                           ; preds = %entry
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @digital_skb_check_crc(ptr noundef %resp, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18, i32 noundef 289, ptr noundef nonnull @.str.19) #9
  br label %exit_free_skb

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end10, label %if.end8.exit_free_skb_crit_edge

if.end8.exit_free_skb_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end10:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %and11 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = tail call fastcc i32 @digital_in_send_sdd_req(ptr noundef %ddev, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.exit_free_skb.thread_crit_edge, label %if.then13.exit_free_skb_crit_edge

if.then13.exit_free_skb_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.then13.exit_free_skb.thread_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb.thread

if.end18:                                         ; preds = %if.end10
  %sel_res19 = getelementptr inbounds %struct.nfc_target, ptr %arg, i32 0, i32 3
  %8 = ptrtoint ptr %sel_res19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %sel_res19, align 2
  %and21 = and i32 %conv, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end39_crit_edge, label %if.else

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else:                                          ; preds = %if.end18
  %and25 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else28, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else28:                                        ; preds = %if.else
  %and30 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else28.exit_free_skb_crit_edge, label %if.then32

if.else28.exit_free_skb_crit_edge:                ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.then32:                                        ; preds = %if.else28
  %call.i64 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 2) #6
  %tobool.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i, label %if.then32.exit_free_skb_crit_edge, label %if.end.i

if.then32.exit_free_skb_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb

if.end.i:                                         ; preds = %if.then32
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i64, i32 noundef 1) #6
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -32, ptr %call.i.i, align 1
  %call.i12.i = tail call ptr @skb_put(ptr noundef nonnull %call.i64, i32 noundef 1) #6
  %10 = ptrtoint ptr %call.i12.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %call.i12.i, align 1
  %call.i13.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call.i64, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_ats, ptr noundef %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool2.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool2.not.i, label %if.end.i.exit_free_skb.thread_crit_edge, label %if.then3.i

if.end.i.exit_free_skb.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_skb.thread

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i64, i32 noundef 0) #6
  br label %exit_free_skb

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.end18.if.end39_crit_edge
  %nfc_proto.0 = phi i8 [ 2, %if.end18.if.end39_crit_edge ], [ 5, %if.else.if.end39_crit_edge ]
  %call40 = tail call i32 @digital_target_found(ptr noundef %ddev, ptr noundef %arg, i8 noundef zeroext %nfc_proto.0) #6
  br label %exit_free_skb

exit_free_skb.thread:                             ; preds = %if.end.i.exit_free_skb.thread_crit_edge, %if.then13.exit_free_skb.thread_crit_edge
  tail call void @consume_skb(ptr noundef %resp) #6
  br label %if.end43

exit_free_skb:                                    ; preds = %if.end39, %if.then3.i, %if.then32.exit_free_skb_crit_edge, %if.else28.exit_free_skb_crit_edge, %if.then13.exit_free_skb_crit_edge, %if.end8.exit_free_skb_crit_edge, %do.end, %entry.exit_free_skb_crit_edge
  %rc.0 = phi i32 [ %call14, %if.then13.exit_free_skb_crit_edge ], [ %call40, %if.end39 ], [ -5, %do.end ], [ -5, %if.end8.exit_free_skb_crit_edge ], [ -5, %if.else28.exit_free_skb_crit_edge ], [ -5, %if.then3.i ], [ -5, %if.then32.exit_free_skb_crit_edge ], [ -5, %entry.exit_free_skb_crit_edge ]
  %resp.addr.0 = phi ptr [ %resp, %if.then13.exit_free_skb_crit_edge ], [ %resp, %if.end39 ], [ %resp, %do.end ], [ %resp, %if.end8.exit_free_skb_crit_edge ], [ %resp, %if.else28.exit_free_skb_crit_edge ], [ %resp, %if.then3.i ], [ %resp, %if.then32.exit_free_skb_crit_edge ], [ null, %entry.exit_free_skb_crit_edge ]
  tail call void @kfree(ptr noundef %arg) #6
  tail call void @consume_skb(ptr noundef %resp.addr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool41.not = icmp eq i32 %rc.0, 0
  br i1 %tobool41.not, label %exit_free_skb.if.end43_crit_edge, label %if.then42

exit_free_skb.if.end43_crit_edge:                 ; preds = %exit_free_skb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then42:                                        ; preds = %exit_free_skb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %exit_free_skb.if.end43_crit_edge, %exit_free_skb.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_skb_add_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_ats(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then14.sink.split_crit_edge, label %if.end

entry.if.then14.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.sink.split

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.end.if.then14.sink.split_crit_edge, label %if.end3

if.end.if.then14.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.sink.split

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp6 = icmp ugt i8 %6, 7
  br i1 %cmp6, label %if.end3.if.end12_crit_edge, label %if.else

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i8 %6 to i32
  %arrayidx9 = getelementptr [8 x i8], ptr @digital_ats_fsc, i32 0, i32 %conv5
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %8 to i16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end3.if.end12_crit_edge
  %conv10.sink = phi i16 [ %conv10, %if.else ], [ 256, %if.end3.if.end12_crit_edge ]
  %9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv10.sink, ptr %9, align 4
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %11 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %curr_nfc_dep_pni, align 2
  %call13 = tail call i32 @digital_target_found(ptr noundef %ddev, ptr noundef %arg, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %phi.cmp = icmp eq i32 %call13, 0
  tail call void @consume_skb(ptr noundef %resp) #6
  tail call void @kfree(ptr noundef %arg) #6
  br i1 %phi.cmp, label %if.end12.if.end15_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14.sink.split:                             ; preds = %if.end.if.then14.sink.split_crit_edge, %entry.if.then14.sink.split_crit_edge
  %.sink = phi ptr [ %resp, %if.end.if.then14.sink.split_crit_edge ], [ null, %entry.if.then14.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  tail call void @kfree(ptr noundef %arg) #6
  br label %if.then14

if.then14:                                        ; preds = %if.then14.sink.split, %if.end12.if.then14_crit_edge
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_skb_check_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_attrib_res(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then14.sink.split_crit_edge, label %if.end

entry.if.then14.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.sink.split

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.31, i32 noundef 589, ptr noundef nonnull @.str.32) #9
  br label %if.then14.sink.split

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.31, i32 noundef 597, ptr noundef nonnull @.str.35) #9
  br label %if.then14.sink.split

if.end11:                                         ; preds = %if.end4
  %call12 = tail call i32 @digital_target_found(ptr noundef %ddev, ptr noundef %arg, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %phi.cmp = icmp eq i32 %call12, 0
  tail call void @consume_skb(ptr noundef %resp) #6
  tail call void @kfree(ptr noundef %arg) #6
  br i1 %phi.cmp, label %if.end11.if.end15_crit_edge, label %if.end11.if.then14_crit_edge

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14.sink.split:                             ; preds = %do.end8, %do.end, %entry.if.then14.sink.split_crit_edge
  %.sink = phi ptr [ %resp, %do.end8 ], [ %resp, %do.end ], [ null, %entry.if.then14.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #6
  tail call void @kfree(ptr noundef %arg) #6
  br label %if.then14

if.then14:                                        ; preds = %if.then14.sink.split, %if.end11.if.then14_crit_edge
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_recv_sdd_req(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then12_crit_edge, label %if.end

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.end.if.then12_crit_edge, label %lor.lhs.false

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -109, i8 %5)
  %cmp2.not = icmp eq i8 %5, -109
  br i1 %cmp2.not, label %lor.lhs.false4, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp7.not = icmp eq i8 %7, 32
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false4.if.then12_crit_edge

lor.lhs.false4.if.then12_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10:                                         ; preds = %lor.lhs.false4
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 5) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.if.then12_crit_edge, label %if.end.i

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %9, align 1
  %add.ptr.i = getelementptr i8, ptr %9, i32 1
  tail call void @get_random_bytes(ptr noundef %add.ptr.i, i32 noundef 3) #6
  %bcc.i = getelementptr inbounds %struct.digital_sdd_res, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %9, align 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 1
  %xor35.1.i = xor i8 %14, %12
  %arrayidx4.2.i = getelementptr [4 x i8], ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.2.i, align 1
  %xor35.2.i = xor i8 %xor35.1.i, %16
  %arrayidx4.3.i = getelementptr [4 x i8], ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.3.i, align 1
  %xor35.3.i = xor i8 %xor35.2.i, %18
  %19 = ptrtoint ptr %bcc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %xor35.3.i, ptr %bcc.i, align 1
  %call8.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sel_req, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end13_crit_edge, label %if.end11.i.cleanup.sink.split.i_crit_edge

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end11.i.if.end13_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

cleanup.sink.split.i:                             ; preds = %if.end11.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %if.then12

if.then12:                                        ; preds = %cleanup.sink.split.i, %if.end10.if.then12_crit_edge, %lor.lhs.false4.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge, %entry.if.then12_crit_edge
  %resp.addr.023 = phi ptr [ %resp, %lor.lhs.false4.if.then12_crit_edge ], [ %resp, %lor.lhs.false.if.then12_crit_edge ], [ %resp, %if.end.if.then12_crit_edge ], [ %resp, %if.end10.if.then12_crit_edge ], [ %resp, %cleanup.sink.split.i ], [ null, %entry.if.then12_crit_edge ]
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11.i.if.end13_crit_edge
  %resp.addr.024 = phi ptr [ %resp.addr.023, %if.then12 ], [ %resp, %if.end11.i.if.end13_crit_edge ]
  tail call void @consume_skb(ptr noundef %resp.addr.024) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_recv_sel_req(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then11_crit_edge, label %if.end

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end:                                           ; preds = %entry
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @digital_skb_check_crc(ptr noundef %resp, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %do.end

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.39, i32 noundef 970, ptr noundef nonnull @.str.19) #9
  br label %if.then11

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i19 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call.i19, null
  br i1 %tobool.not.i, label %if.end8.if.then11_crit_edge, label %if.end.i

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.i:                                         ; preds = %if.end8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i19, i32 noundef 1) #6
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %call.i.i, align 1
  %3 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_capabilities, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_skb_add_crc(ptr noundef nonnull %call.i19, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.cleanup.sink.split.i_crit_edge

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end3.i
  %call.i24.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call.i19, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_atr_req, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool9.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end12_crit_edge, label %if.end7.i.cleanup.sink.split.i_crit_edge

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end7.i.if.end12_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end3.i.cleanup.sink.split.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i19, i32 noundef 0) #6
  br label %if.then11

if.then11:                                        ; preds = %cleanup.sink.split.i, %if.end8.if.then11_crit_edge, %do.end, %entry.if.then11_crit_edge
  %resp.addr.023 = phi ptr [ %resp, %do.end ], [ %resp, %if.end8.if.then11_crit_edge ], [ %resp, %cleanup.sink.split.i ], [ null, %entry.if.then11_crit_edge ]
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.i.if.end12_crit_edge
  %resp.addr.024 = phi ptr [ %resp.addr.023, %if.then11 ], [ %resp, %if.end7.i.if.end12_crit_edge ]
  tail call void @consume_skb(ptr noundef %resp.addr.024) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_atr_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_recv_atr_or_sensf_req(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2 = icmp eq i8 %5, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.else_crit_edge

land.lhs.true1.if.else_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @digital_tg_recv_sensf_req(ptr noundef %ddev, ptr undef, ptr noundef %resp)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true1.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @digital_tg_recv_atr_req(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/digital_technology.c", i32 181, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @digital_in_iso_dep_pull_sod._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @digital_in_iso_dep_pull_sod._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/nfc/digital_technology.c", i32 186, i32 3}
!8 = !{ptr @digital_in_iso_dep_pull_sod._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @digital_in_iso_dep_pull_sod._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/nfc/digital_technology.c", i32 558, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @digital_in_recv_mifare_res._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @digital_in_recv_mifare_res._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/nfc/digital_technology.c", i32 1188, i32 4}
!18 = !{ptr @digital_tg_recv_sensf_req._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @digital_tg_recv_sensf_req._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/nfc/digital_technology.c", i32 502, i32 3}
!23 = !{ptr @digital_in_recv_sens_res._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @digital_in_recv_sens_res._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/nfc/digital_technology.c", i32 403, i32 3}
!28 = !{ptr @digital_in_recv_sdd_res._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @digital_in_recv_sdd_res._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @digital_in_recv_sdd_res._entry.15, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../net/nfc/digital_technology.c", i32 414, i32 3}
!33 = !{ptr @digital_in_recv_sdd_res._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/nfc/digital_technology.c", i32 289, i32 4}
!37 = !{ptr @digital_in_recv_sel_res._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @digital_in_recv_sel_res._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @digital_ats_fsc, !41, !"digital_ats_fsc", i1 false, i1 false}
!41 = !{!"../net/nfc/digital_technology.c", i32 83, i32 17}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/nfc/digital_technology.c", i32 660, i32 3}
!44 = !{ptr @digital_in_recv_sensb_res._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @digital_in_recv_sensb_res._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @digital_in_recv_sensb_res._entry.22, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../net/nfc/digital_technology.c", i32 668, i32 3}
!49 = !{ptr @digital_in_recv_sensb_res._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @digital_in_recv_sensb_res._entry.25, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../net/nfc/digital_technology.c", i32 674, i32 3}
!53 = !{ptr @digital_in_recv_sensb_res._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @digital_in_recv_sensb_res._entry.28, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../net/nfc/digital_technology.c", i32 680, i32 3}
!57 = !{ptr @digital_in_recv_sensb_res._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/nfc/digital_technology.c", i32 589, i32 3}
!61 = !{ptr @digital_in_recv_attrib_res._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @digital_in_recv_attrib_res._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @digital_in_recv_attrib_res._entry.33, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../net/nfc/digital_technology.c", i32 597, i32 3}
!66 = !{ptr @digital_in_recv_attrib_res._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/nfc/digital_technology.c", i32 764, i32 4}
!70 = !{ptr @digital_in_recv_sensf_res._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @digital_in_recv_sensf_res._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/nfc/digital_technology.c", i32 861, i32 3}
!74 = !{ptr @digital_in_recv_iso15693_inv_res._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @digital_in_recv_iso15693_inv_res._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/nfc/digital_technology.c", i32 970, i32 4}
!79 = !{ptr @digital_tg_recv_sel_req._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @digital_tg_recv_sel_req._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
