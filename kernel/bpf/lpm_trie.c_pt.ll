; ModuleID = '/llk/IR_all_yes/kernel/bpf/lpm_trie.c_pt.bc'
source_filename = "../kernel/bpf/lpm_trie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.lpm_trie = type { %struct.bpf_map, ptr, i32, i32, i32, %struct.spinlock, [68 x i8] }
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
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.lpm_trie_node = type { %struct.callback_head, [2 x ptr], i32, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_lpm_trie_key = type { i32, [0 x i8] }
%struct.btf_type = type { i32, i32, %union.anon.157 }
%union.anon.157 = type { i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lpm_trie\00", [23 x i8] zeroinitializer }, align 32
@trie_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@trie_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @trie_alloc, ptr null, ptr @trie_free, ptr @trie_get_next_key, ptr null, ptr null, ptr @generic_map_lookup_batch, ptr null, ptr null, ptr @generic_map_update_batch, ptr @generic_map_delete_batch, ptr @trie_lookup_elem, ptr @trie_update_elem, ptr @trie_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @trie_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @trie_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@trie_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&trie->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trie_get_next_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/bpf/lpm_trie.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@trie_get_next_key.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_get_next_key.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_get_next_key.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_get_next_key.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_get_next_key.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_get_next_key.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_lookup_elem.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_update_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@trie_delete_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 735, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"trie_map_btf_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 722, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"trie_map_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 570, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 636, i32 16 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [25 x i8] c"../kernel/bpf/lpm_trie.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 349, i32 17 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @trie_map_btf_id, ptr @trie_map_ops, ptr @trie_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trie_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trie_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trie_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trie_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #7
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %4 = and i32 %3, -413
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  %and.i = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 384
  %or.cond49 = and i1 %5, %cmp.i
  br i1 %or.cond49, label %lor.lhs.false9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size, align 4
  %8 = add i32 %7, -261
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %8)
  %9 = icmp ult i32 %8, -256
  br i1 %9, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_size, align 8
  %12 = add i32 %11, -8388329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8388328, i32 %12)
  %13 = icmp ult i32 %12, -8388328
  br i1 %13, label %lor.lhs.false14.cleanup_crit_edge, label %if.end21

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 5254592, i32 noundef 512) #10
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #7
  %15 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_size, align 4
  %sub = add i32 %16, -4
  %data_size = getelementptr inbounds %struct.lpm_trie, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %data_size, align 4
  %mul = shl i32 %sub, 3
  %max_prefixlen = getelementptr inbounds %struct.lpm_trie, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %max_prefixlen, align 8
  %lock = getelementptr inbounds %struct.lpm_trie, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @trie_alloc.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end26 ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false14.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false9.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trie_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr48 = load ptr, ptr %root, align 4
  %tobool.not4649 = icmp eq ptr %.pr48, null
  br i1 %tobool.not4649, label %entry.out_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %if.end.backedge, %entry.if.end_crit_edge
  %slot.047 = phi ptr [ %slot.047.be, %if.end.backedge ], [ %root, %entry.if.end_crit_edge ]
  %1 = phi ptr [ %.be, %if.end.backedge ], [ %.pr48, %entry.if.end_crit_edge ]
  %child = getelementptr inbounds %struct.lpm_trie_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %child, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end12, label %if.end.if.end.backedge_crit_edge

if.end.if.end.backedge_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.backedge

if.end12:                                         ; preds = %if.end
  %arrayidx18 = getelementptr %struct.lpm_trie_node, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx18, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %if.end24, label %if.end12.if.end.backedge_crit_edge

if.end12.if.end.backedge_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.backedge

if.end24:                                         ; preds = %if.end12
  tail call void @kfree(ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %slot.047 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %slot.047, align 4
  %7 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %root, align 4
  %tobool.not46 = icmp eq ptr %.pr, null
  br i1 %tobool.not46, label %if.end24.out_crit_edge, label %if.end24.if.end.backedge_crit_edge

if.end24.if.end.backedge_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.backedge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.backedge:                                  ; preds = %if.end24.if.end.backedge_crit_edge, %if.end12.if.end.backedge_crit_edge, %if.end.if.end.backedge_crit_edge
  %slot.047.be = phi ptr [ %root, %if.end24.if.end.backedge_crit_edge ], [ %arrayidx18, %if.end12.if.end.backedge_crit_edge ], [ %child, %if.end.if.end.backedge_crit_edge ]
  %.be = phi ptr [ %.pr, %if.end24.if.end.backedge_crit_edge ], [ %5, %if.end12.if.end.backedge_crit_edge ], [ %3, %if.end.if.end.backedge_crit_edge ]
  br label %if.end

out:                                              ; preds = %if.end24.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trie_get_next_key(ptr noundef %map, ptr noundef readonly %_key, ptr nocapture noundef writeonly %_next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 128
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b256 = load i1, ptr @trie_get_next_key.__warned, align 1
  br i1 %.b256, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_get_next_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 636, ptr noundef nonnull @.str.3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %tobool13.not = icmp eq ptr %_key, null
  br i1 %tobool13.not, label %if.end12.for.body114.preheader_crit_edge, label %lor.lhs.false

if.end12.for.body114.preheader_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

lor.lhs.false:                                    ; preds = %if.end12
  %2 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_key, align 4
  %max_prefixlen = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_prefixlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %lor.lhs.false.for.body114.preheader_crit_edge, label %if.end15

lor.lhs.false.for.body114.preheader_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

if.end15:                                         ; preds = %lor.lhs.false
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end15.cleanup_crit_edge, label %if.end7.i, !prof !45

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end15
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 10784) #11
  %tobool18.not = icmp eq ptr %call8.i, null
  br i1 %tobool18.not, label %if.end7.i.cleanup_crit_edge, label %for.body.lr.ph

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7.i
  %data = getelementptr inbounds %struct.bpf_lpm_trie_key, ptr %_key, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end49.for.body_crit_edge, %for.body.lr.ph
  %node.0268 = phi ptr [ %1, %for.body.lr.ph ], [ %19, %do.end49.for.body_crit_edge ]
  %stack_ptr.0267 = phi i32 [ -1, %for.body.lr.ph ], [ %inc, %do.end49.for.body_crit_edge ]
  %inc = add i32 %stack_ptr.0267, 1
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.0268, ptr %arrayidx, align 4
  %call22 = tail call fastcc i32 @longest_prefix_match(ptr noundef %map, ptr noundef nonnull %node.0268, ptr noundef nonnull %_key)
  %prefixlen23 = getelementptr inbounds %struct.lpm_trie_node, ptr %node.0268, i32 0, i32 2
  %10 = ptrtoint ptr %prefixlen23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prefixlen23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call22)
  %cmp24.not = icmp eq i32 %11, %call22
  br i1 %cmp24.not, label %lor.lhs.false25, label %for.body.lor.lhs.false52_crit_edge

