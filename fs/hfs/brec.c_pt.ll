; ModuleID = '/llk/IR_all_yes/fs/hfs/brec.c_pt.bc'
source_filename = "../fs/hfs/brec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>

@hfs_brec_keylen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013hfs: keylen %d too large\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hfs_brec_keylen\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/hfs/brec.c\00", [18 x i8] zeroinitializer }, align 32
@hfs_brec_keylen._entry_ptr = internal global ptr @hfs_brec_keylen._entry, section ".printk_index", align 4
@hfs_brec_keylen._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfs_brec_keylen._entry_ptr.4 = internal global ptr @hfs_brec_keylen._entry.3, section ".printk_index", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"not enough room!\0A\00", [46 x i8] zeroinitializer }, align 32
@hfs_brec_update_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017splitting index node...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hfs_brec_update_parent\00", [41 x i8] zeroinitializer }, align 32
@hfs_brec_update_parent._entry_ptr = internal global ptr @hfs_brec_update_parent._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 51, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 57, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 101, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [17 x i8] c"../fs/hfs/brec.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 393, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @hfs_brec_keylen._entry, ptr @hfs_brec_keylen._entry.3, ptr @hfs_brec_keylen._entry_ptr, ptr @hfs_brec_keylen._entry_ptr.4, ptr @hfs_brec_update_parent._entry, ptr @hfs_brec_update_parent._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_brec_keylen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_brec_keylen._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_brec_update_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hfs_brec_lenoff(ptr noundef %node, i16 noundef zeroext %rec, ptr nocapture noundef writeonly %off) local_unnamed_addr #0 align 64 {
entry:
  %retval1 = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #5
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %retval1, align 2, !annotation !25
  %1 = getelementptr inbounds [2 x i16], ptr %retval1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !25
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node_size, align 4
  %conv = zext i16 %rec to i32
  %add.neg = mul nuw i32 %conv, 65534
  %mul.neg = add nuw i32 %add.neg, 65532
  %sub = add i32 %mul.neg, %6
  %conv3 = and i32 %sub, 65535
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %retval1, i32 noundef %conv3, i32 noundef 4) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %9 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %off, align 2
  %10 = ptrtoint ptr %retval1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %retval1, align 2
  %sub7 = sub i16 %11, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #5
  ret i16 %sub7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hfs_brec_keylen(ptr noundef %node, i16 noundef zeroext %rec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %land.lhs.true11
    i8 -1, label %entry.if.else25_crit_edge
  ]

entry.if.else25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else25

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true11:                                  ; preds = %entry
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attributes, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then12, label %land.lhs.true11.if.else25_crit_edge

land.lhs.true11.if.else25_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true11
  %and15 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %max_key_len21 = getelementptr inbounds %struct.hfs_btree, ptr %4, i32 0, i32 13
  %7 = ptrtoint ptr %max_key_len21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_key_len21, align 4
  %9 = trunc i32 %8 to i16
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %conv19 = add i16 %9, 2
  br label %cleanup

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %conv23 = add i16 %9, 1
  br label %cleanup

if.else25:                                        ; preds = %land.lhs.true11.if.else25_crit_edge, %entry.if.else25_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_size, align 4
  %conv27 = zext i16 %rec to i32
  %add28.neg = mul nsw i32 %conv27, -2
  %mul.neg = add nsw i32 %add28.neg, -2
  %sub = add i32 %mul.neg, %13
  %call = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %node, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool29.not = icmp eq i16 %call, 0
  br i1 %tobool29.not, label %if.else25.cleanup_crit_edge, label %if.end31

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.else25
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %attributes33 = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %attributes33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attributes33, align 4
  %and34 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %conv53 = zext i16 %call to i32
  br i1 %tobool35.not, label %if.else52, label %if.then36

if.then36:                                        ; preds = %if.end31
  %call38 = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %node, i32 noundef %conv53) #5
  %add40 = add i16 %call38, 2
  %conv42 = zext i16 %add40 to i32
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %max_key_len44 = getelementptr inbounds %struct.hfs_btree, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %max_key_len44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_key_len44, align 4
  %add45 = add i32 %21, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %conv42)
  %cmp46 = icmp ult i32 %add45, %conv42
  br i1 %cmp46, label %do.end, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv42) #8
  br label %cleanup

