; ModuleID = '/llk/IR_all_yes/net/nfc/digital_dep.c_pt.bc'
source_filename = "../net/nfc/digital_dep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.digital_atr_req = type { i8, i8, [10 x i8], i8, i8, i8, i8, [0 x i8] }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
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
%struct.digital_atr_res = type { i8, i8, [10 x i8], i8, i8, i8, i8, i8, [0 x i8] }
%struct.digital_dep_req_res = type { i8, i8, i8 }
%struct.digital_data_exch = type { ptr, ptr }
%struct.digital_psl_req = type { i8, i8, i8, i8, i8 }
%struct.digital_psl_res = type { i8, i8, i8 }

@digital_in_send_atr_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013digital: %s: %d: NFC Digital Protocol error: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_send_atr_req\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/nfc/digital_dep.c\00", [42 x i8] zeroinitializer }, align 32
@digital_in_send_atr_req._entry_ptr = internal global ptr @digital_in_send_atr_req._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.6.1.1\00", [23 x i8] zeroinitializer }, align 32
@digital_tg_recv_atr_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_tg_recv_atr_req\00", [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_atr_req._entry_ptr = internal global ptr @digital_tg_recv_atr_req._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.4.1.6\00", [23 x i8] zeroinitializer }, align 32
@digital_tg_recv_atr_req._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_atr_req._entry_ptr.7 = internal global ptr @digital_tg_recv_atr_req._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.4.1.2\00", [23 x i8] zeroinitializer }, align 32
@digital_payload_bits_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"@\80\C0\FE", [28 x i8] zeroinitializer }, align 32
@digital_in_recv_atr_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_recv_atr_res\00", [40 x i8] zeroinitializer }, align 32
@digital_in_recv_atr_res._entry_ptr = internal global ptr @digital_in_recv_atr_res._entry, section ".printk_index", align 4
@digital_in_recv_atr_res._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_atr_res._entry_ptr.11 = internal global ptr @digital_in_recv_atr_res._entry.10, section ".printk_index", align 4
@digital_rwt_map = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 100, i16 101, i16 101, i16 102, i16 105, i16 110, i16 119, i16 139, i16 177, i16 255, i16 409, i16 719, i16 1337, i16 2575, i16 5049], [34 x i8] zeroinitializer }, align 32
@digital_in_recv_psl_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_recv_psl_res\00", [40 x i8] zeroinitializer }, align 32
@digital_in_recv_psl_res._entry_ptr = internal global ptr @digital_in_recv_psl_res._entry, section ".printk_index", align 4
@digital_in_recv_psl_res._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_psl_res._entry_ptr.14 = internal global ptr @digital_in_recv_psl_res._entry.13, section ".printk_index", align 4
@digital_in_recv_dep_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_recv_dep_res\00", [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr = internal global ptr @digital_in_recv_dep_res._entry, section ".printk_index", align 4
@digital_in_recv_dep_res._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.17 = internal global ptr @digital_in_recv_dep_res._entry.16, section ".printk_index", align 4
@digital_in_recv_dep_res._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.19 = internal global ptr @digital_in_recv_dep_res._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.8.2.1\00", [23 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.22 = internal global ptr @digital_in_recv_dep_res._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"14.12.3.3\00", [22 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.25 = internal global ptr @digital_in_recv_dep_res._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"14.12.4.5\00", [22 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.28 = internal global ptr @digital_in_recv_dep_res._entry.27, section ".printk_index", align 4
@digital_in_recv_dep_res._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.30 = internal global ptr @digital_in_recv_dep_res._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"14.12.4.3\00", [22 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.33 = internal global ptr @digital_in_recv_dep_res._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"14.12.4.4\00", [22 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_in_recv_dep_res._entry_ptr.36 = internal global ptr @digital_in_recv_dep_res._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.8.4.1\00", [23 x i8] zeroinitializer }, align 32
@digital_tg_recv_dep_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_tg_recv_dep_req\00", [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_dep_req._entry_ptr = internal global ptr @digital_tg_recv_dep_req._entry, section ".printk_index", align 4
@digital_tg_recv_dep_req._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_dep_req._entry_ptr.40 = internal global ptr @digital_tg_recv_dep_req._entry.39, section ".printk_index", align 4
@digital_tg_recv_dep_req.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.38, ptr @.str.2, ptr @.str.42, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfc_digital\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DIGITAL_NFC_DEP_PFB_I_PDU\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"digital: %s: DIGITAL_NFC_DEP_PFB_I_PDU\0A\00", [56 x i8] zeroinitializer }, align 32
@digital_tg_recv_dep_req._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_dep_req._entry_ptr.45 = internal global ptr @digital_tg_recv_dep_req._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"14.12.3.4\00", [22 x i8] zeroinitializer }, align 32
@digital_tg_recv_psl_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_tg_recv_psl_req\00", [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_psl_req._entry_ptr = internal global ptr @digital_tg_recv_psl_req._entry, section ".printk_index", align 4
@digital_tg_recv_psl_req._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_tg_recv_psl_req._entry_ptr.49 = internal global ptr @digital_tg_recv_psl_req._entry.48, section ".printk_index", align 4
@digital_tg_recv_psl_req._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.2, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013digital: %s: Unsupported dsi value %d\0A\00", [55 x i8] zeroinitializer }, align 32
@digital_tg_recv_psl_req._entry_ptr.52 = internal global ptr @digital_tg_recv_psl_req._entry.50, section ".printk_index", align 4
@switch.table.digital_tg_send_psl_res_complete = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @digital_skb_add_crc_a, ptr @digital_skb_add_crc_f, ptr @digital_skb_add_crc_f], [20 x i8] zeroinitializer }, align 32
@switch.table.digital_tg_send_psl_res_complete.53 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @digital_skb_check_crc_a, ptr @digital_skb_check_crc_f, ptr @digital_skb_check_crc_f], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967291]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 8, i64 64, i64 128, i64 192, i64 254]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 484, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1577, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1583, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"digital_payload_bits_map\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 111, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 416, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 422, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"digital_rwt_map\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 143, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 310, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 316, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 725, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 744, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 768, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 788, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 820, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 826, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 835, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 864, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 871, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1093, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1099, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1145, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1176, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1414, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1420, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [25 x i8] c"../net/nfc/digital_dep.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1445, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [46 x i8] c"switch.table.digital_tg_send_psl_res_complete\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [49 x i8] c"switch.table.digital_tg_send_psl_res_complete.53\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @digital_in_recv_atr_res._entry, ptr @digital_in_recv_atr_res._entry.10, ptr @digital_in_recv_atr_res._entry_ptr, ptr @digital_in_recv_atr_res._entry_ptr.11, ptr @digital_in_recv_dep_res._entry, ptr @digital_in_recv_dep_res._entry.16, ptr @digital_in_recv_dep_res._entry.18, ptr @digital_in_recv_dep_res._entry.21, ptr @digital_in_recv_dep_res._entry.24, ptr @digital_in_recv_dep_res._entry.27, ptr @digital_in_recv_dep_res._entry.29, ptr @digital_in_recv_dep_res._entry.32, ptr @digital_in_recv_dep_res._entry.35, ptr @digital_in_recv_dep_res._entry_ptr, ptr @digital_in_recv_dep_res._entry_ptr.17, ptr @digital_in_recv_dep_res._entry_ptr.19, ptr @digital_in_recv_dep_res._entry_ptr.22, ptr @digital_in_recv_dep_res._entry_ptr.25, ptr @digital_in_recv_dep_res._entry_ptr.28, ptr @digital_in_recv_dep_res._entry_ptr.30, ptr @digital_in_recv_dep_res._entry_ptr.33, ptr @digital_in_recv_dep_res._entry_ptr.36, ptr @digital_in_recv_psl_res._entry, ptr @digital_in_recv_psl_res._entry.13, ptr @digital_in_recv_psl_res._entry_ptr, ptr @digital_in_recv_psl_res._entry_ptr.14, ptr @digital_in_send_atr_req._entry, ptr @digital_in_send_atr_req._entry_ptr, ptr @digital_tg_recv_atr_req._entry, ptr @digital_tg_recv_atr_req._entry.6, ptr @digital_tg_recv_atr_req._entry_ptr, ptr @digital_tg_recv_atr_req._entry_ptr.7, ptr @digital_tg_recv_dep_req._entry, ptr @digital_tg_recv_dep_req._entry.39, ptr @digital_tg_recv_dep_req._entry.44, ptr @digital_tg_recv_dep_req._entry_ptr, ptr @digital_tg_recv_dep_req._entry_ptr.40, ptr @digital_tg_recv_dep_req._entry_ptr.45, ptr @digital_tg_recv_psl_req._entry, ptr @digital_tg_recv_psl_req._entry.48, ptr @digital_tg_recv_psl_req._entry.50, ptr @digital_tg_recv_psl_req._entry_ptr, ptr @digital_tg_recv_psl_req._entry_ptr.49, ptr @digital_tg_recv_psl_req._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @digital_payload_bits_map, ptr @.str.9, ptr @digital_rwt_map, ptr @.str.12, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @switch.table.digital_tg_send_psl_res_complete, ptr @switch.table.digital_tg_send_psl_res_complete.53], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_send_atr_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_atr_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_atr_req._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_payload_bits_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_atr_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_atr_res._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_rwt_map to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_psl_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_psl_res._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_recv_dep_res._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_dep_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_dep_req._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_dep_req._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_psl_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_psl_req._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_recv_psl_req._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.digital_tg_send_psl_res_complete to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.digital_tg_send_psl_res_complete.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_atr_req(ptr noundef %ddev, ptr noundef %target, i8 noundef zeroext %comm_mode, ptr nocapture noundef readonly %gb, i32 noundef %gb_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %gb_len, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp ugt i32 %add, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef 16) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 14)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -44, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cmd, align 1
  %nfcid2_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 6
  %6 = ptrtoint ptr %nfcid2_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nfcid2_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %nfcid38 = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 2
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %nfcid2 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 7
  %8 = ptrtoint ptr %nfcid2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %nfcid2, align 1
  %10 = ptrtoint ptr %nfcid38 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %nfcid38, align 1
  br label %if.end10

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @get_random_bytes(ptr noundef %nfcid38, i32 noundef 10) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %did = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %did to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %did, align 1
  %bs = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %bs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bs, align 1
  %br = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %br to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %br, align 1
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %14 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %local_payload_max, align 2
  %pp = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %pp, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gb_len)
  %tobool14.not = icmp eq i32 %gb_len, 0
  br i1 %tobool14.not, label %if.end10.if.end20_crit_edge, label %if.then15

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %pp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 50, ptr %pp, align 1
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef %gb_len) #8
  %17 = call ptr @memcpy(ptr %call.i, ptr %gb, i32 %gb_len)
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end10.if.end20_crit_edge
  %call.i56 = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %21, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %23 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i = icmp eq i8 %24, 0
  br i1 %cmp.i, label %if.then.i, label %if.end20.digital_skb_push_dep_sod.exit_crit_edge

if.end20.digital_skb_push_dep_sod.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 1) #8
  %25 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end20.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %26 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb_add_crc, align 4
  tail call void %27(ptr noundef nonnull %call1) #8
  %call.i57 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call1, ptr noundef null, i16 noundef zeroext 1337, ptr noundef nonnull @digital_in_recv_atr_res, ptr noundef %target) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool22.not = icmp eq i32 %call.i57, 0
  br i1 %tobool22.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then23

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i57, %if.then23 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @digital_skb_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_atr_res(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then51.sink.split_crit_edge, label %if.end

entry.if.then51.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.sink.split

if.end:                                           ; preds = %entry
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %0 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_check_crc, align 4
  %call2 = tail call i32 %1(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 416, ptr noundef nonnull @.str.5) #11
  br label %if.then51.sink.split

if.end5:                                          ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i79 = icmp ult i32 %3, 2
  br i1 %cmp.i79, label %if.end5.do.end11_crit_edge, label %if.end.i

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %4 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.i = icmp eq i8 %5, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5.i)
  %cmp7.not.i = icmp eq i32 %11, %conv5.i
  br i1 %cmp7.not.i, label %if.end14, label %if.end4.i.do.end11_crit_edge