for.body.lor.lhs.false52_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false52

lor.lhs.false25:                                  ; preds = %for.body
  %12 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %13)
  %cmp28 = icmp eq i32 %call22, %13
  br i1 %cmp28, label %lor.lhs.false25.lor.lhs.false52_crit_edge, label %if.end30

lor.lhs.false25.lor.lhs.false52_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false52

if.end30:                                         ; preds = %lor.lhs.false25
  %div3.i = lshr i32 %call22, 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  %rem.i = and i32 %call22, 7
  %sub.i = xor i32 %rem.i, 7
  %16 = lshr i32 %conv.i, %sub.i
  %17 = and i32 %16, 1
  %arrayidx37 = getelementptr %struct.lpm_trie_node, ptr %node.0268, i32 0, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx37, align 4
  %call39 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end30.do.end49_crit_edge

if.end30.do.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

land.lhs.true41:                                  ; preds = %if.end30
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b244255 = load i1, ptr @trie_get_next_key.__warned.4, align 1
  br i1 %.b244255, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_get_next_key.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 659, ptr noundef nonnull @.str.3) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %if.end30.do.end49_crit_edge
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %do.end49.for.body114.preheader_crit_edge, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end49.for.body114.preheader_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

lor.lhs.false52:                                  ; preds = %lor.lhs.false25.lor.lhs.false52_crit_edge, %for.body.lor.lhs.false52_crit_edge
  %arrayidx.le = getelementptr ptr, ptr %call8.i, i32 %inc
  %prefixlen23.le = getelementptr inbounds %struct.lpm_trie_node, ptr %node.0268, i32 0, i32 2
  %20 = ptrtoint ptr %prefixlen23.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prefixlen23.le, align 4
  %22 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp55.not = icmp eq i32 %21, %23
  br i1 %cmp55.not, label %lor.lhs.false56, label %lor.lhs.false52.for.body114.preheader_crit_edge

lor.lhs.false52.for.body114.preheader_crit_edge:  ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %flags = getelementptr inbounds %struct.lpm_trie_node, ptr %node.0268, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end59, label %lor.lhs.false56.for.body114.preheader_crit_edge

lor.lhs.false56.for.body114.preheader_crit_edge:  ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

if.end59:                                         ; preds = %lor.lhs.false56
  %26 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.le, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end106.while.cond_crit_edge, %if.end59
  %stack_ptr.2 = phi i32 [ %inc, %if.end59 ], [ %sub, %if.end106.while.cond_crit_edge ]
  %node.1 = phi ptr [ %27, %if.end59 ], [ %29, %if.end106.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.2)
  %cmp61 = icmp sgt i32 %stack_ptr.2, 0
  br i1 %cmp61, label %while.body, label %while.cond.free_stack_crit_edge

while.cond.free_stack_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_stack

while.body:                                       ; preds = %while.cond
  %sub = add nsw i32 %stack_ptr.2, -1
  %arrayidx62 = getelementptr ptr, ptr %call8.i, i32 %sub
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx62, align 4
  %child67 = getelementptr inbounds %struct.lpm_trie_node, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %child67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %child67, align 4
  %call70 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %while.body.do.end80_crit_edge

while.body.do.end80_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

land.lhs.true72:                                  ; preds = %while.body
  %call73 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end80_crit_edge, label %land.lhs.true75

land.lhs.true72.do.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %.b245254 = load i1, ptr @trie_get_next_key.__warned.5, align 1
  br i1 %.b245254, label %land.lhs.true75.do.end80_crit_edge, label %if.then77

land.lhs.true75.do.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_get_next_key.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 671, ptr noundef nonnull @.str.3) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %land.lhs.true75.do.end80_crit_edge, %land.lhs.true72.do.end80_crit_edge, %while.body.do.end80_crit_edge
  %cmp82 = icmp eq ptr %31, %node.1
  br i1 %cmp82, label %if.then83, label %do.end80.if.end106_crit_edge

do.end80.if.end106_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then83:                                        ; preds = %do.end80
  %arrayidx89 = getelementptr %struct.lpm_trie_node, ptr %29, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx89, align 4
  %call91 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true93, label %if.then83.do.end101_crit_edge

if.then83.do.end101_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

land.lhs.true93:                                  ; preds = %if.then83
  %call94 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true93.do.end101_crit_edge, label %land.lhs.true96

land.lhs.true93.do.end101_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %.b246253 = load i1, ptr @trie_get_next_key.__warned.6, align 1
  br i1 %.b246253, label %land.lhs.true96.do.end101_crit_edge, label %if.then98

land.lhs.true96.do.end101_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

if.then98:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_get_next_key.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 672, ptr noundef nonnull @.str.3) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %land.lhs.true96.do.end101_crit_edge, %land.lhs.true93.do.end101_crit_edge, %if.then83.do.end101_crit_edge
  %tobool103.not = icmp eq ptr %33, null
  br i1 %tobool103.not, label %do.end101.if.end106_crit_edge, label %do.end101.for.body114.preheader_crit_edge

do.end101.for.body114.preheader_crit_edge:        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.preheader

do.end101.if.end106_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %do.end101.if.end106_crit_edge, %do.end80.if.end106_crit_edge
  %flags107 = getelementptr inbounds %struct.lpm_trie_node, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags107, align 4
  %and108 = and i32 %35, 1
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.do_copy_crit_edge, label %if.end106.while.cond_crit_edge

if.end106.while.cond_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end106.do_copy_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_copy