if.else52:                                        ; preds = %if.end31
  %call54 = tail call zeroext i8 @hfs_bnode_read_u8(ptr noundef %node, i32 noundef %conv53) #5
  %22 = or i8 %call54, 1
  %or = zext i8 %22 to i16
  %add56 = add nuw nsw i16 %or, 1
  %conv58 = zext i16 %add56 to i32
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %max_key_len60 = getelementptr inbounds %struct.hfs_btree, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %max_key_len60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_key_len60, align 4
  %add61 = add i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %conv58)
  %cmp62 = icmp ult i32 %add61, %conv58
  br i1 %cmp62, label %do.end67, label %if.else52.cleanup_crit_edge

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv58) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.else52.cleanup_crit_edge, %do.end, %if.then36.cleanup_crit_edge, %if.else25.cleanup_crit_edge, %if.else, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else25.cleanup_crit_edge ], [ 0, %do.end ], [ %add40, %if.then36.cleanup_crit_edge ], [ 0, %do.end67 ], [ %add56, %if.else52.cleanup_crit_edge ], [ %conv19, %if.then17 ], [ %conv23, %if.else ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfs_bnode_read_u16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hfs_bnode_read_u8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_brec_insert(ptr noundef %fd, ptr noundef %entry1, i32 noundef %entry_len) local_unnamed_addr #0 align 64 {
entry:
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #5
  %0 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cnid, align 4, !annotation !25
  %tree2 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %1 = ptrtoint ptr %tree2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tree2, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %3 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bnode, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %root = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %root, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hfs_btree_inc_height(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %leaf_head = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %leaf_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leaf_head, align 4
  %call5 = tail call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef %8) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %bnode, align 4
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %11 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %record, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry.if.end11_crit_edge
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %12 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %search_key, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = or i8 %15, 1
  %or = zext i8 %16 to i32
  %record12 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 11
  %leaf_count = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 5
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 1
  %root81 = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 4
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 13
  br label %again.outer

again.outer:                                      ; preds = %again.outer.backedge, %if.end11
  %entry.addr.0.ph = phi ptr [ %entry1, %if.end11 ], [ %cnid, %again.outer.backedge ]
  %entry_len.addr.0.ph = phi i32 [ %entry_len, %if.end11 ], [ 4, %again.outer.backedge ]
  %key_len.0.ph.in = phi i32 [ %or, %if.end11 ], [ %key_len.0.ph.in.be, %again.outer.backedge ]
  %key_len.0.ph = add i32 %key_len.0.ph.in, 1
  %add14 = add i32 %key_len.0.ph, %entry_len.addr.0.ph
  br label %again

again:                                            ; preds = %if.end26.again_crit_edge, %again.outer
  %new_node.0 = phi ptr [ %call27, %if.end26.again_crit_edge ], [ null, %again.outer ]
  %17 = ptrtoint ptr %record12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %record12, align 4
  %19 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bnode, align 4
  call void @hfs_bnode_dump(ptr noundef %20) #5
  %21 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_size, align 4
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_recs, align 4
  %conv16 = zext i16 %24 to i32
  %add17.neg = mul nsw i32 %conv16, -2
  %mul.neg = add i32 %22, -2
  %sub = add i32 %mul.neg, %add17.neg
  %call18 = call zeroext i16 @hfs_bnode_read_u16(ptr noundef %20, i32 noundef %sub) #5
  %conv19 = zext i16 %call18 to i32
  %sub20 = add i32 %sub, -2
  %sub21 = sub i32 %sub20, %conv19
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %sub21)
  %cmp = icmp sgt i32 %add14, %sub21
  br i1 %cmp, label %if.then23, label %if.end32

if.then23:                                        ; preds = %again
  %tobool24.not = icmp eq ptr %new_node.0, null
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #9
  unreachable

if.end26:                                         ; preds = %if.then23
  %call27 = call fastcc ptr @hfs_bnode_split(ptr noundef %fd)
  %cmp.i196 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then29, label %if.end26.again_crit_edge

if.end26.again_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %again

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end32:                                         ; preds = %again
  %num_recs.le = getelementptr inbounds %struct.hfs_bnode, ptr %20, i32 0, i32 5
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %20, i32 0, i32 6
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp34 = icmp eq i8 %27, -1
  br i1 %cmp34, label %if.then36, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %leaf_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leaf_count, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %leaf_count, align 4
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %31, i32 noundef 7) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %32 = ptrtoint ptr %num_recs.le to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_recs.le, align 4
  %inc39 = add i16 %33, 1
  store i16 %inc39, ptr %num_recs.le, align 4
  call void @hfs_bnode_write_u16(ptr noundef %20, i32 noundef 10, i16 noundef zeroext %inc39) #5
  %34 = trunc i32 %add14 to i16
  %conv42 = add i16 %call18, %34
  call void @hfs_bnode_write_u16(ptr noundef %20, i32 noundef %sub20, i16 noundef zeroext %conv42) #5
  %35 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node_size, align 4
  %add45.neg = mul i32 %18, -2
  %mul46.neg = add i32 %add45.neg, -4
  %sub47 = add i32 %mul46.neg, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47, i32 %sub)
  %cmp48 = icmp eq i32 %sub47, %sub
  br i1 %cmp48, label %if.end37.skip_crit_edge, label %if.end37.do.body52_crit_edge

if.end37.do.body52_crit_edge:                     ; preds = %if.end37
  br label %do.body52

if.end37.skip_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip

do.body52:                                        ; preds = %do.body52.do.body52_crit_edge, %if.end37.do.body52_crit_edge
  %data_rec_off.0 = phi i32 [ %add53, %do.body52.do.body52_crit_edge ], [ %sub, %if.end37.do.body52_crit_edge ]
  %add53 = add i32 %data_rec_off.0, 2
  %call54 = call zeroext i16 @hfs_bnode_read_u16(ptr noundef %20, i32 noundef %add53) #5
  %conv55 = zext i16 %call54 to i32
  %add56 = add i32 %add14, %conv55
  %conv57 = trunc i32 %add56 to i16
  call void @hfs_bnode_write_u16(ptr noundef %20, i32 noundef %data_rec_off.0, i16 noundef zeroext %conv57) #5
  %cmp60 = icmp slt i32 %add53, %sub47
  br i1 %cmp60, label %do.body52.do.body52_crit_edge, label %do.end62

do.body52.do.body52_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52

do.end62:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %sub64 = sub nsw i32 %conv19, %conv55
  call void @hfs_bnode_move(ptr noundef %20, i32 noundef %add56, i32 noundef %conv55, i32 noundef %sub64) #5
  br label %skip

