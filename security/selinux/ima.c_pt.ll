; ModuleID = '/llk/IR_all_yes/security/selinux/ima.c_pt.bc'
source_filename = "../security/selinux/ima.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/selinux/ima.c\00", [41 x i8] zeroinitializer }, align 32
@selinux_ima_measure_state_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013SELinux: %s: failed to read state.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"selinux_ima_measure_state_locked\00", [63 x i8] zeroinitializer }, align 32
@selinux_ima_measure_state_locked._entry_ptr = internal global ptr @selinux_ima_measure_state_locked._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"selinux\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"selinux-state\00", [18 x i8] zeroinitializer }, align 32
@selinux_ima_measure_state_locked._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013SELinux: %s: failed to read policy %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@selinux_ima_measure_state_locked._entry_ptr.7 = internal global ptr @selinux_ima_measure_state_locked._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"selinux-policy-hash\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"=1;\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"=0;\00", [28 x i8] zeroinitializer }, align 32
@selinux_policycap_names = external dso_local local_unnamed_addr global [7 x ptr], align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"initialized\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enforcing\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"checkreqprot\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 80, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 84, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 88, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 88, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 102, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 106, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 25, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 25, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 39, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [26 x i8] c"../security/selinux/ima.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 51, i32 20 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @selinux_ima_measure_state_locked._entry, ptr @selinux_ima_measure_state_locked._entry.5, ptr @selinux_ima_measure_state_locked._entry_ptr, ptr @selinux_ima_measure_state_locked._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selinux_ima_measure_state_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selinux_ima_measure_state_locked._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_ima_measure_state_locked(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %policy = alloca ptr, align 4
  %policy_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %policy) #7
  %0 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %policy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %policy_len) #7
  %1 = ptrtoint ptr %policy_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %policy_len, align 4, !annotation !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !37

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_policycap_names to i32))
  %3 = load ptr, ptr @selinux_policycap_names, align 4
  %call1.i = tail call i32 @strlen(ptr noundef %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 1), align 4
  %call1.1.i = tail call i32 @strlen(ptr noundef %4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 2), align 4
  %call1.2.i = tail call i32 @strlen(ptr noundef %5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 3) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 3), align 4
  %call1.3.i = tail call i32 @strlen(ptr noundef %6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 4) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 4), align 4
  %call1.4.i = tail call i32 @strlen(ptr noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 5) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 5), align 4
  %call1.5.i = tail call i32 @strlen(ptr noundef %8) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 6) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @selinux_policycap_names, i32 0, i32 6), align 4
  %call1.6.i = tail call i32 @strlen(ptr noundef %9) #10
  %add2.3.i = add i32 %call1.i, 63
  %add.4.i = add i32 %add2.3.i, %call1.1.i
  %add2.4.i = add i32 %add.4.i, %call1.2.i
  %add.5.i = add i32 %add2.4.i, %call1.3.i
  %add2.5.i = add i32 %add.5.i, %call1.4.i
  %add.6.i = add i32 %add2.5.i, %call1.5.i
  %add2.6.i = add i32 %add.6.i, %call1.6.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.6.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.end29, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call4.i = tail call i32 @strscpy(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end.i.if.end20.i_crit_edge, !prof !37

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.end.i.if.end20.i_crit_edge
  %initialized.i.i = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %initialized.i.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not.i = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %.str.9..str.10.i = select i1 %tobool.i.not.i, ptr @.str.10, ptr @.str.9
  %call28.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %.str.9..str.10.i, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.i, i32 %add2.6.i)
  %cmp30.not.i = icmp slt i32 %call28.i, %add2.6.i
  br i1 %cmp30.not.i, label %if.end20.i.if.end52.i_crit_edge, label %do.end46.i, !prof !40

if.end20.i.if.end52.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

do.end46.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %if.end20.i.if.end52.i_crit_edge
  %call60.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.12, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call60.i, i32 %add2.6.i)
  %cmp62.not.i = icmp slt i32 %call60.i, %add2.6.i
  br i1 %cmp62.not.i, label %if.end52.i.if.end84.i_crit_edge, label %do.end78.i, !prof !40

if.end52.i.if.end84.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i

do.end78.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #7
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.end78.i, %if.end52.i.if.end84.i_crit_edge
  %enforcing.i.i = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %enforcing.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %enforcing.i.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i339.not.i = icmp eq i8 %13, 0
  %.str.9..str.10337.i = select i1 %tobool.i339.not.i, ptr @.str.10, ptr @.str.9
  %call97.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %.str.9..str.10337.i, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call97.i, i32 %add2.6.i)
  %cmp99.not.i = icmp slt i32 %call97.i, %add2.6.i
  br i1 %cmp99.not.i, label %if.end84.i.if.end121.i_crit_edge, label %do.end115.i, !prof !40

if.end84.i.if.end121.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

do.end115.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #7
  br label %if.end121.i

if.end121.i:                                      ; preds = %do.end115.i, %if.end84.i.if.end121.i_crit_edge
  %call129.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.13, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call129.i, i32 %add2.6.i)
  %cmp131.not.i = icmp slt i32 %call129.i, %add2.6.i
  br i1 %cmp131.not.i, label %if.end121.i.if.end153.i_crit_edge, label %do.end147.i, !prof !40