for.body114.preheader:                            ; preds = %do.end101.for.body114.preheader_crit_edge, %lor.lhs.false56.for.body114.preheader_crit_edge, %lor.lhs.false52.for.body114.preheader_crit_edge, %do.end49.for.body114.preheader_crit_edge, %lor.lhs.false.for.body114.preheader_crit_edge, %if.end12.for.body114.preheader_crit_edge
  %search_root.0285 = phi ptr [ %1, %if.end12.for.body114.preheader_crit_edge ], [ %1, %lor.lhs.false.for.body114.preheader_crit_edge ], [ %1, %lor.lhs.false52.for.body114.preheader_crit_edge ], [ %1, %lor.lhs.false56.for.body114.preheader_crit_edge ], [ %33, %do.end101.for.body114.preheader_crit_edge ], [ %1, %do.end49.for.body114.preheader_crit_edge ]
  %node_stack.0284 = phi ptr [ null, %if.end12.for.body114.preheader_crit_edge ], [ null, %lor.lhs.false.for.body114.preheader_crit_edge ], [ %call8.i, %lor.lhs.false52.for.body114.preheader_crit_edge ], [ %call8.i, %lor.lhs.false56.for.body114.preheader_crit_edge ], [ %call8.i, %do.end101.for.body114.preheader_crit_edge ], [ %call8.i, %do.end49.for.body114.preheader_crit_edge ]
  br label %for.body114

for.body114:                                      ; preds = %if.end179.for.body114_crit_edge, %for.body114.preheader
  %node.2271 = phi ptr [ %node.3, %if.end179.for.body114_crit_edge ], [ %search_root.0285, %for.body114.preheader ]
  %next_node.0270 = phi ptr [ %next_node.1, %if.end179.for.body114_crit_edge ], [ null, %for.body114.preheader ]
  %flags115 = getelementptr inbounds %struct.lpm_trie_node, ptr %node.2271, i32 0, i32 3
  %36 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags115, align 4
  %and116 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  %child142 = getelementptr inbounds %struct.lpm_trie_node, ptr %node.2271, i32 0, i32 1
  %38 = ptrtoint ptr %child142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %child142, align 4
  %call145 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool117.not, label %if.else, label %if.then118

if.then118:                                       ; preds = %for.body114
  br i1 %tobool146.not, label %land.lhs.true128, label %if.then118.if.end179_crit_edge

if.then118.if.end179_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true128:                                 ; preds = %if.then118
  %call129 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %land.lhs.true128.if.end179_crit_edge, label %land.lhs.true131

land.lhs.true128.if.end179_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true131:                                 ; preds = %land.lhs.true128
  %.b247252 = load i1, ptr @trie_get_next_key.__warned.7, align 1
  br i1 %.b247252, label %land.lhs.true131.if.end179_crit_edge, label %land.lhs.true131.if.end179.sink.split_crit_edge

land.lhs.true131.if.end179.sink.split_crit_edge:  ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179.sink.split

land.lhs.true131.if.end179_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.else:                                          ; preds = %for.body114
  br i1 %tobool146.not, label %land.lhs.true147, label %if.else.do.end155_crit_edge

if.else.do.end155_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end155

land.lhs.true147:                                 ; preds = %if.else
  %call148 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %land.lhs.true147.do.end155_crit_edge, label %land.lhs.true150

land.lhs.true147.do.end155_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end155

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %.b248251 = load i1, ptr @trie_get_next_key.__warned.8, align 1
  br i1 %.b248251, label %land.lhs.true150.do.end155_crit_edge, label %if.then152

land.lhs.true150.do.end155_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end155

if.then152:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_get_next_key.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 698, ptr noundef nonnull @.str.3) #7
  br label %do.end155

do.end155:                                        ; preds = %if.then152, %land.lhs.true150.do.end155_crit_edge, %land.lhs.true147.do.end155_crit_edge, %if.else.do.end155_crit_edge
  %tobool157.not = icmp eq ptr %39, null
  br i1 %tobool157.not, label %if.then158, label %do.end155.if.end179_crit_edge

do.end155.if.end179_crit_edge:                    ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then158:                                       ; preds = %do.end155
  %arrayidx164 = getelementptr %struct.lpm_trie_node, ptr %node.2271, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx164, align 4
  %call166 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %land.lhs.true168, label %if.then158.if.end179_crit_edge

if.then158.if.end179_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true168:                                 ; preds = %if.then158
  %call169 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %land.lhs.true168.if.end179_crit_edge, label %land.lhs.true171

land.lhs.true168.if.end179_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

land.lhs.true171:                                 ; preds = %land.lhs.true168
  %.b249250 = load i1, ptr @trie_get_next_key.__warned.9, align 1
  br i1 %.b249250, label %land.lhs.true171.if.end179_crit_edge, label %land.lhs.true171.if.end179.sink.split_crit_edge

land.lhs.true171.if.end179.sink.split_crit_edge:  ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179.sink.split

land.lhs.true171.if.end179_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.end179.sink.split:                             ; preds = %land.lhs.true171.if.end179.sink.split_crit_edge, %land.lhs.true131.if.end179.sink.split_crit_edge
  %trie_get_next_key.__warned.9.sink = phi ptr [ @trie_get_next_key.__warned.7, %land.lhs.true131.if.end179.sink.split_crit_edge ], [ @trie_get_next_key.__warned.9, %land.lhs.true171.if.end179.sink.split_crit_edge ]
  %.sink = phi i32 [ 695, %land.lhs.true131.if.end179.sink.split_crit_edge ], [ 700, %land.lhs.true171.if.end179.sink.split_crit_edge ]
  %next_node.1.ph = phi ptr [ %next_node.0270, %land.lhs.true131.if.end179.sink.split_crit_edge ], [ %node.2271, %land.lhs.true171.if.end179.sink.split_crit_edge ]
  %node.3.ph = phi ptr [ %39, %land.lhs.true131.if.end179.sink.split_crit_edge ], [ %41, %land.lhs.true171.if.end179.sink.split_crit_edge ]
  %42 = ptrtoint ptr %trie_get_next_key.__warned.9.sink to i32
  call void @__asan_store1_noabort(i32 %42)
  store i1 true, ptr %trie_get_next_key.__warned.9.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef %.sink, ptr noundef nonnull @.str.3) #7
  br label %if.end179

