; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_struct_ops.c_pt.bc'
source_filename = "../kernel/bpf/bpf_struct_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_ops = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_struct_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.btf_func_model], i32, i32 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btf_type = type { i32, i32, %union.anon.136 }
%union.anon.136 = type { i32 }
%struct.btf_member = type { i32, i32, i32 }
%struct.bpf_struct_ops_map = type { %struct.bpf_map, %struct.callback_head, ptr, %struct.mutex, ptr, ptr, ptr, [12 x i8], %struct.bpf_struct_ops_value }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bpf_struct_ops_value = type { %struct.refcount_struct, i32, [120 x i8], [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bpf_tramp_progs = type { [38 x ptr], i32 }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.198 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { %struct.anon.200, [0 x %struct.sock_filter] }
%struct.anon.200 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.197 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.197 = type { %struct.work_struct }

@bpf_struct_ops_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } zeroinitializer, align 32
@bpf_struct_ops_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } { %struct.bpf_prog_ops { ptr @bpf_struct_ops_test_run }, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Cannot find struct module in btf_vmlinux\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpf_struct_ops_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/bpf/bpf_struct_ops.c\00", [36 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr = internal global ptr @bpf_struct_ops_init._entry, section ".printk_index", align 4
@module_type = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bpf_struct_ops = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bpf_bpf_dummy_ops, ptr @bpf_tcp_congestion_ops], [24 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014struct_ops name %s is too long\0A\00", [62 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.6 = internal global ptr @bpf_struct_ops_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_struct_ops_\00", [16 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Cannot find struct %s in btf_vmlinux\0A\00", [56 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.11 = internal global ptr @bpf_struct_ops_init._entry.9, section ".printk_index", align 4
@bpf_struct_ops_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.13 = internal global ptr @bpf_struct_ops_init._entry.12, section ".printk_index", align 4
@bpf_struct_ops_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Cannot support #%u members in struct %s\0A\00", [53 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.16 = internal global ptr @bpf_struct_ops_init._entry.14, section ".printk_index", align 4
@bpf_struct_ops_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014anon member in struct %s is not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.19 = internal global ptr @bpf_struct_ops_init._entry.17, section ".printk_index", align 4
@bpf_struct_ops_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014bit field member %s in struct %s is not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.22 = internal global ptr @bpf_struct_ops_init._entry.20, section ".printk_index", align 4
@bpf_struct_ops_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Error in parsing func ptr %s in struct %s\0A\00", [51 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.25 = internal global ptr @bpf_struct_ops_init._entry.23, section ".printk_index", align 4
@bpf_struct_ops_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Error in init bpf_struct_ops %s\0A\00", [61 x i8] zeroinitializer }, align 32
@bpf_struct_ops_init._entry_ptr.28 = internal global ptr @bpf_struct_ops_init._entry.26, section ".printk_index", align 4
@btf_vmlinux = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bpf_struct_ops_map\00", [45 x i8] zeroinitializer }, align 32
@bpf_struct_ops_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bpf_struct_ops_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @bpf_struct_ops_map_alloc_check, ptr @bpf_struct_ops_map_alloc, ptr null, ptr @bpf_struct_ops_map_free, ptr @bpf_struct_ops_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_struct_ops_map_lookup_elem, ptr @bpf_struct_ops_map_update_elem, ptr @bpf_struct_ops_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_struct_ops_map_seq_show_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.29, ptr @bpf_struct_ops_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@bpf_bpf_dummy_ops = external dso_local global %struct.bpf_struct_ops, align 4
@bpf_tcp_congestion_ops = external dso_local global %struct.bpf_struct_ops, align 4
@bpf_struct_ops_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&st_map->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpf_struct_ops_map_delete_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"bpf_struct_ops_verifier_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 92, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"bpf_struct_ops_prog_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 95, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 118, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 120, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"module_type\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 101, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"bpf_struct_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 85, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 130, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 134, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 134, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 139, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 147, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 153, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 163, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 169, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 181, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 189, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 625, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"bpf_struct_ops_map_btf_id\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 615, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"bpf_struct_ops_map_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 616, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 608, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [31 x i8] c"../kernel/bpf/bpf_struct_ops.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 538, i32 15 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @bpf_struct_ops_init._entry, ptr @bpf_struct_ops_init._entry.12, ptr @bpf_struct_ops_init._entry.14, ptr @bpf_struct_ops_init._entry.17, ptr @bpf_struct_ops_init._entry.20, ptr @bpf_struct_ops_init._entry.23, ptr @bpf_struct_ops_init._entry.26, ptr @bpf_struct_ops_init._entry.4, ptr @bpf_struct_ops_init._entry.9, ptr @bpf_struct_ops_init._entry_ptr, ptr @bpf_struct_ops_init._entry_ptr.11, ptr @bpf_struct_ops_init._entry_ptr.13, ptr @bpf_struct_ops_init._entry_ptr.16, ptr @bpf_struct_ops_init._entry_ptr.19, ptr @bpf_struct_ops_init._entry_ptr.22, ptr @bpf_struct_ops_init._entry_ptr.25, ptr @bpf_struct_ops_init._entry_ptr.28, ptr @bpf_struct_ops_init._entry_ptr.6, ptr @bpf_struct_ops_verifier_ops, ptr @bpf_struct_ops_prog_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @module_type, ptr @bpf_struct_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @bpf_struct_ops_map_btf_id, ptr @bpf_struct_ops_map_ops, ptr @bpf_struct_ops_map_alloc.__key, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_struct_ops_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_struct_ops_test_run(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_struct_ops_init(ptr noundef %btf, ptr noundef %log) local_unnamed_addr #1 align 64 {
entry:
  %value_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %value_name) #13
  %0 = call ptr @memset(ptr %value_name, i32 255, i32 128)
  %call = tail call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef nonnull @.str, i8 noundef zeroext 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %cleanup114

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %call) #13
  store ptr %call2, ptr @module_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc111.for.body_crit_edge, %if.end
  %i.0195 = phi i32 [ 0, %if.end ], [ %inc112, %for.inc111.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @bpf_struct_ops, i32 0, i32 %i.0195
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call4 = call i32 @strlen(ptr noundef %4) #17
  %5 = add i32 %call4, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %5)
  %cmp5 = icmp ult i32 %5, -128
  br i1 %cmp5, label %do.end9, label %if.end13

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %4) #16
  br label %for.inc111