skip:                                             ; preds = %do.end62, %if.end37.skip_crit_edge
  %data_off.0 = phi i32 [ %conv19, %if.end37.skip_crit_edge ], [ %conv55, %do.end62 ]
  %37 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %search_key, align 4
  call void @hfs_bnode_write(ptr noundef %20, ptr noundef %38, i32 noundef %data_off.0, i32 noundef %key_len.0.ph) #5
  %add66 = add i32 %data_off.0, %key_len.0.ph
  call void @hfs_bnode_write(ptr noundef %20, ptr noundef %entry.addr.0.ph, i32 noundef %add66, i32 noundef %entry_len.addr.0.ph) #5
  call void @hfs_bnode_dump(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool67.not = icmp ne i32 %18, -1
  %cmp68.not = icmp eq ptr %new_node.0, %20
  %or.cond = or i1 %tobool67.not, %cmp68.not
  br i1 %or.cond, label %skip.if.end74_crit_edge, label %if.then70

skip.if.end74_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then70:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %search_key, align 4
  %add72 = add i32 %data_off.0, %add14
  call void @hfs_bnode_read_key(ptr noundef %20, ptr noundef %40, i32 noundef %add72) #5
  call fastcc void @hfs_brec_update_parent(ptr noundef %fd)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %skip.if.end74_crit_edge
  %tobool75.not = icmp eq ptr %new_node.0, null
  br i1 %tobool75.not, label %if.end74.cleanup_crit_edge, label %if.then76

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76:                                        ; preds = %if.end74
  %41 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bnode, align 4
  call void @hfs_bnode_put(ptr noundef %42) #5
  %parent = getelementptr inbounds %struct.hfs_bnode, ptr %new_node.0, i32 0, i32 4
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool78.not = icmp eq i32 %44, 0
  br i1 %tobool78.not, label %if.then79, label %if.then76.if.end83_crit_edge

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then79:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @hfs_btree_inc_height(ptr noundef %2)
  %45 = ptrtoint ptr %root81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %root81, align 4
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %parent, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.then76.if.end83_crit_edge
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %parent, align 4
  %call85 = call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef %49) #5
  %50 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call85, ptr %bnode, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %new_node.0, i32 0, i32 2
  %51 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %this, align 4
  %53 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %cnid, align 4
  %54 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %search_key, align 4
  call void @hfs_bnode_read_key(ptr noundef nonnull %new_node.0, ptr noundef %55, i32 noundef 14) #5
  %56 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bnode, align 4
  %call89 = call i32 @__hfs_brec_find(ptr noundef %57, ptr noundef %fd) #5
  call void @hfs_bnode_put(ptr noundef nonnull %new_node.0) #5
  %58 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %attributes, align 4
  %and = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90.not = icmp eq i32 %and, 0
  br i1 %tobool90.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %search_key, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv93 = zext i8 %63 to i32
  br label %again.outer.backedge

if.else:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_key_len, align 4
  %conv95 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %search_key, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv95, ptr %67, align 1
  %69 = load i32, ptr %max_key_len, align 4
  br label %again.outer.backedge

again.outer.backedge:                             ; preds = %if.else, %if.then91
  %key_len.0.ph.in.be = phi i32 [ %69, %if.else ], [ %conv93, %if.then91 ]
  br label %again.outer