if.end4.i.do.end11_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %if.end4.i.do.end11_crit_edge, %if.end5.do.end11_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 422, ptr noundef nonnull @.str.8) #11
  br label %if.then51.sink.split

if.end14:                                         ; preds = %if.end4.i
  %call11.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %13)
  %cmp = icmp ult i32 %13, 17
  br i1 %cmp, label %if.end14.if.then51.sink.split_crit_edge, label %if.end16

if.end14.if.then51.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.sink.split

if.end16:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %to = getelementptr inbounds %struct.digital_atr_res, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %to, align 1
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp21 = icmp eq i8 %18, 15
  %spec.store.select = select i1 %cmp21, i8 14, i8 %18
  %idxprom = zext i8 %spec.store.select to i32
  %arrayidx = getelementptr [15 x i16], ptr @digital_rwt_map, i32 0, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %21 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %dep_rwt, align 4
  %pp = getelementptr inbounds %struct.digital_atr_res, ptr %15, i32 0, i32 7
  %22 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pp, align 1
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 3
  %conv.i = zext i8 %25 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %conv.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %remote_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %28 = ptrtoint ptr %remote_payload_max to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %remote_payload_max, align 1
  %29 = trunc i32 %13 to i8
  %conv = add i8 %29, -17
  %30 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddev, align 4
  %gb = getelementptr inbounds %struct.digital_atr_res, ptr %15, i32 0, i32 8
  %call33 = tail call i32 @nfc_set_remote_general_bytes(ptr noundef %31, ptr noundef %gb, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end16.if.then51.sink.split_crit_edge

if.end16.if.then51.sink.split_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.sink.split

if.end36:                                         ; preds = %if.end16
  %protocols = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 2
  %32 = ptrtoint ptr %protocols to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %protocols, align 4
  %and37 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %land.lhs.true

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end36
  %34 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp40.not = icmp eq i8 %35, 2
  br i1 %cmp40.not, label %land.lhs.true.if.end47_crit_edge, label %if.then42

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %land.lhs.true
  %call43 = tail call fastcc i32 @digital_in_send_psl_req(ptr noundef %ddev, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %exit.thread85, label %if.then42.if.end47_crit_edge

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

exit.thread85:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %resp) #8
  br label %if.end52

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %36 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ddev, align 4
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg, align 4
  %call49 = tail call i32 @nfc_dep_link_is_up(ptr noundef %37, i32 noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %40 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %curr_nfc_dep_pni, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %phi.cmp = icmp eq i32 %call49, 0
  tail call void @consume_skb(ptr noundef %resp) #8
  br i1 %phi.cmp, label %if.end47.if.end52_crit_edge, label %if.end47.if.then51_crit_edge

if.end47.if.then51_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then51.sink.split:                             ; preds = %if.end16.if.then51.sink.split_crit_edge, %if.end14.if.then51.sink.split_crit_edge, %do.end11, %do.end, %entry.if.then51.sink.split_crit_edge
  %.sink = phi ptr [ %resp, %do.end ], [ %resp, %do.end11 ], [ %resp, %if.end16.if.then51.sink.split_crit_edge ], [ %resp, %if.end14.if.then51.sink.split_crit_edge ], [ null, %entry.if.then51.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #8
  br label %if.then51

if.then51:                                        ; preds = %if.then51.sink.split, %if.end47.if.then51_crit_edge
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 16
  %41 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %curr_protocol, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge, %exit.thread85
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_dep_req(ptr noundef %ddev, ptr nocapture readnone %target, ptr noundef %skb, ptr noundef %data_exch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -44, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %cmd, align 1
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pfb, align 1
  %atn_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %7 = ptrtoint ptr %atn_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %atn_count, align 4
  %nack_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 26
  %8 = ptrtoint ptr %nack_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nack_count, align 4
  %chaining_skb1 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %9 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chaining_skb1, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %remote_payload_max.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %13 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %remote_payload_max.i, align 1
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp.i = icmp ugt i32 %12, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %15 = ptrtoint ptr %pfb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfb, align 1
  %17 = or i8 %16, 16
  store i8 %17, ptr %pfb, align 1
  %18 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %remote_payload_max.i, align 1
  %conv5.i = zext i8 %19 to i32
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef %conv5.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %digital_send_dep_data_prep.exit.thread, label %if.end.i

digital_send_dep_data_prep.exit.thread:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chaining_skb1, align 4
  tail call void @kfree_skb_reason(ptr noundef %21, i32 noundef 0) #8
  %22 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %chaining_skb1, align 4
  br label %if.then

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %remote_payload_max.i, align 1
  %conv10.i = zext i8 %26 to i32
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv10.i) #8
  %27 = call ptr @memcpy(ptr %call.i.i, ptr %24, i32 %conv10.i)
  %28 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %remote_payload_max.i, align 1
  %conv13.i = zext i8 %29 to i32
  %call14.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv13.i) #8
  %30 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %chaining_skb1, align 4
  %data_exch16.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 24
  %31 = ptrtoint ptr %data_exch16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data_exch, ptr %data_exch16.i, align 4
  br label %digital_send_dep_data_prep.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %chaining_skb1, align 4
  br label %digital_send_dep_data_prep.exit

digital_send_dep_data_prep.exit:                  ; preds = %if.else.i, %if.end.i
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ %skb, %if.else.i ]
  %cmp.i44 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %digital_send_dep_data_prep.exit.if.then_crit_edge, label %if.end

digital_send_dep_data_prep.exit.if.then_crit_edge: ; preds = %digital_send_dep_data_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %digital_send_dep_data_prep.exit.if.then_crit_edge, %digital_send_dep_data_prep.exit.thread
  %retval.0.i56 = phi ptr [ inttoptr (i32 -12 to ptr), %digital_send_dep_data_prep.exit.thread ], [ %retval.0.i, %digital_send_dep_data_prep.exit.if.then_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i56 to i32
  br label %cleanup

if.end:                                           ; preds = %digital_send_dep_data_prep.exit
  %call.i45 = tail call ptr @skb_push(ptr noundef %retval.0.i, i32 noundef 1) #8
  %len.i46 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 6
  %34 = ptrtoint ptr %len.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i46, align 4
  %conv.i47 = trunc i32 %35 to i8
  %data.i48 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i48, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i47, ptr %37, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %39 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i49 = icmp eq i8 %40, 0
  br i1 %cmp.i49, label %if.then.i50, label %if.end.digital_skb_push_dep_sod.exit_crit_edge

if.end.digital_skb_push_dep_sod.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i50:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef %retval.0.i, i32 noundef 1) #8
  %41 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i50, %if.end.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %42 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb_add_crc, align 4
  tail call void %43(ptr noundef %retval.0.i) #8
  %44 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i48, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i52 = tail call ptr @__pskb_copy_fclone(ptr noundef %retval.0.i, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264, i1 noundef zeroext false) #8
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %48 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i52, ptr %saved_skb, align 4
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %49 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dep_rwt, align 4
  %call.i53 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef %retval.0.i, ptr noundef null, i16 noundef zeroext %50, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not = icmp eq i32 %call.i53, 0
  br i1 %tobool.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then7

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %digital_skb_push_dep_sod.exit
  %cmp.not = icmp eq ptr %retval.0.i, %skb
  br i1 %cmp.not, label %if.then7.if.end9_crit_edge, label %if.then8

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %retval.0.i, i32 noundef 0) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then7.if.end9_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #8
  %51 = ptrtoint ptr %chaining_skb1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %chaining_skb1, align 4
  %52 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %53, i32 noundef 0) #8
  %54 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %saved_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %33, %if.then ], [ %call.i53, %if.end9 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_dep_res(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %resp to i32
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.then.exit_crit_edge [
    i32 -5, label %land.lhs.true3.thread
    i32 -110, label %land.lhs.true
  ]

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.lhs.true:                                    ; preds = %if.then
  %nack_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 26
  %2 = ptrtoint ptr %nack_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nack_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.land.lhs.true11_crit_edge, label %land.lhs.true3

land.lhs.true.land.lhs.true11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %nack_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nack_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %nack_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %land.lhs.true3.if.then6_crit_edge, label %if.else

land.lhs.true3.if.then6_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

land.lhs.true3.thread:                            ; preds = %if.then
  %nack_count4314 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 26
  %6 = ptrtoint ptr %nack_count4314 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nack_count4314, align 4
  %inc315 = add i32 %7, 1
  store i32 %inc315, ptr %nack_count4314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5316 = icmp slt i32 %7, 2
  br i1 %cmp5316, label %land.lhs.true3.thread.if.then6_crit_edge, label %land.lhs.true3.thread.exit_crit_edge

land.lhs.true3.thread.exit_crit_edge:             ; preds = %land.lhs.true3.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.lhs.true3.thread.if.then6_crit_edge:         ; preds = %land.lhs.true3.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true3.thread.if.then6_crit_edge, %land.lhs.true3.if.then6_crit_edge
  %atn_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %8 = ptrtoint ptr %atn_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %atn_count, align 4
  %call7 = tail call fastcc i32 @digital_in_send_nack(ptr noundef %ddev, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then6.error_crit_edge

if.then6.error_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true3
  %cmp10 = icmp eq ptr %resp, inttoptr (i32 -110 to ptr)
  br i1 %cmp10, label %if.else.land.lhs.true11_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else.land.lhs.true11_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.else.land.lhs.true11_crit_edge, %land.lhs.true.land.lhs.true11_crit_edge
  %atn_count12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %9 = ptrtoint ptr %atn_count12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %atn_count12, align 4
  %inc13 = add i32 %10, 1
  store i32 %inc13, ptr %atn_count12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp14 = icmp slt i32 %10, 2
  br i1 %cmp14, label %if.then15, label %land.lhs.true11.exit_crit_edge

land.lhs.true11.exit_crit_edge:                   ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then15:                                        ; preds = %land.lhs.true11
  %11 = ptrtoint ptr %nack_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nack_count, align 4
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then15.error_crit_edge, label %if.end.i

if.then15.error_crit_edge:                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %if.then15
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 3) #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -44, ptr %13, align 1
  %cmd.i = getelementptr inbounds %struct.digital_dep_req_res, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %cmd.i, align 1
  %pfb.i = getelementptr inbounds %struct.digital_dep_req_res, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %pfb.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %pfb.i, align 1
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %conv.i.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i.i, ptr %20, align 1
  %curr_rf_tech.i.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %22 = ptrtoint ptr %curr_rf_tech.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %curr_rf_tech.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.digital_skb_push_dep_sod.exit.i_crit_edge

if.end.i.digital_skb_push_dep_sod.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %24 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -16, ptr %call3.i.i, align 1
  br label %digital_skb_push_dep_sod.exit.i

digital_skb_push_dep_sod.exit.i:                  ; preds = %if.then.i.i, %if.end.i.digital_skb_push_dep_sod.exit.i_crit_edge
  %skb_add_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %25 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb_add_crc.i, align 4
  tail call void %26(ptr noundef nonnull %call.i) #8
  %dep_rwt.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %27 = ptrtoint ptr %dep_rwt.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dep_rwt.i, align 4
  %call.i21.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext %28, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool3.not.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool3.not.i, label %digital_skb_push_dep_sod.exit.i.cleanup_crit_edge, label %if.then4.i

digital_skb_push_dep_sod.exit.i.cleanup_crit_edge: ; preds = %digital_skb_push_dep_sod.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %digital_skb_push_dep_sod.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %error

if.end23:                                         ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i307 = icmp ult i32 %30, 2
  br i1 %cmp.i307, label %if.end23.do.end_crit_edge, label %if.end.i308

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i308:                                      ; preds = %if.end23
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %31 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1.i = icmp eq i8 %32, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i308.if.end4.i_crit_edge

if.end.i308.if.end4.i_crit_edge:                  ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #10
  %call.i309 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i308.if.end4.i_crit_edge
  %data.i310 = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %33 = ptrtoint ptr %data.i310 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i310, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv5.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv5.i)
  %cmp7.not.i = icmp eq i32 %38, %conv5.i
  br i1 %cmp7.not.i, label %if.end28, label %if.end4.i.do.end_crit_edge

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end4.i.do.end_crit_edge, %if.end23.do.end_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 725, ptr noundef nonnull @.str.8) #11
  br label %exit

