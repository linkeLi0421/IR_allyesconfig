; ModuleID = '/llk/IR_all_yes/kernel/bpf/ringbuf.c_pt.bc'
source_filename = "../kernel/bpf/ringbuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.163, %union.anon.164, ptr, ptr }
%union.anon.163 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32, i32 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_ringbuf_map = type { %struct.bpf_map, ptr, [124 x i8] }
%struct.bpf_ringbuf = type { %struct.wait_queue_head, %struct.irq_work, i64, ptr, i32, [40 x i8], %struct.spinlock, [3924 x i8], i32, [4092 x i8], i32, [4092 x i8], [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.56 }
%struct.llist_node = type { ptr }
%union.anon.56 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.52, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_ringbuf_hdr = type { i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpf_ringbuf_map\00", [16 x i8] zeroinitializer }, align 32
@ringbuf_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ringbuf_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @ringbuf_map_alloc, ptr null, ptr @ringbuf_map_free, ptr @ringbuf_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ringbuf_map_lookup_elem, ptr @ringbuf_map_update_elem, ptr @ringbuf_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ringbuf_map_mmap, ptr @ringbuf_map_poll, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @ringbuf_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@bpf_ringbuf_reserve_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ringbuf_reserve, i8 0, i8 0, i32 1286, %union.anon.163 { %struct.anon.162 { i32 1, i32 18, i32 10, i32 0, i32 0 } }, %union.anon.164 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ringbuf_submit_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ringbuf_submit, i8 0, i8 0, i32 1, %union.anon.163 { %struct.anon.162 { i32 17, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.164 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ringbuf_discard_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ringbuf_discard, i8 0, i8 0, i32 1, %union.anon.163 { %struct.anon.162 { i32 17, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.164 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ringbuf_output_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ringbuf_output, i8 0, i8 0, i32 0, %union.anon.163 { %struct.anon.162 { i32 1, i32 517, i32 8, i32 10, i32 0 } }, %union.anon.164 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ringbuf_query_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ringbuf_query, i8 0, i8 0, i32 0, %union.anon.163 { %struct.anon.162 { i32 1, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.164 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpf_ringbuf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rb->spinlock\00", [18 x i8] zeroinitializer }, align 32
@bpf_ringbuf_alloc.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rb->waitq\00", [21 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 64, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 277, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"ringbuf_map_btf_id\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 266, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"ringbuf_map_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 267, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"bpf_ringbuf_reserve_proto\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 362, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"bpf_ringbuf_submit_proto\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 404, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"bpf_ringbuf_discard_proto\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 417, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"bpf_ringbuf_output_proto\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 443, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"bpf_ringbuf_query_proto\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 472, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 137, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [24 x i8] c"../kernel/bpf/ringbuf.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 138, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @ringbuf_map_btf_id, ptr @ringbuf_map_ops, ptr @bpf_ringbuf_reserve_proto, ptr @bpf_ringbuf_submit_proto, ptr @bpf_ringbuf_discard_proto, ptr @bpf_ringbuf_output_proto, ptr @bpf_ringbuf_query_proto, ptr @bpf_ringbuf_alloc.__key, ptr @.str.1, ptr @bpf_ringbuf_alloc.__key.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ringbuf_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ringbuf_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_reserve_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_submit_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_discard_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_output_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_query_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ringbuf_alloc.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ringbuf_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %and = and i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %lor.lhs.false3.cleanup_crit_edge, label %is_power_of_2.exit

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_power_of_2.exit:                               ; preds = %lor.lhs.false3
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #7, !range !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp1.i = icmp ult i32 %8, 2
  %and7 = and i32 %7, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp = icmp eq i32 %and7, 0
  %or.cond = and i1 %cmp1.i, %cmp
  br i1 %or.cond, label %if.end10, label %is_power_of_2.exit.cleanup_crit_edge

is_power_of_2.exit.cleanup_crit_edge:             ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %is_power_of_2.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 5246400, i32 noundef 512) #10
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #7
  %10 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries, align 4
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node, align 8
  %call18 = tail call fastcc ptr @bpf_ringbuf_alloc(i32 noundef %11, i32 noundef %13)
  %rb = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %rb, align 128
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.then21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %is_power_of_2.exit.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then21 ], [ %call7.i.i, %if.end15.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %is_power_of_2.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ringbuf_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 128
  %pages1.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pages1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages1.i, align 16
  %nr_pages2.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %nr_pages2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pages2.i, align 4
  tail call void @vunmap(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.i = icmp sgt i32 %5, 0
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.bpf_ringbuf_free.exit_crit_edge

entry.bpf_ringbuf_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpf_ringbuf_free.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.09.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__free_pages(ptr noundef %7, i32 noundef 0) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.bpf_ringbuf_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.bpf_ringbuf_free.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpf_ringbuf_free.exit

bpf_ringbuf_free.exit:                            ; preds = %for.body.i.bpf_ringbuf_free.exit_crit_edge, %entry.bpf_ringbuf_free.exit_crit_edge
  tail call void @kvfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %map) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ringbuf_map_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @ringbuf_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -524 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ringbuf_map_update_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %value, i64 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ringbuf_map_delete_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ringbuf_map_mmap(ptr nocapture noundef readonly %map, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp1.not = icmp eq i32 %sub, 4096
  br i1 %cmp1.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %1, -33
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and4, ptr %vm_flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %lor.lhs.false.if.end5_crit_edge
  %rb = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %map, i32 0, i32 1
  %9 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb, align 128
  %vm_pgoff6 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %11 = ptrtoint ptr %vm_pgoff6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_pgoff6, align 4
  %add = add i32 %12, 1
  %call = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %10, i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ringbuf_map_poll(ptr nocapture noundef readonly %map, ptr noundef %filp, ptr noundef %pts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb, align 128
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %1, ptr noundef nonnull %pts) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb, align 128
  %consumer_pos.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %consumer_pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %consumer_pos.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %producer_pos.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %producer_pos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %producer_pos.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %tobool.not = icmp eq i32 %9, %7
  %. = select i1 %tobool.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ringbuf_reserve(i64 noundef %map, i64 noundef %size, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool.not.i = icmp eq i64 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_ringbuf_reserve.exit_crit_edge, !prof !37

entry.____bpf_ringbuf_reserve.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_reserve.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %rb.i = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb.i, align 128
  %call.i = tail call fastcc ptr @__bpf_ringbuf_reserve(ptr noundef %2, i64 noundef %size) #7
  %3 = ptrtoint ptr %call.i to i32
  %conv.i = zext i32 %3 to i64
  br label %____bpf_ringbuf_reserve.exit

____bpf_ringbuf_reserve.exit:                     ; preds = %if.end.i, %entry.____bpf_ringbuf_reserve.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.end.i ], [ 0, %entry.____bpf_ringbuf_reserve.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ringbuf_submit(i64 noundef %sample, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sample to i32
  %0 = inttoptr i32 %conv to ptr
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 -8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  %pg_off.i.i.i = getelementptr i8, ptr %0, i32 -4
  %2 = ptrtoint ptr %pg_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_off.i.i.i, align 4
  %shl.neg.i.i.i = mul i32 %3, -4096
  %and.i.i.i = and i32 %1, -4096
  %sub.i.i.i = add i32 %shl.neg.i.i.i, %and.i.i.i
  %4 = inttoptr i32 %sub.i.i.i to ptr
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %6, -2147483648
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %xor.i.i, ptr %add.ptr.i.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %consumer_pos.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 8
  %8 = ptrtoint ptr %consumer_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %consumer_pos.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %and26.i.i = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i.i)
  %tobool27.not.i.i = icmp eq i64 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else.i.i, label %entry.if.end37.sink.split.i.i_crit_edge

entry.if.end37.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %mask.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mask.i.i, align 8
  %12 = trunc i64 %11 to i32
  %conv25.i.i = and i32 %9, %12
  %data.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 12
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %data.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %1, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.i.i, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp eq i32 %conv25.i.i, %sub.ptr.sub.i.i
  %and31.i.i = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i.i)
  %tobool32.not.i.i = icmp eq i64 %and31.i.i, 0
  %or.cond.i.i = and i1 %tobool32.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.if.end37.sink.split.i.i_crit_edge, label %if.else.i.i.____bpf_ringbuf_submit.exit_crit_edge

if.else.i.i.____bpf_ringbuf_submit.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_submit.exit

if.else.i.i.if.end37.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.end37.sink.split.i.i:                          ; preds = %if.else.i.i.if.end37.sink.split.i.i_crit_edge, %entry.if.end37.sink.split.i.i_crit_edge
  %work34.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 1
  %call35.i.i = tail call zeroext i1 @irq_work_queue(ptr noundef %work34.i.i) #7
  br label %____bpf_ringbuf_submit.exit

____bpf_ringbuf_submit.exit:                      ; preds = %if.end37.sink.split.i.i, %if.else.i.i.____bpf_ringbuf_submit.exit_crit_edge
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ringbuf_discard(i64 noundef %sample, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sample to i32
  %0 = inttoptr i32 %conv to ptr
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 -8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  %pg_off.i.i.i = getelementptr i8, ptr %0, i32 -4
  %2 = ptrtoint ptr %pg_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_off.i.i.i, align 4
  %shl.neg.i.i.i = mul i32 %3, -4096
  %and.i.i.i = and i32 %1, -4096
  %sub.i.i.i = add i32 %shl.neg.i.i.i, %and.i.i.i
  %4 = inttoptr i32 %sub.i.i.i to ptr
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %7 = and i32 %6, -1073741825
  %or.i.i = xor i32 %7, -1073741824
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %or.i.i, ptr %add.ptr.i.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %consumer_pos.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %consumer_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %consumer_pos.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %and26.i.i = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i.i)
  %tobool27.not.i.i = icmp eq i64 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else.i.i, label %entry.if.end37.sink.split.i.i_crit_edge

entry.if.end37.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %mask.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mask.i.i, align 8
  %13 = trunc i64 %12 to i32
  %conv25.i.i = and i32 %10, %13
  %data.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 12
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %data.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %1, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.i.i, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp eq i32 %conv25.i.i, %sub.ptr.sub.i.i
  %and31.i.i = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i.i)
  %tobool32.not.i.i = icmp eq i64 %and31.i.i, 0
  %or.cond.i.i = and i1 %tobool32.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.if.end37.sink.split.i.i_crit_edge, label %if.else.i.i.____bpf_ringbuf_discard.exit_crit_edge

if.else.i.i.____bpf_ringbuf_discard.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_discard.exit

if.else.i.i.if.end37.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.end37.sink.split.i.i:                          ; preds = %if.else.i.i.if.end37.sink.split.i.i_crit_edge, %entry.if.end37.sink.split.i.i_crit_edge
  %work34.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %4, i32 0, i32 1
  %call35.i.i = tail call zeroext i1 @irq_work_queue(ptr noundef %work34.i.i) #7
  br label %____bpf_ringbuf_discard.exit

____bpf_ringbuf_discard.exit:                     ; preds = %if.end37.sink.split.i.i, %if.else.i.i.____bpf_ringbuf_discard.exit_crit_edge
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ringbuf_output(i64 noundef %map, i64 noundef %data, i64 noundef %size, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i64 %data to i32
  %0 = inttoptr i32 %conv1 to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_ringbuf_output.exit_crit_edge, !prof !37

entry.____bpf_ringbuf_output.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_output.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i64 %map to i32
  %1 = inttoptr i32 %conv to ptr
  %rb.i = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb.i, align 128
  %call.i = tail call fastcc ptr @__bpf_ringbuf_reserve(ptr noundef %3, i64 noundef %size) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.____bpf_ringbuf_output.exit_crit_edge, label %if.end5.i

if.end.i.____bpf_ringbuf_output.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_output.exit

if.end5.i:                                        ; preds = %if.end.i
  %conv.i = trunc i64 %size to i32
  %4 = call ptr @memcpy(ptr %call.i, ptr %0, i32 %conv.i)
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -8
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  %pg_off.i.i.i = getelementptr i8, ptr %call.i, i32 -4
  %6 = ptrtoint ptr %pg_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pg_off.i.i.i, align 4
  %shl.neg.i.i.i = mul i32 %7, -4096
  %and.i.i.i = and i32 %5, -4096
  %sub.i.i.i = add i32 %shl.neg.i.i.i, %and.i.i.i
  %8 = inttoptr i32 %sub.i.i.i to ptr
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %10, -2147483648
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %xor.i.i, ptr %add.ptr.i.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %consumer_pos.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %8, i32 0, i32 8
  %12 = ptrtoint ptr %consumer_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %consumer_pos.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %and26.i.i = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i.i)
  %tobool27.not.i.i = icmp eq i64 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else.i.i, label %if.end5.i.if.end37.sink.split.i.i_crit_edge

if.end5.i.if.end37.sink.split.i.i_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end5.i
  %mask.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mask.i.i, align 8
  %16 = trunc i64 %15 to i32
  %conv25.i.i = and i32 %13, %16
  %data.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %8, i32 0, i32 12
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %data.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %5, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.i.i, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp eq i32 %conv25.i.i, %sub.ptr.sub.i.i
  %and31.i.i = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i.i)
  %tobool32.not.i.i = icmp eq i64 %and31.i.i, 0
  %or.cond.i.i = and i1 %tobool32.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.if.end37.sink.split.i.i_crit_edge, label %if.else.i.i.____bpf_ringbuf_output.exit_crit_edge

if.else.i.i.____bpf_ringbuf_output.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_output.exit

if.else.i.i.if.end37.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.sink.split.i.i

if.end37.sink.split.i.i:                          ; preds = %if.else.i.i.if.end37.sink.split.i.i_crit_edge, %if.end5.i.if.end37.sink.split.i.i_crit_edge
  %work34.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %8, i32 0, i32 1
  %call35.i.i = tail call zeroext i1 @irq_work_queue(ptr noundef %work34.i.i) #7
  br label %____bpf_ringbuf_output.exit

____bpf_ringbuf_output.exit:                      ; preds = %if.end37.sink.split.i.i, %if.else.i.i.____bpf_ringbuf_output.exit_crit_edge, %if.end.i.____bpf_ringbuf_output.exit_crit_edge, %entry.____bpf_ringbuf_output.exit_crit_edge
  %retval.0.i = phi i64 [ -22, %entry.____bpf_ringbuf_output.exit_crit_edge ], [ -11, %if.end.i.____bpf_ringbuf_output.exit_crit_edge ], [ 0, %if.else.i.i.____bpf_ringbuf_output.exit_crit_edge ], [ 0, %if.end37.sink.split.i.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ringbuf_query(i64 noundef %map, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %rb1.i = getelementptr inbounds %struct.bpf_ringbuf_map, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %rb1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb1.i, align 128
  call void @__sanitizer_cov_trace_switch(i64 %flags, ptr @__sancov_gen_cov_switch_values)
  switch i64 %flags, label %entry.____bpf_ringbuf_query.exit_crit_edge [
    i64 0, label %sw.bb.i
    i64 1, label %sw.bb2.i
    i64 2, label %sw.bb3.i
    i64 3, label %sw.bb10.i
  ]

entry.____bpf_ringbuf_query.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %____bpf_ringbuf_query.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %consumer_pos.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %consumer_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %consumer_pos.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %producer_pos.i.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %producer_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %producer_pos.i.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %sub.i.i = sub i32 %6, %4
  %conv.i = zext i32 %sub.i.i to i64
  br label %____bpf_ringbuf_query.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mask.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mask.i, align 8
  %add.i = add i64 %8, 1
  br label %____bpf_ringbuf_query.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %consumer_pos.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %consumer_pos.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %consumer_pos.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  %conv9.i = zext i32 %10 to i64
  br label %____bpf_ringbuf_query.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %producer_pos.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %2, i32 0, i32 10
  %11 = ptrtoint ptr %producer_pos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %producer_pos.i, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %conv20.i = zext i32 %12 to i64
  br label %____bpf_ringbuf_query.exit

____bpf_ringbuf_query.exit:                       ; preds = %sw.bb10.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.____bpf_ringbuf_query.exit_crit_edge
  %retval.0.i = phi i64 [ %conv20.i, %sw.bb10.i ], [ %conv9.i, %sw.bb3.i ], [ %add.i, %sw.bb2.i ], [ %conv.i, %sw.bb.i ], [ 0, %entry.____bpf_ringbuf_query.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_ringbuf_alloc(i32 noundef %data_sz, i32 noundef %numa_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %data_sz, 12
  %add.i = add nuw nsw i32 %shr.i, 3
  %mul.i = shl nuw nsw i32 %shr.i, 1
  %add1.i = add nuw nsw i32 %mul.i, 3
  %mul2.i = shl nuw nsw i32 %add1.i, 2
  %conv.i = zext i32 %mul2.i to i64
  %call.i = tail call ptr @bpf_map_area_alloc(i64 noundef %conv.i, i32 noundef %numa_node) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %0 = zext i32 %numa_node to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %numa_node, label %do.body3.i.i.i [
    i32 -1, label %for.cond.preheader.i.for.body.i.preheader_crit_edge
    i32 0, label %for.cond.preheader.i.for.body.i.preheader_crit_edge21
  ], !prof !44

for.cond.preheader.i.for.body.i.preheader_crit_edge21: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.cond.preheader.i.for.body.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.cond.preheader.i.for.body.i.preheader_crit_edge, %for.cond.preheader.i.for.body.i.preheader_crit_edge21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.069.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 4222400, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool5.not.i = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not.i, label %err_free_pages.i, label %if.end7.i

do.body3.i.i.i:                                   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

if.end7.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr ptr, ptr %call.i, i32 %i.069.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.069.i)
  %cmp8.i = icmp ugt i32 %i.069.i, 2
  br i1 %cmp8.i, label %if.then10.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %add11.i = add nuw nsw i32 %i.069.i, %shr.i
  %arrayidx12.i = getelementptr ptr, ptr %call.i, i32 %add11.i
  %2 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %arrayidx12.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %if.end7.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call16.i = tail call ptr @vmap(ptr noundef nonnull %call.i, i32 noundef %add1.i, i32 noundef 12, i32 noundef %or.i) #7
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %for.end.i.for.body25.preheader.i_crit_edge, label %do.body

for.end.i.for.body25.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.preheader.i

err_free_pages.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.069.i)
  %cmp2371.not.i = icmp eq i32 %i.069.i, 0
  br i1 %cmp2371.not.i, label %err_free_pages.i.for.end29.i_crit_edge, label %err_free_pages.i.for.body25.preheader.i_crit_edge

err_free_pages.i.for.body25.preheader.i_crit_edge: ; preds = %err_free_pages.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.preheader.i

err_free_pages.i.for.end29.i_crit_edge:           ; preds = %err_free_pages.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29.i

for.body25.preheader.i:                           ; preds = %err_free_pages.i.for.body25.preheader.i_crit_edge, %for.end.i.for.body25.preheader.i_crit_edge
  %nr_pages.077.i = phi i32 [ %i.069.i, %err_free_pages.i.for.body25.preheader.i_crit_edge ], [ %add.i, %for.end.i.for.body25.preheader.i_crit_edge ]
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.preheader.i
  %i.172.i = phi i32 [ %inc28.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.body25.preheader.i ]
  %arrayidx26.i = getelementptr ptr, ptr %call.i, i32 %i.172.i
  %4 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx26.i, align 4
  tail call void @__free_pages(ptr noundef %5, i32 noundef 0) #7
  %inc28.i = add nuw nsw i32 %i.172.i, 1
  %exitcond74.not.i = icmp eq i32 %inc28.i, %nr_pages.077.i
  br i1 %exitcond74.not.i, label %for.body25.i.for.end29.i_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

for.body25.i.for.end29.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29.i

for.end29.i:                                      ; preds = %for.body25.i.for.end29.i_crit_edge, %err_free_pages.i.for.end29.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i) #7
  br label %cleanup

do.body:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.i) #7
  %pages19.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 3
  %6 = ptrtoint ptr %pages19.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %pages19.i, align 16
  %nr_pages20.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 4
  %7 = ptrtoint ptr %nr_pages20.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %nr_pages20.i, align 4
  %spinlock = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bpf_ringbuf_alloc.__key, i16 noundef signext 3) #7
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call16.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @bpf_ringbuf_alloc.__key.2) #7
  %work = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 1
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %work, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bpf_ringbuf_notify, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %sub = add i32 %data_sz, -1
  %conv = zext i32 %sub to i64
  %mask = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %mask, align 8
  %consumer_pos = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 8
  %13 = ptrtoint ptr %consumer_pos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %consumer_pos, align 4096
  %producer_pos = getelementptr inbounds %struct.bpf_ringbuf, ptr %call16.i, i32 0, i32 10
  %14 = ptrtoint ptr %producer_pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %producer_pos, align 4096
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.end29.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16.i, %do.body ], [ null, %for.end29.i ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_ringbuf_notify(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  tail call void @__wake_up(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__bpf_ringbuf_reserve(ptr noundef %rb, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %size)
  %cmp = icmp ugt i64 %size, 1073741823
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = trunc i64 %size to i32
  %1 = add nuw nsw i32 %0, 7
  %2 = or i32 %1, 7
  %conv = add i32 %2, 1
  %conv3 = zext i32 %conv to i64
  %mask = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mask, align 8
  %add4 = add i64 %4, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %conv3)
  %cmp5 = icmp ult i64 %add4, %conv3
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %consumer_pos = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 8
  %5 = ptrtoint ptr %consumer_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %consumer_pos, align 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %7 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %10, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body81, label %do.body17

do.body17:                                        ; preds = %if.end8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !48
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not = icmp eq i32 %and.i, 0
  br i1 %tobool31.not, label %do.end35, label %do.end35.thread

do.end35:                                         ; preds = %do.body17
  tail call void @trace_hardirqs_off() #7
  %spinlock = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 6
  %call38 = tail call i32 @_raw_spin_trylock(ptr noundef %spinlock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then49, label %do.end35.if.end94_crit_edge

do.end35.if.end94_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.end35.thread:                                  ; preds = %do.body17
  %spinlock167 = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 6
  %call38168 = tail call i32 @_raw_spin_trylock(ptr noundef %spinlock167) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38168)
  %tobool39.not169 = icmp eq i32 %call38168, 0
  br i1 %tobool39.not169, label %do.end35.thread.do.body51_crit_edge, label %do.end35.thread.if.end94_crit_edge

do.end35.thread.if.end94_crit_edge:               ; preds = %do.end35.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.end35.thread.do.body51_crit_edge:              ; preds = %do.end35.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.then49:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body51

do.body51:                                        ; preds = %if.then49, %do.end35.thread.do.body51_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !49
  %and.i.i166 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i166)
  %tobool59.not = icmp eq i32 %and.i.i166, 0
  br i1 %tobool59.not, label %if.then68, label %do.body51.do.end71_crit_edge, !prof !46

do.body51.do.end71_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.then68:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body51.do.end71_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #7, !srcloc !50
  br label %cleanup

do.body81:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %spinlock87 = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 6
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock87) #7
  br label %if.end94

if.end94:                                         ; preds = %do.body81, %do.end35.thread.if.end94_crit_edge, %do.end35.if.end94_crit_edge
  %flags.0 = phi i32 [ %call89, %do.body81 ], [ %11, %do.end35.if.end94_crit_edge ], [ %11, %do.end35.thread.if.end94_crit_edge ]
  %producer_pos = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 10
  %13 = ptrtoint ptr %producer_pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %producer_pos, align 4096
  %add95 = add i32 %14, %conv
  %sub96 = sub i32 %add95, %6
  %conv97 = zext i32 %sub96 to i64
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv97)
  %cmp99 = icmp ult i64 %16, %conv97
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %spinlock102 = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock102, i32 noundef %flags.0) #7
  br label %cleanup

if.end103:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 12
  %17 = trunc i64 %16 to i32
  %idx.ext = and i32 %14, %17
  %add.ptr = getelementptr i8, ptr %data, i32 %idx.ext
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %rb to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr.i = ashr i32 %sub.ptr.sub.i, 12
  %conv109 = or i32 %0, -2147483648
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv109, ptr %add.ptr, align 4
  %pg_off111 = getelementptr inbounds %struct.bpf_ringbuf_hdr, ptr %add.ptr, i32 0, i32 1
  %19 = ptrtoint ptr %pg_off111 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %pg_off111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %20 = ptrtoint ptr %producer_pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %add95, ptr %producer_pos, align 4096
  %spinlock134 = getelementptr inbounds %struct.bpf_ringbuf, ptr %rb, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock134, i32 noundef %flags.0) #7
  %add.ptr135 = getelementptr i8, ptr %add.ptr, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then101, %do.end71, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then101 ], [ %add.ptr135, %if.end103 ], [ null, %do.end71 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/ringbuf.c", i32 277, i32 18}
!2 = !{ptr @ringbuf_map_ops, !3, !"ringbuf_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/ringbuf.c", i32 267, i32 26}
!4 = !{ptr @bpf_ringbuf_reserve_proto, !5, !"bpf_ringbuf_reserve_proto", i1 false, i1 false}
!5 = !{!"../kernel/bpf/ringbuf.c", i32 362, i32 29}
!6 = !{ptr @bpf_ringbuf_submit_proto, !7, !"bpf_ringbuf_submit_proto", i1 false, i1 false}
!7 = !{!"../kernel/bpf/ringbuf.c", i32 404, i32 29}
!8 = !{ptr @bpf_ringbuf_discard_proto, !9, !"bpf_ringbuf_discard_proto", i1 false, i1 false}
!9 = !{!"../kernel/bpf/ringbuf.c", i32 417, i32 29}
!10 = !{ptr @bpf_ringbuf_output_proto, !11, !"bpf_ringbuf_output_proto", i1 false, i1 false}
!11 = !{!"../kernel/bpf/ringbuf.c", i32 443, i32 29}
!12 = !{ptr @bpf_ringbuf_query_proto, !13, !"bpf_ringbuf_query_proto", i1 false, i1 false}
!13 = !{!"../kernel/bpf/ringbuf.c", i32 472, i32 29}
!14 = !{ptr @ringbuf_map_btf_id, !15, !"ringbuf_map_btf_id", i1 false, i1 false}
!15 = !{!"../kernel/bpf/ringbuf.c", i32 266, i32 12}
!16 = !{ptr @bpf_ringbuf_alloc.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../kernel/bpf/ringbuf.c", i32 137, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bpf_ringbuf_alloc.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../kernel/bpf/ringbuf.c", i32 138, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i32 0, i32 33}
!35 = !{i64 2157129101}
!36 = !{i64 2157135072}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2157157441}
!39 = !{i64 1202040, i64 1202057, i64 1202081, i64 1202107, i64 1202125}
!40 = !{i64 2157157790}
!41 = !{i64 2157163761}
!42 = !{i64 2157198349}
!43 = !{i64 2157204320}
!44 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!45 = !{i64 2151529590, i64 2151530074, i64 2151529627, i64 2151529683, i64 2151529717, i64 2151529741, i64 2151529782, i64 2151529803, i64 2151529831, i64 2151529865}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2157142551}
!48 = !{i64 1098972, i64 1099033}
!49 = !{i64 1101704}
!50 = !{i64 1101989}
!51 = !{i64 2157147124}