cleanup:                                          ; preds = %if.end74.cleanup_crit_edge, %if.then29, %if.then7
  %retval.0 = phi i32 [ %25, %if.then29 ], [ %9, %if.then7 ], [ 0, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfs_btree_inc_height(ptr noundef %tree) unnamed_addr #0 align 64 {
entry:
  %node_desc = alloca %struct.hfs_bnode_desc, align 4
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %node_desc) #5
  %0 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #5
  %5 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cnid, align 4, !annotation !25
  %root = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 4
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call ptr @hfs_bnode_find(ptr noundef %tree, i32 noundef %7) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %node.0 = phi ptr [ %call, %if.then.if.end5_crit_edge ], [ null, %entry.if.end5_crit_edge ]
  %call6 = tail call ptr @hfs_bmap_alloc(ptr noundef %tree) #5
  %cmp.i1 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef %node.0) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 2
  %8 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %this, align 4
  %10 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %root, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 14
  %11 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %leaf_tail = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 7
  %15 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %leaf_tail, align 4
  %leaf_head = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 6
  %16 = ptrtoint ptr %leaf_head to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %leaf_head, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %.sink2 = phi i8 [ -1, %if.then13 ], [ 0, %if.end10.if.end17_crit_edge ]
  %.sink = phi i16 [ 0, %if.then13 ], [ 1, %if.end10.if.end17_crit_edge ]
  %17 = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink2, ptr %17, align 2
  %19 = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink, ptr %19, align 4
  %parent = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 4
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %parent, align 4
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 3
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %next, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 1
  %23 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %prev, align 4
  %24 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %depth, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %depth, align 4
  %conv = trunc i32 %inc to i8
  %height = getelementptr inbounds %struct.hfs_bnode, ptr %call6, i32 0, i32 7
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %height, align 1
  %27 = load i32, ptr %next, align 4
  %28 = ptrtoint ptr %node_desc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %node_desc, align 4
  %29 = load i32, ptr %prev, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %0, align 4
  %31 = load i8, ptr %17, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %1, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %2, align 1
  %34 = load i16, ptr %19, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %3, align 2
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %4, align 4
  call void @hfs_bnode_write(ptr noundef %call6, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %37 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node_size, align 4
  %sub = add i32 %38, -2
  call void @hfs_bnode_write_u16(ptr noundef %call6, i32 noundef %sub, i16 noundef zeroext 14) #5
  %tobool29.not = icmp eq ptr %node.0, null
  br i1 %tobool29.not, label %if.end17.if.end60_crit_edge, label %if.then30

if.end17.if.end60_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then30:                                        ; preds = %if.end17
  %39 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %root, align 4
  %parent32 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 4
  %41 = ptrtoint ptr %parent32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %parent32, align 4
  %type33 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 6
  %42 = ptrtoint ptr %type33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp = icmp eq i8 %43, -1
  br i1 %cmp, label %if.then30.if.then37_crit_edge, label %lor.lhs.false

if.then30.if.then37_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.then30
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 10
  %44 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %attributes, align 4
  %and = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else40, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.then30.if.then37_crit_edge
  %call38 = call zeroext i8 @hfs_bnode_read_u8(ptr noundef nonnull %node.0, i32 noundef 14) #5
  %conv39 = zext i8 %call38 to i32
  br label %if.end42

if.else40:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 13
  %46 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_key_len, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then37
  %key_size.0.in = phi i32 [ %conv39, %if.then37 ], [ %47, %if.else40 ]
  %key_size.0 = add i32 %key_size.0.in, 1
  call void @hfs_bnode_copy(ptr noundef %call6, i32 noundef 14, ptr noundef nonnull %node.0, i32 noundef 14, i32 noundef %key_size.0) #5
  %attributes43 = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 10
  %48 = ptrtoint ptr %attributes43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %attributes43, align 4
  %and44 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %max_key_len47 = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 13
  %50 = ptrtoint ptr %max_key_len47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_key_len47, align 4
  %add48 = add i32 %51, 1
  %conv50 = trunc i32 %51 to i8
  call void @hfs_bnode_write_u8(ptr noundef %call6, i32 noundef 14, i8 noundef zeroext %conv50) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end42.if.end51_crit_edge
  %key_size.1 = phi i32 [ %key_size.0, %if.end42.if.end51_crit_edge ], [ %add48, %if.then46 ]
  %this54 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 2
  %52 = ptrtoint ptr %this54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %this54, align 4
  %54 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cnid, align 4
  %55 = add i32 %key_size.1, 15
  %add55 = and i32 %55, -2
  call void @hfs_bnode_write(ptr noundef %call6, ptr noundef nonnull %cnid, i32 noundef %add55, i32 noundef 4) #5
  %sub56 = add i32 %38, -4
  %56 = trunc i32 %add55 to i16
  %conv59 = add i16 %56, 4
  call void @hfs_bnode_write_u16(ptr noundef %call6, i32 noundef %sub56, i16 noundef zeroext %conv59) #5
  call void @hfs_bnode_put(ptr noundef nonnull %node.0) #5
  br label %if.end60

if.end60:                                         ; preds = %if.end51, %if.end17.if.end60_crit_edge
  call void @hfs_bnode_put(ptr noundef %call6) #5
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %57 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %58, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then8, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %node_desc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bnode_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hfs_bnode_split(ptr nocapture noundef %fd) unnamed_addr #0 align 64 {
entry:
  %node_desc = alloca %struct.hfs_bnode_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %node_desc) #5
  %0 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %node_desc, i32 0, i32 5
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %5 = call ptr @memset(ptr %node_desc, i32 255, i32 14)
  %6 = ptrtoint ptr %tree1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree1, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %8 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bnode, align 4
  %call = tail call ptr @hfs_bmap_alloc(ptr noundef %7) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @hfs_bnode_get(ptr noundef %9) #5
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next, align 4
  %next3 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %next3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %next3, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %prev, align 4
  %parent = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent, align 4
  %parent4 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %parent4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %parent4, align 4
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type, align 2
  %type5 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %type5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %type5, align 2
  %height = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 7
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %height, align 1
  %height6 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %height6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %height6, align 1
  %25 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.end11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end11:                                         ; preds = %if.end
  %call10 = tail call ptr @hfs_bnode_find(ptr noundef %7, i32 noundef %25) #5
  %cmp.i213 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef %9) #5
  tail call void @hfs_bnode_put(ptr noundef %call) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end11.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %next_node.0216 = phi ptr [ %call10, %if.end11.if.end14_crit_edge ], [ null, %if.end.if.end14_crit_edge ]
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %7, i32 0, i32 11
  %26 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node_size, align 4
  %div212 = lshr i32 %27, 1
  %num_recs15 = getelementptr inbounds %struct.hfs_bnode, ptr %9, i32 0, i32 5
  %28 = ptrtoint ptr %num_recs15 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_recs15, align 4
  %conv = zext i16 %29 to i32
  %mul.neg = mul nsw i32 %conv, -2
  %sub = add nsw i32 %div212, -14
  %sub16 = add nsw i32 %sub, %mul.neg
  %sub18 = add i32 %27, -4
  br label %for.cond

for.cond:                                         ; preds = %if.end23.for.cond_crit_edge, %if.end14
  %num_recs.0 = phi i32 [ 1, %if.end14 ], [ %inc, %if.end23.for.cond_crit_edge ]
  %old_rec_off.0 = phi i32 [ %sub18, %if.end14 ], [ %sub24, %if.end23.for.cond_crit_edge ]
  %call19 = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %9, i32 noundef %old_rec_off.0) #5
  %conv20 = zext i16 %call19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16, i32 %conv20)
  %cmp = icmp slt i32 %sub16, %conv20
  br i1 %cmp, label %for.end, label %if.end23

if.end23:                                         ; preds = %for.cond
  %sub24 = add i32 %old_rec_off.0, -2
  %inc = add nuw nsw i32 %num_recs.0, 1
  %30 = ptrtoint ptr %num_recs15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_recs15, align 4
  %conv26 = zext i16 %31 to i32
  %cmp27 = icmp ult i32 %inc, %conv26
  br i1 %cmp27, label %if.end23.for.cond_crit_edge, label %if.end30

if.end23.for.cond_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end30:                                         ; preds = %if.end23
  tail call void @hfs_bnode_put(ptr noundef %9) #5
  tail call void @hfs_bnode_put(ptr noundef %call) #5
  %tobool31.not = icmp eq ptr %next_node.0216, null
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef nonnull %next_node.0216) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %32 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %record, align 4
  %add = add i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num_recs.0)
  %cmp35 = icmp slt i32 %add, %num_recs.0
  br i1 %cmp35, label %if.then37, label %if.else41

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add38 = add i32 %old_rec_off.0, 2
  %dec = add nsw i32 %num_recs.0, -1
  %call39 = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %9, i32 noundef %add38) #5
  %conv40 = zext i16 %call39 to i32
  br label %if.end49