if.end179:                                        ; preds = %if.end179.sink.split, %land.lhs.true171.if.end179_crit_edge, %land.lhs.true168.if.end179_crit_edge, %if.then158.if.end179_crit_edge, %do.end155.if.end179_crit_edge, %land.lhs.true131.if.end179_crit_edge, %land.lhs.true128.if.end179_crit_edge, %if.then118.if.end179_crit_edge
  %next_node.1 = phi ptr [ %node.2271, %do.end155.if.end179_crit_edge ], [ %next_node.0270, %land.lhs.true131.if.end179_crit_edge ], [ %next_node.0270, %land.lhs.true128.if.end179_crit_edge ], [ %next_node.0270, %if.then118.if.end179_crit_edge ], [ %node.2271, %land.lhs.true171.if.end179_crit_edge ], [ %node.2271, %land.lhs.true168.if.end179_crit_edge ], [ %node.2271, %if.then158.if.end179_crit_edge ], [ %next_node.1.ph, %if.end179.sink.split ]
  %node.3 = phi ptr [ %39, %do.end155.if.end179_crit_edge ], [ %39, %land.lhs.true131.if.end179_crit_edge ], [ %39, %land.lhs.true128.if.end179_crit_edge ], [ %39, %if.then118.if.end179_crit_edge ], [ %41, %land.lhs.true171.if.end179_crit_edge ], [ %41, %land.lhs.true168.if.end179_crit_edge ], [ %41, %if.then158.if.end179_crit_edge ], [ %node.3.ph, %if.end179.sink.split ]
  %tobool113.not = icmp eq ptr %node.3, null
  br i1 %tobool113.not, label %if.end179.do_copy_crit_edge, label %if.end179.for.body114_crit_edge

if.end179.for.body114_crit_edge:                  ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114

if.end179.do_copy_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_copy

do_copy:                                          ; preds = %if.end179.do_copy_crit_edge, %if.end106.do_copy_crit_edge
  %node_stack.1 = phi ptr [ %node_stack.0284, %if.end179.do_copy_crit_edge ], [ %call8.i, %if.end106.do_copy_crit_edge ]
  %next_node.2 = phi ptr [ %next_node.1, %if.end179.do_copy_crit_edge ], [ %29, %if.end106.do_copy_crit_edge ]
  %prefixlen181 = getelementptr inbounds %struct.lpm_trie_node, ptr %next_node.2, i32 0, i32 2
  %43 = ptrtoint ptr %prefixlen181 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prefixlen181, align 4
  %45 = ptrtoint ptr %_next_key to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %_next_key, align 4
  %add.ptr183 = getelementptr i8, ptr %_next_key, i32 4
  %data184 = getelementptr inbounds %struct.lpm_trie_node, ptr %next_node.2, i32 0, i32 4
  %data_size = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 4
  %46 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_size, align 4
  %48 = call ptr @memcpy(ptr %add.ptr183, ptr %data184, i32 %47)
  br label %free_stack

free_stack:                                       ; preds = %do_copy, %while.cond.free_stack_crit_edge
  %err.0 = phi i32 [ 0, %do_copy ], [ -2, %while.cond.free_stack_crit_edge ]
  %node_stack.2 = phi ptr [ %node_stack.1, %do_copy ], [ %call8.i, %while.cond.free_stack_crit_edge ]
  tail call void @kfree(ptr noundef %node_stack.2) #7
  br label %cleanup

cleanup:                                          ; preds = %free_stack, %if.end7.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_stack ], [ -2, %do.end8.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_lookup_batch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_update_batch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_delete_batch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trie_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 128
  %call = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b70 = load i1, ptr @trie_lookup_elem.__warned, align 1
  br i1 %.b70, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 235, ptr noundef nonnull @.str.3) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %tobool12.not80 = icmp eq ptr %1, null
  br i1 %tobool12.not80, label %do.end10.cleanup51_crit_edge, label %for.body.lr.ph

do.end10.cleanup51_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

for.body.lr.ph:                                   ; preds = %do.end10
  %max_prefixlen = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 3
  %data = getelementptr inbounds %struct.bpf_lpm_trie_key, ptr %_key, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %node.082 = phi ptr [ %1, %for.body.lr.ph ], [ %13, %cleanup.for.body_crit_edge ]
  %found.081 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %cleanup.for.body_crit_edge ]
  %call13 = tail call fastcc i32 @longest_prefix_match(ptr noundef %map, ptr noundef nonnull %node.082, ptr noundef %_key)
  %2 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_prefixlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %3)
  %cmp = icmp eq i32 %call13, %3
  br i1 %cmp, label %for.body.if.end47_crit_edge, label %if.end15

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end15:                                         ; preds = %for.body
  %prefixlen = getelementptr inbounds %struct.lpm_trie_node, ptr %node.082, i32 0, i32 2
  %4 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prefixlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %5)
  %cmp16 = icmp ult i32 %call13, %5
  br i1 %cmp16, label %if.end15.for.end_crit_edge, label %if.end18

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end18:                                         ; preds = %if.end15
  %flags = getelementptr inbounds %struct.lpm_trie_node, ptr %node.082, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool19.not, ptr %node.082, ptr %found.081
  %div3.i = lshr i32 %5, 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %rem.i = and i32 %5, 7
  %sub.i = xor i32 %rem.i, 7
  %10 = lshr i32 %conv.i, %sub.i
  %11 = and i32 %10, 1
  %arrayidx = getelementptr %struct.lpm_trie_node, ptr %node.082, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false31:                                  ; preds = %if.end18
  %call32 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %lor.lhs.false31.cleanup_crit_edge

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true34:                                  ; preds = %lor.lhs.false31
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true37

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b6869 = load i1, ptr @trie_lookup_elem.__warned.10, align 1
  br i1 %.b6869, label %land.lhs.true37.cleanup_crit_edge, label %if.then39

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_lookup_elem.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef nonnull @.str.3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge
  %found.0.lcssa = phi ptr [ %spec.select, %cleanup.for.end_crit_edge ], [ %found.081, %if.end15.for.end_crit_edge ]
  %tobool45.not = icmp eq ptr %found.0.lcssa, null
  br i1 %tobool45.not, label %for.end.cleanup51_crit_edge, label %for.end.if.end47_crit_edge

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

for.end.cleanup51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end47:                                         ; preds = %for.end.if.end47_crit_edge, %for.body.if.end47_crit_edge
  %found.377 = phi ptr [ %found.0.lcssa, %for.end.if.end47_crit_edge ], [ %node.082, %for.body.if.end47_crit_edge ]
  %data48 = getelementptr inbounds %struct.lpm_trie_node, ptr %found.377, i32 0, i32 4
  %data_size = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 4
  %14 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_size, align 4
  %add.ptr50 = getelementptr i8, ptr %data48, i32 %15
  br label %cleanup51