if.end121.i.if.end153.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

do.end147.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #7
  br label %if.end153.i

if.end153.i:                                      ; preds = %do.end147.i, %if.end121.i.if.end153.i_crit_edge
  %checkreqprot.i.i = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %checkreqprot.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %checkreqprot.i.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i340.not.i = icmp eq i8 %15, 0
  %.str.9..str.10338.i = select i1 %tobool.i340.not.i, ptr @.str.10, ptr @.str.9
  %call166.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %.str.9..str.10338.i, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call166.i, i32 %add2.6.i)
  %cmp168.not.i = icmp slt i32 %call166.i, %add2.6.i
  br i1 %cmp168.not.i, label %if.end153.i.for.body200.i.preheader_crit_edge, label %do.end184.i, !prof !40

if.end153.i.for.body200.i.preheader_crit_edge:    ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body200.i.preheader

do.end184.i:                                      ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #7
  br label %for.body200.i.preheader

for.body200.i.preheader:                          ; preds = %do.end184.i, %if.end153.i.for.body200.i.preheader_crit_edge
  br label %for.body200.i

for.body200.i:                                    ; preds = %if.end264.i.for.body200.i_crit_edge, %for.body200.i.preheader
  %i.1346.i = phi i32 [ %inc273.i, %if.end264.i.for.body200.i_crit_edge ], [ 0, %for.body200.i.preheader ]
  %arrayidx201.i = getelementptr [7 x ptr], ptr @selinux_policycap_names, i32 0, i32 %i.1346.i
  %16 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx201.i, align 4
  %call202.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef %17, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call202.i, i32 %add2.6.i)
  %cmp204.not.i = icmp slt i32 %call202.i, %add2.6.i
  br i1 %cmp204.not.i, label %for.body200.i.if.end226.i_crit_edge, label %do.end220.i, !prof !40

for.body200.i.if.end226.i_crit_edge:              ; preds = %for.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226.i

do.end220.i:                                      ; preds = %for.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #7
  br label %if.end226.i

if.end226.i:                                      ; preds = %do.end220.i, %for.body200.i.if.end226.i_crit_edge
  %arrayidx234.i = getelementptr %struct.selinux_state, ptr %state, i32 0, i32 4, i32 %i.1346.i
  %18 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx234.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool235.not.i = icmp eq i8 %19, 0
  %.str.10..str.9.i = select i1 %tobool235.not.i, ptr @.str.10, ptr @.str.9
  %call240.i = tail call i32 @strlcat(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %.str.10..str.9.i, i32 noundef %add2.6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call240.i, i32 %add2.6.i)
  %cmp242.not.i = icmp slt i32 %call240.i, %add2.6.i
  br i1 %cmp242.not.i, label %if.end226.i.if.end264.i_crit_edge, label %do.end258.i, !prof !40

if.end226.i.if.end264.i_crit_edge:                ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end264.i

do.end258.i:                                      ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #7
  br label %if.end264.i

if.end264.i:                                      ; preds = %do.end258.i, %if.end226.i.if.end264.i_crit_edge
  %inc273.i = add nuw nsw i32 %i.1346.i, 1
  %exitcond.not.i = icmp eq i32 %inc273.i, 7
  br i1 %exitcond.not.i, label %if.end32, label %if.end264.i.for.body200.i_crit_edge

if.end264.i.for.body200.i_crit_edge:              ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body200.i

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end264.i
  %call33 = tail call i32 @strlen(ptr noundef nonnull %call9.i.i.i) #13
  %call34 = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %call9.i.i.i, i32 noundef %call33, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  %20 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %initialized.i.i, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.not = icmp eq i8 %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  br i1 %tobool.i.not, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %call38 = call i32 @security_read_state_kernel(ptr noundef %state, ptr noundef nonnull %policy, ptr noundef nonnull %policy_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef %call38) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %policy, align 4
  %24 = ptrtoint ptr %policy_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %policy_len, align 4
  %call47 = call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef %23, i32 noundef %25, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #7
  %26 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %policy, align 4
  call void @vfree(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end43, %if.end32.cleanup_crit_edge, %do.end29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %policy_len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %policy) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_measure_critical_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_read_state_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_ima_measure_state(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !37

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %policy_mutex24 = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %policy_mutex24, i32 noundef 0) #7
  tail call void @selinux_ima_measure_state_locked(ptr noundef %state)
  tail call void @mutex_unlock(ptr noundef %policy_mutex24) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ima.c", i32 80, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/selinux/ima.c", i32 84, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @selinux_ima_measure_state_locked._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @selinux_ima_measure_state_locked._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/selinux/ima.c", i32 88, i32 28}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/selinux/ima.c", i32 88, i32 39}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/selinux/ima.c", i32 102, i32 3}
!13 = !{ptr @selinux_ima_measure_state_locked._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @selinux_ima_measure_state_locked._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/ima.c", i32 106, i32 39}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/selinux/ima.c", i32 25, i32 19}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/selinux/ima.c", i32 25, i32 33}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/selinux/ima.c", i32 39, i32 20}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/selinux/ima.c", i32 45, i32 20}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/selinux/ima.c", i32 51, i32 20}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i8 0, i8 2}
!39 = !{i64 2153874550}
!40 = !{!"branch_weights", i32 2000, i32 1}