if.else41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef %9) #5
  tail call void @hfs_bnode_get(ptr noundef %call) #5
  %34 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %bnode, align 4
  %35 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %record, align 4
  %sub44 = sub i32 %36, %num_recs.0
  store i32 %sub44, ptr %record, align 4
  %sub45 = add nsw i32 %conv20, -14
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %37 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %keyoffset, align 4
  %sub46 = sub i32 %38, %sub45
  store i32 %sub46, ptr %keyoffset, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %39 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %entryoffset, align 4
  %sub48 = sub i32 %40, %sub45
  store i32 %sub48, ptr %entryoffset, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then37
  %num_recs.1 = phi i32 [ %dec, %if.then37 ], [ %num_recs.0, %if.else41 ]
  %old_rec_off.1 = phi i32 [ %add38, %if.then37 ], [ %old_rec_off.0, %if.else41 ]
  %data_start.0 = phi i32 [ %conv40, %if.then37 ], [ %conv20, %if.else41 ]
  %41 = ptrtoint ptr %num_recs15 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_recs15, align 4
  %43 = trunc i32 %num_recs.1 to i16
  %conv53 = sub i16 %42, %43
  %num_recs54 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 5
  %44 = ptrtoint ptr %num_recs54 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv53, ptr %num_recs54, align 4
  store i16 %43, ptr %num_recs15, align 4
  %45 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %node_size, align 4
  %47 = load i16, ptr %num_recs54, align 4
  %new_rec_off.0221 = add i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool62.not222 = icmp eq i16 %47, 0
  br i1 %tobool62.not222, label %if.end49.while.end_crit_edge, label %while.body.lr.ph

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end49
  %conv61 = zext i16 %47 to i32
  %48 = trunc i32 %data_start.0 to i16
  %.neg217 = sub i16 14, %48
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %new_rec_off.0226 = phi i32 [ %new_rec_off.0221, %while.body.lr.ph ], [ %new_rec_off.0, %while.body.while.body_crit_edge ]
  %old_rec_off.2225 = phi i32 [ %old_rec_off.1, %while.body.lr.ph ], [ %sub64, %while.body.while.body_crit_edge ]
  %new_off.0224 = phi i16 [ 14, %while.body.lr.ph ], [ %phi.cast, %while.body.while.body_crit_edge ]
  %num_recs.2223 = phi i32 [ %conv61, %while.body.lr.ph ], [ %dec69, %while.body.while.body_crit_edge ]
  tail call void @hfs_bnode_write_u16(ptr noundef %call, i32 noundef %new_rec_off.0226, i16 noundef zeroext %new_off.0224) #5
  %sub64 = add i32 %old_rec_off.2225, -2
  %call66 = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %9, i32 noundef %sub64) #5
  %dec69 = add nsw i32 %num_recs.2223, -1
  %phi.cast = add i16 %.neg217, %call66
  %new_rec_off.0 = add i32 %new_rec_off.0226, -2
  %tobool62.not = icmp eq i32 %dec69, 0
  br i1 %tobool62.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv67.le = zext i16 %call66 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end49.while.end_crit_edge
  %new_off.0.lcssa = phi i16 [ %phi.cast, %while.cond.while.end_crit_edge ], [ 14, %if.end49.while.end_crit_edge ]
  %data_end.0.lcssa = phi i32 [ %conv67.le, %while.cond.while.end_crit_edge ], [ %data_start.0, %if.end49.while.end_crit_edge ]
  %new_rec_off.0.lcssa = phi i32 [ %new_rec_off.0, %while.cond.while.end_crit_edge ], [ %new_rec_off.0221, %if.end49.while.end_crit_edge ]
  tail call void @hfs_bnode_write_u16(ptr noundef %call, i32 noundef %new_rec_off.0.lcssa, i16 noundef zeroext %new_off.0.lcssa) #5
  %sub71 = sub nsw i32 %data_end.0.lcssa, %data_start.0
  tail call void @hfs_bnode_copy(ptr noundef %call, i32 noundef 14, ptr noundef %9, i32 noundef %data_start.0, i32 noundef %sub71) #5
  %49 = ptrtoint ptr %next3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next3, align 4
  %51 = ptrtoint ptr %node_desc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %node_desc, align 4
  %52 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prev, align 4
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %0, align 4
  %55 = ptrtoint ptr %type5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type5, align 2
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %1, align 4
  %58 = ptrtoint ptr %height6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %height6, align 1
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %2, align 1
  %61 = ptrtoint ptr %num_recs54 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_recs54, align 4
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %3, align 2
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %4, align 4
  call void @hfs_bnode_write(ptr noundef %call, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  %this82 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 2
  %65 = ptrtoint ptr %this82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %this82, align 4
  %67 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %next, align 4
  call void @hfs_bnode_read(ptr noundef %9, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  %68 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %next, align 4
  %70 = ptrtoint ptr %node_desc to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %node_desc, align 4
  %71 = ptrtoint ptr %num_recs15 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %num_recs15, align 4
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %3, align 2
  call void @hfs_bnode_write(ptr noundef %9, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  %tobool88.not = icmp eq ptr %next_node.0216, null
  br i1 %tobool88.not, label %if.else94, label %if.then89

if.then89:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %this82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %this82, align 4
  %prev91 = getelementptr inbounds %struct.hfs_bnode, ptr %next_node.0216, i32 0, i32 1
  %76 = ptrtoint ptr %prev91 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %prev91, align 4
  call void @hfs_bnode_read(ptr noundef nonnull %next_node.0216, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  %77 = ptrtoint ptr %prev91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %prev91, align 4
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %0, align 4
  call void @hfs_bnode_write(ptr noundef nonnull %next_node.0216, ptr noundef nonnull %node_desc, i32 noundef 0, i32 noundef 14) #5
  call void @hfs_bnode_put(ptr noundef nonnull %next_node.0216) #5
  br label %if.end102

if.else94:                                        ; preds = %while.end
  %80 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %this, align 4
  %leaf_tail = getelementptr inbounds %struct.hfs_btree, ptr %7, i32 0, i32 7
  %82 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %leaf_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp96 = icmp eq i32 %81, %83
  br i1 %cmp96, label %if.then98, label %if.else94.if.end102_crit_edge

if.else94.if.end102_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then98:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %this82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %this82, align 4
  %86 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %leaf_tail, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %7, i32 0, i32 1
  %87 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %88, i32 noundef 7) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.else94.if.end102_crit_edge, %if.then89
  call void @hfs_bnode_dump(ptr noundef %9) #5
  call void @hfs_bnode_dump(ptr noundef %call) #5
  call void @hfs_bnode_put(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then32, %if.end30.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.then13 ], [ %call, %if.end102 ], [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.then32 ], [ inttoptr (i32 -28 to ptr), %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %node_desc) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write_u16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_move(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfs_brec_update_parent(ptr noundef %fd) unnamed_addr #0 align 64 {
entry:
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %0 = ptrtoint ptr %tree1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree1, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %2 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnode, align 4
  %parent2 = getelementptr inbounds %struct.hfs_bnode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup113_crit_edge, label %again.preheader

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup113

again.preheader:                                  ; preds = %entry
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 13
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 11
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %root = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 4
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  br label %again

again:                                            ; preds = %land.lhs.true.again_crit_edge, %again.preheader
  %node.0 = phi ptr [ %parent.1, %land.lhs.true.again_crit_edge ], [ %3, %again.preheader ]
  %parent3 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 4
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent3, align 4
  %call = call ptr @hfs_bnode_find(ptr noundef %1, i32 noundef %7) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %again.cleanup113_crit_edge, label %if.end7

again.cleanup113_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup113

if.end7:                                          ; preds = %again
  %call8 = call i32 @__hfs_brec_find(ptr noundef %call, ptr noundef %fd) #5
  %8 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.end7.cleanup113_crit_edge, label %if.end10

if.end7.cleanup113_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup113

if.end10:                                         ; preds = %if.end7
  call void @hfs_bnode_dump(ptr noundef %call) #5
  %10 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %record, align 4
  %12 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attributes, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call zeroext i8 @hfs_bnode_read_u8(ptr noundef %node.0, i32 noundef 14) #5
  %14 = or i8 %call14, 1
  %or = zext i8 %14 to i32
  %add = add nuw nsw i32 %or, 1
  br label %do.end

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_key_len, align 4
  %add15 = add i32 %16, 1
  %17 = ptrtoint ptr %keylength to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add15, ptr %keylength, align 4
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then13
  %newkeylen.0 = phi i32 [ %add, %if.then13 ], [ %add15, %if.else ]
  %18 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node_size, align 4
  %add17.neg = mul i32 %11, -2
  %mul.neg = add i32 %add17.neg, -4
  %sub = add i32 %mul.neg, %19
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_recs, align 4
  %conv19 = zext i16 %21 to i32
  %add20.neg = mul nsw i32 %conv19, -2
  %mul21.neg = add i32 %19, -2
  %sub22 = add i32 %mul21.neg, %add20.neg
  %22 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keylength, align 4
  %sub24 = sub i32 %newkeylen.0, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %newkeylen.0, i32 %23)
  %tobool25.not = icmp eq i32 %newkeylen.0, %23
  br i1 %tobool25.not, label %do.end.skip_crit_edge, label %if.end27

do.end.skip_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip

if.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp28 = icmp sgt i32 %sub24, 0
  br i1 %cmp28, label %if.then30, label %if.end27.if.end60_crit_edge

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then30:                                        ; preds = %if.end27
  %call31 = call zeroext i16 @hfs_bnode_read_u16(ptr noundef %call, i32 noundef %sub22) #5
  %conv32 = zext i16 %call31 to i32
  %sub33 = sub i32 %sub22, %conv32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %sub24)
  %cmp34 = icmp slt i32 %sub33, %sub24
  br i1 %cmp34, label %do.end39, label %if.then30.if.end60_crit_edge

if.then30.if.end60_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end39:                                         ; preds = %if.then30
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  %24 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %bnode, align 4
  %call42 = call fastcc ptr @hfs_bnode_split(ptr noundef %fd)
  %cmp.i1 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %do.end39.cleanup113_crit_edge, label %if.end46

do.end39.cleanup113_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup113

if.end46:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bnode, align 4
  %27 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %record, align 4
  %29 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %node_size, align 4
  %add50.neg = mul i32 %28, -2
  %mul51.neg = add i32 %add50.neg, -4
  %sub52 = add i32 %mul51.neg, %30
  %num_recs54 = getelementptr inbounds %struct.hfs_bnode, ptr %26, i32 0, i32 5
  %31 = ptrtoint ptr %num_recs54 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_recs54, align 4
  %conv55 = zext i16 %32 to i32
  %add56.neg = mul nsw i32 %conv55, -2
  %mul57.neg = add i32 %30, -2
  %sub58 = add i32 %mul57.neg, %add56.neg
  br label %if.end60

if.end60:                                         ; preds = %if.end46, %if.then30.if.end60_crit_edge, %if.end27.if.end60_crit_edge
  %new_node.1 = phi ptr [ %call42, %if.end46 ], [ null, %if.then30.if.end60_crit_edge ], [ null, %if.end27.if.end60_crit_edge ]
  %parent.0 = phi ptr [ %26, %if.end46 ], [ %call, %if.then30.if.end60_crit_edge ], [ %call, %if.end27.if.end60_crit_edge ]
  %rec.0 = phi i32 [ %28, %if.end46 ], [ %11, %if.then30.if.end60_crit_edge ], [ %11, %if.end27.if.end60_crit_edge ]
  %rec_off.0 = phi i32 [ %sub52, %if.end46 ], [ %sub, %if.then30.if.end60_crit_edge ], [ %sub, %if.end27.if.end60_crit_edge ]
  %end_rec_off.0 = phi i32 [ %sub58, %if.end46 ], [ %sub22, %if.then30.if.end60_crit_edge ], [ %sub22, %if.end27.if.end60_crit_edge ]
  %call61 = call zeroext i16 @hfs_bnode_read_u16(ptr noundef %parent.0, i32 noundef %rec_off.0) #5
  %conv62 = zext i16 %call61 to i32
  %33 = trunc i32 %sub24 to i16
  %conv64 = add i16 %call61, %33
  call void @hfs_bnode_write_u16(ptr noundef %parent.0, i32 noundef %rec_off.0, i16 noundef zeroext %conv64) #5
  %sub65 = add nsw i32 %conv62, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %rec_off.0, i32 %end_rec_off.0)
  %cmp666 = icmp sgt i32 %rec_off.0, %end_rec_off.0
  br i1 %cmp666, label %if.end60.while.body_crit_edge, label %if.end60.while.end_crit_edge

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end60.while.body_crit_edge
  %rec_off.17 = phi i32 [ %sub68, %while.body.while.body_crit_edge ], [ %rec_off.0, %if.end60.while.body_crit_edge ]
  %sub68 = add i32 %rec_off.17, -2
  %call69 = call zeroext i16 @hfs_bnode_read_u16(ptr noundef %parent.0, i32 noundef %sub68) #5
  %conv72 = add i16 %call69, %33
  call void @hfs_bnode_write_u16(ptr noundef %parent.0, i32 noundef %sub68, i16 noundef zeroext %conv72) #5
  %cmp66 = icmp sgt i32 %sub68, %end_rec_off.0
  br i1 %cmp66, label %while.body.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv70.le = zext i16 %call69 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end60.while.end_crit_edge
  %end_off.0.lcssa = phi i32 [ %conv70.le, %while.cond.while.end_crit_edge ], [ %conv62, %if.end60.while.end_crit_edge ]
  %add73 = add i32 %sub65, %sub24
  %sub74 = sub nsw i32 %end_off.0.lcssa, %sub65
  call void @hfs_bnode_move(ptr noundef %parent.0, i32 noundef %add73, i32 noundef %sub65, i32 noundef %sub74) #5
  br label %skip

skip:                                             ; preds = %while.end, %do.end.skip_crit_edge
  %new_node.2 = phi ptr [ %new_node.1, %while.end ], [ null, %do.end.skip_crit_edge ]
  %parent.1 = phi ptr [ %parent.0, %while.end ], [ %call, %do.end.skip_crit_edge ]
  %rec.1 = phi i32 [ %rec.0, %while.end ], [ %11, %do.end.skip_crit_edge ]
  %34 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keyoffset, align 4
  call void @hfs_bnode_copy(ptr noundef %parent.1, i32 noundef %35, ptr noundef %node.0, i32 noundef 14, i32 noundef %newkeylen.0) #5
  %36 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attributes, align 4
  %and76 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %skip.if.end82_crit_edge

skip.if.end82_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then78:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %keyoffset, align 4
  %40 = trunc i32 %newkeylen.0 to i8
  %conv81 = add i8 %40, -1
  call void @hfs_bnode_write_u8(ptr noundef %parent.1, i32 noundef %39, i8 noundef zeroext %conv81) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %skip.if.end82_crit_edge
  call void @hfs_bnode_dump(ptr noundef %parent.1) #5
  call void @hfs_bnode_put(ptr noundef %node.0) #5
  %tobool83.not = icmp eq ptr %new_node.2, null
  br i1 %tobool83.not, label %if.end82.if.end106_crit_edge, label %if.then84

if.end82.if.end106_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then84:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #5
  %41 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %cnid, align 4, !annotation !25
  %parent85 = getelementptr inbounds %struct.hfs_bnode, ptr %new_node.2, i32 0, i32 4
  %42 = ptrtoint ptr %parent85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %parent85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool86.not = icmp eq i32 %43, 0
  br i1 %tobool86.not, label %if.then87, label %if.then84.if.end90_crit_edge

if.then84.if.end90_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then87:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @hfs_btree_inc_height(ptr noundef %1)
  %44 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %root, align 4
  %46 = ptrtoint ptr %parent85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %parent85, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then84.if.end90_crit_edge
  %47 = ptrtoint ptr %parent85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %parent85, align 4
  %call92 = call ptr @hfs_bnode_find(ptr noundef %1, i32 noundef %48) #5
  %49 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call92, ptr %bnode, align 4
  %50 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %search_key, align 4
  call void @hfs_bnode_read_key(ptr noundef nonnull %new_node.2, ptr noundef %51, i32 noundef 14) #5
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %new_node.2, i32 0, i32 2
  %52 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %this, align 4
  %54 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cnid, align 4
  %55 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bnode, align 4
  %call95 = call i32 @__hfs_brec_find(ptr noundef %56, ptr noundef %fd) #5
  %call96 = call i32 @hfs_brec_insert(ptr noundef %fd, ptr noundef nonnull %cnid, i32 noundef 4)
  %57 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bnode, align 4
  call void @hfs_bnode_put(ptr noundef %58) #5
  call void @hfs_bnode_put(ptr noundef nonnull %new_node.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec.1)
  %tobool98.not = icmp eq i32 %rec.1, 0
  br i1 %tobool98.not, label %if.then99, label %if.end90.cleanup.thread_crit_edge

if.end90.cleanup.thread_crit_edge:                ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then99:                                        ; preds = %if.end90
  %cmp100 = icmp eq ptr %new_node.2, %parent.1
  br i1 %cmp100, label %cleanup, label %if.end103

if.end103:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %search_key, align 4
  call void @hfs_bnode_read_key(ptr noundef %parent.1, ptr noundef %60, i32 noundef 14) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end103, %if.end90.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #5
  br label %if.end106

cleanup:                                          ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #5
  br label %out

if.end106:                                        ; preds = %cleanup.thread, %if.end82.if.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec.1)
  %tobool107.not = icmp eq i32 %rec.1, 0
  br i1 %tobool107.not, label %land.lhs.true, label %if.end106.out_crit_edge