if.end13:                                         ; preds = %for.body
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %value_name, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %4)
  %call17 = call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef nonnull %value_name, i8 noundef zeroext 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %value_name) #16
  br label %for.inc111

if.end26:                                         ; preds = %if.end13
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call28 = call i32 @btf_find_by_name_kind(ptr noundef %btf, ptr noundef %7, i8 noundef zeroext 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %9) #16
  br label %for.inc111

if.end37:                                         ; preds = %if.end26
  %call38 = call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %call28) #13
  %info.i = getelementptr inbounds %struct.btf_type, ptr %call38, i32 0, i32 1
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info.i, align 4
  %conv.i = trunc i32 %11 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv.i)
  %cmp40 = icmp ugt i16 %conv.i, 64
  br i1 %cmp40, label %do.end45, label %if.end51

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %conv48 = and i32 %11, 65535
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv48, ptr noundef %13) #16
  br label %for.inc111

if.end51:                                         ; preds = %if.end37
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info.i, align 4
  %conv55189 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55189)
  %cmp56190.not = icmp eq i32 %conv55189, 0
  br i1 %cmp56190.not, label %if.end51.for.end_crit_edge, label %for.body58.preheader

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body58.preheader:                             ; preds = %if.end51
  %add.ptr.i = getelementptr %struct.btf_type, ptr %call38, i32 1
  br label %for.body58

for.body58:                                       ; preds = %for.inc.for.body58_crit_edge, %for.body58.preheader
  %member.0193 = phi ptr [ %incdec.ptr, %for.inc.for.body58_crit_edge ], [ %add.ptr.i, %for.body58.preheader ]
  %j.0191 = phi i32 [ %inc, %for.inc.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %16 = ptrtoint ptr %member.0193 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %member.0193, align 4
  %call59 = call ptr @btf_name_by_offset(ptr noundef %btf, i32 noundef %17) #13
  %18 = ptrtoint ptr %call59 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %do.end63, label %if.end67

do.end63:                                         ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %21) #16
  br label %for.end

if.end67:                                         ; preds = %for.body58
  %22 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.i = icmp slt i32 %23, 0
  br i1 %tobool.i.i, label %__btf_member_bitfield_size.exit, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

__btf_member_bitfield_size.exit:                  ; preds = %if.end67
  %offset.i = getelementptr inbounds %struct.btf_member, ptr %member.0193, i32 0, i32 2
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %25)
  %tobool69.not = icmp ult i32 %25, 16777216
  br i1 %tobool69.not, label %__btf_member_bitfield_size.exit.if.end77_crit_edge, label %do.end73

__btf_member_bitfield_size.exit.if.end77_crit_edge: ; preds = %__btf_member_bitfield_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end73:                                         ; preds = %__btf_member_bitfield_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %call59, ptr noundef %27) #16
  br label %for.end

if.end77:                                         ; preds = %__btf_member_bitfield_size.exit.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %type = getelementptr inbounds %struct.btf_member, ptr %member.0193, i32 0, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %call78 = call ptr @btf_type_resolve_func_ptr(ptr noundef %btf, i32 noundef %29, ptr noundef null) #13
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.for.inc_crit_edge, label %land.lhs.true

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end77
  %arrayidx80 = getelementptr %struct.bpf_struct_ops, ptr %2, i32 0, i32 9, i32 %j.0191
  %call81 = call i32 @btf_distill_func_proto(ptr noundef %log, ptr noundef %btf, ptr noundef nonnull %call78, ptr noundef %call59, ptr noundef %arrayidx80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true.for.inc_crit_edge, label %do.end86

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end86:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %call59, ptr noundef %31) #16
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end77.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0191, 1
  %incdec.ptr = getelementptr %struct.btf_member, ptr %member.0193, i32 1
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %info.i, align 4
  %conv55 = and i32 %33, 65535
  %cmp56 = icmp ult i32 %inc, %conv55
  br i1 %cmp56, label %for.inc.for.body58_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body58_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body58

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end86, %do.end73, %do.end63, %if.end51.for.end_crit_edge
  %j.0186 = phi i32 [ %j.0191, %do.end63 ], [ %j.0191, %do.end86 ], [ %j.0191, %do.end73 ], [ 0, %if.end51.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %info.i, align 4
  %conv92 = and i32 %35, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0186, i32 %conv92)
  %cmp93 = icmp eq i32 %j.0186, %conv92
  br i1 %cmp93, label %if.then95, label %for.end.for.inc111_crit_edge

for.end.for.inc111_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc111

if.then95:                                        ; preds = %for.end
  %init = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 1
  %36 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init, align 4
  %call96 = call i32 %37(ptr noundef %btf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.else, label %do.end101

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %39) #16
  br label %for.inc111