cleanup51:                                        ; preds = %if.end47, %for.end.cleanup51_crit_edge, %do.end10.cleanup51_crit_edge
  %retval.0 = phi ptr [ %add.ptr50, %if.end47 ], [ null, %for.end.cleanup51_crit_edge ], [ null, %do.end10.cleanup51_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trie_update_elem(ptr noundef %map, ptr nocapture noundef readonly %_key, ptr noundef readonly %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp = icmp ugt i64 %flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !45

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key, align 4
  %max_prefixlen = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_prefixlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ugt i32 %1, %3
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %n_entries = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_entries, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp12 = icmp eq i32 %5, %7
  br i1 %cmp12, label %do.body5.if.end526_crit_edge, label %if.end15

do.body5.if.end526_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end526

if.end15:                                         ; preds = %do.body5
  %data_size.i = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_size.i, align 4
  %add.i = add i32 %9, 24
  %tobool.not.i = icmp eq ptr %value, null
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %10 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_size.i, align 4
  %add1.i = add i32 %11, %add.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %size.0.i = phi i32 [ %add1.i, %if.then.i ], [ %add.i, %if.end15.if.end.i_crit_edge ]
  %numa_node.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 12
  %12 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node.i, align 8
  %call.i = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef %size.0.i, i32 noundef 10784, i32 noundef %13) #7
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end526_crit_edge, label %if.end6.i

if.end.i.if.end526_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end526

if.end6.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags.i, align 4
  br i1 %tobool.not.i, label %if.end6.i.if.end19_crit_edge, label %if.then8.i

if.end6.i.if.end19_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %16
  %value_size11.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %17 = ptrtoint ptr %value_size11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value_size11.i, align 4
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %value, i32 %18)
  br label %if.end19

if.end19:                                         ; preds = %if.then8.i, %if.end6.i.if.end19_crit_edge
  %20 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_entries, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %n_entries, align 4
  %22 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_key, align 4
  %prefixlen22 = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %prefixlen22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %prefixlen22, align 4
  %child = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %child, align 4
  %arrayidx42 = getelementptr %struct.lpm_trie_node, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr null, ptr %arrayidx42, align 4
  %data = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i, i32 0, i32 4
  %data49 = getelementptr inbounds %struct.bpf_lpm_trie_key, ptr %_key, i32 0, i32 1
  %27 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_size.i, align 4
  %29 = call ptr @memcpy(ptr %data, ptr %data49, i32 %28)
  %root = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 1
  %dep_map = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 5, i32 0, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end79, %if.end19
  %slot.0 = phi ptr [ %root, %if.end19 ], [ %arrayidx85, %if.end79 ]
  %call.i613 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i613)
  %tobool54.not = icmp eq i32 %call.i613, 0
  br i1 %tobool54.not, label %land.lhs.true, label %while.cond.do.end62_crit_edge

while.cond.do.end62_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true:                                    ; preds = %while.cond
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true
  %.b612 = load i1, ptr @trie_update_elem.__warned, align 1
  br i1 %.b612, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_update_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 350, ptr noundef nonnull @.str.11) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge, %while.cond.do.end62_crit_edge
  %30 = ptrtoint ptr %slot.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slot.0, align 4
  %tobool64.not = icmp eq ptr %31, null
  br i1 %tobool64.not, label %do.body88, label %while.body

while.body:                                       ; preds = %do.end62
  %call65 = tail call fastcc i32 @longest_prefix_match(ptr noundef %map, ptr noundef nonnull %31, ptr noundef %_key)
  %prefixlen66 = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %prefixlen66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prefixlen66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call65)
  %cmp67.not = icmp eq i32 %33, %call65
  br i1 %cmp67.not, label %lor.lhs.false, label %while.body.if.end126_crit_edge

while.body.if.end126_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

lor.lhs.false:                                    ; preds = %while.body
  %34 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %35)
  %cmp71 = icmp eq i32 %call65, %35
  br i1 %cmp71, label %lor.lhs.false.if.end126_crit_edge, label %lor.lhs.false73

lor.lhs.false.if.end126_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

lor.lhs.false73:                                  ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_prefixlen, align 8
  %cmp76 = icmp eq i32 %call65, %37
  br i1 %cmp76, label %lor.lhs.false73.if.end126_crit_edge, label %if.end79

lor.lhs.false73.if.end126_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.end79:                                         ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #9
  %div3.i = lshr i32 %call65, 3
  %arrayidx.i = getelementptr i8, ptr %data49, i32 %div3.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %39 to i32
  %rem.i = and i32 %call65, 7
  %sub.i = xor i32 %rem.i, 7
  %40 = lshr i32 %conv.i, %sub.i
  %41 = and i32 %40, 1
  %arrayidx85 = getelementptr %struct.lpm_trie_node, ptr %31, i32 0, i32 1, i32 %41
  br label %while.cond

do.body88:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  %42 = ptrtoint ptr %slot.0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call.i, ptr %slot.0, align 4
  br label %if.end527

if.end126:                                        ; preds = %lor.lhs.false73.if.end126_crit_edge, %lor.lhs.false.if.end126_crit_edge, %while.body.if.end126_crit_edge
  %prefixlen66.le = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 2
  %43 = ptrtoint ptr %prefixlen66.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prefixlen66.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call65)
  %cmp128 = icmp eq i32 %44, %call65
  br i1 %cmp128, label %if.then130, label %if.end193

if.then130:                                       ; preds = %if.end126
  %child131 = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 1
  %45 = ptrtoint ptr %child131 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %child131, align 4
  %47 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %child, align 4
  %arrayidx136 = getelementptr %struct.lpm_trie_node, ptr %31, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx136, align 4
  %50 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx42, align 4
  %flags139 = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 3
  %51 = ptrtoint ptr %flags139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags139, align 4
  %and = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool140.not = icmp eq i32 %and, 0
  br i1 %tobool140.not, label %if.then141, label %if.then130.do.body144_crit_edge

if.then130.do.body144_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

if.then141:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_entries, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %n_entries, align 4
  br label %do.body144

do.body144:                                       ; preds = %if.then141, %if.then130.do.body144_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %55 = ptrtoint ptr %slot.0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call.i, ptr %slot.0, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %31, ptr noundef null) #7
  br label %if.end527