if.end28:                                         ; preds = %if.end4.i
  %call11.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %39 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb_check_crc, align 4
  %call29 = tail call i32 %40(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end49, label %if.then31

if.then31:                                        ; preds = %if.end28
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp32 = icmp ugt i32 %42, 3
  br i1 %cmp32, label %land.lhs.true33, label %if.then31.do.end46_crit_edge

if.then31.do.end46_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

land.lhs.true33:                                  ; preds = %if.then31
  %nack_count34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 26
  %43 = ptrtoint ptr %nack_count34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nack_count34, align 4
  %inc35 = add i32 %44, 1
  store i32 %inc35, ptr %nack_count34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp36 = icmp slt i32 %44, 2
  br i1 %cmp36, label %if.then37, label %land.lhs.true33.do.end46_crit_edge

land.lhs.true33.do.end46_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

if.then37:                                        ; preds = %land.lhs.true33
  %atn_count38 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %45 = ptrtoint ptr %atn_count38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %atn_count38, align 4
  %call39 = tail call fastcc i32 @digital_in_send_nack(ptr noundef %ddev, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then37.error_crit_edge

if.then37.error_crit_edge:                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #8
  br label %cleanup

do.end46:                                         ; preds = %land.lhs.true33.do.end46_crit_edge, %if.then31.do.end46_crit_edge
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 744, ptr noundef nonnull @.str.5) #11
  br label %error

if.end49:                                         ; preds = %if.end28
  %atn_count50 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %46 = ptrtoint ptr %atn_count50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %atn_count50, align 4
  %nack_count51 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 26
  %47 = ptrtoint ptr %nack_count51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %nack_count51, align 4
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %50 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %local_payload_max, align 2
  %conv = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv)
  %cmp53 = icmp ugt i32 %49, %conv
  br i1 %cmp53, label %if.end49.exit_crit_edge, label %if.end56

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end56:                                         ; preds = %if.end49
  %52 = ptrtoint ptr %data.i310 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp58 = icmp ult i32 %49, 3
  br i1 %cmp58, label %if.end56.error_crit_edge, label %lor.lhs.false60

if.end56.error_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false60:                                  ; preds = %if.end56
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -43, i8 %55)
  %cmp62.not = icmp eq i8 %55, -43
  br i1 %cmp62.not, label %lor.lhs.false64, label %lor.lhs.false60.error_crit_edge

lor.lhs.false60.error_crit_edge:                  ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %57)
  %cmp66.not = icmp eq i8 %57, 7
  br i1 %cmp66.not, label %if.end69, label %lor.lhs.false64.error_crit_edge

lor.lhs.false64.error_crit_edge:                  ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end69:                                         ; preds = %lor.lhs.false64
  %pfb70 = getelementptr inbounds %struct.digital_dep_req_res, ptr %53, i32 0, i32 2
  %58 = ptrtoint ptr %pfb70 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pfb70, align 1
  %conv71 = zext i8 %59 to i32
  %and = and i32 %conv71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 768, ptr noundef nonnull @.str.20) #11
  br label %error

if.end79:                                         ; preds = %if.end69
  %and81 = and i32 %conv71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end89, label %if.end79.exit_crit_edge

if.end79.exit_crit_edge:                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end89:                                         ; preds = %if.end79
  %call90 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 3) #8
  %and92 = and i8 %59, -32
  %60 = zext i8 %and92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %and92, label %if.end89.exit_crit_edge [
    i8 0, label %sw.bb
    i8 64, label %sw.bb119
    i8 -128, label %sw.bb165
  ]

if.end89.exit_crit_edge:                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb:                                            ; preds = %if.end89
  %and94 = and i32 %conv71, 3
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %61 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %curr_nfc_dep_pni, align 2
  %conv95 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and94, i32 %conv95)
  %cmp96.not = icmp eq i32 %and94, %conv95
  br i1 %cmp96.not, label %if.end104, label %do.end101

do.end101:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 788, ptr noundef nonnull @.str.23) #11
  br label %error

if.end104:                                        ; preds = %sw.bb
  %add = add i8 %62, 1
  %and107 = and i8 %add, 3
  %63 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %and107, ptr %curr_nfc_dep_pni, align 2
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %64 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %65, i32 noundef 0) #8
  %66 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %saved_skb, align 4
  %call111 = tail call fastcc ptr @digital_recv_dep_data_gather(ptr noundef %ddev, i8 noundef zeroext %59, ptr noundef %resp, ptr noundef nonnull @digital_in_send_ack, ptr noundef %arg)
  %cmp.i312 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %if.end104.error_crit_edge, label %if.end115

if.end104.error_crit_edge:                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end115:                                        ; preds = %if.end104
  %tobool116.not = icmp eq ptr %call111, null
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %if.end115.exit_crit_edge

if.end115.exit_crit_edge:                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb119:                                         ; preds = %if.end89
  %and121 = and i32 %conv71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #10
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 820, ptr noundef nonnull @.str.26) #11
  br label %exit

if.end129:                                        ; preds = %sw.bb119
  %and131 = and i32 %conv71, 3
  %curr_nfc_dep_pni132 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %67 = ptrtoint ptr %curr_nfc_dep_pni132 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %curr_nfc_dep_pni132, align 2
  %conv133 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and131, i32 %conv133)
  %cmp134.not = icmp eq i32 %and131, %conv133
  br i1 %cmp134.not, label %if.end142, label %do.end139

do.end139:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 826, ptr noundef nonnull @.str.23) #11
  br label %exit

if.end142:                                        ; preds = %if.end129
  %add145 = add i8 %68, 1
  %and146 = and i8 %add145, 3
  %69 = ptrtoint ptr %curr_nfc_dep_pni132 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %and146, ptr %curr_nfc_dep_pni132, align 2
  %chaining_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %70 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chaining_skb, align 4
  %tobool149.not = icmp eq ptr %71, null
  br i1 %tobool149.not, label %do.end153, label %if.end156

do.end153:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 835, ptr noundef nonnull @.str.31) #11
  br label %exit

if.end156:                                        ; preds = %if.end142
  %saved_skb157 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %72 = ptrtoint ptr %saved_skb157 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %saved_skb157, align 4
  tail call void @kfree_skb_reason(ptr noundef %73, i32 noundef 0) #8
  %74 = ptrtoint ptr %saved_skb157 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %saved_skb157, align 4
  %75 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chaining_skb, align 4
  %data_exch160 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 24
  %77 = ptrtoint ptr %data_exch160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_exch160, align 4
  %call161 = tail call i32 @digital_in_send_dep_req(ptr noundef %ddev, ptr undef, ptr noundef %76, ptr noundef %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end156.free_resp_crit_edge, label %if.end156.error_crit_edge

if.end156.error_crit_edge:                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end156.free_resp_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

sw.bb165:                                         ; preds = %if.end89
  %and167 = and i32 %conv71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.then169, label %if.end174

if.then169:                                       ; preds = %sw.bb165
  %call170 = tail call fastcc i32 @digital_in_send_saved_skb(ptr noundef %ddev, ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then169.free_resp_crit_edge, label %if.then169.error_crit_edge

if.then169.error_crit_edge:                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then169.free_resp_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

if.end174:                                        ; preds = %sw.bb165
  %79 = ptrtoint ptr %atn_count50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %atn_count50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool176.not = icmp eq i32 %80, 0
  br i1 %tobool176.not, label %lor.lhs.false177, label %if.end174.do.end183_crit_edge

if.end174.do.end183_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

lor.lhs.false177:                                 ; preds = %if.end174
  %81 = ptrtoint ptr %nack_count51 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nack_count51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool179.not = icmp eq i32 %82, 0
  br i1 %tobool179.not, label %if.end186, label %lor.lhs.false177.do.end183_crit_edge

lor.lhs.false177.do.end183_crit_edge:             ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183

do.end183:                                        ; preds = %lor.lhs.false177.do.end183_crit_edge, %if.end174.do.end183_crit_edge
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 864, ptr noundef nonnull @.str.34) #11
  br label %error

if.end186:                                        ; preds = %lor.lhs.false177
  %83 = ptrtoint ptr %data.i310 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i310, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %87 = and i8 %86, 63
  %88 = add nsw i8 %87, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 -59, i8 %88)
  %89 = icmp ult i8 %88, -59
  br i1 %89, label %do.end199, label %if.end202

do.end199:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 871, ptr noundef nonnull @.str.37) #11
  br label %error

if.end202:                                        ; preds = %if.end186
  %call203 = tail call fastcc i32 @digital_in_send_rtox(ptr noundef %ddev, ptr noundef %arg, i8 noundef zeroext %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end202.free_resp_crit_edge, label %if.end202.error_crit_edge

if.end202.error_crit_edge:                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end202.free_resp_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

exit:                                             ; preds = %do.end153, %do.end139, %do.end126, %if.end115.exit_crit_edge, %if.end89.exit_crit_edge, %if.end79.exit_crit_edge, %if.end49.exit_crit_edge, %do.end, %land.lhs.true11.exit_crit_edge, %if.else.exit_crit_edge, %land.lhs.true3.thread.exit_crit_edge, %if.then.exit_crit_edge
  %rc.0 = phi i32 [ -110, %land.lhs.true11.exit_crit_edge ], [ -110, %if.else.exit_crit_edge ], [ -5, %do.end ], [ 0, %if.end89.exit_crit_edge ], [ -5, %do.end126 ], [ -5, %do.end139 ], [ -5, %do.end153 ], [ %0, %if.then.exit_crit_edge ], [ -90, %if.end49.exit_crit_edge ], [ -5, %if.end79.exit_crit_edge ], [ 0, %if.end115.exit_crit_edge ], [ -5, %land.lhs.true3.thread.exit_crit_edge ]
  %resp.addr.0 = phi ptr [ null, %land.lhs.true11.exit_crit_edge ], [ null, %if.else.exit_crit_edge ], [ %resp, %do.end ], [ %resp, %if.end89.exit_crit_edge ], [ %resp, %do.end126 ], [ %resp, %do.end139 ], [ %resp, %do.end153 ], [ null, %if.then.exit_crit_edge ], [ %resp, %if.end49.exit_crit_edge ], [ %resp, %if.end79.exit_crit_edge ], [ %call111, %if.end115.exit_crit_edge ], [ null, %land.lhs.true3.thread.exit_crit_edge ]
  %90 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arg, align 4
  %cb_context = getelementptr inbounds %struct.digital_data_exch, ptr %arg, i32 0, i32 1
  %92 = ptrtoint ptr %cb_context to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cb_context, align 4
  tail call void %91(ptr noundef %93, ptr noundef %resp.addr.0, i32 noundef %rc.0) #8
  br label %error

error:                                            ; preds = %exit, %if.end202.error_crit_edge, %do.end199, %do.end183, %if.then169.error_crit_edge, %if.end156.error_crit_edge, %if.end104.error_crit_edge, %do.end101, %do.end76, %lor.lhs.false64.error_crit_edge, %lor.lhs.false60.error_crit_edge, %if.end56.error_crit_edge, %do.end46, %if.then37.error_crit_edge, %if.then4.i, %if.then15.error_crit_edge, %if.then6.error_crit_edge
  %rc.1 = phi i32 [ %call7, %if.then6.error_crit_edge ], [ %rc.0, %exit ], [ %call39, %if.then37.error_crit_edge ], [ -5, %do.end46 ], [ -5, %do.end76 ], [ -5, %do.end183 ], [ -5, %do.end199 ], [ %call203, %if.end202.error_crit_edge ], [ %call170, %if.then169.error_crit_edge ], [ %call161, %if.end156.error_crit_edge ], [ -5, %do.end101 ], [ -5, %lor.lhs.false64.error_crit_edge ], [ -5, %lor.lhs.false60.error_crit_edge ], [ -5, %if.end56.error_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then15.error_crit_edge ], [ -5, %if.end104.error_crit_edge ]
  %resp.addr.1 = phi ptr [ null, %if.then6.error_crit_edge ], [ %resp.addr.0, %exit ], [ %resp, %if.then37.error_crit_edge ], [ %resp, %do.end46 ], [ %resp, %do.end76 ], [ %resp, %do.end183 ], [ %resp, %do.end199 ], [ %resp, %if.end202.error_crit_edge ], [ %resp, %if.then169.error_crit_edge ], [ %resp, %if.end156.error_crit_edge ], [ %resp, %do.end101 ], [ %resp, %lor.lhs.false64.error_crit_edge ], [ %resp, %lor.lhs.false60.error_crit_edge ], [ %resp, %if.end56.error_crit_edge ], [ null, %if.then4.i ], [ null, %if.then15.error_crit_edge ], [ null, %if.end104.error_crit_edge ]
  tail call void @kfree(ptr noundef %arg) #8
  %chaining_skb207 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %94 = ptrtoint ptr %chaining_skb207 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chaining_skb207, align 4
  tail call void @kfree_skb_reason(ptr noundef %95, i32 noundef 0) #8
  %96 = ptrtoint ptr %chaining_skb207 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %chaining_skb207, align 4
  %saved_skb209 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %97 = ptrtoint ptr %saved_skb209 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %saved_skb209, align 4
  tail call void @kfree_skb_reason(ptr noundef %98, i32 noundef 0) #8
  %99 = ptrtoint ptr %saved_skb209 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %saved_skb209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool211.not = icmp eq i32 %rc.1, 0
  br i1 %tobool211.not, label %error.cleanup_crit_edge, label %if.then212

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then212:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %resp.addr.1, i32 noundef 0) #8
  br label %cleanup