if.end106.out_crit_edge:                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true:                                    ; preds = %if.end106
  %parent108 = getelementptr inbounds %struct.hfs_bnode, ptr %parent.1, i32 0, i32 4
  %61 = ptrtoint ptr %parent108 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %parent108, align 4
  %tobool109.not = icmp eq i32 %62, 0
  br i1 %tobool109.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.again_crit_edge

land.lhs.true.again_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %again

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.end106.out_crit_edge, %cleanup
  %parent.19 = phi ptr [ %new_node.2, %cleanup ], [ %parent.1, %land.lhs.true.out_crit_edge ], [ %parent.1, %if.end106.out_crit_edge ]
  %63 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %parent.19, ptr %bnode, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %out, %do.end39.cleanup113_crit_edge, %if.end7.cleanup113_crit_edge, %again.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hfs_brec_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_brec_remove(ptr noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tree1 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %0 = ptrtoint ptr %tree1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree1, align 4
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %2 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnode, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 11
  %record = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 4
  %leaf_count = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 5
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 1
  br label %again

again:                                            ; preds = %if.end19, %entry
  %node.0 = phi ptr [ %3, %entry ], [ %call, %if.end19 ]
  %4 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_size, align 4
  %6 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %record, align 4
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 5
  %8 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_recs, align 4
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp = icmp eq i8 %11, -1
  br i1 %cmp, label %if.then, label %again.if.end_crit_edge

again.if.end_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %leaf_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leaf_count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %leaf_count, align 4
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode, align 4
  tail call void @__mark_inode_dirty(ptr noundef %15, i32 noundef 7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %again.if.end_crit_edge
  tail call void @hfs_bnode_dump(ptr noundef %node.0) #5
  %16 = ptrtoint ptr %num_recs to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_recs, align 4
  %dec9 = add i16 %17, -1
  store i16 %dec9, ptr %num_recs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec9)
  %tobool.not = icmp eq i16 %dec9, 0
  br i1 %tobool.not, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end
  tail call void @hfs_bnode_unlink(ptr noundef %node.0) #5
  %parent11 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 4
  %18 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parent11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %call = tail call ptr @hfs_bnode_find(ptr noundef %1, i32 noundef %19) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hfs_bnode_put(ptr noundef %node.0) #5
  %21 = ptrtoint ptr %bnode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %bnode, align 4
  %call21 = tail call i32 @__hfs_brec_find(ptr noundef %call, ptr noundef %fd) #5
  br label %again

if.end22:                                         ; preds = %if.end
  %add.neg.le = mul i32 %7, -2
  %mul.neg.le = add i32 %add.neg.le, -4
  %conv.le = zext i16 %9 to i32
  %add3.neg.le = mul nsw i32 %conv.le, -2
  %mul4.neg.le = add nsw i32 %add3.neg.le, -2
  %sub5.le = add i32 %mul4.neg.le, %5
  tail call void @hfs_bnode_write_u16(ptr noundef %node.0, i32 noundef 10, i16 noundef zeroext %dec9) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.neg.le, i32 %mul4.neg.le)
  %cmp24 = icmp eq i32 %mul.neg.le, %mul4.neg.le
  br i1 %cmp24, label %if.end22.skip_crit_edge, label %if.end27