if.end193:                                        ; preds = %if.end126
  %56 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %57)
  %cmp195 = icmp eq i32 %call65, %57
  br i1 %cmp195, label %if.then197, label %if.end285

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %data198 = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 4
  %div3.i614 = lshr i32 %call65, 3
  %arrayidx.i615 = getelementptr i8, ptr %data198, i32 %div3.i614
  %58 = ptrtoint ptr %arrayidx.i615 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i615, align 1
  %conv.i616 = zext i8 %59 to i32
  %rem.i617 = and i32 %call65, 7
  %sub.i618 = xor i32 %rem.i617, 7
  %60 = lshr i32 %conv.i616, %sub.i618
  %61 = and i32 %60, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  %arrayidx233 = getelementptr %struct.lpm_trie_node, ptr %call.i, i32 0, i32 1, i32 %61
  %62 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %31, ptr %arrayidx233, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %63 = ptrtoint ptr %slot.0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call.i, ptr %slot.0, align 4
  br label %if.end527

if.end285:                                        ; preds = %if.end193
  %64 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_size.i, align 4
  %add.i620 = add i32 %65, 24
  %66 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %numa_node.i, align 8
  %call.i623 = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef %add.i620, i32 noundef 10784, i32 noundef %67) #7
  %tobool4.not.i624 = icmp eq ptr %call.i623, null
  br i1 %tobool4.not.i624, label %if.then523, label %if.end289

if.end289:                                        ; preds = %if.end285
  %flags.i626 = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i623, i32 0, i32 3
  %prefixlen290 = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i623, i32 0, i32 2
  %68 = ptrtoint ptr %prefixlen290 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call65, ptr %prefixlen290, align 4
  %69 = ptrtoint ptr %flags.i626 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %flags.i626, align 4
  %data292 = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i623, i32 0, i32 4
  %data294 = getelementptr inbounds %struct.lpm_trie_node, ptr %31, i32 0, i32 4
  %70 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_size.i, align 4
  %72 = call ptr @memcpy(ptr %data292, ptr %data294, i32 %71)
  %div3.i629 = lshr i32 %call65, 3
  %arrayidx.i630 = getelementptr i8, ptr %data49, i32 %div3.i629
  %73 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i630, align 1
  %conv.i631 = zext i8 %74 to i32
  %rem.i632 = and i32 %call65, 7
  %sub.i633 = xor i32 %rem.i632, 7
  %75 = shl nuw i32 1, %sub.i633
  %76 = and i32 %75, %conv.i631
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool300.not = icmp eq i32 %76, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7
  %child422 = getelementptr inbounds %struct.lpm_trie_node, ptr %call.i623, i32 0, i32 1
  br i1 %tobool300.not, label %do.body391, label %do.body302

do.body302:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %child422 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %31, ptr %child422, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  br label %do.body480

do.body391:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %child422 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call.i, ptr %child422, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %do.body480

do.body480:                                       ; preds = %do.body391, %do.body302
  %call.i.sink = phi ptr [ %call.i, %do.body302 ], [ %31, %do.body391 ]
  %arrayidx378 = getelementptr %struct.lpm_trie_node, ptr %call.i623, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call.i.sink, ptr %arrayidx378, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  %80 = ptrtoint ptr %slot.0 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call.i623, ptr %slot.0, align 4
  br label %if.end527

if.then523:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %n_entries, align 4
  %dec525 = add i32 %82, -1
  store i32 %dec525, ptr %n_entries, align 4
  br label %if.end526

if.end526:                                        ; preds = %if.then523, %if.end.i.if.end526_crit_edge, %do.body5.if.end526_crit_edge
  %new_node.0646 = phi ptr [ %call.i, %if.then523 ], [ null, %do.body5.if.end526_crit_edge ], [ null, %if.end.i.if.end526_crit_edge ]
  %ret.0645 = phi i32 [ -12, %if.then523 ], [ -28, %do.body5.if.end526_crit_edge ], [ -12, %if.end.i.if.end526_crit_edge ]
  tail call void @kfree(ptr noundef %new_node.0646) #7
  tail call void @kfree(ptr noundef null) #7
  br label %if.end527

if.end527:                                        ; preds = %if.end526, %do.body480, %if.then197, %do.body144, %do.body88
  %ret.0640 = phi i32 [ %ret.0645, %if.end526 ], [ 0, %do.body480 ], [ 0, %if.then197 ], [ 0, %do.body144 ], [ 0, %do.body88 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end527, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0640, %if.end527 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trie_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key, align 4
  %max_prefixlen = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_prefixlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_prefixlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %root = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 1
  %dep_map = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 5, i32 0, i32 0, i32 4
  %data = getelementptr inbounds %struct.bpf_lpm_trie_key, ptr %_key, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %do.body1
  %parent.0 = phi ptr [ null, %do.body1 ], [ %5, %if.end29 ]
  %trim2.0 = phi ptr [ %root, %do.body1 ], [ %trim.0, %if.end29 ]
  %trim.0 = phi ptr [ %root, %do.body1 ], [ %arrayidx, %if.end29 ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.cond.do.end17_crit_edge

while.cond.do.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true:                                    ; preds = %while.cond
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b332 = load i1, ptr @trie_delete_elem.__warned, align 1
  br i1 %.b332, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trie_delete_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 459, ptr noundef nonnull @.str.11) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %while.cond.do.end17_crit_edge
  %4 = ptrtoint ptr %trim.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trim.0, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %do.end17.out_crit_edge, label %while.body

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body:                                       ; preds = %do.end17
  %call20 = tail call fastcc i32 @longest_prefix_match(ptr noundef %map, ptr noundef nonnull %5, ptr noundef %_key)
  %prefixlen21 = getelementptr inbounds %struct.lpm_trie_node, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %prefixlen21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prefixlen21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call20)
  %cmp22.not = icmp eq i32 %7, %call20
  br i1 %cmp22.not, label %lor.lhs.false, label %while.body.lor.lhs.false33_crit_edge

while.body.lor.lhs.false33_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false33

lor.lhs.false:                                    ; preds = %while.body
  %8 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_key, align 4
  %cmp26 = icmp eq i32 %call20, %9
  br i1 %cmp26, label %lor.lhs.false.lor.lhs.false33_crit_edge, label %if.end29

lor.lhs.false.lor.lhs.false33_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false33

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %div3.i = lshr i32 %call20, 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %rem.i = and i32 %call20, 7
  %sub.i = xor i32 %rem.i, 7
  %12 = lshr i32 %conv.i, %sub.i
  %13 = and i32 %12, 1
  %arrayidx = getelementptr %struct.lpm_trie_node, ptr %5, i32 0, i32 1, i32 %13
  br label %while.cond