if.else:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %type_id105 = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 10
  %40 = ptrtoint ptr %type_id105 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call28, ptr %type_id105, align 4
  %type106 = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 6
  %41 = ptrtoint ptr %type106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38, ptr %type106, align 4
  %value_id107 = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 11
  %42 = ptrtoint ptr %value_id107 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call17, ptr %value_id107, align 4
  %call108 = call ptr @btf_type_by_id(ptr noundef %btf, i32 noundef %call17) #13
  %value_type = getelementptr inbounds %struct.bpf_struct_ops, ptr %2, i32 0, i32 7
  %43 = ptrtoint ptr %value_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call108, ptr %value_type, align 4
  br label %for.inc111

for.inc111:                                       ; preds = %if.else, %do.end101, %for.end.for.inc111_crit_edge, %do.end45, %do.end33, %do.end22, %do.end9
  %inc112 = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc112, 2
  br i1 %exitcond.not, label %for.inc111.cleanup114_crit_edge, label %for.inc111.for.body_crit_edge

for.inc111.for.body_crit_edge:                    ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc111.cleanup114_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup114

cleanup114:                                       ; preds = %for.inc111.cleanup114_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %value_name) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_find_by_name_kind(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_by_id(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_name_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_resolve_func_ptr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btf_distill_func_proto(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_struct_ops_find(i32 noundef %type_id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type_id)
  %tobool.not = icmp eq i32 %type_id, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %0 = load ptr, ptr @btf_vmlinux, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 10) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type_id)
  %cmp3 = icmp eq i32 %1, %type_id
  br i1 %cmp3, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 10) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %type_id)
  %cmp3.1 = icmp eq i32 %2, %type_id
  %spec.select = select i1 %cmp3.1, ptr @bpf_tcp_congestion_ops, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ @bpf_bpf_dummy_ops, %for.body.preheader.cleanup_crit_edge ], [ %spec.select, %for.cond ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_struct_ops_map_sys_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state3 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 4
  %6 = call ptr @memset(ptr %value, i32 0, i32 %5)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %kvalue2 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8
  %uvalue11 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %uvalue11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvalue11, align 16
  %value_size12 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %9 = ptrtoint ptr %value_size12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value_size12, align 4
  %11 = call ptr @memcpy(ptr %value, ptr %8, i32 %10)
  %state13 = getelementptr inbounds %struct.bpf_struct_ops_value, ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %state13, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kvalue2, i32 noundef 4) #13
  %13 = ptrtoint ptr %kvalue2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %kvalue2, align 4
  %call.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %value, i32 noundef 4) #13
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %14, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end10 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_struct_ops_prepare_trampoline(ptr noundef %tprogs, ptr noundef %prog, ptr noundef %model, ptr noundef %image, ptr noundef %image_end) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tprogs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %prog, ptr %tprogs, align 4
  %nr_progs = getelementptr inbounds %struct.bpf_tramp_progs, ptr %tprogs, i32 0, i32 1
  %1 = ptrtoint ptr %nr_progs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nr_progs, align 4
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %model, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %cond = select i1 %cmp.not, i32 0, i32 16
  %call = tail call i32 @arch_prepare_bpf_trampoline(ptr noundef null, ptr noundef %image, ptr noundef %image_end, ptr noundef %model, i32 noundef %cond, ptr noundef %tprogs, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prepare_bpf_trampoline(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_struct_ops_map_alloc_check(ptr nocapture noundef readonly %attr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %max_entries = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not = icmp eq i32 %3, 1
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %map_flags = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  %btf_vmlinux_value_type_id = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 12
  %6 = ptrtoint ptr %btf_vmlinux_value_type_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %btf_vmlinux_value_type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool4.not, i32 -22, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false3, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_struct_ops_map_alloc(ptr noundef %attr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #13
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %btf_vmlinux_value_type_id = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 12
  %0 = ptrtoint ptr %btf_vmlinux_value_type_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %btf_vmlinux_value_type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %2 = load ptr, ptr @btf_vmlinux, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %for.body.preheader.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 11) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_bpf_dummy_ops, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp3.i = icmp eq i32 %3, %1
  br i1 %cmp3.i, label %for.body.preheader.i.if.end5_crit_edge, label %for.cond.i

for.body.preheader.i.if.end5_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.cond.i:                                       ; preds = %for.body.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 11) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.bpf_struct_ops, ptr @bpf_tcp_congestion_ops, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp3.1.i = icmp eq i32 %4, %1
  br i1 %cmp3.1.i, label %for.cond.i.if.end5_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.i.if.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %for.cond.i.if.end5_crit_edge, %for.body.preheader.i.if.end5_crit_edge
  %retval.0.i = phi ptr [ @bpf_bpf_dummy_ops, %for.body.preheader.i.if.end5_crit_edge ], [ @bpf_tcp_congestion_ops, %for.cond.i.if.end5_crit_edge ]
  %value_type = getelementptr inbounds %struct.bpf_struct_ops, ptr %retval.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %value_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value_type, align 4
  %value_size = getelementptr inbounds %struct.anon.139, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_size, align 8
  %9 = getelementptr inbounds %struct.btf_type, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp.not = icmp eq i32 %8, %11
  br i1 %cmp.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.bpf_struct_ops, ptr %retval.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %add = add i32 %8, 512
  %conv = zext i32 %add to i64
  %call9 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv, i32 noundef -1) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %st_ops14 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %call9, i32 0, i32 2
  %14 = ptrtoint ptr %st_ops14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %st_ops14, align 8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %conv16 = zext i32 %16 to i64
  %call17 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv16, i32 noundef -1) #13
  %uvalue = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %call9, i32 0, i32 6
  %17 = ptrtoint ptr %uvalue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %uvalue, align 16
  %info.i = getelementptr inbounds %struct.btf_type, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info.i, align 4
  %conv19 = shl i32 %19, 2
  %mul = and i32 %conv19, 262140
  %conv20 = zext i32 %mul to i64
  %call21 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv20, i32 noundef -1) #13
  %progs = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %call9, i32 0, i32 4
  %20 = ptrtoint ptr %progs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %progs, align 8
  %call22 = tail call ptr @bpf_jit_alloc_exec(i32 noundef 4096) #13
  %image = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %call9, i32 0, i32 5
  %21 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %image, align 4
  %22 = ptrtoint ptr %uvalue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uvalue, align 16
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.end13.if.then30_crit_edge, label %lor.lhs.false