free_resp:                                        ; preds = %if.end202.free_resp_crit_edge, %if.then169.free_resp_crit_edge, %if.end156.free_resp_crit_edge
  tail call void @consume_skb(ptr noundef %resp) #8
  br label %cleanup

cleanup:                                          ; preds = %free_resp, %if.then212, %error.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %if.end42, %digital_skb_push_dep_sod.exit.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_tg_send_dep_res(ptr noundef %ddev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -43, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %cmd, align 1
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pfb, align 1
  %did = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 19
  %7 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %did, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = or i8 %5, 4
  %10 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pfb, align 1
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %11 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %did, align 1
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %curr_nfc_dep_pni, align 2
  %16 = add i8 %15, 1
  %17 = and i8 %16, 3
  store i8 %17, ptr %curr_nfc_dep_pni, align 2
  %chaining_skb9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %18 = ptrtoint ptr %chaining_skb9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chaining_skb9, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %remote_payload_max.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %22 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %remote_payload_max.i, align 1
  %conv.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.i = icmp ugt i32 %21, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.digital_send_dep_data_prep.exit_crit_edge

if.end.digital_send_dep_data_prep.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_send_dep_data_prep.exit

if.then.i:                                        ; preds = %if.end
  %24 = ptrtoint ptr %pfb to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pfb, align 1
  %26 = or i8 %25, 16
  store i8 %26, ptr %pfb, align 1
  %27 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %remote_payload_max.i, align 1
  %conv5.i = zext i8 %28 to i32
  %call.i58 = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef %conv5.i) #8
  %tobool.not.i = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i, label %digital_send_dep_data_prep.exit.thread, label %if.end.i

digital_send_dep_data_prep.exit.thread:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %chaining_skb9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chaining_skb9, align 4
  tail call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #8
  %31 = ptrtoint ptr %chaining_skb9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %chaining_skb9, align 4
  br label %if.then12

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %remote_payload_max.i, align 1
  %conv10.i = zext i8 %35 to i32
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i58, i32 noundef %conv10.i) #8
  %36 = call ptr @memcpy(ptr %call.i.i, ptr %33, i32 %conv10.i)
  %37 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %remote_payload_max.i, align 1
  %conv13.i = zext i8 %38 to i32
  %call14.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv13.i) #8
  %39 = ptrtoint ptr %chaining_skb9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %skb, ptr %chaining_skb9, align 4
  %data_exch16.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 24
  br label %digital_send_dep_data_prep.exit

digital_send_dep_data_prep.exit:                  ; preds = %if.end.i, %if.end.digital_send_dep_data_prep.exit_crit_edge
  %data_exch16.i.sink = phi ptr [ %data_exch16.i, %if.end.i ], [ %chaining_skb9, %if.end.digital_send_dep_data_prep.exit_crit_edge ]
  %retval.0.i = phi ptr [ %call.i58, %if.end.i ], [ %skb, %if.end.digital_send_dep_data_prep.exit_crit_edge ]
  %40 = ptrtoint ptr %data_exch16.i.sink to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %data_exch16.i.sink, align 4
  %cmp.i59 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %digital_send_dep_data_prep.exit.if.then12_crit_edge, label %if.end14

digital_send_dep_data_prep.exit.if.then12_crit_edge: ; preds = %digital_send_dep_data_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %digital_send_dep_data_prep.exit.if.then12_crit_edge, %digital_send_dep_data_prep.exit.thread
  %retval.0.i71 = phi ptr [ inttoptr (i32 -12 to ptr), %digital_send_dep_data_prep.exit.thread ], [ %retval.0.i, %digital_send_dep_data_prep.exit.if.then12_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i71 to i32
  br label %cleanup

if.end14:                                         ; preds = %digital_send_dep_data_prep.exit
  %call.i60 = tail call ptr @skb_push(ptr noundef %retval.0.i, i32 noundef 1) #8
  %len.i61 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 6
  %42 = ptrtoint ptr %len.i61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i61, align 4
  %conv.i62 = trunc i32 %43 to i8
  %data.i63 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i63, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i62, ptr %45, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %47 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i64 = icmp eq i8 %48, 0
  br i1 %cmp.i64, label %if.then.i65, label %if.end14.digital_skb_push_dep_sod.exit_crit_edge

if.end14.digital_skb_push_dep_sod.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i65:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef %retval.0.i, i32 noundef 1) #8
  %49 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i65, %if.end14.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %50 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb_add_crc, align 4
  tail call void %51(ptr noundef %retval.0.i) #8
  %52 = ptrtoint ptr %data.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i63, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i67 = tail call ptr @__pskb_copy_fclone(ptr noundef %retval.0.i, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264, i1 noundef zeroext false) #8
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %56 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i67, ptr %saved_skb, align 4
  %call.i68 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef %retval.0.i, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool17.not = icmp eq i32 %call.i68, 0
  br i1 %tobool17.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then18

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %digital_skb_push_dep_sod.exit
  %cmp.not = icmp eq ptr %retval.0.i, %skb
  br i1 %cmp.not, label %if.then18.if.end21_crit_edge, label %if.then20

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %retval.0.i, i32 noundef 0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18.if.end21_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %19, i32 noundef 0) #8
  %57 = ptrtoint ptr %chaining_skb9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %chaining_skb9, align 4
  %58 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %59, i32 noundef 0) #8
  %60 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %saved_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ %41, %if.then12 ], [ %call.i68, %if.end21 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_recv_dep_req(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %0 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_check_crc, align 4
  %call2 = tail call i32 %1(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef 1093, ptr noundef nonnull @.str.5) #11
  br label %exit

if.end5:                                          ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i266 = icmp ult i32 %3, 2
  br i1 %cmp.i266, label %if.end5.do.end11_crit_edge, label %if.end.i

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %4 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.i = icmp eq i8 %5, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5.i)
  %cmp7.not.i = icmp eq i32 %11, %conv5.i
  br i1 %cmp7.not.i, label %if.end14, label %if.end4.i.do.end11_crit_edge

if.end4.i.do.end11_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %if.end4.i.do.end11_crit_edge, %if.end5.do.end11_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef 1099, ptr noundef nonnull @.str.8) #11
  br label %exit

if.end14:                                         ; preds = %if.end4.i
  %call11.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %14 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %local_payload_max, align 2
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp = icmp ugt i32 %13, %conv
  br i1 %cmp, label %if.end14.exit_crit_edge, label %if.end17

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end17:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp19 = icmp ult i32 %13, 3
  br i1 %cmp19, label %if.end17.exit_crit_edge, label %lor.lhs.false

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -44, i8 %19)
  %cmp22.not = icmp eq i8 %19, -44
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp26.not = icmp eq i8 %21, 6
  br i1 %cmp26.not, label %if.end29, label %lor.lhs.false24.exit_crit_edge

lor.lhs.false24.exit_crit_edge:                   ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end29:                                         ; preds = %lor.lhs.false24
  %pfb30 = getelementptr inbounds %struct.digital_dep_req_res, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %pfb30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pfb30, align 1
  %conv31 = zext i8 %23 to i32
  %and = and i32 %conv31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %did45 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 19
  %24 = ptrtoint ptr %did45 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %did45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool46.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %if.else44, label %if.then33

if.then33:                                        ; preds = %if.end29
  br i1 %tobool46.not, label %if.then33.exit_crit_edge, label %land.lhs.true

if.then33.exit_crit_edge:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.lhs.true:                                    ; preds = %if.then33
  %arrayidx = getelementptr i8, ptr %17, i32 3
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp40 = icmp eq i8 %25, %27
  br i1 %cmp40, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else44:                                        ; preds = %if.end29
  br i1 %tobool46.not, label %if.else44.if.end49_crit_edge, label %if.else44.exit_crit_edge

if.else44.exit_crit_edge:                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else44.if.end49_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %if.else44.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge
  %size.0 = phi i32 [ 3, %if.else44.if.end49_crit_edge ], [ 4, %land.lhs.true.if.end49_crit_edge ]
  %and51 = and i32 %conv31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp ne i32 %and51, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %13)
  %cmp56 = icmp ugt i32 %size.0, %13
  %or.cond = select i1 %tobool52.not, i1 true, i1 %cmp56
  br i1 %or.cond, label %if.end49.exit_crit_edge, label %if.end59

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end59:                                         ; preds = %if.end49
  %call60 = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef %size.0) #8
  %and62 = and i8 %23, -32
  %28 = zext i8 %and62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %and62, label %if.end59.sw.epilog_crit_edge [
    i8 0, label %do.body63
    i8 64, label %sw.bb111
    i8 -128, label %sw.bb165
  ]

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body63:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digital_tg_recv_dep_req.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digital_tg_recv_dep_req, %if.then69)) #8
          to label %do.end72 [label %if.then69], !srcloc !104

if.then69:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @digital_tg_recv_dep_req.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body63
  %atn_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %29 = ptrtoint ptr %atn_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %atn_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp eq i32 %30, 0
  br i1 %tobool73.not, label %do.end72.if.end88_crit_edge, label %if.then74

do.end72.if.end88_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i32 %conv31, 3
  br label %if.end88

if.then74:                                        ; preds = %do.end72
  %31 = ptrtoint ptr %atn_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %atn_count, align 4
  %and77 = and i32 %conv31, 3
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %32 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %curr_nfc_dep_pni, align 2
  %34 = add i8 %33, 3
  %35 = and i8 %34, 3
  %and79 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and77, i32 %and79)
  %cmp80 = icmp eq i32 %and77, %and79
  br i1 %cmp80, label %if.then82, label %if.then74.if.end88_crit_edge

if.then74.if.end88_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then82:                                        ; preds = %if.then74
  %call83 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %ddev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then82.free_resp_crit_edge, label %if.then82.exit_crit_edge

if.then82.exit_crit_edge:                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then82.free_resp_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

if.end88:                                         ; preds = %if.then74.if.end88_crit_edge, %do.end72.if.end88_crit_edge
  %and90.pre-phi = phi i32 [ %.pre, %do.end72.if.end88_crit_edge ], [ %and77, %if.then74.if.end88_crit_edge ]
  %curr_nfc_dep_pni91 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %36 = ptrtoint ptr %curr_nfc_dep_pni91 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %curr_nfc_dep_pni91, align 2
  %conv92 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and90.pre-phi, i32 %conv92)
  %cmp93.not = icmp eq i32 %and90.pre-phi, %conv92
  br i1 %cmp93.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef 1176, ptr noundef nonnull @.str.46) #11
  br label %exit