lor.lhs.false33:                                  ; preds = %lor.lhs.false.lor.lhs.false33_crit_edge, %while.body.lor.lhs.false33_crit_edge
  %prefixlen21.le = getelementptr inbounds %struct.lpm_trie_node, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %prefixlen21.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prefixlen21.le, align 4
  %16 = ptrtoint ptr %_key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp36.not = icmp eq i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call20)
  %cmp40.not = icmp eq i32 %15, %call20
  %or.cond = select i1 %cmp36.not, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %lor.lhs.false42, label %lor.lhs.false33.out_crit_edge

lor.lhs.false33.out_crit_edge:                    ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false42:                                  ; preds = %lor.lhs.false33
  %flags = getelementptr inbounds %struct.lpm_trie_node, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false42.out_crit_edge

lor.lhs.false42.out_crit_edge:                    ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end45:                                         ; preds = %lor.lhs.false42
  %n_entries = getelementptr inbounds %struct.lpm_trie, ptr %map, i32 0, i32 2
  %20 = ptrtoint ptr %n_entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_entries, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %n_entries, align 4
  %child50 = getelementptr inbounds %struct.lpm_trie_node, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %child50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %child50, align 4
  %tobool53.not = icmp eq ptr %23, null
  br i1 %tobool53.not, label %if.end45.if.end65_crit_edge, label %land.lhs.true54

if.end45.if.end65_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true54:                                  ; preds = %if.end45
  %arrayidx60 = getelementptr %struct.lpm_trie_node, ptr %5, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx60, align 4
  %tobool62.not = icmp eq ptr %25, null
  br i1 %tobool62.not, label %land.lhs.true54.if.end65_crit_edge, label %if.then63

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %flags, align 4
  br label %out

if.end65:                                         ; preds = %land.lhs.true54.if.end65_crit_edge, %if.end45.if.end65_crit_edge
  %tobool66.not = icmp eq ptr %parent.0, null
  br i1 %tobool66.not, label %if.end65.if.end174_crit_edge, label %land.lhs.true67

if.end65.if.end174_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

land.lhs.true67:                                  ; preds = %if.end65
  %flags68 = getelementptr inbounds %struct.lpm_trie_node, ptr %parent.0, i32 0, i32 3
  %28 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags68, align 4
  %and69 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %land.lhs.true67.if.end174_crit_edge, label %land.lhs.true71

land.lhs.true67.if.end174_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

land.lhs.true71:                                  ; preds = %land.lhs.true67
  br i1 %tobool53.not, label %land.lhs.true75, label %land.lhs.true71.do.body179_crit_edge

land.lhs.true71.do.body179_crit_edge:             ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body179

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %arrayidx77 = getelementptr %struct.lpm_trie_node, ptr %5, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %31, null
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true75.if.else211_crit_edge

land.lhs.true75.if.else211_crit_edge:             ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else211

if.then79:                                        ; preds = %land.lhs.true75
  %child84 = getelementptr inbounds %struct.lpm_trie_node, ptr %parent.0, i32 0, i32 1
  %32 = ptrtoint ptr %child84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %child84, align 4
  %cmp87 = icmp eq ptr %5, %33
  br i1 %cmp87, label %do.body90, label %do.body121

do.body90:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx96 = getelementptr %struct.lpm_trie_node, ptr %parent.0, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx96, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  br label %do.end159

do.body121:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %child84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %child84, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  br label %do.end159

do.end159:                                        ; preds = %do.body121, %do.body90
  %.sink = phi ptr [ %37, %do.body121 ], [ %35, %do.body90 ]
  %38 = ptrtoint ptr %trim2.0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %.sink, ptr %trim2.0, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %parent.0, ptr noundef null) #7
  tail call void @kvfree_call_rcu(ptr noundef nonnull %5, ptr noundef null) #7
  br label %out

if.end174:                                        ; preds = %land.lhs.true67.if.end174_crit_edge, %if.end65.if.end174_crit_edge
  br i1 %tobool53.not, label %if.end174.if.else211_crit_edge, label %if.end174.do.body179_crit_edge

if.end174.do.body179_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body179

if.end174.if.else211_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else211

do.body179:                                       ; preds = %if.end174.do.body179_crit_edge, %land.lhs.true71.do.body179_crit_edge
  %39 = ptrtoint ptr %child50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %child50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  br label %do.end269

if.else211:                                       ; preds = %if.end174.if.else211_crit_edge, %land.lhs.true75.if.else211_crit_edge
  %arrayidx213 = getelementptr %struct.lpm_trie_node, ptr %5, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx213, align 4
  %tobool214.not = icmp eq ptr %42, null
  br i1 %tobool214.not, label %if.else211.do.end269_crit_edge, label %do.body216

if.else211.do.end269_crit_edge:                   ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end269

do.body216:                                       ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx213, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  br label %do.end269

do.end269:                                        ; preds = %do.body216, %if.else211.do.end269_crit_edge, %do.body179
  %.sink358 = phi ptr [ %44, %do.body216 ], [ %40, %do.body179 ], [ null, %if.else211.do.end269_crit_edge ]
  %45 = ptrtoint ptr %trim.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.sink358, ptr %trim.0, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %5, ptr noundef null) #7
  br label %out

out:                                              ; preds = %do.end269, %do.end159, %if.then63, %lor.lhs.false42.out_crit_edge, %lor.lhs.false33.out_crit_edge, %do.end17.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then63 ], [ 0, %do.end269 ], [ 0, %do.end159 ], [ -2, %lor.lhs.false42.out_crit_edge ], [ -2, %lor.lhs.false33.out_crit_edge ], [ -2, %do.end17.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @trie_check_btf(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %btf, ptr nocapture noundef readonly %key_type, ptr nocapture noundef readnone %value_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.btf_type, ptr %key_type, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %2 = and i32 %1, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp.not = icmp eq i32 %2, 67108864
  %cond = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @longest_prefix_match(ptr nocapture noundef readonly %trie, ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %key) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prefixlen = getelementptr inbounds %struct.lpm_trie_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prefixlen, align 4
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %data_size = getelementptr inbounds %struct.lpm_trie, ptr %trie, i32 0, i32 4
  %5 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %while.body.while.cond_crit_edge ]
  %prefixlen2.0 = phi i32 [ 0, %entry ], [ %add9, %while.body.while.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %entry ], [ %add, %while.body.while.cond_crit_edge ]
  %add = add i32 %i.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp6.not = icmp ult i32 %6, %add
  br i1 %cmp6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr %struct.lpm_trie_node, ptr %node, i32 0, i32 4, i32 %i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr %struct.bpf_lpm_trie_key, ptr %key, i32 0, i32 1, i32 %i.0
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx8, align 1
  %xor = xor i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not.i = icmp eq i32 %xor, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %xor, i1 false) #7, !range !57
  %add9 = add i32 %11, %prefixlen2.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %4)
  %cmp10.not = icmp ult i32 %add9, %4
  %retval.0.add9 = select i1 %tobool.not.i, i32 %retval.0, i32 %add9
  %retval.1 = select i1 %cmp10.not, i32 %retval.0.add9, i32 %4
  %12 = select i1 %cmp10.not, i1 %tobool.not.i, i1 false
  br i1 %12, label %while.body.while.cond_crit_edge, label %while.body.cleanup62_crit_edge