if.end13.if.then30_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end13
  %24 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %progs, align 8
  %tobool26.not = icmp eq ptr %25, null
  %tobool29.not = icmp eq ptr %call22, null
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %lor.lhs.false.if.then30_crit_edge, label %do.body

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end13.if.then30_crit_edge
  tail call void @bpf_struct_ops_map_free(ptr noundef nonnull %call9)
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %call9, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @bpf_struct_ops_map_alloc.__key) #13
  %26 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %image, align 4
  %call.i58 = tail call ptr @find_vm_area(ptr noundef %27) #13
  %tobool.not.i59 = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i59, label %do.body.set_vm_flush_reset_perms.exit_crit_edge, label %if.then.i

do.body.set_vm_flush_reset_perms.exit_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_vm_flush_reset_perms.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %call.i58, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %29, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %set_vm_flush_reset_perms.exit

set_vm_flush_reset_perms.exit:                    ; preds = %if.then.i, %do.body.set_vm_flush_reset_perms.exit_crit_edge
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call9, ptr noundef %attr) #13
  br label %cleanup

cleanup:                                          ; preds = %set_vm_flush_reset_perms.exit, %if.then30, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %set_vm_flush_reset_perms.exit ], [ inttoptr (i32 -12 to ptr), %if.then30 ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %for.cond.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_struct_ops_map_free(ptr noundef %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %progs = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %progs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %st_ops.i = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %st_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_ops.i, align 8
  %type.i = getelementptr inbounds %struct.bpf_struct_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %info.i.i = getelementptr inbounds %struct.btf_type, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info.i.i, align 4
  %conv13.i = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i)
  %cmp14.not.i = icmp eq i32 %conv13.i, 0
  br i1 %cmp14.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %progs, align 8
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.015.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %11) #13
  %12 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %progs, align 8
  %arrayidx5.i = getelementptr ptr, ptr %13, i32 %i.015.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx5.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %15 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info.i.i, align 4
  %conv.i = and i32 %16, 65535
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %progs, align 8
  tail call void @bpf_map_area_free(ptr noundef %18) #13
  %image = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 5
  %19 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %image, align 4
  tail call void @bpf_jit_free_exec(ptr noundef %20) #13
  %uvalue = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 6
  %21 = ptrtoint ptr %uvalue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uvalue, align 16
  tail call void @bpf_map_area_free(ptr noundef %22) #13
  tail call void @bpf_map_area_free(ptr noundef %map) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpf_struct_ops_map_get_next_key(ptr nocapture noundef readnone %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %next_key, align 4
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @bpf_struct_ops_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -22 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_struct_ops_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #1 align 64 {
entry:
  %msize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %st_ops1 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %st_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st_ops1, align 8
  %type = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool.not = icmp eq i64 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup144_crit_edge

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup144_crit_edge

if.end.cleanup144_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end3:                                          ; preds = %if.end
  %value_type = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %value_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value_type, align 4
  %call = tail call fastcc i32 @check_zero_holes(ptr noundef %7, ptr noundef %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup144_crit_edge

if.end3.cleanup144_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end6:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.bpf_struct_ops_value, ptr %value, i32 0, i32 3
  %call7 = tail call fastcc i32 @check_zero_holes(ptr noundef %3, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup144_crit_edge

if.end6.cleanup144_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end10:                                         ; preds = %if.end6
  %state = getelementptr inbounds %struct.bpf_struct_ops_value, ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end10.cleanup144_crit_edge

if.end10.cleanup144_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

lor.lhs.false:                                    ; preds = %if.end10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %value, i32 noundef 4) #13
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.cleanup144_crit_edge

lor.lhs.false.cleanup144_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end15:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 468) #18
  %tobool17.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup144_crit_edge, label %if.end19

if.end15.cleanup144_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

if.end19:                                         ; preds = %if.end15
  %uvalue20 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 6
  %13 = ptrtoint ptr %uvalue20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uvalue20, align 16
  %kvalue21 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8
  %lock = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %state22 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.not = icmp eq i32 %16, 0
  br i1 %cmp23.not, label %if.end25, label %if.end19.unlock_crit_edge

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end25:                                         ; preds = %if.end19
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %17 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value_size, align 4
  %19 = call ptr @memcpy(ptr %14, ptr %value, i32 %18)
  %data26 = getelementptr inbounds %struct.bpf_struct_ops_value, ptr %14, i32 0, i32 3
  %data27 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 1
  %image28 = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 5
  %20 = ptrtoint ptr %image28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %image28, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 4096
  %info.i = getelementptr inbounds %struct.btf_type, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info.i, align 4
  %conv263 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv263)
  %cmp32264.not = icmp eq i32 %conv263, 0
  br i1 %cmp32264.not, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %add.ptr.i = getelementptr %struct.btf_type, ptr %3, i32 1
  %init_member = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 3
  %progs = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 4
  %type_id = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 10
  %nr_progs.i = getelementptr inbounds %struct.bpf_tramp_progs, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %24 = phi i32 [ %23, %for.body.lr.ph ], [ %76, %for.inc.for.body_crit_edge ]
  %i.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %image.0268 = phi ptr [ %21, %for.body.lr.ph ], [ %image.1257, %for.inc.for.body_crit_edge ]
  %err.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %err.2256, %for.inc.for.body_crit_edge ]
  %member.0265 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.i = icmp slt i32 %24, 0
  %offset.i = getelementptr inbounds %struct.btf_member, ptr %member.0265, i32 0, i32 2
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i, align 4
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 2097151
  %div240 = select i1 %tobool.i.i, i32 %28, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %29 = load ptr, ptr @btf_vmlinux, align 4
  %type35 = getelementptr inbounds %struct.btf_member, ptr %member.0265, i32 0, i32 1
  %30 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type35, align 4
  %call36 = call ptr @btf_type_resolve_ptr(ptr noundef %29, i32 noundef %31, ptr noundef null) #13
  %32 = load ptr, ptr @module_type, align 4
  %cmp37 = icmp eq ptr %call36, %32
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %for.body
  %add.ptr40 = getelementptr i8, ptr %data26, i32 %div240
  %33 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr40, align 4
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.end43, label %if.then39.reset_unlock_crit_edge