if.end101:                                        ; preds = %if.end88
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %38 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %39, i32 noundef 0) #8
  %40 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %saved_skb, align 4
  %call103 = tail call fastcc ptr @digital_recv_dep_data_gather(ptr noundef %ddev, i8 noundef zeroext %23, ptr noundef %resp, ptr noundef nonnull @digital_tg_send_ack, ptr noundef null)
  %cmp.i268 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.end101.exit_crit_edge, label %if.end107

if.end101.exit_crit_edge:                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end107:                                        ; preds = %if.end101
  %tobool108.not = icmp eq ptr %call103, null
  br i1 %tobool108.not, label %if.end107.cleanup_crit_edge, label %if.end107.sw.epilog_crit_edge

if.end107.sw.epilog_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb111:                                         ; preds = %if.end59
  %and113 = and i32 %conv31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end129, label %if.then115

if.then115:                                       ; preds = %sw.bb111
  %add = add nuw nsw i32 %conv31, 1
  %and117 = and i32 %add, 3
  %curr_nfc_dep_pni118 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %41 = ptrtoint ptr %curr_nfc_dep_pni118 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %curr_nfc_dep_pni118, align 2
  %conv119 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and117, i32 %conv119)
  %cmp120.not = icmp eq i32 %and117, %conv119
  br i1 %cmp120.not, label %if.end123, label %if.then115.exit_crit_edge

if.then115.exit_crit_edge:                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end123:                                        ; preds = %if.then115
  %atn_count124 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %43 = ptrtoint ptr %atn_count124 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %atn_count124, align 4
  %call125 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %ddev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end123.free_resp_crit_edge, label %if.end123.exit_crit_edge

if.end123.exit_crit_edge:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end123.free_resp_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

if.end129:                                        ; preds = %sw.bb111
  %atn_count130 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %44 = ptrtoint ptr %atn_count130 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %atn_count130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool131.not = icmp eq i32 %45, 0
  br i1 %tobool131.not, label %if.end129.if.end147_crit_edge, label %if.then132

if.end129.if.end147_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then132:                                       ; preds = %if.end129
  %46 = ptrtoint ptr %atn_count130 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %atn_count130, align 4
  %add135 = add nuw nsw i32 %conv31, 1
  %and136 = and i32 %add135, 3
  %curr_nfc_dep_pni137 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %47 = ptrtoint ptr %curr_nfc_dep_pni137 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %curr_nfc_dep_pni137, align 2
  %conv138 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and136, i32 %conv138)
  %cmp139 = icmp eq i32 %and136, %conv138
  br i1 %cmp139, label %if.then141, label %if.then132.if.end147_crit_edge

if.then132.if.end147_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then141:                                       ; preds = %if.then132
  %call142 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %ddev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then141.free_resp_crit_edge, label %if.then141.exit_crit_edge

if.then141.exit_crit_edge:                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then141.free_resp_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

if.end147:                                        ; preds = %if.then132.if.end147_crit_edge, %if.end129.if.end147_crit_edge
  %chaining_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %49 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chaining_skb, align 4
  %tobool148.not = icmp eq ptr %50, null
  br i1 %tobool148.not, label %if.end147.exit_crit_edge, label %lor.lhs.false149

if.end147.exit_crit_edge:                         ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false149:                                 ; preds = %if.end147
  %and151 = and i32 %conv31, 3
  %curr_nfc_dep_pni152 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %51 = ptrtoint ptr %curr_nfc_dep_pni152 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %curr_nfc_dep_pni152, align 2
  %conv153 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and151, i32 %conv153)
  %cmp154.not = icmp eq i32 %and151, %conv153
  br i1 %cmp154.not, label %if.end157, label %lor.lhs.false149.exit_crit_edge

lor.lhs.false149.exit_crit_edge:                  ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end157:                                        ; preds = %lor.lhs.false149
  %saved_skb158 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %53 = ptrtoint ptr %saved_skb158 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %saved_skb158, align 4
  tail call void @kfree_skb_reason(ptr noundef %54, i32 noundef 0) #8
  %55 = ptrtoint ptr %saved_skb158 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %saved_skb158, align 4
  %56 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chaining_skb, align 4
  %call161 = tail call i32 @digital_tg_send_dep_res(ptr noundef %ddev, ptr noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end157.free_resp_crit_edge, label %if.end157.exit_crit_edge

if.end157.exit_crit_edge:                         ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end157.free_resp_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resp

sw.bb165:                                         ; preds = %if.end59
  %and167 = and i32 %conv31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end170, label %sw.bb165.exit_crit_edge

sw.bb165.exit_crit_edge:                          ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end170:                                        ; preds = %sw.bb165
  %call171 = tail call fastcc i32 @digital_tg_send_atn(ptr noundef %ddev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end170.exit_crit_edge

if.end170.exit_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end174:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %atn_count175 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %58 = ptrtoint ptr %atn_count175 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %atn_count175, align 4
  %inc176 = add i32 %59, 1
  store i32 %inc176, ptr %atn_count175, align 4
  br label %free_resp

sw.epilog:                                        ; preds = %if.end107.sw.epilog_crit_edge, %if.end59.sw.epilog_crit_edge
  %resp.addr.0 = phi ptr [ %resp, %if.end59.sw.epilog_crit_edge ], [ %call103, %if.end107.sw.epilog_crit_edge ]
  %60 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ddev, align 4
  %call177 = tail call i32 @nfc_tm_data_received(ptr noundef %61, ptr noundef %resp.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  %spec.select = select i1 %tobool178.not, i32 0, i32 -90
  %spec.select273 = select i1 %tobool178.not, ptr %resp.addr.0, ptr null
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.end170.exit_crit_edge, %sw.bb165.exit_crit_edge, %if.end157.exit_crit_edge, %lor.lhs.false149.exit_crit_edge, %if.end147.exit_crit_edge, %if.then141.exit_crit_edge, %if.end123.exit_crit_edge, %if.then115.exit_crit_edge, %if.end101.exit_crit_edge, %do.end98, %if.then82.exit_crit_edge, %if.end49.exit_crit_edge, %if.else44.exit_crit_edge, %land.lhs.true.exit_crit_edge, %if.then33.exit_crit_edge, %lor.lhs.false24.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end17.exit_crit_edge, %if.end14.exit_crit_edge, %do.end11, %do.end, %entry.exit_crit_edge
  %rc.0 = phi i32 [ -90, %do.end ], [ -90, %do.end11 ], [ %call171, %if.end170.exit_crit_edge ], [ %call125, %if.end123.exit_crit_edge ], [ %call142, %if.then141.exit_crit_edge ], [ %call161, %if.end157.exit_crit_edge ], [ %call83, %if.then82.exit_crit_edge ], [ -90, %do.end98 ], [ -90, %if.end14.exit_crit_edge ], [ -90, %lor.lhs.false24.exit_crit_edge ], [ -90, %lor.lhs.false.exit_crit_edge ], [ -90, %if.end17.exit_crit_edge ], [ -90, %land.lhs.true.exit_crit_edge ], [ -90, %if.then33.exit_crit_edge ], [ -90, %if.else44.exit_crit_edge ], [ -90, %if.end49.exit_crit_edge ], [ -90, %if.then115.exit_crit_edge ], [ -90, %lor.lhs.false149.exit_crit_edge ], [ -90, %if.end147.exit_crit_edge ], [ -90, %sw.bb165.exit_crit_edge ], [ -90, %entry.exit_crit_edge ], [ -90, %if.end101.exit_crit_edge ], [ %spec.select, %sw.epilog ]
  %resp.addr.1 = phi ptr [ %resp, %do.end ], [ %resp, %do.end11 ], [ %resp, %if.end170.exit_crit_edge ], [ %resp, %if.end123.exit_crit_edge ], [ %resp, %if.then141.exit_crit_edge ], [ %resp, %if.end157.exit_crit_edge ], [ %resp, %if.then82.exit_crit_edge ], [ %resp, %do.end98 ], [ %resp, %if.end14.exit_crit_edge ], [ %resp, %lor.lhs.false24.exit_crit_edge ], [ %resp, %lor.lhs.false.exit_crit_edge ], [ %resp, %if.end17.exit_crit_edge ], [ %resp, %land.lhs.true.exit_crit_edge ], [ %resp, %if.then33.exit_crit_edge ], [ %resp, %if.else44.exit_crit_edge ], [ %resp, %if.end49.exit_crit_edge ], [ %resp, %if.then115.exit_crit_edge ], [ %resp, %lor.lhs.false149.exit_crit_edge ], [ %resp, %if.end147.exit_crit_edge ], [ %resp, %sw.bb165.exit_crit_edge ], [ null, %entry.exit_crit_edge ], [ null, %if.end101.exit_crit_edge ], [ %spec.select273, %sw.epilog ]
  %chaining_skb181 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %62 = ptrtoint ptr %chaining_skb181 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chaining_skb181, align 4
  tail call void @kfree_skb_reason(ptr noundef %63, i32 noundef 0) #8
  %64 = ptrtoint ptr %chaining_skb181 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %chaining_skb181, align 4
  %atn_count183 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %65 = ptrtoint ptr %atn_count183 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %atn_count183, align 4
  %saved_skb184 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %66 = ptrtoint ptr %saved_skb184 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %saved_skb184, align 4
  tail call void @kfree_skb_reason(ptr noundef %67, i32 noundef 0) #8
  %68 = ptrtoint ptr %saved_skb184 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %saved_skb184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool186.not = icmp eq i32 %rc.0, 0
  br i1 %tobool186.not, label %exit.cleanup_crit_edge, label %if.then187

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then187:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %resp.addr.1, i32 noundef 0) #8
  br label %cleanup

free_resp:                                        ; preds = %if.end174, %if.end157.free_resp_crit_edge, %if.then141.free_resp_crit_edge, %if.end123.free_resp_crit_edge, %if.then82.free_resp_crit_edge
  tail call void @consume_skb(ptr noundef %resp) #8
  br label %cleanup

cleanup:                                          ; preds = %free_resp, %if.then187, %exit.cleanup_crit_edge, %if.end107.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_atr_req(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then65_crit_edge, label %if.end

entry.if.then65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.then65_crit_edge, label %if.end3

if.end.if.then65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %5)
  %cmp = icmp eq i8 %5, -16
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %curr_rf_tech.i, align 1
  %skb_add_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %7 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @digital_skb_add_crc_none, ptr %skb_add_crc.i, align 4
  %skb_check_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %8 = ptrtoint ptr %skb_check_crc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @digital_skb_check_crc_none, ptr %skb_check_crc.i, align 4
  %driver_capabilities.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %9 = ptrtoint ptr %driver_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_capabilities.i, align 4
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @digital_skb_add_crc_a, ptr %skb_add_crc.i, align 4
  %12 = ptrtoint ptr %skb_check_crc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @digital_skb_check_crc_a, ptr %skb_check_crc.i, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %curr_rf_tech.i, align 1
  %skb_add_crc.i102 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %14 = ptrtoint ptr %skb_add_crc.i102 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @digital_skb_add_crc_none, ptr %skb_add_crc.i102, align 4
  %skb_check_crc.i103 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %15 = ptrtoint ptr %skb_check_crc.i103 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @digital_skb_check_crc_none, ptr %skb_check_crc.i103, align 4
  %driver_capabilities.i104 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %16 = ptrtoint ptr %driver_capabilities.i104 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_capabilities.i104, align 4
  %and.i105 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %if.end.i107, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i107:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %skb_add_crc.i102 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @digital_skb_add_crc_f, ptr %skb_add_crc.i102, align 4
  %19 = ptrtoint ptr %skb_check_crc.i103 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @digital_skb_check_crc_f, ptr %skb_check_crc.i103, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i107, %if.else.if.end6_crit_edge, %if.end.i, %if.then5.if.end6_crit_edge
  %min_size.0 = phi i32 [ 18, %if.then5.if.end6_crit_edge ], [ 18, %if.end.i ], [ 17, %if.else.if.end6_crit_edge ], [ 17, %if.end.i107 ]
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %min_size.0)
  %cmp8 = icmp ult i32 %21, %min_size.0
  br i1 %cmp8, label %if.end6.if.then65_crit_edge, label %if.end11

if.end6.if.then65_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end11:                                         ; preds = %if.end6
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 16
  %22 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %curr_protocol, align 4
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %23 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb_check_crc, align 4
  %call12 = tail call i32 %24(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 1577, ptr noundef nonnull @.str.5) #11
  br label %if.then65

if.end16:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i109 = icmp ult i32 %26, 2
  br i1 %cmp.i109, label %if.end16.do.end22_crit_edge, label %if.end.i111

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.end.i111:                                      ; preds = %if.end16
  %curr_rf_tech.i110 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %27 = ptrtoint ptr %curr_rf_tech.i110 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %curr_rf_tech.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp1.i = icmp eq i8 %28, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i111.if.end4.i_crit_edge

if.end.i111.if.end4.i_crit_edge:                  ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i111.if.end4.i_crit_edge
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv5.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv5.i)
  %cmp7.not.i = icmp eq i32 %34, %conv5.i
  br i1 %cmp7.not.i, label %if.end25, label %if.end4.i.do.end22_crit_edge