while.body.cleanup62_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add15 = or i32 %i.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add15)
  %cmp16.not = icmp ult i32 %6, %add15
  br i1 %cmp16.not, label %while.end.if.end41_crit_edge, label %if.then17

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then17:                                        ; preds = %while.end
  %arrayidx20 = getelementptr %struct.lpm_trie_node, ptr %node, i32 0, i32 4, i32 %i.0
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.bpf_lpm_trie_key, ptr %key, i32 0, i32 1, i32 %i.0
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx22, align 1
  %xor24106 = xor i16 %16, %14
  %conv26 = zext i16 %xor24106 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor24106)
  %tobool.not.i109 = icmp eq i16 %xor24106, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %conv26, i1 true) #7, !range !57
  %sub.i110.neg.op = add nsw i32 %17, -16
  %sub28 = select i1 %tobool.not.i109, i32 16, i32 %sub.i110.neg.op
  %add29 = add i32 %sub28, %prefixlen2.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %4)
  %cmp30.not = icmp ult i32 %add29, %4
  %retval.0.add29 = select i1 %tobool.not.i109, i32 %retval.0, i32 %add29
  %retval.2 = select i1 %cmp30.not, i32 %retval.0.add29, i32 %4
  %18 = select i1 %cmp30.not, i1 %tobool.not.i109, i1 false
  br i1 %18, label %if.then17.if.end41_crit_edge, label %if.then17.cleanup62_crit_edge

if.then17.cleanup62_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.then17.if.end41_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %if.then17.if.end41_crit_edge, %while.end.if.end41_crit_edge
  %prefixlen2.1 = phi i32 [ %add29, %if.then17.if.end41_crit_edge ], [ %prefixlen2.0, %while.end.if.end41_crit_edge ]
  %i.3 = phi i32 [ %add15, %if.then17.if.end41_crit_edge ], [ %i.0, %while.end.if.end41_crit_edge ]
  %add43 = add i32 %i.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add43)
  %cmp44.not = icmp ult i32 %6, %add43
  br i1 %cmp44.not, label %if.end41.if.end61_crit_edge, label %if.then46

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then46:                                        ; preds = %if.end41
  %arrayidx48 = getelementptr %struct.lpm_trie_node, ptr %node, i32 0, i32 4, i32 %i.3
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48, align 1
  %arrayidx51 = getelementptr %struct.bpf_lpm_trie_key, ptr %key, i32 0, i32 1, i32 %i.3
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx51, align 1
  %xor53105 = xor i8 %22, %20
  %xor53 = zext i8 %xor53105 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor53105)
  %tobool.not.i112 = icmp eq i8 %xor53105, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %xor53, i1 true) #7, !range !57
  %sub.i113.neg.op = add nsw i32 %23, -24
  %sub55 = select i1 %tobool.not.i112, i32 8, i32 %sub.i113.neg.op
  %add56 = add i32 %sub55, %prefixlen2.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %4)
  %cmp57.not = icmp ult i32 %add56, %4
  br i1 %cmp57.not, label %if.then46.if.end61_crit_edge, label %if.then46.cleanup62_crit_edge

if.then46.cleanup62_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup62

if.then46.if.end61_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end61:                                         ; preds = %if.then46.if.end61_crit_edge, %if.end41.if.end61_crit_edge
  %prefixlen2.2 = phi i32 [ %add56, %if.then46.if.end61_crit_edge ], [ %prefixlen2.1, %if.end41.if.end61_crit_edge ]
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %if.then46.cleanup62_crit_edge, %if.then17.cleanup62_crit_edge, %while.body.cleanup62_crit_edge
  %retval.3 = phi i32 [ %prefixlen2.2, %if.end61 ], [ %retval.2, %if.then17.cleanup62_crit_edge ], [ %4, %if.then46.cleanup62_crit_edge ], [ %retval.1, %while.body.cleanup62_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/lpm_trie.c", i32 735, i32 18}
!2 = !{ptr @trie_map_ops, !3, !"trie_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/lpm_trie.c", i32 723, i32 26}
!4 = !{ptr @trie_map_btf_id, !5, !"trie_map_btf_id", i1 false, i1 false}
!5 = !{!"../kernel/bpf/lpm_trie.c", i32 722, i32 12}
!6 = !{ptr @trie_alloc.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../kernel/bpf/lpm_trie.c", i32 570, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../kernel/bpf/lpm_trie.c", i32 590, i32 11}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../kernel/bpf/lpm_trie.c", i32 636, i32 16}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../kernel/bpf/lpm_trie.c", i32 659, i32 10}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/bpf/lpm_trie.c", i32 671, i32 7}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/bpf/lpm_trie.c", i32 672, i32 18}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../kernel/bpf/lpm_trie.c", i32 695, i32 11}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../kernel/bpf/lpm_trie.c", i32 698, i32 11}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../kernel/bpf/lpm_trie.c", i32 700, i32 12}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../kernel/bpf/lpm_trie.c", i32 235, i32 14}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../kernel/bpf/lpm_trie.c", i32 268, i32 10}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../kernel/bpf/lpm_trie.c", i32 349, i32 17}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../kernel/bpf/lpm_trie.c", i32 458, i32 17}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2157695104}
!47 = !{i64 2157702065}
!48 = !{i64 2157712417}
!49 = !{i64 2157719876}
!50 = !{i64 2157735463}
!51 = !{i64 2157751301}
!52 = !{i64 2157758526}
!53 = !{i64 2157784813}
!54 = !{i64 2157797917}
!55 = !{i64 2157815541}
!56 = !{i64 2157828448}
!57 = !{i32 0, i32 33}