if.then39.reset_unlock_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

if.end43:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr44 = getelementptr i8, ptr %data27, i32 %div240
  %35 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 241276 to ptr), ptr %add.ptr44, align 4
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %36 = ptrtoint ptr %init_member to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_member, align 4
  %call46 = call i32 %37(ptr noundef %3, ptr noundef %member.0265, ptr noundef %data27, ptr noundef %data26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.reset_unlock_crit_edge, label %if.end50

if.end45.reset_unlock_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp51.not = icmp eq i32 %call46, 0
  br i1 %cmp51.not, label %if.end54, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end54:                                         ; preds = %if.end50
  %tobool55.not = icmp eq ptr %call36, null
  br i1 %tobool55.not, label %if.end54.if.then58_crit_edge, label %lor.lhs.false56

if.end54.if.then58_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

lor.lhs.false56:                                  ; preds = %if.end54
  %info.i242 = getelementptr inbounds %struct.btf_type, ptr %call36, i32 0, i32 1
  %38 = ptrtoint ptr %info.i242 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %info.i242, align 4
  %40 = and i32 %39, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %40)
  %cmp.i = icmp eq i32 %40, 218103808
  br i1 %cmp.i, label %if.end71, label %lor.lhs.false56.if.then58_crit_edge

lor.lhs.false56.if.then58_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false56.if.then58_crit_edge, %if.end54.if.then58_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msize) #13
  %41 = ptrtoint ptr %msize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %msize, align 4, !annotation !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %42 = load ptr, ptr @btf_vmlinux, align 4
  %43 = ptrtoint ptr %type35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type35, align 4
  %call60 = call ptr @btf_type_by_id(ptr noundef %42, i32 noundef %44) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %45 = load ptr, ptr @btf_vmlinux, align 4
  %call61 = call ptr @btf_resolve_size(ptr noundef %45, ptr noundef %call60, ptr noundef nonnull %msize) #13
  %cmp.i243 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %call61 to i32
  br label %cleanup102.thread259

if.end65:                                         ; preds = %if.then58
  %add.ptr66 = getelementptr i8, ptr %data26, i32 %div240
  %47 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msize, align 4
  %call67 = call ptr @memchr_inv(ptr noundef %add.ptr66, i32 noundef 0, i32 noundef %48) #13
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %cleanup102, label %if.end65.cleanup102.thread259_crit_edge

if.end65.cleanup102.thread259_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup102.thread259

if.end71:                                         ; preds = %lor.lhs.false56
  %add.ptr72 = getelementptr i8, ptr %data26, i32 %div240
  %49 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool73.not = icmp eq i32 %50, 0
  br i1 %tobool73.not, label %if.end71.for.inc_crit_edge, label %if.end75

if.end71.for.inc_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end75:                                         ; preds = %if.end71
  %call76 = call ptr @bpf_prog_get(i32 noundef %50) #13
  %cmp.i244 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %call76 to i32
  br label %reset_unlock

if.end80:                                         ; preds = %if.end75
  %52 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %progs, align 8
  %arrayidx = getelementptr ptr, ptr %53, i32 %i.0270
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call76, ptr %arrayidx, align 4
  %type81 = getelementptr inbounds %struct.bpf_prog, ptr %call76, i32 0, i32 2
  %55 = ptrtoint ptr %type81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %56)
  %cmp82.not = icmp eq i32 %56, 27
  br i1 %cmp82.not, label %lor.lhs.false84, label %if.end80.reset_unlock_crit_edge

if.end80.reset_unlock_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

lor.lhs.false84:                                  ; preds = %if.end80
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %call76, i32 0, i32 10
  %57 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %attach_btf_id, align 4
  %61 = ptrtoint ptr %type_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp85.not = icmp eq i32 %60, %62
  br i1 %cmp85.not, label %lor.lhs.false87, label %lor.lhs.false84.reset_unlock_crit_edge