if.end22.skip_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip

if.end27:                                         ; preds = %if.end22
  %sub.le = add i32 %mul.neg.le, %5
  %keylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 6
  %22 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keylength, align 4
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %24 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entrylength, align 4
  %add28 = add i32 %25, %23
  %26 = trunc i32 %add28 to i16
  br label %do.body29

do.body29:                                        ; preds = %do.body29.do.body29_crit_edge, %if.end27
  %rec_off.0 = phi i32 [ %sub.le, %if.end27 ], [ %sub35, %do.body29.do.body29_crit_edge ]
  %call30 = tail call zeroext i16 @hfs_bnode_read_u16(ptr noundef %node.0, i32 noundef %rec_off.0) #5
  %add32 = add i32 %rec_off.0, 2
  %conv34 = sub i16 %call30, %26
  tail call void @hfs_bnode_write_u16(ptr noundef %node.0, i32 noundef %add32, i16 noundef zeroext %conv34) #5
  %sub35 = add i32 %rec_off.0, -2
  %cmp37.not = icmp slt i32 %sub35, %sub5.le
  br i1 %cmp37.not, label %do.end39, label %do.body29.do.body29_crit_edge

do.body29.do.body29_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

do.end39:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %conv31 = zext i16 %call30 to i32
  %keyoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 5
  %27 = ptrtoint ptr %keyoffset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keyoffset, align 4
  %add41 = add i32 %28, %add28
  %sub44 = sub i32 %conv31, %add41
  tail call void @hfs_bnode_move(ptr noundef %node.0, i32 noundef %28, i32 noundef %add41, i32 noundef %sub44) #5
  br label %skip

skip:                                             ; preds = %do.end39, %if.end22.skip_crit_edge
  tail call void @hfs_bnode_dump(ptr noundef %node.0) #5
  %29 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %record, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not = icmp eq i32 %30, 0
  br i1 %tobool46.not, label %if.then47, label %skip.cleanup_crit_edge

skip.cleanup_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hfs_brec_update_parent(ptr noundef %fd)
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %skip.cleanup_crit_edge, %if.then17, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then17 ], [ 0, %if.then47 ], [ 0, %skip.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bmap_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write_u8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/brec.c", i32 51, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfs_brec_keylen._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfs_brec_keylen._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @hfs_brec_keylen._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../fs/hfs/brec.c", i32 57, i32 5}
!8 = !{ptr @hfs_brec_keylen._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/hfs/brec.c", i32 101, i32 10}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/hfs/brec.c", i32 393, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hfs_brec_update_parent._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfs_brec_update_parent._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