if.end4.i.do.end22_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end22:                                         ; preds = %if.end4.i.do.end22_crit_edge, %if.end16.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 1583, ptr noundef nonnull @.str.8) #11
  br label %if.then65

if.end25:                                         ; preds = %if.end4.i
  %call11.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -44, i8 %38)
  %cmp28.not = icmp eq i8 %38, -44
  br i1 %cmp28.not, label %lor.lhs.false, label %if.end25.if.then65_crit_edge

if.end25.if.then65_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end25
  %cmd = getelementptr inbounds %struct.digital_atr_req, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp31.not = icmp eq i8 %40, 0
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %did = getelementptr inbounds %struct.digital_atr_req, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %did, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %42)
  %cmp35 = icmp ugt i8 %42, 14
  br i1 %cmp35, label %lor.lhs.false33.if.then65_crit_edge, label %if.end38

lor.lhs.false33.if.then65_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end38:                                         ; preds = %lor.lhs.false33
  %pp = getelementptr inbounds %struct.digital_atr_req, ptr %36, i32 0, i32 6
  %43 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pp, align 1
  %45 = lshr i8 %44, 4
  %46 = and i8 %45, 3
  %conv.i = zext i8 %46 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %conv.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1
  %remote_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %49 = ptrtoint ptr %remote_payload_max to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %remote_payload_max, align 1
  %50 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %did, align 1
  %did47 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 19
  %52 = ptrtoint ptr %did47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %did47, align 1
  %call48 = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end38.if.then65_crit_edge

if.end38.if.then65_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end51:                                         ; preds = %if.end38
  %call52 = tail call fastcc i32 @digital_tg_send_atr_res(ptr noundef %ddev, ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.if.then65_crit_edge

if.end51.if.then65_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end55:                                         ; preds = %if.end51
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %sub = add i32 %54, -16
  %poll_tech_count57 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 8
  %55 = ptrtoint ptr %poll_tech_count57 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %poll_tech_count57, align 4
  store i8 0, ptr %poll_tech_count57, align 4
  %57 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ddev, align 4
  %gb = getelementptr inbounds %struct.digital_atr_req, ptr %36, i32 0, i32 7
  %call59 = tail call i32 @nfc_tm_activated(ptr noundef %58, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %gb, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end55.if.end66_crit_edge, label %if.then61

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %poll_tech_count57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %poll_tech_count57, align 4
  br label %if.then65

if.then65:                                        ; preds = %if.then61, %if.end51.if.then65_crit_edge, %if.end38.if.then65_crit_edge, %lor.lhs.false33.if.then65_crit_edge, %lor.lhs.false.if.then65_crit_edge, %if.end25.if.then65_crit_edge, %do.end22, %do.end, %if.end6.if.then65_crit_edge, %if.end.if.then65_crit_edge, %entry.if.then65_crit_edge
  %resp.addr.0117 = phi ptr [ %resp, %do.end ], [ %resp, %do.end22 ], [ %resp, %if.end38.if.then65_crit_edge ], [ %resp, %if.end51.if.then65_crit_edge ], [ %resp, %if.then61 ], [ %resp, %if.end.if.then65_crit_edge ], [ %resp, %if.end6.if.then65_crit_edge ], [ %resp, %lor.lhs.false33.if.then65_crit_edge ], [ %resp, %lor.lhs.false.if.then65_crit_edge ], [ %resp, %if.end25.if.then65_crit_edge ], [ null, %entry.if.then65_crit_edge ]
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end55.if.end66_crit_edge
  %resp.addr.0118 = phi ptr [ %resp.addr.0117, %if.then65 ], [ %resp, %if.end55.if.end66_crit_edge ]
  tail call void @consume_skb(ptr noundef %resp.addr.0118) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_atr_res(ptr noundef %ddev, ptr nocapture noundef readonly %atr_req) unnamed_addr #0 align 64 {
entry:
  %gb_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gb_len) #8
  %0 = ptrtoint ptr %gb_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gb_len, align 4, !annotation !105
  %1 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ddev, align 4
  %call = call ptr @nfc_get_local_general_bytes(ptr noundef %2, ptr noundef nonnull %gb_len) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %gb_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gb_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gb_len, align 4
  %add = add i32 %5, 17
  %call1 = call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef %add) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef 17) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 15)
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -43, ptr %7, align 1
  %cmd = getelementptr inbounds %struct.digital_atr_res, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cmd, align 1
  %nfcid3 = getelementptr inbounds %struct.digital_atr_res, ptr %7, i32 0, i32 2
  %nfcid36 = getelementptr inbounds %struct.digital_atr_req, ptr %atr_req, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %nfcid3, ptr %nfcid36, i32 10)
  %to = getelementptr inbounds %struct.digital_atr_res, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %to, align 1
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %14 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %local_payload_max, align 2
  %pp = getelementptr inbounds %struct.digital_atr_res, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %pp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %pp, align 1
  %16 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.end4.if.end19_crit_edge, label %if.then12

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef %17) #8
  %18 = ptrtoint ptr %pp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pp, align 1
  %20 = or i8 %19, 2
  store i8 %20, ptr %pp, align 1
  %gb17 = getelementptr inbounds %struct.digital_atr_res, ptr %7, i32 0, i32 8
  %21 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gb_len, align 4
  %23 = call ptr @memcpy(ptr %gb17, ptr %call, i32 %22)
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end4.if.end19_crit_edge
  %call.i = call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %27, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %29 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i = icmp eq i8 %30, 0
  br i1 %cmp.i, label %if.then.i, label %if.end19.digital_skb_push_dep_sod.exit_crit_edge

if.end19.digital_skb_push_dep_sod.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 1) #8
  %31 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end19.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %32 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb_add_crc, align 4
  call void %33(ptr noundef nonnull %call1) #8
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %34 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %curr_nfc_dep_pni, align 2
  %call.i52 = call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call1, ptr noundef null, i16 noundef zeroext 999, ptr noundef nonnull @digital_tg_send_atr_res_complete, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool21.not = icmp eq i32 %call.i52, 0
  br i1 %tobool21.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then22

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call.i52, %if.then22 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gb_len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_poll_next_tech(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_send_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_psl_req(ptr noundef %ddev, ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 5) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 5) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -44, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_psl_req, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %cmd, align 1
  %did = getelementptr inbounds %struct.digital_psl_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %did to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %did, align 1
  %brs = getelementptr inbounds %struct.digital_psl_req, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %brs to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 18, ptr %brs, align 1
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %6 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %local_payload_max, align 2
  %remote_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %8 = ptrtoint ptr %remote_payload_max to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %remote_payload_max, align 1
  %10 = tail call i8 @llvm.umin.i8(i8 %7, i8 %9)
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %10, label %for.inc.3.i [
    i8 64, label %if.end.digital_payload_size_to_bits.exit_crit_edge
    i8 -128, label %cleanup.fold.split.i
    i8 -64, label %cleanup.fold.split11.i
    i8 -2, label %cleanup.fold.split12.i
  ]

if.end.digital_payload_size_to_bits.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_payload_size_to_bits.exit

for.inc.3.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_payload_size_to_bits.exit

cleanup.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_payload_size_to_bits.exit

cleanup.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_payload_size_to_bits.exit

cleanup.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_payload_size_to_bits.exit

digital_payload_size_to_bits.exit:                ; preds = %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split.i, %for.inc.3.i, %if.end.digital_payload_size_to_bits.exit_crit_edge
  %retval.0.i = phi i8 [ 3, %for.inc.3.i ], [ 0, %if.end.digital_payload_size_to_bits.exit_crit_edge ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split11.i ], [ 3, %cleanup.fold.split12.i ]
  %fsl = getelementptr inbounds %struct.digital_psl_req, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %fsl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %retval.0.i, ptr %fsl, align 1
  %13 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %local_payload_max, align 2
  %14 = ptrtoint ptr %remote_payload_max to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %10, ptr %remote_payload_max, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %18, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %20 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i = icmp eq i8 %21, 0
  br i1 %cmp.i, label %if.then.i, label %digital_payload_size_to_bits.exit.digital_skb_push_dep_sod.exit_crit_edge

digital_payload_size_to_bits.exit.digital_skb_push_dep_sod.exit_crit_edge: ; preds = %digital_payload_size_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %digital_payload_size_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %22 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %digital_payload_size_to_bits.exit.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %23 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb_add_crc, align 4
  tail call void %24(ptr noundef nonnull %call) #8
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %25 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dep_rwt, align 4
  %call.i43 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %26, ptr noundef nonnull @digital_in_recv_psl_res, ptr noundef %target) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool13.not = icmp eq i32 %call.i43, 0
  br i1 %tobool13.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then14

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i43, %if.then14 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_recv_psl_res(ptr noundef %ddev, ptr nocapture noundef readonly %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then41_crit_edge, label %if.end

entry.if.then41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end:                                           ; preds = %entry
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %0 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_check_crc, align 4
  %call2 = tail call i32 %1(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 310, ptr noundef nonnull @.str.5) #11
  br label %if.then41

if.end5:                                          ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i65 = icmp ult i32 %3, 2
  br i1 %cmp.i65, label %if.end5.do.end11_crit_edge, label %if.end.i

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %4 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.i = icmp eq i8 %5, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5.i)
  %cmp7.not.i = icmp eq i32 %11, %conv5.i
  br i1 %cmp7.not.i, label %if.end14, label %if.end4.i.do.end11_crit_edge

if.end4.i.do.end11_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end11:                                         ; preds = %if.end4.i.do.end11_crit_edge, %if.end5.do.end11_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 316, ptr noundef nonnull @.str.8) #11
  br label %if.then41

if.end14:                                         ; preds = %if.end4.i
  %call11.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.not = icmp eq i32 %15, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end14.if.then41_crit_edge

if.end14.if.then41_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end14
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -43, i8 %17)
  %cmp15.not = icmp eq i8 %17, -43
  br i1 %cmp15.not, label %lor.lhs.false17, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmd = getelementptr inbounds %struct.digital_psl_res, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp19.not = icmp eq i8 %19, 5
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false17.if.then41_crit_edge

lor.lhs.false17.if.then41_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end22:                                         ; preds = %lor.lhs.false17
  %call23 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.if.then41_crit_edge

if.end22.if.then41_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef 1, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.if.then41_crit_edge

if.end26.if.then41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end30:                                         ; preds = %if.end26
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %20 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.end30.exit.thread71_crit_edge

if.end30.exit.thread71_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.thread71

land.lhs.true:                                    ; preds = %if.end30
  %22 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp33 = icmp eq i8 %23, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true.exit.thread71_crit_edge

land.lhs.true.exit.thread71_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.thread71

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %24 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @digital_skb_add_crc_f, ptr %skb_add_crc, align 4
  %25 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @digital_skb_check_crc_f, ptr %skb_check_crc, align 4
  br label %exit.thread71