lor.lhs.false84.reset_unlock_crit_edge:           ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %call76, i32 0, i32 3
  %63 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %i.0270)
  %cmp88.not = icmp eq i32 %64, %i.0270
  br i1 %cmp88.not, label %if.end91, label %lor.lhs.false87.reset_unlock_crit_edge

lor.lhs.false87.reset_unlock_crit_edge:           ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

if.end91:                                         ; preds = %lor.lhs.false87
  %arrayidx92 = getelementptr %struct.bpf_struct_ops, ptr %1, i32 0, i32 9, i32 %i.0270
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call76, ptr %call7.i.i.i, align 8
  %66 = ptrtoint ptr %nr_progs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %nr_progs.i, align 8
  %67 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.not.i = icmp eq i8 %68, 0
  %cond.i245 = select i1 %cmp.not.i, i32 0, i32 16
  %call.i = call i32 @arch_prepare_bpf_trampoline(ptr noundef null, ptr noundef %image.0268, ptr noundef %add.ptr, ptr noundef %arrayidx92, i32 noundef %cond.i245, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp94 = icmp slt i32 %call.i, 0
  br i1 %cmp94, label %if.end91.reset_unlock_crit_edge, label %if.end97

if.end91.reset_unlock_crit_edge:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset_unlock

if.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr98 = getelementptr i8, ptr %data27, i32 %div240
  %69 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %image.0268, ptr %add.ptr98, align 4
  %add.ptr99 = getelementptr i8, ptr %image.0268, i32 %call.i
  %70 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id, align 8
  %74 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %add.ptr72, align 4
  br label %for.inc

cleanup102.thread259:                             ; preds = %if.end65.cleanup102.thread259_crit_edge, %if.then63
  %err.1.ph = phi i32 [ %46, %if.then63 ], [ -22, %if.end65.cleanup102.thread259_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msize) #13
  br label %reset_unlock

cleanup102:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msize) #13
  br label %for.inc

for.inc:                                          ; preds = %cleanup102, %if.end97, %if.end71.for.inc_crit_edge, %if.end50.for.inc_crit_edge, %if.end43
  %image.1257 = phi ptr [ %image.0268, %cleanup102 ], [ %image.0268, %if.end71.for.inc_crit_edge ], [ %image.0268, %if.end50.for.inc_crit_edge ], [ %add.ptr99, %if.end97 ], [ %image.0268, %if.end43 ]
  %err.2256 = phi i32 [ 0, %cleanup102 ], [ 0, %if.end71.for.inc_crit_edge ], [ %call46, %if.end50.for.inc_crit_edge ], [ %call.i, %if.end97 ], [ %err.0267, %if.end43 ]
  %inc = add nuw nsw i32 %i.0270, 1
  %incdec.ptr = getelementptr %struct.btf_member, ptr %member.0265, i32 1
  %75 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %info.i, align 4
  %conv = and i32 %76, 65535
  %cmp32 = icmp ult i32 %inc, %conv
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %call.i.i.i246 = call zeroext i1 @__kasan_check_write(ptr noundef %kvalue21, i32 noundef 4) #13
  %77 = ptrtoint ptr %kvalue21 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 1, ptr %kvalue21, align 4
  call void @bpf_map_inc(ptr noundef %map) #13
  %78 = ptrtoint ptr %image28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %image28, align 4
  %80 = ptrtoint ptr %79 to i32
  %call108 = call i32 @set_memory_ro(i32 noundef %80, i32 noundef 1) #13
  %81 = ptrtoint ptr %image28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %image28, align 4
  %83 = ptrtoint ptr %82 to i32
  %call110 = call i32 @set_memory_x(i32 noundef %83, i32 noundef 1) #13
  %reg = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg, align 4
  %call111 = call i32 %85(ptr noundef %data27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.end121, label %if.end136, !prof !73

do.end121:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  %86 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 1, ptr %state22, align 4
  br label %unlock

if.end136:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %image28 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %image28, align 4
  %89 = ptrtoint ptr %88 to i32
  %call138 = call i32 @set_memory_nx(i32 noundef %89, i32 noundef 1) #13
  %90 = ptrtoint ptr %image28 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %image28, align 4
  %92 = ptrtoint ptr %91 to i32
  %call140 = call i32 @set_memory_rw(i32 noundef %92, i32 noundef 1) #13
  call void @bpf_map_put(ptr noundef %map) #13
  br label %reset_unlock

reset_unlock:                                     ; preds = %if.end136, %cleanup102.thread259, %if.end91.reset_unlock_crit_edge, %lor.lhs.false87.reset_unlock_crit_edge, %lor.lhs.false84.reset_unlock_crit_edge, %if.end80.reset_unlock_crit_edge, %if.then78, %if.end45.reset_unlock_crit_edge, %if.then39.reset_unlock_crit_edge
  %err.3 = phi i32 [ %call111, %if.end136 ], [ %err.1.ph, %cleanup102.thread259 ], [ %51, %if.then78 ], [ %err.0267, %if.then39.reset_unlock_crit_edge ], [ %call46, %if.end45.reset_unlock_crit_edge ], [ -22, %lor.lhs.false87.reset_unlock_crit_edge ], [ -22, %lor.lhs.false84.reset_unlock_crit_edge ], [ -22, %if.end80.reset_unlock_crit_edge ], [ %call.i, %if.end91.reset_unlock_crit_edge ]
  call fastcc void @bpf_struct_ops_map_put_progs(ptr noundef %map)
  %93 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %value_size, align 4
  %95 = call ptr @memset(ptr %14, i32 0, i32 %94)
  %96 = load i32, ptr %value_size, align 4
  %97 = call ptr @memset(ptr %kvalue21, i32 0, i32 %96)
  br label %unlock

unlock:                                           ; preds = %reset_unlock, %do.end121, %if.end19.unlock_crit_edge
  %err.4 = phi i32 [ %err.3, %reset_unlock ], [ 0, %do.end121 ], [ -16, %if.end19.unlock_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup144

cleanup144:                                       ; preds = %unlock, %if.end15.cleanup144_crit_edge, %lor.lhs.false.cleanup144_crit_edge, %if.end10.cleanup144_crit_edge, %if.end6.cleanup144_crit_edge, %if.end3.cleanup144_crit_edge, %if.end.cleanup144_crit_edge, %entry.cleanup144_crit_edge
  %retval.0 = phi i32 [ %err.4, %unlock ], [ -22, %entry.cleanup144_crit_edge ], [ -7, %if.end.cleanup144_crit_edge ], [ %call, %if.end3.cleanup144_crit_edge ], [ %call7, %if.end6.cleanup144_crit_edge ], [ -22, %lor.lhs.false.cleanup144_crit_edge ], [ -22, %if.end10.cleanup144_crit_edge ], [ -12, %if.end15.cleanup144_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_struct_ops_map_delete_elem(ptr noundef %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #13
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 1, i32 2) #13, !srcloc !78
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  %1 = zext i32 %asmresult1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult1.i, label %land.end [
    i32 1, label %sw.bb
    i32 2, label %__cmpxchg.exit.cleanup_crit_edge
    i32 0, label %sw.bb19
  ]

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %__cmpxchg.exit
  %kvalue = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8
  %st_ops = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %st_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_ops, align 8
  %unreg = getelementptr inbounds %struct.bpf_struct_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %unreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unreg, align 4
  %data = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 1
  tail call void %5(ptr noundef %data) #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kvalue, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %kvalue, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kvalue, ptr %kvalue, i32 1, ptr elementtype(i32) %kvalue) #13, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !73

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kvalue, i32 noundef 3) #13
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @bpf_map_put(ptr noundef %map) #13
  br label %cleanup

sw.bb19:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.end:                                         ; preds = %__cmpxchg.exit
  %.b66 = load i1, ptr @bpf_struct_ops_map_delete_elem.__already_done, align 1
  br i1 %.b66, label %land.end.cleanup_crit_edge, label %if.then24, !prof !73

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @bpf_struct_ops_map_delete_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 518, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %land.end.cleanup_crit_edge, %sw.bb19, %if.then, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %__cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %sw.bb19 ], [ 0, %if.then ], [ -115, %__cmpxchg.exit.cleanup_crit_edge ], [ -2, %if.then24 ], [ -2, %land.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_struct_ops_map_seq_show_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %m) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 1060032) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i12, label %if.end.if.end4_crit_edge, !prof !73

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i12:                                       ; preds = %if.end
  %state3.i = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.i = icmp eq i32 %5, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_size, align 4
  %8 = call ptr @memset(ptr %call9.i, i32 0, i32 %7)
  br label %if.then3