exit.thread71:                                    ; preds = %if.then35, %land.lhs.true.exit.thread71_crit_edge, %if.end30.exit.thread71_crit_edge
  %26 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %curr_rf_tech.i, align 1
  %27 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddev, align 4
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  %call39 = tail call i32 @nfc_dep_link_is_up(ptr noundef %28, i32 noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %31 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %curr_nfc_dep_pni, align 2
  tail call void @consume_skb(ptr noundef %resp) #8
  br label %if.end42

if.then41:                                        ; preds = %if.end26.if.then41_crit_edge, %if.end22.if.then41_crit_edge, %lor.lhs.false17.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge, %if.end14.if.then41_crit_edge, %do.end11, %do.end, %entry.if.then41_crit_edge
  %.sink = phi ptr [ %resp, %do.end ], [ %resp, %do.end11 ], [ %resp, %if.end22.if.then41_crit_edge ], [ %resp, %if.end26.if.then41_crit_edge ], [ %resp, %lor.lhs.false17.if.then41_crit_edge ], [ %resp, %lor.lhs.false.if.then41_crit_edge ], [ %resp, %if.end14.if.then41_crit_edge ], [ null, %entry.if.then41_crit_edge ]
  tail call void @consume_skb(ptr noundef %.sink) #8
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 16
  %32 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %curr_protocol, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %exit.thread71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_f(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @digital_skb_add_crc(ptr noundef %skb, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_f(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @digital_skb_check_crc(ptr noundef %skb, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_skb_add_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_skb_check_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_nack(ptr noundef %ddev, ptr noundef %data_exch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -44, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %cmd, align 1
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %6 = or i8 %5, 80
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pfb, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %11, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %13 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.digital_skb_push_dep_sod.exit_crit_edge

if.end.digital_skb_push_dep_sod.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %15 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %16 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb_add_crc, align 4
  tail call void %17(ptr noundef nonnull %call) #8
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %18 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dep_rwt, align 4
  %call.i23 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %19, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool4.not = icmp eq i32 %call.i23, 0
  br i1 %tobool4.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then5

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i23, %if.then5 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @digital_recv_dep_data_gather(ptr noundef %ddev, i8 noundef zeroext %pfb, ptr noundef %resp, ptr nocapture noundef readonly %send_ack, ptr noundef %data_exch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %pfb, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %chaining_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %1 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chaining_skb, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %local_payload_max = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %3 = ptrtoint ptr %local_payload_max to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %local_payload_max, align 2
  %conv2 = zext i8 %4 to i32
  %mul = shl nuw nsw i32 %conv2, 3
  %call = tail call ptr @nfc_alloc_recv_skb(i32 noundef %mul, i32 noundef 3264) #8
  %5 = ptrtoint ptr %chaining_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %chaining_skb, align 4
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then.error_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %chaining_skb8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %6 = ptrtoint ptr %chaining_skb8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chaining_skb8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %len = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then10.skb_tailroom.exit_crit_edge

if.then10.skb_tailroom.exit_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then10.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then10.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cond.i)
  %cmp = icmp ugt i32 %9, %cond.i
  br i1 %cmp, label %if.then14, label %skb_tailroom.exit.if.end27_crit_edge

skb_tailroom.exit.if.end27_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %skb_tailroom.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i71 = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i72 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i71, %sub.ptr.rhs.cast.i72
  %local_payload_max18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %20 = ptrtoint ptr %local_payload_max18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %local_payload_max18, align 2
  %conv19 = zext i8 %21 to i32
  %mul20 = shl nuw nsw i32 %conv19, 3
  %call21 = tail call ptr @skb_copy_expand(ptr noundef nonnull %7, i32 noundef %sub.ptr.sub.i73, i32 noundef %mul20, i32 noundef 3264) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then14.error_crit_edge, label %if.end24

if.then14.error_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end24:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %chaining_skb8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chaining_skb8, align 4
  tail call void @kfree_skb_reason(ptr noundef %23, i32 noundef 0) #8
  %24 = ptrtoint ptr %chaining_skb8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %chaining_skb8, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %skb_tailroom.exit.if.end27_crit_edge
  %25 = ptrtoint ptr %chaining_skb8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chaining_skb8, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %30) #8
  %31 = call ptr @memcpy(ptr %call.i, ptr %28, i32 %30)
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #8
  br i1 %tobool.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end27
  %call35 = tail call i32 %send_ack(ptr noundef %ddev, ptr noundef %data_exch) #8, !callees !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %if.then34.error_crit_edge

if.then34.error_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %chaining_skb8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chaining_skb8, align 4
  store ptr null, ptr %chaining_skb8, align 4
  br label %cleanup

error:                                            ; preds = %if.then34.error_crit_edge, %if.then14.error_crit_edge, %if.then.error_crit_edge
  %resp.addr.1 = phi ptr [ null, %if.then34.error_crit_edge ], [ %resp, %if.then.error_crit_edge ], [ %resp, %if.then14.error_crit_edge ]
  %rc.0 = phi i32 [ %call35, %if.then34.error_crit_edge ], [ -12, %if.then.error_crit_edge ], [ -12, %if.then14.error_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %resp.addr.1, i32 noundef 0) #8
  %chaining_skb43 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 23
  %34 = ptrtoint ptr %chaining_skb43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chaining_skb43, align 4
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #8
  %36 = ptrtoint ptr %chaining_skb43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %chaining_skb43, align 4
  %37 = inttoptr i32 %rc.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end39, %if.then34.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %37, %error ], [ null, %if.then34.cleanup_crit_edge ], [ %33, %if.end39 ], [ %resp, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_in_send_ack(ptr noundef %ddev, ptr noundef %data_exch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -44, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %cmd, align 1
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %6 = or i8 %5, 64
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pfb, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %11, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %13 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.digital_skb_push_dep_sod.exit_crit_edge

if.end.digital_skb_push_dep_sod.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %15 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %16 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb_add_crc, align 4
  tail call void %17(ptr noundef nonnull %call) #8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %call, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264, i1 noundef zeroext false) #8
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %22 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %saved_skb, align 4
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %23 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dep_rwt, align 4
  %call.i30 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %24, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool5.not = icmp eq i32 %call.i30, 0
  br i1 %tobool5.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then6

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  %25 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #8
  %27 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %saved_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i30, %if.then6 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_saved_skb(ptr noundef %ddev, ptr noundef %data_exch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %0 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !108

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #8
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %4 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %saved_skb, align 4
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %6 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dep_rwt, align 4
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef %5, ptr noundef null, i16 noundef zeroext %7, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %skb_get.exit.cleanup_crit_edge, label %if.then5

skb_get.exit.cleanup_crit_edge:                   ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %skb_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then5 ], [ 0, %skb_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_rtox(ptr noundef %ddev, ptr noundef %data_exch, i8 noundef zeroext %rtox) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_rwt = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 20
  %0 = ptrtoint ptr %dep_rwt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dep_rwt, align 4
  %conv1 = zext i8 %rtox to i16
  %mul = mul i16 %1, %conv1
  %2 = tail call i16 @llvm.umin.i16(i16 %mul, i16 5049)
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 1) #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rtox, ptr %call.i, align 1
  %call8 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -44, ptr %5, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %cmd, align 1
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -112, ptr %pfb, align 1
  %call.i32 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %12, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %14 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7.digital_skb_push_dep_sod.exit_crit_edge

if.end7.digital_skb_push_dep_sod.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %16 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end7.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %17 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb_add_crc, align 4
  tail call void %18(ptr noundef nonnull %call) #8
  %call.i33 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 0, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext %2, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool10.not = icmp eq i32 %call.i33, 0
  br i1 %tobool10.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then11

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i33, %if.then11 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_saved_skb(ptr noundef %ddev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %0 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !108

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !109

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #8
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %4 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %saved_skb, align 4
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef %5, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %skb_get.exit.cleanup_crit_edge, label %if.then5

skb_get.exit.cleanup_crit_edge:                   ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %skb_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then5 ], [ 0, %skb_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_tg_send_ack(ptr noundef %ddev, ptr noundef %data_exch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -43, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %cmd, align 1
  %curr_nfc_dep_pni = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_nfc_dep_pni, align 2
  %6 = or i8 %5, 64
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pfb, align 1
  %did = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 19
  %8 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %did, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = or i8 %5, 68
  %11 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pfb, align 1
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 1) #8
  %12 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %did, align 1
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %call.i, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %15 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %curr_nfc_dep_pni, align 2
  %17 = add i8 %16, 1
  %18 = and i8 %17, 3
  store i8 %18, ptr %curr_nfc_dep_pni, align 2
  %call.i48 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %20 to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %22, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %24 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11.digital_skb_push_dep_sod.exit_crit_edge

if.end11.digital_skb_push_dep_sod.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %26 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end11.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %27 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb_add_crc, align 4
  tail call void %28(ptr noundef nonnull %call) #8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %call, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264, i1 noundef zeroext false) #8
  %saved_skb = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 27
  %33 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %saved_skb, align 4
  %call.i49 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef %data_exch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool18.not = icmp eq i32 %call.i49, 0
  br i1 %tobool18.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then19

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  %34 = ptrtoint ptr %saved_skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %saved_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #8
  %36 = ptrtoint ptr %saved_skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %saved_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i49, %if.then19 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_atn(ptr noundef %ddev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -43, ptr %1, align 1
  %cmd = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %cmd, align 1
  %pfb = getelementptr inbounds %struct.digital_dep_req_res, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %pfb, align 1
  %did = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 19
  %5 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %did, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pfb to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -124, ptr %pfb, align 1
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 1) #8
  %8 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %did, align 1
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %call.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %call.i31 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %14, align 1
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %16 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %curr_rf_tech.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.digital_skb_push_dep_sod.exit_crit_edge

if.end8.digital_skb_push_dep_sod.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #8
  %18 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -16, ptr %call3.i, align 1
  br label %digital_skb_push_dep_sod.exit

digital_skb_push_dep_sod.exit:                    ; preds = %if.then.i, %if.end8.digital_skb_push_dep_sod.exit_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %19 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb_add_crc, align 4
  tail call void %20(ptr noundef nonnull %call) #8
  %call.i32 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool10.not = icmp eq i32 %call.i32, 0
  br i1 %tobool10.not, label %digital_skb_push_dep_sod.exit.cleanup_crit_edge, label %if.then11

digital_skb_push_dep_sod.exit.cleanup_crit_edge:  ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %digital_skb_push_dep_sod.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %digital_skb_push_dep_sod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i32, %if.then11 ], [ 0, %digital_skb_push_dep_sod.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @digital_skb_add_crc_none(ptr nocapture noundef %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @digital_skb_check_crc_none(ptr nocapture noundef readnone %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_a(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @digital_skb_add_crc(ptr noundef %skb, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_a(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @digital_skb_check_crc(ptr noundef %skb, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_send_atr_res_complete(ptr noundef %ddev, ptr nocapture noundef readnone %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @digital_poll_next_tech(ptr noundef %ddev) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp = icmp eq i8 %3, -16
  %spec.select = select i1 %cmp, i32 3, i32 2
  %atn_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 25
  %4 = ptrtoint ptr %atn_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %atn_count, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %arrayidx5 = getelementptr i8, ptr %6, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp7 = icmp eq i8 %8, 4
  br i1 %cmp7, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %if.end
  %skb_check_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %9 = ptrtoint ptr %skb_check_crc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb_check_crc.i, align 4
  %call2.i = tail call i32 %10(ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, i32 noundef 1414, ptr noundef nonnull @.str.5) #11
  br label %digital_tg_recv_psl_req.exit

if.end5.i:                                        ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %resp, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i1.i = icmp ult i32 %12, 2
  br i1 %cmp.i1.i, label %if.end5.i.do.end11.i_crit_edge, label %if.end.i.i

if.end5.i.do.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

if.end.i.i:                                       ; preds = %if.end5.i
  %curr_rf_tech.i.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %13 = ptrtoint ptr %curr_rf_tech.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_rf_tech.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1.i.i = icmp eq i8 %14, 0
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.end.i.i.if.end4.i.i_crit_edge

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv5.i.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv5.i.i)
  %cmp7.not.i.i = icmp eq i32 %20, %conv5.i.i
  br i1 %cmp7.not.i.i, label %if.end14.i, label %if.end4.i.i.do.end11.i_crit_edge

if.end4.i.i.do.end11.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end4.i.i.do.end11.i_crit_edge, %if.end5.i.do.end11.i_crit_edge
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, i32 noundef 1420, ptr noundef nonnull @.str.8) #11
  br label %digital_tg_recv_psl_req.exit

if.end14.i:                                       ; preds = %if.end4.i.i
  %call11.i.i = tail call ptr @skb_pull(ptr noundef %resp, i32 noundef 1) #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end14.i.digital_tg_recv_psl_req.exit_crit_edge

if.end14.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -44, i8 %26)
  %cmp15.not.i = icmp eq i8 %26, -44
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false.i.digital_tg_recv_psl_req.exit_crit_edge

lor.lhs.false.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i
  %cmd.i = getelementptr inbounds %struct.digital_psl_req, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cmd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp19.not.i = icmp eq i8 %28, 4
  br i1 %cmp19.not.i, label %if.end22.i, label %lor.lhs.false17.i.digital_tg_recv_psl_req.exit_crit_edge

lor.lhs.false17.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %brs.i = getelementptr inbounds %struct.digital_psl_req, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %brs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %brs.i, align 1
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 7
  %conv25.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %switch = icmp ult i8 %32, 3
  br i1 %switch, label %sw.epilog.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.47, i32 noundef %conv25.i) #11
  br label %digital_tg_recv_psl_req.exit

sw.epilog.i:                                      ; preds = %if.end22.i
  %fsl.i = getelementptr inbounds %struct.digital_psl_req, ptr %22, i32 0, i32 4
  %33 = ptrtoint ptr %fsl.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fsl.i, align 1
  %35 = and i8 %34, 3
  %conv.i.i = zext i8 %35 to i32
  %arrayidx.i.i = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %conv.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 1
  %local_payload_max.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 21
  %38 = ptrtoint ptr %local_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %local_payload_max.i, align 2
  %remote_payload_max.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 22
  %40 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %remote_payload_max.i, align 1
  %42 = tail call i8 @llvm.umin.i8(i8 %39, i8 %41) #8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %42)
  %cmp48.i = icmp ugt i8 %37, %42
  br i1 %cmp48.i, label %sw.epilog.i.digital_tg_recv_psl_req.exit_crit_edge, label %if.end51.i

sw.epilog.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

if.end51.i:                                       ; preds = %sw.epilog.i
  %43 = ptrtoint ptr %local_payload_max.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %37, ptr %local_payload_max.i, align 2
  %44 = ptrtoint ptr %remote_payload_max.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %37, ptr %remote_payload_max.i, align 1
  %did.i = getelementptr inbounds %struct.digital_psl_req, ptr %22, i32 0, i32 2
  %45 = ptrtoint ptr %did.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %did.i, align 1
  %call.i = tail call ptr @digital_skb_alloc(ptr noundef %ddev, i32 noundef 3) #8
  %tobool.not.i20 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i20, label %if.end51.i.digital_tg_recv_psl_req.exit_crit_edge, label %if.end.i27

if.end51.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

if.end.i27:                                       ; preds = %if.end51.i
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -43, ptr %48, align 1
  %cmd.i21 = getelementptr inbounds %struct.digital_psl_res, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %cmd.i21 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %cmd.i21, align 1
  %did2.i = getelementptr inbounds %struct.digital_psl_res, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %did2.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %46, ptr %did2.i, align 1
  %call.i.i22 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %len.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i23, align 4
  %conv.i.i24 = trunc i32 %53 to i8
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i.i24, ptr %55, align 1
  %57 = ptrtoint ptr %curr_rf_tech.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %curr_rf_tech.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i.i26 = icmp eq i8 %58, 0
  br i1 %cmp.i.i26, label %if.then.i.i, label %if.end.i27.digital_skb_push_dep_sod.exit.i_crit_edge

if.end.i27.digital_skb_push_dep_sod.exit.i_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_push_dep_sod.exit.i

if.then.i.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %59 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -16, ptr %call3.i.i, align 1
  br label %digital_skb_push_dep_sod.exit.i

digital_skb_push_dep_sod.exit.i:                  ; preds = %if.then.i.i, %if.end.i27.digital_skb_push_dep_sod.exit.i_crit_edge
  %skb_add_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %60 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skb_add_crc.i, align 4
  tail call void %61(ptr noundef nonnull %call.i) #8
  %curr_nfc_dep_pni.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 18
  %62 = ptrtoint ptr %curr_nfc_dep_pni.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %curr_nfc_dep_pni.i, align 2
  %63 = inttoptr i32 %conv25.i to ptr
  %call.i1.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 1, ptr noundef nonnull %call.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull @digital_tg_send_psl_res_complete, ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool4.not.i, label %digital_skb_push_dep_sod.exit.i.digital_tg_recv_psl_req.exit_crit_edge, label %if.then5.i

digital_skb_push_dep_sod.exit.i.digital_tg_recv_psl_req.exit_crit_edge: ; preds = %digital_skb_push_dep_sod.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_recv_psl_req.exit

if.then5.i:                                       ; preds = %digital_skb_push_dep_sod.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %digital_tg_recv_psl_req.exit

digital_tg_recv_psl_req.exit:                     ; preds = %if.then5.i, %digital_skb_push_dep_sod.exit.i.digital_tg_recv_psl_req.exit_crit_edge, %if.end51.i.digital_tg_recv_psl_req.exit_crit_edge, %sw.epilog.i.digital_tg_recv_psl_req.exit_crit_edge, %do.end30.i, %lor.lhs.false17.i.digital_tg_recv_psl_req.exit_crit_edge, %lor.lhs.false.i.digital_tg_recv_psl_req.exit_crit_edge, %if.end14.i.digital_tg_recv_psl_req.exit_crit_edge, %do.end11.i, %do.end.i
  tail call void @kfree_skb_reason(ptr noundef %resp, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @digital_tg_recv_dep_req(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %digital_tg_recv_psl_req.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_tg_send_psl_res_complete(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %arg to i32
  %conv = trunc i32 %0 to i8
  %curr_rf_tech.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %1 = ptrtoint ptr %curr_rf_tech.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %curr_rf_tech.i, align 1
  %skb_add_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %2 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @digital_skb_add_crc_none, ptr %skb_add_crc.i, align 4
  %skb_check_crc.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %3 = ptrtoint ptr %skb_check_crc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @digital_skb_check_crc_none, ptr %skb_check_crc.i, align 4
  %driver_capabilities.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %4 = ptrtoint ptr %driver_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_capabilities.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %6 = icmp ult i8 %conv, 3
  %or.cond = and i1 %tobool.not.i, %6
  br i1 %or.cond, label %switch.lookup, label %if.end.digital_tg_set_rf_tech.exit_crit_edge

if.end.digital_tg_set_rf_tech.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_tg_set_rf_tech.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sext = shl i32 %0, 24
  %7 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.digital_tg_send_psl_res_complete, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %sext10 = shl i32 %0, 24
  %9 = ashr exact i32 %sext10, 24
  %switch.gep8 = getelementptr inbounds [3 x ptr], ptr @switch.table.digital_tg_send_psl_res_complete.53, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load9 = load ptr, ptr %switch.gep8, align 4
  %11 = ptrtoint ptr %skb_add_crc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load, ptr %skb_add_crc.i, align 4
  %12 = ptrtoint ptr %skb_check_crc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load9, ptr %skb_check_crc.i, align 4
  br label %digital_tg_set_rf_tech.exit

digital_tg_set_rf_tech.exit:                      ; preds = %switch.lookup, %if.end.digital_tg_set_rf_tech.exit_crit_edge
  %conv1 = and i32 %0, 255
  %call2 = tail call i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef 0, i32 noundef %conv1) #8
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #8
  tail call void @consume_skb(ptr noundef %resp) #8
  br label %cleanup

cleanup:                                          ; preds = %digital_tg_set_rf_tech.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/digital_dep.c", i32 484, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @digital_in_send_atr_req._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @digital_in_send_atr_req._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/nfc/digital_dep.c", i32 1577, i32 3}
!9 = !{ptr @digital_tg_recv_atr_req._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @digital_tg_recv_atr_req._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @digital_tg_recv_atr_req._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../net/nfc/digital_dep.c", i32 1583, i32 3}
!14 = !{ptr @digital_tg_recv_atr_req._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @digital_payload_bits_map, !17, !"digital_payload_bits_map", i1 false, i1 false}
!17 = !{!"../net/nfc/digital_dep.c", i32 111, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/nfc/digital_dep.c", i32 416, i32 3}
!20 = !{ptr @digital_in_recv_atr_res._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @digital_in_recv_atr_res._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @digital_in_recv_atr_res._entry.10, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../net/nfc/digital_dep.c", i32 422, i32 3}
!24 = !{ptr @digital_in_recv_atr_res._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @digital_rwt_map, !26, !"digital_rwt_map", i1 false, i1 false}
!26 = !{!"../net/nfc/digital_dep.c", i32 143, i32 18}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/nfc/digital_dep.c", i32 310, i32 3}
!29 = !{ptr @digital_in_recv_psl_res._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @digital_in_recv_psl_res._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @digital_in_recv_psl_res._entry.13, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../net/nfc/digital_dep.c", i32 316, i32 3}
!33 = !{ptr @digital_in_recv_psl_res._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/nfc/digital_dep.c", i32 725, i32 3}
!36 = !{ptr @digital_in_recv_dep_res._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @digital_in_recv_dep_res._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @digital_in_recv_dep_res._entry.16, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../net/nfc/digital_dep.c", i32 744, i32 3}
!40 = !{ptr @digital_in_recv_dep_res._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @digital_in_recv_dep_res._entry.18, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../net/nfc/digital_dep.c", i32 768, i32 3}
!43 = !{ptr @digital_in_recv_dep_res._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @digital_in_recv_dep_res._entry.21, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../net/nfc/digital_dep.c", i32 788, i32 4}
!47 = !{ptr @digital_in_recv_dep_res._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @digital_in_recv_dep_res._entry.24, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../net/nfc/digital_dep.c", i32 820, i32 4}
!51 = !{ptr @digital_in_recv_dep_res._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @digital_in_recv_dep_res._entry.27, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../net/nfc/digital_dep.c", i32 826, i32 4}
!55 = !{ptr @digital_in_recv_dep_res._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @digital_in_recv_dep_res._entry.29, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../net/nfc/digital_dep.c", i32 835, i32 4}
!58 = !{ptr @digital_in_recv_dep_res._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @digital_in_recv_dep_res._entry.32, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../net/nfc/digital_dep.c", i32 864, i32 4}
!62 = !{ptr @digital_in_recv_dep_res._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @digital_in_recv_dep_res._entry.35, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../net/nfc/digital_dep.c", i32 871, i32 4}
!66 = !{ptr @digital_in_recv_dep_res._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/nfc/digital_dep.c", i32 1093, i32 3}
!70 = !{ptr @digital_tg_recv_dep_req._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @digital_tg_recv_dep_req._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @digital_tg_recv_dep_req._entry.39, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../net/nfc/digital_dep.c", i32 1099, i32 3}
!74 = !{ptr @digital_tg_recv_dep_req._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/nfc/digital_dep.c", i32 1145, i32 3}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @digital_tg_recv_dep_req.__UNIQUE_ID_ddebug273, !76, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!79 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @digital_tg_recv_dep_req._entry.44, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../net/nfc/digital_dep.c", i32 1176, i32 4}
!82 = !{ptr @digital_tg_recv_dep_req._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/nfc/digital_dep.c", i32 1414, i32 3}
!86 = !{ptr @digital_tg_recv_psl_req._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @digital_tg_recv_psl_req._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @digital_tg_recv_psl_req._entry.48, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../net/nfc/digital_dep.c", i32 1420, i32 3}
!90 = !{ptr @digital_tg_recv_psl_req._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/nfc/digital_dep.c", i32 1445, i32 3}
!93 = !{ptr @digital_tg_recv_psl_req._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @digital_tg_recv_psl_req._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148786776, i64 2148786781, i64 2148786794, i64 2148786838, i64 2148786872, i64 2148786893}
!105 = !{!"auto-init"}
!106 = !{ptr @digital_in_send_ack, ptr @digital_tg_send_ack}
!107 = !{i64 2148306491, i64 2148306523, i64 2148306552, i64 2148306586, i64 2148306617, i64 2148306640}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{!"branch_weights", i32 2000, i32 1}