if.end10.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #15
  %kvalue2.i = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 8
  %uvalue11.i = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %map, i32 0, i32 6
  %9 = ptrtoint ptr %uvalue11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uvalue11.i, align 16
  %11 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value_size, align 4
  %13 = call ptr @memcpy(ptr %call9.i, ptr %10, i32 %12)
  %state13.i = getelementptr inbounds %struct.bpf_struct_ops_value, ptr %call9.i, i32 0, i32 1
  %14 = ptrtoint ptr %state13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %state13.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kvalue2.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %kvalue2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %kvalue2.i, align 4
  %call.i.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %16, ptr %call9.i, align 128
  br label %if.then3

if.then3:                                         ; preds = %if.end10.i, %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %18 = load ptr, ptr @btf_vmlinux, align 4
  %btf_vmlinux_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 15
  %19 = ptrtoint ptr %btf_vmlinux_value_type_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %btf_vmlinux_value_type_id, align 4
  tail call void @btf_type_seq_show(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %call9.i, ptr noundef %m) #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_struct_ops_get(ptr noundef %kdata) local_unnamed_addr #1 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdata, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #13
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !73

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !73

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  ret i1 %tobool12.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_struct_ops_put(ptr noundef %kdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kdata, i32 -128
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #13, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !73

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  %rcu = getelementptr i8, ptr %kdata, i32 -256
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @bpf_struct_ops_put_rcu) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_struct_ops_put_rcu(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -384
  tail call void @bpf_map_put(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_alloc_exec(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_struct_ops_map_put_progs(ptr nocapture noundef readonly %st_map) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %st_ops = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %st_map, i32 0, i32 2
  %0 = ptrtoint ptr %st_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st_ops, align 8
  %type = getelementptr inbounds %struct.bpf_struct_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %info.i = getelementptr inbounds %struct.btf_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info.i, align 4
  %conv13 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13)
  %cmp14.not = icmp eq i32 %conv13, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %progs = getelementptr inbounds %struct.bpf_struct_ops_map, ptr %st_map, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %progs, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %9) #13
  %10 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %progs, align 8
  %arrayidx5 = getelementptr ptr, ptr %11, i32 %i.015
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info.i, align 4
  %conv = and i32 %14, 65535
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_free_exec(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_zero_holes(ptr nocapture noundef readonly %t, ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  %msize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msize) #13
  %0 = ptrtoint ptr %msize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msize, align 4, !annotation !75
  %info.i = getelementptr inbounds %struct.btf_type, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info.i, align 4
  %conv47 = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47)
  %cmp48.not = icmp eq i32 %conv47, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %add.ptr.i = getelementptr %struct.btf_type, ptr %t, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.preheader
  %3 = phi i32 [ %16, %if.end12.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %prev_mend.051 = phi i32 [ %add, %if.end12.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.050 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %member.049 = phi ptr [ %incdec.ptr, %if.end12.for.body_crit_edge ], [ %add.ptr.i, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.i = icmp slt i32 %3, 0
  %offset.i = getelementptr inbounds %struct.btf_member, ptr %member.049, i32 0, i32 2
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 2097151
  %div44 = select i1 %tobool.i.i, i32 %7, i32 %6
  call void @__sanitizer_cov_trace_cmp4(i32 %div44, i32 %prev_mend.051)
  %cmp4 = icmp ugt i32 %div44, %prev_mend.051
  br i1 %cmp4, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %data, i32 %prev_mend.051
  %sub = sub i32 %div44, %prev_mend.051
  %call6 = call ptr @memchr_inv(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub) #13
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %8 = load ptr, ptr @btf_vmlinux, align 4
  %type = getelementptr inbounds %struct.btf_member, ptr %member.049, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %call7 = call ptr @btf_type_by_id(ptr noundef %8, i32 noundef %10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_vmlinux to i32))
  %11 = load ptr, ptr @btf_vmlinux, align 4
  %call8 = call ptr @btf_resolve_size(ptr noundef %11, ptr noundef %call7, ptr noundef nonnull %msize) #13
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %13 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msize, align 4
  %add = add i32 %14, %div44
  %inc = add nuw nsw i32 %i.050, 1
  %incdec.ptr = getelementptr %struct.btf_member, ptr %member.049, i32 1
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info.i, align 4
  %conv = and i32 %16, 65535
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  %prev_mend.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end12.for.end_crit_edge ]
  %17 = getelementptr inbounds %struct.btf_type, ptr %t, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %prev_mend.0.lcssa)
  %cmp13 = icmp ugt i32 %19, %prev_mend.0.lcssa
  br i1 %cmp13, label %land.lhs.true15, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true15:                                  ; preds = %for.end
  %add.ptr16 = getelementptr i8, ptr %data, i32 %prev_mend.0.lcssa
  %sub17 = sub i32 %19, %prev_mend.0.lcssa
  %call18 = call ptr @memchr_inv(ptr noundef %add.ptr16, i32 noundef 0, i32 noundef %sub17) #13
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %land.lhs.true15.if.end21_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %for.end.if.end21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true15.cleanup_crit_edge, %if.then10, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then10 ], [ 0, %if.end21 ], [ -22, %land.lhs.true15.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msize) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_type_resolve_ptr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btf_resolve_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_nx(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_rw(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_type_seq_show(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @bpf_struct_ops_verifier_ops, !1, !"bpf_struct_ops_verifier_ops", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 92, i32 31}
!2 = !{ptr @bpf_struct_ops_prog_ops, !3, !"bpf_struct_ops_prog_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 95, i32 27}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 118, i32 41}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 120, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bpf_struct_ops_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @bpf_struct_ops_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 130, i32 4}
!14 = !{ptr @bpf_struct_ops_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @bpf_struct_ops_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 134, i32 23}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 134, i32 31}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 139, i32 4}
!22 = !{ptr @bpf_struct_ops_init._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bpf_struct_ops_init._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @bpf_struct_ops_init._entry.12, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 147, i32 4}
!26 = !{ptr @bpf_struct_ops_init._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 153, i32 4}
!29 = !{ptr @bpf_struct_ops_init._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bpf_struct_ops_init._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 163, i32 5}
!33 = !{ptr @bpf_struct_ops_init._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bpf_struct_ops_init._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 169, i32 5}
!37 = !{ptr @bpf_struct_ops_init._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bpf_struct_ops_init._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 181, i32 5}
!41 = !{ptr @bpf_struct_ops_init._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bpf_struct_ops_init._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 189, i32 5}
!45 = !{ptr @bpf_struct_ops_init._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bpf_struct_ops_init._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 625, i32 18}
!49 = !{ptr @bpf_struct_ops_map_ops, !50, !"bpf_struct_ops_map_ops", i1 false, i1 false}
!50 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 616, i32 26}
!51 = !{ptr @module_type, !52, !"module_type", i1 false, i1 false}
!52 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 101, i32 31}
!53 = !{ptr @bpf_struct_ops_map_btf_id, !54, !"bpf_struct_ops_map_btf_id", i1 false, i1 false}
!54 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 615, i32 12}
!55 = !{ptr @bpf_struct_ops, !56, !"bpf_struct_ops", i1 false, i1 false}
!56 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 85, i32 38}
!57 = !{ptr @bpf_struct_ops_map_alloc.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 608, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 518, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/bpf/bpf_struct_ops.c", i32 538, i32 15}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2158667010}
!75 = !{!"auto-init"}
!76 = !{i64 2158669971}
!77 = !{i64 2158673425}
!78 = !{i64 1209259, i64 1209280, i64 1209303, i64 1209322, i64 1209341}
!79 = !{i64 2158673879}
!80 = !{i64 2148789322}
!81 = !{i64 2148703762, i64 2148703794, i64 2148703823, i64 2148703857, i64 2148703888, i64 2148703911}
!82 = !{i64 2150252638}
!83 = !{i64 1184300, i64 1184324, i64 1184345, i64 1184362, i64 1184379}
