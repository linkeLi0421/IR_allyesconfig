; ModuleID = '/llk/IR_all_yes/security/tomoyo/file.c_pt.bc'
source_filename = "../security/tomoyo/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_execve = type { %struct.tomoyo_request_info, %struct.tomoyo_obj_info, ptr, ptr, %struct.tomoyo_page_dump, ptr }
%struct.tomoyo_obj_info = type { i8, [4 x i8], %struct.path, %struct.path, [4 x %struct.tomoyo_mini_stat], ptr }
%struct.path = type { ptr, ptr }
%struct.tomoyo_mini_stat = type { %struct.kuid_t, %struct.kgid_t, i32, i16, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.tomoyo_page_dump = type { ptr, ptr }
%struct.tomoyo_path_acl = type { %struct.tomoyo_acl_info, i16, %struct.tomoyo_name_union }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_path_number_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_mkdev_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union }
%struct.tomoyo_path2_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_name_union }
%struct.tomoyo_mount_acl = type { %struct.tomoyo_acl_info, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_number_union }

@tomoyo_pnnn2mac = dso_local constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0B\0C", [30 x i8] zeroinitializer }, align 32
@tomoyo_pp2mac = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0D\0E\16", [29 x i8] zeroinitializer }, align 32
@tomoyo_pn2mac = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\05\07\08\12\0F\10\11", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\02\06\06\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_p2mac = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\01\01\01\03\04\06\09\0A\13\15", [21 x i8] zeroinitializer }, align 32
@tomoyo_path_keyword = external dso_local local_unnamed_addr constant [11 x ptr], align 4
@tomoyo_mac_keywords = external dso_local local_unnamed_addr constant [42 x ptr], align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"file %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"file %s %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"file %s %s 0%o %u %u\0A\00", [42 x i8] zeroinitializer }, align 32
@switch.table.tomoyo_path_number_perm = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\02\02\02\03\02", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"tomoyo_pnnn2mac\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 31, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"tomoyo_pp2mac\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 39, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"tomoyo_pn2mac\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 49, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 756, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"tomoyo_p2mac\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 14, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 168, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 235, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 189, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [26 x i8] c"../security/tomoyo/file.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 197, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [37 x i8] c"switch.table.tomoyo_path_number_perm\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @tomoyo_pnnn2mac, ptr @tomoyo_pp2mac, ptr @tomoyo_pn2mac, ptr @.str, ptr @tomoyo_p2mac, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.tomoyo_path_number_perm], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_pnnn2mac to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_pp2mac to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_pn2mac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_p2mac to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tomoyo_path_number_perm to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_put_name_union(ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tomoyo_name_union, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tomoyo_put_group.exit_crit_edge, label %if.then.i

entry.tomoyo_put_group.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %users.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !30
  br label %tomoyo_put_group.exit

tomoyo_put_group.exit:                            ; preds = %if.then.i, %entry.tomoyo_put_group.exit_crit_edge
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %tobool.not.i2 = icmp eq ptr %4, null
  br i1 %tobool.not.i2, label %tomoyo_put_group.exit.tomoyo_put_name.exit_crit_edge, label %if.then.i5

tomoyo_put_group.exit.tomoyo_put_name.exit_crit_edge: ; preds = %tomoyo_put_group.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name.exit

if.then.i5:                                       ; preds = %tomoyo_put_group.exit
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3 = getelementptr i8, ptr %4, i32 -4
  %call.i.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i3, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i3, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3, ptr %users.i3, i32 1, ptr elementtype(i32) %users.i3) #8, !srcloc !30
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i5, %tomoyo_put_group.exit.tomoyo_put_name.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_compare_name_union(ptr noundef %name, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tomoyo_name_union, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @tomoyo_path_matches_group(ptr noundef %name, ptr noundef nonnull %1) #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %call2 = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %name, ptr noundef %3) #8
  br i1 %call2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 4
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %5, %if.then3 ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_path_matches_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_put_number_union(ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tomoyo_put_group.exit_crit_edge, label %if.then.i

entry.tomoyo_put_group.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %users.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !30
  br label %tomoyo_put_group.exit

tomoyo_put_group.exit:                            ; preds = %if.then.i, %entry.tomoyo_put_group.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_compare_number_union(i32 noundef %value, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group = getelementptr inbounds %struct.tomoyo_number_union, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @tomoyo_number_matches_group(i32 noundef %value, i32 noundef %value, ptr noundef nonnull %1) #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %value)
  %cmp.not = icmp ugt i32 %3, %value
  br i1 %cmp.not, label %if.end.return_crit_edge, label %land.rhs

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr [2 x i32], ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %value)
  %cmp4 = icmp uge i32 %5, %value
  br label %return

return:                                           ; preds = %land.rhs, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %if.end.return_crit_edge ], [ %cmp4, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_number_matches_group(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_execute_permission(ptr noundef %r, ptr noundef %filename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %type, align 1
  %domain = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %1 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %domain, align 4
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 4
  %profile = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %5 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %profile, align 1
  %call = tail call i32 @tomoyo_get_mode(ptr noundef %4, i8 noundef zeroext %6, i8 noundef zeroext 0) #8
  %conv = trunc i32 %call to i8
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %mode, align 4
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %8 = ptrtoint ptr %param_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %param_type, align 4
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %filename, ptr %param, align 4
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %operation, align 4
  tail call void @tomoyo_check_acl(ptr noundef %r, ptr noundef nonnull @tomoyo_check_path_acl) #8
  %matched_acl = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 4
  %11 = ptrtoint ptr %matched_acl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %matched_acl, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %cond = getelementptr inbounds %struct.tomoyo_acl_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cond to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load ptr, ptr %cond, align 1
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %transit = getelementptr inbounds %struct.tomoyo_condition, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %transit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond8 = phi ptr [ %16, %cond.true ], [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %ee = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 1
  %17 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ee, align 4
  %transition = getelementptr inbounds %struct.tomoyo_execve, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %transition to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond8, ptr %transition, align 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not = icmp eq i8 %21, 0
  br i1 %cmp.not, label %cond.end.return_crit_edge, label %if.then

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %operation, align 4
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr [11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %param, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef %r, ptr noundef nonnull @.str.1, ptr noundef %25, ptr noundef %29) #8
  br label %return

return:                                           ; preds = %if.then, %cond.end.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_get_mode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_check_acl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_path_acl(ptr nocapture noundef %r, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path_acl, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %perm, align 2
  %conv = zext i16 %1 to i32
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operation, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %name = getelementptr inbounds %struct.tomoyo_path_acl, ptr %ptr, i32 0, i32 2
  %group.i = getelementptr inbounds %struct.tomoyo_path_acl, ptr %ptr, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @tomoyo_path_matches_group(ptr noundef %5, ptr noundef nonnull %7) #8
  br label %tomoyo_compare_name_union.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call2.i = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %5, ptr noundef %9) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i.tomoyo_compare_name_union.exit_crit_edge

if.end.i.tomoyo_compare_name_union.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_compare_name_union.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %tomoyo_compare_name_union.exit

tomoyo_compare_name_union.exit:                   ; preds = %if.then3.i, %if.end.i.tomoyo_compare_name_union.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %11, %if.then3.i ], [ null, %if.end.i.tomoyo_compare_name_union.exit_crit_edge ]
  %matched_path = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %matched_path to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %matched_path, align 4
  %cmp = icmp ne ptr %retval.0.i, null
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_compare_name_union.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %tomoyo_compare_name_union.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_path_number_perm(i8 noundef zeroext %type, ptr noundef %path, i32 noundef %number) local_unnamed_addr #0 align 64 {
entry:
  %buffer.i = alloca [64 x i8], align 1
  %r = alloca %struct.tomoyo_request_info, align 4
  %obj = alloca %struct.tomoyo_obj_info, align 4
  %buf = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #8
  %0 = call ptr @memset(ptr %r, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj) #8
  %1 = call ptr @memset(ptr %obj, i32 0, i32 124)
  %path1 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %4 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %path1, align 4
  %dentry = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry2, align 4
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %8 = getelementptr inbounds %struct.tomoyo_path_info, ptr %buf, i32 0, i32 3
  %idxprom = zext i8 %type to i32
  %arrayidx = getelementptr [8 x i8], ptr @tomoyo_pn2mac, i32 0, i32 %idxprom
  %9 = getelementptr inbounds i8, ptr %buf, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %9, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %call = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef null, i8 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry2, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path) #8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  %16 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %obj, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp9 = icmp eq i8 %type, 1
  br i1 %cmp9, label %if.then11, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %8, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i34 = icmp eq i8 %18, 0
  br i1 %tobool.not.i34, label %if.end.i, label %if.then11.if.end12_crit_edge

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %strlen.i = call i32 @strlen(ptr noundef %20) #11
  %endptr.i = getelementptr i8, ptr %20, i32 %strlen.i
  %21 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 12032, ptr %endptr.i, align 1
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end.i, %if.then11.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %22 = ptrtoint ptr %param_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %param_type, align 4
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %type, ptr %operation, align 4
  %24 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %param, align 4
  %number15 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %number15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %number, ptr %number15, align 4
  br label %do.body

do.body:                                          ; preds = %tomoyo_audit_path_number_log.exit.do.body_crit_edge, %if.end12
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_path_number_acl) #8
  %26 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %operation, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buffer.i) #8
  %28 = call ptr @memset(ptr %buffer.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %29 = icmp ult i8 %27, 6
  br i1 %29, label %switch.lookup, label %do.body.tomoyo_audit_path_number_log.exit_crit_edge

do.body.tomoyo_audit_path_number_log.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_audit_path_number_log.exit

switch.lookup:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = sext i8 %27 to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.tomoyo_path_number_perm, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %31)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %tomoyo_audit_path_number_log.exit

tomoyo_audit_path_number_log.exit:                ; preds = %switch.lookup, %do.body.tomoyo_audit_path_number_log.exit_crit_edge
  %radix.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 1, %do.body.tomoyo_audit_path_number_log.exit_crit_edge ]
  %conv.i = zext i8 %27 to i32
  %32 = ptrtoint ptr %number15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number15, align 4
  call void @tomoyo_print_ulong(ptr noundef nonnull %buffer.i, i32 noundef 64, i32 noundef %33, i8 noundef zeroext %radix.0.i) #8
  %arrayidx.i = getelementptr [8 x i8], ptr @tomoyo_pn2mac, i32 0, i32 %conv.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %idxprom3.i = zext i8 %35 to i32
  %arrayidx4.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom3.i
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx4.i, align 4
  %38 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %param, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i35 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.3, ptr noundef %37, ptr noundef %41, ptr noundef nonnull %buffer.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buffer.i) #8
  %cmp17 = icmp eq i32 %call.i35, 1
  br i1 %cmp17, label %tomoyo_audit_path_number_log.exit.do.body_crit_edge, label %do.end

tomoyo_audit_path_number_log.exit.do.body_crit_edge: ; preds = %tomoyo_audit_path_number_log.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %tomoyo_audit_path_number_log.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %43) #8
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call.i35, %do.end ], [ -12, %if.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %out.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

out.tomoyo_read_unlock.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %out
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %out.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %45)
  %cmp20.not = icmp eq i8 %45, 3
  %spec.select = select i1 %cmp20.not, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %tomoyo_read_unlock.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_init_request_info(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_path_number_acl(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perm, align 2
  %conv = zext i8 %1 to i32
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operation, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %group.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @tomoyo_number_matches_group(i32 noundef %5, i32 noundef %5, ptr noundef nonnull %7) #8
  br i1 %call.i, label %if.then.i.land.rhs_crit_edge, label %if.then.i.land.end_crit_edge

if.then.i.land.end_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.then.i.land.rhs_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end.i:                                         ; preds = %land.lhs.true
  %number3 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %number3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not.i = icmp ugt i32 %9, %5
  br i1 %cmp.not.i, label %if.end.i.land.end_crit_edge, label %tomoyo_compare_number_union.exit

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_compare_number_union.exit:                 ; preds = %if.end.i
  %arrayidx3.i = getelementptr %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp4.i.not = icmp ult i32 %11, %5
  br i1 %cmp4.i.not, label %tomoyo_compare_number_union.exit.land.end_crit_edge, label %tomoyo_compare_number_union.exit.land.rhs_crit_edge

tomoyo_compare_number_union.exit.land.rhs_crit_edge: ; preds = %tomoyo_compare_number_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

tomoyo_compare_number_union.exit.land.end_crit_edge: ; preds = %tomoyo_compare_number_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_compare_number_union.exit.land.rhs_crit_edge, %if.then.i.land.rhs_crit_edge
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %name = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 2
  %group.i12 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %ptr, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %group.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group.i12, align 4
  %tobool.not.i13 = icmp eq ptr %15, null
  br i1 %tobool.not.i13, label %if.end.i16, label %if.then.i15

if.then.i15:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call.i14 = tail call ptr @tomoyo_path_matches_group(ptr noundef %13, ptr noundef nonnull %15) #8
  br label %tomoyo_compare_name_union.exit

if.end.i16:                                       ; preds = %land.rhs
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %call2.i = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %13, ptr noundef %17) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i16.tomoyo_compare_name_union.exit_crit_edge

if.end.i16.tomoyo_compare_name_union.exit_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_compare_name_union.exit

if.then3.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  br label %tomoyo_compare_name_union.exit

tomoyo_compare_name_union.exit:                   ; preds = %if.then3.i, %if.end.i16.tomoyo_compare_name_union.exit_crit_edge, %if.then.i15
  %retval.0.i17 = phi ptr [ %call.i14, %if.then.i15 ], [ %19, %if.then3.i ], [ null, %if.end.i16.tomoyo_compare_name_union.exit_crit_edge ]
  %tobool7 = icmp ne ptr %retval.0.i17, null
  br label %land.end

land.end:                                         ; preds = %tomoyo_compare_name_union.exit, %tomoyo_compare_number_union.exit.land.end_crit_edge, %if.end.i.land.end_crit_edge, %if.then.i.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %tomoyo_compare_number_union.exit.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool7, %tomoyo_compare_name_union.exit ], [ false, %if.then.i.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_check_open_permission(ptr noundef %domain, ptr noundef %path, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.tomoyo_path_info, align 4
  %r = alloca %struct.tomoyo_request_info, align 4
  %obj = alloca %struct.tomoyo_obj_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 3
  %arrayidx = getelementptr [5 x i8], ptr @.str, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %2 = getelementptr inbounds i8, ptr %buf, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #8
  %4 = call ptr @memset(ptr %r, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj) #8
  %5 = call ptr @memset(ptr %obj, i32 0, i32 124)
  %path1 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %8 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %path1, align 4
  %dentry = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %9 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry2, align 4
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dentry, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf, align 4
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mode, align 4
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %conv = zext i8 %1 to i32
  %call3 = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef %domain, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then:                                          ; preds = %entry
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path) #8
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %if.then
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  %15 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj, ptr %r, align 4
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.land.lhs.true15_crit_edge, label %if.then11

if.end.land.lhs.true15_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

if.then11:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %type.i, align 1
  %domain.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %17 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain.i, align 4
  %ns.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns.i, align 4
  %profile.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %21 = ptrtoint ptr %profile.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %profile.i, align 1
  %call.i39 = call i32 @tomoyo_get_mode(ptr noundef %20, i8 noundef zeroext %22, i8 noundef zeroext 1) #8
  %conv.i = trunc i32 %call.i39 to i8
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %mode, align 4
  %conv3.i = and i32 %call.i39, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp.i, label %if.then11.land.lhs.true15_crit_edge, label %if.end.i

if.then11.land.lhs.true15_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

if.end.i:                                         ; preds = %if.then11
  %param_type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %24 = ptrtoint ptr %param_type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %param_type.i, align 4
  %param.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %25 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %param.i, align 4
  %operation7.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %26 = ptrtoint ptr %operation7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %operation7.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_path_acl) #8
  %27 = ptrtoint ptr %operation7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %operation7.i, align 4
  %idxprom.i.i = zext i8 %28 to i32
  %arrayidx.i.i = getelementptr [11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %param.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i.i40 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.1, ptr noundef %30, ptr noundef %34) #8
  %35 = zext i32 %call.i.i40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i40, label %do.body.i.out_crit_edge [
    i32 1, label %do.body.i.do.body.i_crit_edge
    i32 0, label %do.body.i.land.lhs.true15_crit_edge
  ]

do.body.i.land.lhs.true15_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true15:                                  ; preds = %do.body.i.land.lhs.true15_crit_edge, %if.then11.land.lhs.true15_crit_edge, %if.end.land.lhs.true15_crit_edge
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true15.out_crit_edge, label %if.then19

land.lhs.true15.out_crit_edge:                    ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then19:                                        ; preds = %land.lhs.true15
  %and20 = and i32 %flag, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %conv22 = select i1 %tobool21.not, i8 2, i8 3
  %idxprom.i = zext i8 %conv22 to i32
  %arrayidx.i = getelementptr [11 x i8], ptr @tomoyo_p2mac, i32 0, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %type.i41 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %38 = ptrtoint ptr %type.i41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %type.i41, align 1
  %domain.i42 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %39 = ptrtoint ptr %domain.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain.i42, align 4
  %ns.i43 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ns.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ns.i43, align 4
  %profile.i44 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %43 = ptrtoint ptr %profile.i44 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %profile.i44, align 1
  %call.i45 = call i32 @tomoyo_get_mode(ptr noundef %42, i8 noundef zeroext %44, i8 noundef zeroext %37) #8
  %conv.i46 = trunc i32 %call.i45 to i8
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i46, ptr %mode, align 4
  %conv3.i48 = and i32 %call.i45, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i48)
  %cmp.i49 = icmp eq i32 %conv3.i48, 0
  br i1 %cmp.i49, label %if.then19.out_crit_edge, label %if.end.i53

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i53:                                       ; preds = %if.then19
  %param_type.i50 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %46 = ptrtoint ptr %param_type.i50 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %param_type.i50, align 4
  %param.i51 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %47 = ptrtoint ptr %param.i51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf, ptr %param.i51, align 4
  %operation7.i52 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %48 = ptrtoint ptr %operation7.i52 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv22, ptr %operation7.i52, align 4
  br label %do.body.i58

do.body.i58:                                      ; preds = %do.body.i58.do.body.i58_crit_edge, %if.end.i53
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_path_acl) #8
  %49 = ptrtoint ptr %operation7.i52 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %operation7.i52, align 4
  %idxprom.i.i54 = zext i8 %50 to i32
  %arrayidx.i.i55 = getelementptr [11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 %idxprom.i.i54
  %51 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i55, align 4
  %53 = ptrtoint ptr %param.i51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %param.i51, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call.i.i56 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.1, ptr noundef %52, ptr noundef %56) #8
  %cmp9.i57 = icmp eq i32 %call.i.i56, 1
  br i1 %cmp9.i57, label %do.body.i58.do.body.i58_crit_edge, label %do.body.i58.out_crit_edge

do.body.i58.out_crit_edge:                        ; preds = %do.body.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body.i58.do.body.i58_crit_edge:                ; preds = %do.body.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i58

out:                                              ; preds = %do.body.i58.out_crit_edge, %if.then19.out_crit_edge, %land.lhs.true15.out_crit_edge, %do.body.i.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ 0, %land.lhs.true15.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ -12, %if.then.out_crit_edge ], [ 0, %if.then19.out_crit_edge ], [ %call.i.i56, %do.body.i58.out_crit_edge ], [ %call.i.i40, %do.body.i.out_crit_edge ]
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %out.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

out.tomoyo_read_unlock.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %out
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %out.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp29.not = icmp eq i8 %60, 3
  %spec.select = select i1 %cmp29.not, i32 %error.1, i32 0
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_path_perm(i8 noundef zeroext %operation, ptr noundef %path, ptr noundef %target) local_unnamed_addr #0 align 64 {
entry:
  %r = alloca %struct.tomoyo_request_info, align 4
  %obj = alloca %struct.tomoyo_obj_info, align 4
  %buf = alloca %struct.tomoyo_path_info, align 4
  %symlink_target = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #8
  %0 = call ptr @memset(ptr %r, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj) #8
  %1 = call ptr @memset(ptr %obj, i32 0, i32 124)
  %path1 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %4 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %path1, align 4
  %dentry = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry2, align 4
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %8 = getelementptr inbounds %struct.tomoyo_path_info, ptr %buf, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %buf, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %symlink_target) #8
  %idxprom = zext i8 %operation to i32
  %arrayidx = getelementptr [11 x i8], ptr @tomoyo_p2mac, i32 0, i32 %idxprom
  %11 = call ptr @memset(ptr %symlink_target, i32 255, i32 12)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %call = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef null, i8 noundef zeroext %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp3 = icmp eq i8 %15, 3
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path) #8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %obj, ptr %r, align 4
  %18 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %operation, label %if.end8.sw.epilog_crit_edge [
    i8 6, label %if.end8.sw.bb_crit_edge
    i8 9, label %if.end8.sw.bb_crit_edge44
    i8 8, label %sw.bb11
  ]

if.end8.sw.bb_crit_edge44:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.end8.sw.bb_crit_edge44
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %8, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i40 = icmp eq i8 %20, 0
  br i1 %tobool.not.i40, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %strlen.i = call i32 @strlen(ptr noundef %22) #11
  %endptr.i = getelementptr i8, ptr %22, i32 %strlen.i
  %23 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 12032, ptr %endptr.i, align 1
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  %call12 = call ptr @tomoyo_encode(ptr noundef %target) #8
  %24 = ptrtoint ptr %symlink_target to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call12, ptr %symlink_target, align 4
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %sw.bb11.out_crit_edge, label %if.end16

sw.bb11.out_crit_edge:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  call void @tomoyo_fill_path_info(ptr noundef nonnull %symlink_target) #8
  %symlink_target17 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 5
  %25 = ptrtoint ptr %symlink_target17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %symlink_target, ptr %symlink_target17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.end.i, %sw.bb.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  %type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 10
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %13, ptr %type.i, align 1
  %domain.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %27 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %domain.i, align 4
  %ns.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns.i, align 4
  %profile.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 8
  %31 = ptrtoint ptr %profile.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %profile.i, align 1
  %call.i41 = call i32 @tomoyo_get_mode(ptr noundef %30, i8 noundef zeroext %32, i8 noundef zeroext %13) #8
  %conv.i = trunc i32 %call.i41 to i8
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %mode, align 4
  %conv3.i = and i32 %call.i41, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp.i, label %sw.epilog.tomoyo_path_permission.exit_crit_edge, label %if.end.i42

sw.epilog.tomoyo_path_permission.exit_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_path_permission.exit

if.end.i42:                                       ; preds = %sw.epilog
  %param_type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %34 = ptrtoint ptr %param_type.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %param_type.i, align 4
  %param.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %35 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf, ptr %param.i, align 4
  %operation7.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %36 = ptrtoint ptr %operation7.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %operation, ptr %operation7.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i42
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_path_acl) #8
  %37 = ptrtoint ptr %operation7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %operation7.i, align 4
  %idxprom.i.i = zext i8 %38 to i32
  %arrayidx.i.i = getelementptr [11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 %idxprom.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %41 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %param.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call.i.i43 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.1, ptr noundef %40, ptr noundef %44) #8
  %cmp9.i = icmp eq i32 %call.i.i43, 1
  br i1 %cmp9.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.tomoyo_path_permission.exit_crit_edge

do.body.i.tomoyo_path_permission.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_path_permission.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

tomoyo_path_permission.exit:                      ; preds = %do.body.i.tomoyo_path_permission.exit_crit_edge, %sw.epilog.tomoyo_path_permission.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.tomoyo_path_permission.exit_crit_edge ], [ %call.i.i43, %do.body.i.tomoyo_path_permission.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %operation)
  %cmp20 = icmp eq i8 %operation, 8
  br i1 %cmp20, label %if.then22, label %tomoyo_path_permission.exit.out_crit_edge

tomoyo_path_permission.exit.out_crit_edge:        ; preds = %tomoyo_path_permission.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then22:                                        ; preds = %tomoyo_path_permission.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %symlink_target to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %symlink_target, align 4
  call void @kfree(ptr noundef %46) #8
  br label %out

out:                                              ; preds = %if.then22, %tomoyo_path_permission.exit.out_crit_edge, %sw.bb11.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %if.then22 ], [ %retval.0.i, %tomoyo_path_permission.exit.out_crit_edge ], [ -12, %sw.bb11.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %out.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

out.tomoyo_read_unlock.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %out
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %out.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  %spec.select = select i1 %cmp3, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %tomoyo_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %symlink_target) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_encode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_mkdev_perm(i8 noundef zeroext %operation, ptr noundef %path, i32 noundef %mode, i32 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %r = alloca %struct.tomoyo_request_info, align 4
  %obj = alloca %struct.tomoyo_obj_info, align 4
  %buf = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #8
  %0 = call ptr @memset(ptr %r, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj) #8
  %1 = call ptr @memset(ptr %obj, i32 0, i32 124)
  %path1 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %4 = ptrtoint ptr %path1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %path1, align 4
  %dentry = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  %dentry2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry2, align 4
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #8
  %idxprom = zext i8 %operation to i32
  %arrayidx = getelementptr [2 x i8], ptr @tomoyo_pnnn2mac, i32 0, i32 %idxprom
  %8 = getelementptr inbounds i8, ptr %buf, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %8, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef null, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path) #8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.end15_crit_edge, label %if.then5

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf) #8
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %obj, ptr %r, align 4
  %and1.i = and i32 %dev, 255
  %shr2.i = lshr i32 %dev, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %14 = ptrtoint ptr %param_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %param_type, align 4
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %15 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %param, align 4
  %operation9 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 4
  %16 = ptrtoint ptr %operation9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %operation, ptr %operation9, align 4
  %mode11 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mode, ptr %mode11, align 4
  %18 = lshr i32 %dev, 8
  %shr = and i32 %18, 4095
  %major = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %major, align 4
  %minor = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %minor, align 4
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_mkdev_acl) #8
  %21 = ptrtoint ptr %operation9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %operation9, align 4
  %idxprom.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr [2 x i8], ptr @tomoyo_pnnn2mac, i32 0, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = zext i8 %24 to i32
  %arrayidx2.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom1.i
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx2.i, align 4
  %27 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %param, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode11, align 4
  %33 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %major, align 4
  %35 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %minor, align 4
  %call.i30 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.5, ptr noundef %26, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #8
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %38) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.end.if.end15_crit_edge
  %error.0 = phi i32 [ %call.i30, %if.then5 ], [ -12, %if.end.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %if.end15.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

if.end15.tomoyo_read_unlock.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %if.end15
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %if.end15.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  %mode16 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %39 = ptrtoint ptr %mode16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp17.not = icmp eq i8 %40, 3
  %spec.select = select i1 %cmp17.not, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %tomoyo_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_mkdev_acl(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perm, align 2
  %conv = zext i8 %1 to i32
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operation, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %group.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @tomoyo_number_matches_group(i32 noundef %5, i32 noundef %5, ptr noundef nonnull %7) #8
  br i1 %call.i, label %if.then.i.land.lhs.true5_crit_edge, label %if.then.i.land.end_crit_edge

if.then.i.land.end_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.then.i.land.lhs.true5_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true5

if.end.i:                                         ; preds = %land.lhs.true
  %mode3 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not.i = icmp ugt i32 %9, %5
  br i1 %cmp.not.i, label %if.end.i.land.end_crit_edge, label %tomoyo_compare_number_union.exit

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_compare_number_union.exit:                 ; preds = %if.end.i
  %arrayidx3.i = getelementptr %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp4.i.not = icmp ult i32 %11, %5
  br i1 %cmp4.i.not, label %tomoyo_compare_number_union.exit.land.end_crit_edge, label %tomoyo_compare_number_union.exit.land.lhs.true5_crit_edge

tomoyo_compare_number_union.exit.land.lhs.true5_crit_edge: ; preds = %tomoyo_compare_number_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true5

tomoyo_compare_number_union.exit.land.end_crit_edge: ; preds = %tomoyo_compare_number_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true5:                                   ; preds = %tomoyo_compare_number_union.exit.land.lhs.true5_crit_edge, %if.then.i.land.lhs.true5_crit_edge
  %major = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %major, align 4
  %group.i26 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %group.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group.i26, align 4
  %tobool.not.i27 = icmp eq ptr %15, null
  br i1 %tobool.not.i27, label %if.end.i31, label %if.then.i29

if.then.i29:                                      ; preds = %land.lhs.true5
  %call.i28 = tail call zeroext i1 @tomoyo_number_matches_group(i32 noundef %13, i32 noundef %13, ptr noundef nonnull %15) #8
  br i1 %call.i28, label %if.then.i29.land.lhs.true10_crit_edge, label %if.then.i29.land.end_crit_edge

if.then.i29.land.end_crit_edge:                   ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.then.i29.land.lhs.true10_crit_edge:            ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true10

if.end.i31:                                       ; preds = %land.lhs.true5
  %major7 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 4
  %16 = ptrtoint ptr %major7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %major7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp.not.i30 = icmp ugt i32 %17, %13
  br i1 %cmp.not.i30, label %if.end.i31.land.end_crit_edge, label %tomoyo_compare_number_union.exit36

if.end.i31.land.end_crit_edge:                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_compare_number_union.exit36:               ; preds = %if.end.i31
  %arrayidx3.i32 = getelementptr %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp4.i33.not = icmp ult i32 %19, %13
  br i1 %cmp4.i33.not, label %tomoyo_compare_number_union.exit36.land.end_crit_edge, label %tomoyo_compare_number_union.exit36.land.lhs.true10_crit_edge

tomoyo_compare_number_union.exit36.land.lhs.true10_crit_edge: ; preds = %tomoyo_compare_number_union.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true10

tomoyo_compare_number_union.exit36.land.end_crit_edge: ; preds = %tomoyo_compare_number_union.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true10:                                  ; preds = %tomoyo_compare_number_union.exit36.land.lhs.true10_crit_edge, %if.then.i29.land.lhs.true10_crit_edge
  %minor = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minor, align 4
  %group.i37 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %group.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group.i37, align 4
  %tobool.not.i38 = icmp eq ptr %23, null
  br i1 %tobool.not.i38, label %if.end.i42, label %if.then.i40

if.then.i40:                                      ; preds = %land.lhs.true10
  %call.i39 = tail call zeroext i1 @tomoyo_number_matches_group(i32 noundef %21, i32 noundef %21, ptr noundef nonnull %23) #8
  br i1 %call.i39, label %if.then.i40.land.rhs_crit_edge, label %if.then.i40.land.end_crit_edge

if.then.i40.land.end_crit_edge:                   ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.then.i40.land.rhs_crit_edge:                   ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end.i42:                                       ; preds = %land.lhs.true10
  %minor12 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 5
  %24 = ptrtoint ptr %minor12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minor12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %21)
  %cmp.not.i41 = icmp ugt i32 %25, %21
  br i1 %cmp.not.i41, label %if.end.i42.land.end_crit_edge, label %tomoyo_compare_number_union.exit47

if.end.i42.land.end_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_compare_number_union.exit47:               ; preds = %if.end.i42
  %arrayidx3.i43 = getelementptr %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx3.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp4.i44.not = icmp ult i32 %27, %21
  br i1 %cmp4.i44.not, label %tomoyo_compare_number_union.exit47.land.end_crit_edge, label %tomoyo_compare_number_union.exit47.land.rhs_crit_edge

tomoyo_compare_number_union.exit47.land.rhs_crit_edge: ; preds = %tomoyo_compare_number_union.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

tomoyo_compare_number_union.exit47.land.end_crit_edge: ; preds = %tomoyo_compare_number_union.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_compare_number_union.exit47.land.rhs_crit_edge, %if.then.i40.land.rhs_crit_edge
  %28 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %param, align 4
  %name = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 2
  %group.i48 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %ptr, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %group.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group.i48, align 4
  %tobool.not.i49 = icmp eq ptr %31, null
  br i1 %tobool.not.i49, label %if.end.i52, label %if.then.i51

if.then.i51:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call.i50 = tail call ptr @tomoyo_path_matches_group(ptr noundef %29, ptr noundef nonnull %31) #8
  br label %tomoyo_compare_name_union.exit

if.end.i52:                                       ; preds = %land.rhs
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  %call2.i = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %29, ptr noundef %33) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i52.tomoyo_compare_name_union.exit_crit_edge

if.end.i52.tomoyo_compare_name_union.exit_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_compare_name_union.exit

if.then3.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  br label %tomoyo_compare_name_union.exit

tomoyo_compare_name_union.exit:                   ; preds = %if.then3.i, %if.end.i52.tomoyo_compare_name_union.exit_crit_edge, %if.then.i51
  %retval.0.i53 = phi ptr [ %call.i50, %if.then.i51 ], [ %35, %if.then3.i ], [ null, %if.end.i52.tomoyo_compare_name_union.exit_crit_edge ]
  %tobool17 = icmp ne ptr %retval.0.i53, null
  br label %land.end

land.end:                                         ; preds = %tomoyo_compare_name_union.exit, %tomoyo_compare_number_union.exit47.land.end_crit_edge, %if.end.i42.land.end_crit_edge, %if.then.i40.land.end_crit_edge, %tomoyo_compare_number_union.exit36.land.end_crit_edge, %if.end.i31.land.end_crit_edge, %if.then.i29.land.end_crit_edge, %tomoyo_compare_number_union.exit.land.end_crit_edge, %if.end.i.land.end_crit_edge, %if.then.i.land.end_crit_edge, %entry.land.end_crit_edge
  %36 = phi i1 [ false, %tomoyo_compare_number_union.exit47.land.end_crit_edge ], [ false, %tomoyo_compare_number_union.exit36.land.end_crit_edge ], [ false, %tomoyo_compare_number_union.exit.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool17, %tomoyo_compare_name_union.exit ], [ false, %if.then.i.land.end_crit_edge ], [ false, %if.then.i29.land.end_crit_edge ], [ false, %if.then.i40.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ], [ false, %if.end.i31.land.end_crit_edge ], [ false, %if.end.i42.land.end_crit_edge ]
  ret i1 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_path2_perm(i8 noundef zeroext %operation, ptr noundef %path1, ptr noundef %path2) local_unnamed_addr #0 align 64 {
entry:
  %buf1 = alloca %struct.tomoyo_path_info, align 4
  %buf2 = alloca %struct.tomoyo_path_info, align 4
  %r = alloca %struct.tomoyo_request_info, align 4
  %obj = alloca %struct.tomoyo_obj_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf1) #8
  %0 = getelementptr inbounds %struct.tomoyo_path_info, ptr %buf1, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %buf1, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf2) #8
  %3 = getelementptr inbounds %struct.tomoyo_path_info, ptr %buf2, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %buf2, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #8
  %6 = call ptr @memset(ptr %r, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj) #8
  %7 = call ptr @memset(ptr %obj, i32 0, i32 124)
  %path11 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2
  %8 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path1, align 4
  %10 = ptrtoint ptr %path11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %path11, align 4
  %dentry = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 2, i32 1
  %dentry3 = getelementptr inbounds %struct.path, ptr %path1, i32 0, i32 1
  %11 = ptrtoint ptr %dentry3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry3, align 4
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dentry, align 4
  %path24 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 3
  %14 = ptrtoint ptr %path2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path2, align 4
  %16 = ptrtoint ptr %path24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %path24, align 4
  %dentry7 = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj, i32 0, i32 3, i32 1
  %dentry8 = getelementptr inbounds %struct.path, ptr %path2, i32 0, i32 1
  %17 = ptrtoint ptr %dentry8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry8, align 4
  %19 = ptrtoint ptr %dentry7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dentry7, align 4
  %idxprom = zext i8 %operation to i32
  %arrayidx = getelementptr [3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %call = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef null, i8 noundef zeroext %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %buf2, align 4
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #8
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  %call.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path1) #8
  %23 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %buf1, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf1) #8
  %call.i47 = call ptr @tomoyo_realpath_from_path(ptr noundef %path2) #8
  %24 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i47, ptr %buf2, align 4
  %tobool.not.i48 = icmp eq ptr %call.i47, null
  br i1 %tobool.not.i48, label %lor.lhs.false.out_crit_edge, label %if.end14

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %lor.lhs.false
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf2) #8
  %25 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %operation, label %if.end14.sw.epilog_crit_edge [
    i8 1, label %if.end14.sw.bb_crit_edge
    i8 0, label %if.end14.sw.bb_crit_edge59
    i8 2, label %if.end14.sw.bb19_crit_edge
  ]

if.end14.sw.bb19_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

if.end14.sw.bb_crit_edge59:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge59
  %26 = ptrtoint ptr %dentry3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry3, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %30)
  %31 = icmp eq i32 %30, 2097152
  br i1 %31, label %sw.bb.sw.bb19_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.sw.bb19_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb.sw.bb19_crit_edge, %if.end14.sw.bb19_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i51 = icmp eq i8 %33, 0
  br i1 %tobool.not.i51, label %if.end.i, label %sw.bb19.tomoyo_add_slash.exit_crit_edge

sw.bb19.tomoyo_add_slash.exit_crit_edge:          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_add_slash.exit

if.end.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf1, align 4
  %strlen.i = call i32 @strlen(ptr noundef %35) #11
  %endptr.i = getelementptr i8, ptr %35, i32 %strlen.i
  %36 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 12032, ptr %endptr.i, align 1
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf1) #8
  br label %tomoyo_add_slash.exit

tomoyo_add_slash.exit:                            ; preds = %if.end.i, %sw.bb19.tomoyo_add_slash.exit_crit_edge
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i53 = icmp eq i8 %38, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %tomoyo_add_slash.exit.sw.epilog_crit_edge

tomoyo_add_slash.exit.sw.epilog_crit_edge:        ; preds = %tomoyo_add_slash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i56:                                       ; preds = %tomoyo_add_slash.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf2, align 4
  %strlen.i54 = call i32 @strlen(ptr noundef %40) #11
  %endptr.i55 = getelementptr i8, ptr %40, i32 %strlen.i54
  %41 = ptrtoint ptr %endptr.i55 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 12032, ptr %endptr.i55, align 1
  call void @tomoyo_fill_path_info(ptr noundef nonnull %buf2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i56, %tomoyo_add_slash.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge
  %42 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %obj, ptr %r, align 4
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %43 = ptrtoint ptr %param_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %param_type, align 4
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %operation21 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %44 = ptrtoint ptr %operation21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %operation, ptr %operation21, align 4
  %45 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf1, ptr %param, align 4
  %filename2 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %46 = ptrtoint ptr %filename2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf2, ptr %filename2, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %sw.epilog
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_path2_acl) #8
  %47 = ptrtoint ptr %operation21 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %operation21, align 4
  %idxprom.i = zext i8 %48 to i32
  %arrayidx.i = getelementptr [3 x i8], ptr @tomoyo_pp2mac, i32 0, i32 %idxprom.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 1
  %idxprom1.i = zext i8 %50 to i32
  %arrayidx2.i = getelementptr [42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 %idxprom1.i
  %51 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx2.i, align 4
  %53 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %param, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %filename2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %filename2, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i58 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.3, ptr noundef %52, ptr noundef %56, ptr noundef %60) #8
  %cmp25 = icmp eq i32 %call.i58, 1
  br i1 %cmp25, label %do.body.do.body_crit_edge, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

out:                                              ; preds = %do.body.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ -12, %if.end.out_crit_edge ], [ -12, %lor.lhs.false.out_crit_edge ], [ %call.i58, %do.body.out_crit_edge ]
  %61 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf1, align 4
  call void @kfree(ptr noundef %62) #8
  %63 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf2, align 4
  call void @kfree(ptr noundef %64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %out.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

out.tomoyo_read_unlock.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %out
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %out.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #8
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #8
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 9
  %65 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp30.not = icmp eq i8 %66, 3
  %spec.select = select i1 %cmp30.not, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %tomoyo_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_path2_acl(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perm, align 2
  %conv = zext i8 %1 to i32
  %operation = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %operation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operation, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %name1 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr, i32 0, i32 2
  %group.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @tomoyo_path_matches_group(ptr noundef %5, ptr noundef nonnull %7) #8
  br label %tomoyo_compare_name_union.exit

if.end.i:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name1, align 4
  %call2.i = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %5, ptr noundef %9) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i.land.end_crit_edge

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name1, align 4
  br label %tomoyo_compare_name_union.exit

tomoyo_compare_name_union.exit:                   ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %11, %if.then3.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %tomoyo_compare_name_union.exit.land.end_crit_edge, label %land.rhs

tomoyo_compare_name_union.exit.land.end_crit_edge: ; preds = %tomoyo_compare_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_compare_name_union.exit
  %filename2 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %filename2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filename2, align 4
  %name2 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr, i32 0, i32 3
  %group.i11 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %ptr, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %group.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group.i11, align 4
  %tobool.not.i12 = icmp eq ptr %15, null
  br i1 %tobool.not.i12, label %if.end.i16, label %if.then.i14

if.then.i14:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call.i13 = tail call ptr @tomoyo_path_matches_group(ptr noundef %13, ptr noundef nonnull %15) #8
  br label %tomoyo_compare_name_union.exit19

if.end.i16:                                       ; preds = %land.rhs
  %16 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name2, align 4
  %call2.i15 = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %13, ptr noundef %17) #8
  br i1 %call2.i15, label %if.then3.i17, label %if.end.i16.tomoyo_compare_name_union.exit19_crit_edge

if.end.i16.tomoyo_compare_name_union.exit19_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_compare_name_union.exit19

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name2, align 4
  br label %tomoyo_compare_name_union.exit19

tomoyo_compare_name_union.exit19:                 ; preds = %if.then3.i17, %if.end.i16.tomoyo_compare_name_union.exit19_crit_edge, %if.then.i14
  %retval.0.i18 = phi ptr [ %call.i13, %if.then.i14 ], [ %19, %if.then3.i17 ], [ null, %if.end.i16.tomoyo_compare_name_union.exit19_crit_edge ]
  %tobool6 = icmp ne ptr %retval.0.i18, null
  br label %land.end

land.end:                                         ; preds = %tomoyo_compare_name_union.exit19, %tomoyo_compare_name_union.exit.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %tomoyo_compare_name_union.exit.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool6, %tomoyo_compare_name_union.exit19 ], [ false, %if.end.i.land.end_crit_edge ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_file(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %e.i165 = alloca %struct.tomoyo_mkdev_acl, align 4
  %e.i139 = alloca %struct.tomoyo_path_number_acl, align 4
  %e.i125 = alloca %struct.tomoyo_path2_acl, align 4
  %e.i = alloca %struct.tomoyo_path_acl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_path_keyword to i32))
  %0 = load ptr, ptr @tomoyo_path_keyword, align 4
  %call2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %0) #8
  %conv5 = zext i1 %call2 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 1), align 4
  %call2.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %1) #8
  %conv5.1 = select i1 %call2.1, i16 2, i16 0
  %perm.1.1 = or i16 %conv5.1, %conv5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 2), align 4
  %call2.2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %2) #8
  %conv5.2 = select i1 %call2.2, i16 4, i16 0
  %perm.1.2 = or i16 %conv5.2, %perm.1.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 3) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 3), align 4
  %call2.3 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %3) #8
  %conv5.3 = select i1 %call2.3, i16 8, i16 0
  %perm.1.3 = or i16 %conv5.3, %perm.1.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 4) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 4), align 4
  %call2.4 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %4) #8
  %conv5.4 = select i1 %call2.4, i16 16, i16 0
  %perm.1.4 = or i16 %conv5.4, %perm.1.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 5) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 5), align 4
  %call2.5 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %5) #8
  %conv5.5 = select i1 %call2.5, i16 32, i16 0
  %perm.1.5 = or i16 %conv5.5, %perm.1.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 6) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 6), align 4
  %call2.6 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %6) #8
  %conv5.6 = select i1 %call2.6, i16 64, i16 0
  %perm.1.6 = or i16 %conv5.6, %perm.1.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 7), align 4
  %call2.7 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %7) #8
  %conv5.7 = select i1 %call2.7, i16 128, i16 0
  %perm.1.7 = or i16 %conv5.7, %perm.1.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 8), align 4
  %call2.8 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %8) #8
  %conv5.8 = select i1 %call2.8, i16 256, i16 0
  %perm.1.8 = or i16 %conv5.8, %perm.1.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 9), align 4
  %call2.9 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %9) #8
  %conv5.9 = select i1 %call2.9, i16 512, i16 0
  %perm.1.9 = or i16 %conv5.9, %perm.1.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @tomoyo_path_keyword, i32 0, i32 10), align 4
  %call2.10 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %10) #8
  %conv5.10 = select i1 %call2.10, i16 1024, i16 0
  %perm.1.10 = or i16 %conv5.10, %perm.1.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perm.1.10)
  %tobool.not = icmp eq i16 %perm.1.10, 0
  br i1 %tobool.not, label %for.body13.preheader, label %if.then6

for.body13.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 13), align 4
  %call18 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %11) #8
  %conv24 = zext i1 %call18 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 14) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 14), align 4
  %call18.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %12) #8
  %conv24.1 = select i1 %call18.1, i16 2, i16 0
  %perm.3.1 = or i16 %conv24.1, %conv24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 22) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 22), align 4
  %call18.2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %13) #8
  %conv24.2 = select i1 %call18.2, i16 4, i16 0
  %perm.3.2 = or i16 %conv24.2, %perm.3.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perm.3.2)
  %tobool29.not = icmp eq i16 %perm.3.2, 0
  br i1 %tobool29.not, label %for.body38.preheader, label %if.then30

if.then6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %e.i) #8
  %14 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %e.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %e.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %e.i, i32 0, i32 2, i32 1
  %17 = call ptr @memset(ptr %e.i, i32 0, i32 24)
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %perm.1.10, ptr %14, align 2
  %call.i = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %15) #8
  br i1 %call.i, label %if.else.i, label %if.then6.if.end.i_crit_edge

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @tomoyo_update_domain(ptr noundef nonnull %e.i, i32 noundef 24, ptr noundef %param, ptr noundef nonnull @tomoyo_same_path_acl, ptr noundef nonnull @tomoyo_merge_path_acl) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then6.if.end.i_crit_edge
  %error.0.i = phi i32 [ %call3.i, %if.else.i ], [ -22, %if.then6.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.end.i.tomoyo_put_group.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.tomoyo_put_group.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %20, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i.i, i32 1, i32 3, i32 1) #8
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i, ptr %users.i.i.i, i32 1, ptr elementtype(i32) %users.i.i.i) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i.i

tomoyo_put_group.exit.i.i:                        ; preds = %if.then.i.i.i, %if.end.i.tomoyo_put_group.exit.i.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 4
  %tobool.not.i2.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i2.i.i, label %tomoyo_put_group.exit.i.i.tomoyo_update_path_acl.exit_crit_edge, label %if.then.i5.i.i

tomoyo_put_group.exit.i.i.tomoyo_update_path_acl.exit_crit_edge: ; preds = %tomoyo_put_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_update_path_acl.exit

if.then.i5.i.i:                                   ; preds = %tomoyo_put_group.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i.i = getelementptr i8, ptr %23, i32 -4
  %call.i.i.i4.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i.i, i32 1, i32 3, i32 1) #8
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i.i, ptr %users.i3.i.i, i32 1, ptr elementtype(i32) %users.i3.i.i) #8, !srcloc !30
  br label %tomoyo_update_path_acl.exit

tomoyo_update_path_acl.exit:                      ; preds = %if.then.i5.i.i, %tomoyo_put_group.exit.i.i.tomoyo_update_path_acl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %e.i) #8
  br label %cleanup

for.body38.preheader:                             ; preds = %for.body13.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 2), align 4
  %call43 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %25) #8
  %conv49 = zext i1 %call43 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 5) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 5), align 4
  %call43.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %26) #8
  %conv49.1 = select i1 %call43.1, i16 2, i16 0
  %perm.5.1 = or i16 %conv49.1, %conv49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 7), align 4
  %call43.2 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %27) #8
  %conv49.2 = select i1 %call43.2, i16 4, i16 0
  %perm.5.2 = or i16 %conv49.2, %perm.5.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 8), align 4
  %call43.3 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %28) #8
  %conv49.3 = select i1 %call43.3, i16 8, i16 0
  %perm.5.3 = or i16 %conv49.3, %perm.5.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 18) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 18), align 4
  %call43.4 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %29) #8
  %conv49.4 = select i1 %call43.4, i16 16, i16 0
  %perm.5.4 = or i16 %conv49.4, %perm.5.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 15) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 15), align 4
  %call43.5 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %30) #8
  %conv49.5 = select i1 %call43.5, i16 32, i16 0
  %perm.5.5 = or i16 %conv49.5, %perm.5.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 16) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 16), align 4
  %call43.6 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %31) #8
  %conv49.6 = select i1 %call43.6, i16 64, i16 0
  %perm.5.6 = or i16 %conv49.6, %perm.5.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 17) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 17), align 4
  %call43.7 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %32) #8
  %conv49.7 = select i1 %call43.7, i16 128, i16 0
  %perm.5.7 = or i16 %conv49.7, %perm.5.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perm.5.7)
  %tobool54.not = icmp eq i16 %perm.5.7, 0
  br i1 %tobool54.not, label %for.body63.preheader, label %if.then55

if.then30:                                        ; preds = %for.body13.preheader
  %conv31 = trunc i16 %perm.3.2 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e.i125) #8
  %33 = call ptr @memset(ptr %e.i125, i32 0, i32 32)
  %type.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e.i125, i32 0, i32 3
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %type.i, align 1
  %perm1.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 1
  %35 = ptrtoint ptr %perm1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv31, ptr %perm1.i, align 2
  %name1.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 2
  %call.i126 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %name1.i) #8
  br i1 %call.i126, label %lor.lhs.false.i, label %if.then30.if.end.i130_crit_edge

if.then30.if.end.i130_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

lor.lhs.false.i:                                  ; preds = %if.then30
  %name2.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 3
  %call2.i = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %name2.i) #8
  br i1 %call2.i, label %if.else.i127, label %lor.lhs.false.i.if.end.i130_crit_edge

lor.lhs.false.i.if.end.i130_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

if.else.i127:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 @tomoyo_update_domain(ptr noundef nonnull %e.i125, i32 noundef 32, ptr noundef %param, ptr noundef nonnull @tomoyo_same_path2_acl, ptr noundef nonnull @tomoyo_merge_path2_acl) #8
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.else.i127, %lor.lhs.false.i.if.end.i130_crit_edge, %if.then30.if.end.i130_crit_edge
  %error.0.i128 = phi i32 [ %call4.i, %if.else.i127 ], [ -22, %lor.lhs.false.i.if.end.i130_crit_edge ], [ -22, %if.then30.if.end.i130_crit_edge ]
  %group.i.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %group.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %group.i.i, align 4
  %tobool.not.i.i.i129 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i129, label %if.end.i130.tomoyo_put_group.exit.i.i135_crit_edge, label %if.then.i.i.i133

if.end.i130.tomoyo_put_group.exit.i.i135_crit_edge: ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i.i135

if.then.i.i.i133:                                 ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i.i131 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %37, i32 0, i32 1
  %call.i.i.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i131, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i.i131, i32 1, i32 3, i32 1) #8
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i131, ptr %users.i.i.i131, i32 1, ptr elementtype(i32) %users.i.i.i131) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i.i135

tomoyo_put_group.exit.i.i135:                     ; preds = %if.then.i.i.i133, %if.end.i130.tomoyo_put_group.exit.i.i135_crit_edge
  %39 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name1.i, align 4
  %tobool.not.i2.i.i134 = icmp eq ptr %40, null
  br i1 %tobool.not.i2.i.i134, label %tomoyo_put_group.exit.i.i135.tomoyo_put_name_union.exit.i_crit_edge, label %if.then.i5.i.i138

tomoyo_put_group.exit.i.i135.tomoyo_put_name_union.exit.i_crit_edge: ; preds = %tomoyo_put_group.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit.i

if.then.i5.i.i138:                                ; preds = %tomoyo_put_group.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i.i136 = getelementptr i8, ptr %40, i32 -4
  %call.i.i.i4.i.i137 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i.i136, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i.i136, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i.i136, ptr %users.i3.i.i136, i32 1, ptr elementtype(i32) %users.i3.i.i136) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit.i

tomoyo_put_name_union.exit.i:                     ; preds = %if.then.i5.i.i138, %tomoyo_put_group.exit.i.i135.tomoyo_put_name_union.exit.i_crit_edge
  %name26.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 3
  %group.i9.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %e.i125, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %group.i9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %group.i9.i, align 4
  %tobool.not.i.i10.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i10.i, label %tomoyo_put_name_union.exit.i.tomoyo_put_group.exit.i15.i_crit_edge, label %if.then.i.i13.i

tomoyo_put_name_union.exit.i.tomoyo_put_group.exit.i15.i_crit_edge: ; preds = %tomoyo_put_name_union.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i15.i

if.then.i.i13.i:                                  ; preds = %tomoyo_put_name_union.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i11.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %43, i32 0, i32 1
  %call.i.i.i.i12.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i11.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i11.i, i32 1, i32 3, i32 1) #8
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i11.i, ptr %users.i.i11.i, i32 1, ptr elementtype(i32) %users.i.i11.i) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i15.i

tomoyo_put_group.exit.i15.i:                      ; preds = %if.then.i.i13.i, %tomoyo_put_name_union.exit.i.tomoyo_put_group.exit.i15.i_crit_edge
  %45 = ptrtoint ptr %name26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name26.i, align 4
  %tobool.not.i2.i14.i = icmp eq ptr %46, null
  br i1 %tobool.not.i2.i14.i, label %tomoyo_put_group.exit.i15.i.tomoyo_update_path2_acl.exit_crit_edge, label %if.then.i5.i18.i

tomoyo_put_group.exit.i15.i.tomoyo_update_path2_acl.exit_crit_edge: ; preds = %tomoyo_put_group.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_update_path2_acl.exit

if.then.i5.i18.i:                                 ; preds = %tomoyo_put_group.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i16.i = getelementptr i8, ptr %46, i32 -4
  %call.i.i.i4.i17.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i16.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i16.i, i32 1, i32 3, i32 1) #8
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i16.i, ptr %users.i3.i16.i, i32 1, ptr elementtype(i32) %users.i3.i16.i) #8, !srcloc !30
  br label %tomoyo_update_path2_acl.exit

tomoyo_update_path2_acl.exit:                     ; preds = %if.then.i5.i18.i, %tomoyo_put_group.exit.i15.i.tomoyo_update_path2_acl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e.i125) #8
  br label %cleanup

for.body63.preheader:                             ; preds = %for.body38.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 11) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 11), align 4
  %call68 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %48) #8
  %conv74 = zext i1 %call68 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 12) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 12), align 4
  %call68.1 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %49) #8
  %conv74.1 = select i1 %call68.1, i16 2, i16 0
  %perm.7.1 = or i16 %conv74.1, %conv74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perm.7.1)
  %tobool79.not = icmp eq i16 %perm.7.1, 0
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then55:                                        ; preds = %for.body38.preheader
  %conv56 = trunc i16 %perm.5.7 to i8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %e.i139) #8
  %50 = call ptr @memset(ptr %e.i139, i32 0, i32 40)
  %type.i140 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e.i139, i32 0, i32 3
  %51 = ptrtoint ptr %type.i140 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %type.i140, align 1
  %perm1.i141 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %e.i139, i32 0, i32 1
  %52 = ptrtoint ptr %perm1.i141 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv56, ptr %perm1.i141, align 2
  %name.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %e.i139, i32 0, i32 2
  %call.i142 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %name.i) #8
  br i1 %call.i142, label %lor.lhs.false.i144, label %if.then55.if.end.i150_crit_edge

if.then55.if.end.i150_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i150

lor.lhs.false.i144:                               ; preds = %if.then55
  %number.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %e.i139, i32 0, i32 3
  %call2.i143 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %number.i) #8
  br i1 %call2.i143, label %if.else.i146, label %lor.lhs.false.i144.if.end.i150_crit_edge

lor.lhs.false.i144.if.end.i150_crit_edge:         ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i150

if.else.i146:                                     ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i145 = call i32 @tomoyo_update_domain(ptr noundef nonnull %e.i139, i32 noundef 40, ptr noundef %param, ptr noundef nonnull @tomoyo_same_path_number_acl, ptr noundef nonnull @tomoyo_merge_path_number_acl) #8
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.else.i146, %lor.lhs.false.i144.if.end.i150_crit_edge, %if.then55.if.end.i150_crit_edge
  %error.0.i147 = phi i32 [ %call4.i145, %if.else.i146 ], [ -22, %lor.lhs.false.i144.if.end.i150_crit_edge ], [ -22, %if.then55.if.end.i150_crit_edge ]
  %group.i.i148 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %e.i139, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %group.i.i148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %group.i.i148, align 4
  %tobool.not.i.i.i149 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i149, label %if.end.i150.tomoyo_put_group.exit.i.i155_crit_edge, label %if.then.i.i.i153

if.end.i150.tomoyo_put_group.exit.i.i155_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i.i155

if.then.i.i.i153:                                 ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i.i151 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %54, i32 0, i32 1
  %call.i.i.i.i.i152 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i151, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i.i151, i32 1, i32 3, i32 1) #8
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i151, ptr %users.i.i.i151, i32 1, ptr elementtype(i32) %users.i.i.i151) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i.i155

tomoyo_put_group.exit.i.i155:                     ; preds = %if.then.i.i.i153, %if.end.i150.tomoyo_put_group.exit.i.i155_crit_edge
  %56 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.i, align 4
  %tobool.not.i2.i.i154 = icmp eq ptr %57, null
  br i1 %tobool.not.i2.i.i154, label %tomoyo_put_group.exit.i.i155.tomoyo_put_name_union.exit.i161_crit_edge, label %if.then.i5.i.i158

tomoyo_put_group.exit.i.i155.tomoyo_put_name_union.exit.i161_crit_edge: ; preds = %tomoyo_put_group.exit.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit.i161

if.then.i5.i.i158:                                ; preds = %tomoyo_put_group.exit.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i.i156 = getelementptr i8, ptr %57, i32 -4
  %call.i.i.i4.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i.i156, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i.i156, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i.i156, ptr %users.i3.i.i156, i32 1, ptr elementtype(i32) %users.i3.i.i156) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit.i161

tomoyo_put_name_union.exit.i161:                  ; preds = %if.then.i5.i.i158, %tomoyo_put_group.exit.i.i155.tomoyo_put_name_union.exit.i161_crit_edge
  %group.i9.i159 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %e.i139, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %group.i9.i159 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %group.i9.i159, align 4
  %tobool.not.i.i10.i160 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i10.i160, label %tomoyo_put_name_union.exit.i161.tomoyo_update_path_number_acl.exit_crit_edge, label %if.then.i.i13.i164

tomoyo_put_name_union.exit.i161.tomoyo_update_path_number_acl.exit_crit_edge: ; preds = %tomoyo_put_name_union.exit.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_update_path_number_acl.exit

if.then.i.i13.i164:                               ; preds = %tomoyo_put_name_union.exit.i161
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i11.i162 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %60, i32 0, i32 1
  %call.i.i.i.i12.i163 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i11.i162, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i11.i162, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i11.i162, ptr %users.i.i11.i162, i32 1, ptr elementtype(i32) %users.i.i11.i162) #8, !srcloc !30
  br label %tomoyo_update_path_number_acl.exit

tomoyo_update_path_number_acl.exit:               ; preds = %if.then.i.i13.i164, %tomoyo_put_name_union.exit.i161.tomoyo_update_path_number_acl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %e.i139) #8
  br label %cleanup

if.then80:                                        ; preds = %for.body63.preheader
  %conv81 = trunc i16 %perm.7.1 to i8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %e.i165) #8
  %62 = call ptr @memset(ptr %e.i165, i32 0, i32 72)
  %type.i166 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e.i165, i32 0, i32 3
  %63 = ptrtoint ptr %type.i166 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %type.i166, align 1
  %perm1.i167 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 1
  %64 = ptrtoint ptr %perm1.i167 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv81, ptr %perm1.i167, align 2
  %name.i168 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 2
  %call.i169 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %name.i168) #8
  br i1 %call.i169, label %lor.lhs.false.i171, label %if.then80.if.end.i177_crit_edge

if.then80.if.end.i177_crit_edge:                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i177

lor.lhs.false.i171:                               ; preds = %if.then80
  %mode.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 3
  %call2.i170 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %mode.i) #8
  br i1 %call2.i170, label %lor.lhs.false3.i, label %lor.lhs.false.i171.if.end.i177_crit_edge

lor.lhs.false.i171.if.end.i177_crit_edge:         ; preds = %lor.lhs.false.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i177

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i171
  %major.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 4
  %call4.i172 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %major.i) #8
  br i1 %call4.i172, label %lor.lhs.false5.i, label %lor.lhs.false3.i.if.end.i177_crit_edge

lor.lhs.false3.i.if.end.i177_crit_edge:           ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i177

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i
  %minor.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 5
  %call6.i = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %minor.i) #8
  br i1 %call6.i, label %if.else.i173, label %lor.lhs.false5.i.if.end.i177_crit_edge

lor.lhs.false5.i.if.end.i177_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i177

if.else.i173:                                     ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 @tomoyo_update_domain(ptr noundef nonnull %e.i165, i32 noundef 72, ptr noundef %param, ptr noundef nonnull @tomoyo_same_mkdev_acl, ptr noundef nonnull @tomoyo_merge_mkdev_acl) #8
  br label %if.end.i177

if.end.i177:                                      ; preds = %if.else.i173, %lor.lhs.false5.i.if.end.i177_crit_edge, %lor.lhs.false3.i.if.end.i177_crit_edge, %lor.lhs.false.i171.if.end.i177_crit_edge, %if.then80.if.end.i177_crit_edge
  %error.0.i174 = phi i32 [ %call8.i, %if.else.i173 ], [ -22, %lor.lhs.false5.i.if.end.i177_crit_edge ], [ -22, %lor.lhs.false3.i.if.end.i177_crit_edge ], [ -22, %lor.lhs.false.i171.if.end.i177_crit_edge ], [ -22, %if.then80.if.end.i177_crit_edge ]
  %group.i.i175 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %group.i.i175 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %group.i.i175, align 4
  %tobool.not.i.i.i176 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i176, label %if.end.i177.tomoyo_put_group.exit.i.i182_crit_edge, label %if.then.i.i.i180

if.end.i177.tomoyo_put_group.exit.i.i182_crit_edge: ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i.i182

if.then.i.i.i180:                                 ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i.i178 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %66, i32 0, i32 1
  %call.i.i.i.i.i179 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i178, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i.i178, i32 1, i32 3, i32 1) #8
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i178, ptr %users.i.i.i178, i32 1, ptr elementtype(i32) %users.i.i.i178) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i.i182

tomoyo_put_group.exit.i.i182:                     ; preds = %if.then.i.i.i180, %if.end.i177.tomoyo_put_group.exit.i.i182_crit_edge
  %68 = ptrtoint ptr %name.i168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.i168, align 4
  %tobool.not.i2.i.i181 = icmp eq ptr %69, null
  br i1 %tobool.not.i2.i.i181, label %tomoyo_put_group.exit.i.i182.tomoyo_put_name_union.exit.i186_crit_edge, label %if.then.i5.i.i185

tomoyo_put_group.exit.i.i182.tomoyo_put_name_union.exit.i186_crit_edge: ; preds = %tomoyo_put_group.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit.i186

if.then.i5.i.i185:                                ; preds = %tomoyo_put_group.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i.i183 = getelementptr i8, ptr %69, i32 -4
  %call.i.i.i4.i.i184 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i.i183, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i.i183, i32 1, i32 3, i32 1) #8
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i.i183, ptr %users.i3.i.i183, i32 1, ptr elementtype(i32) %users.i3.i.i183) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit.i186

tomoyo_put_name_union.exit.i186:                  ; preds = %if.then.i5.i.i185, %tomoyo_put_group.exit.i.i182.tomoyo_put_name_union.exit.i186_crit_edge
  %group.i17.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %group.i17.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %group.i17.i, align 4
  %tobool.not.i.i18.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i18.i, label %tomoyo_put_name_union.exit.i186.tomoyo_put_number_union.exit.i_crit_edge, label %if.then.i.i21.i

tomoyo_put_name_union.exit.i186.tomoyo_put_number_union.exit.i_crit_edge: ; preds = %tomoyo_put_name_union.exit.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_number_union.exit.i

if.then.i.i21.i:                                  ; preds = %tomoyo_put_name_union.exit.i186
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i19.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %72, i32 0, i32 1
  %call.i.i.i.i20.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i19.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i19.i, i32 1, i32 3, i32 1) #8
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i19.i, ptr %users.i.i19.i, i32 1, ptr elementtype(i32) %users.i.i19.i) #8, !srcloc !30
  br label %tomoyo_put_number_union.exit.i

tomoyo_put_number_union.exit.i:                   ; preds = %if.then.i.i21.i, %tomoyo_put_name_union.exit.i186.tomoyo_put_number_union.exit.i_crit_edge
  %group.i23.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %group.i23.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %group.i23.i, align 4
  %tobool.not.i.i24.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i24.i, label %tomoyo_put_number_union.exit.i.tomoyo_put_number_union.exit29.i_crit_edge, label %if.then.i.i27.i

tomoyo_put_number_union.exit.i.tomoyo_put_number_union.exit29.i_crit_edge: ; preds = %tomoyo_put_number_union.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_number_union.exit29.i

if.then.i.i27.i:                                  ; preds = %tomoyo_put_number_union.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i25.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %75, i32 0, i32 1
  %call.i.i.i.i26.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i25.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i25.i, i32 1, i32 3, i32 1) #8
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i25.i, ptr %users.i.i25.i, i32 1, ptr elementtype(i32) %users.i.i25.i) #8, !srcloc !30
  br label %tomoyo_put_number_union.exit29.i

tomoyo_put_number_union.exit29.i:                 ; preds = %if.then.i.i27.i, %tomoyo_put_number_union.exit.i.tomoyo_put_number_union.exit29.i_crit_edge
  %group.i30.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %e.i165, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %group.i30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %group.i30.i, align 4
  %tobool.not.i.i31.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i31.i, label %tomoyo_put_number_union.exit29.i.tomoyo_update_mkdev_acl.exit_crit_edge, label %if.then.i.i34.i

tomoyo_put_number_union.exit29.i.tomoyo_update_mkdev_acl.exit_crit_edge: ; preds = %tomoyo_put_number_union.exit29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_update_mkdev_acl.exit

if.then.i.i34.i:                                  ; preds = %tomoyo_put_number_union.exit29.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i32.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %78, i32 0, i32 1
  %call.i.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i32.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i32.i, i32 1, i32 3, i32 1) #8
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i32.i, ptr %users.i.i32.i, i32 1, ptr elementtype(i32) %users.i.i32.i) #8, !srcloc !30
  br label %tomoyo_update_mkdev_acl.exit

tomoyo_update_mkdev_acl.exit:                     ; preds = %if.then.i.i34.i, %tomoyo_put_number_union.exit29.i.tomoyo_update_mkdev_acl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %e.i165) #8
  br label %cleanup

if.end83:                                         ; preds = %for.body63.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 20) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([42 x ptr], ptr @tomoyo_mac_keywords, i32 0, i32 20), align 4
  %call84 = tail call zeroext i1 @tomoyo_permstr(ptr noundef %call, ptr noundef %80) #8
  br i1 %call84, label %if.then85, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = tail call fastcc i32 @tomoyo_update_mount_acl(ptr noundef %param)
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end83.cleanup_crit_edge, %tomoyo_update_mkdev_acl.exit, %tomoyo_update_path_number_acl.exit, %tomoyo_update_path2_acl.exit, %tomoyo_update_path_acl.exit
  %retval.0 = phi i32 [ %error.0.i, %tomoyo_update_path_acl.exit ], [ %error.0.i128, %tomoyo_update_path2_acl.exit ], [ %error.0.i147, %tomoyo_update_path_number_acl.exit ], [ %error.0.i174, %tomoyo_update_mkdev_acl.exit ], [ %call86, %if.then85 ], [ -22, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_permstr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tomoyo_update_mount_acl(ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_mount_acl, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %e) #8
  %0 = call ptr @memset(ptr %e, i32 0, i32 56)
  %1 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %1, align 1
  %dev_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 1
  %call = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %dev_name) #8
  br i1 %call, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %dir_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 2
  %call1 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %dir_name) #8
  br i1 %call1, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %fs_type = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 3
  %call3 = call zeroext i1 @tomoyo_parse_name_union(ptr noundef %param, ptr noundef %fs_type) #8
  br i1 %call3, label %lor.lhs.false4, label %lor.lhs.false2.if.end_crit_edge

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 4
  %call5 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %flags) #8
  br i1 %call5, label %if.else, label %lor.lhs.false4.if.end_crit_edge

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @tomoyo_update_domain(ptr noundef nonnull %e, i32 noundef 56, ptr noundef %param, ptr noundef nonnull @tomoyo_same_mount_acl, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false4.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call6, %if.else ], [ -22, %lor.lhs.false4.if.end_crit_edge ], [ -22, %lor.lhs.false2.if.end_crit_edge ], [ -22, %lor.lhs.false.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  %group.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.tomoyo_put_group.exit.i_crit_edge, label %if.then.i.i

if.end.tomoyo_put_group.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %4, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #8
  %5 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i

tomoyo_put_group.exit.i:                          ; preds = %if.then.i.i, %if.end.tomoyo_put_group.exit.i_crit_edge
  %6 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_name, align 4
  %tobool.not.i2.i = icmp eq ptr %7, null
  br i1 %tobool.not.i2.i, label %tomoyo_put_group.exit.i.tomoyo_put_name_union.exit_crit_edge, label %if.then.i5.i

tomoyo_put_group.exit.i.tomoyo_put_name_union.exit_crit_edge: ; preds = %tomoyo_put_group.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit

if.then.i5.i:                                     ; preds = %tomoyo_put_group.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i = getelementptr i8, ptr %7, i32 -4
  %call.i.i.i4.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i, i32 1, i32 3, i32 1) #8
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i, ptr %users.i3.i, i32 1, ptr elementtype(i32) %users.i3.i) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit

tomoyo_put_name_union.exit:                       ; preds = %if.then.i5.i, %tomoyo_put_group.exit.i.tomoyo_put_name_union.exit_crit_edge
  %dir_name8 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 2
  %group.i15 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %group.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i16, label %tomoyo_put_name_union.exit.tomoyo_put_group.exit.i21_crit_edge, label %if.then.i.i19

tomoyo_put_name_union.exit.tomoyo_put_group.exit.i21_crit_edge: ; preds = %tomoyo_put_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i21

if.then.i.i19:                                    ; preds = %tomoyo_put_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i17 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %10, i32 0, i32 1
  %call.i.i.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i17, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i17, i32 1, i32 3, i32 1) #8
  %11 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i17, ptr %users.i.i17, i32 1, ptr elementtype(i32) %users.i.i17) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i21

tomoyo_put_group.exit.i21:                        ; preds = %if.then.i.i19, %tomoyo_put_name_union.exit.tomoyo_put_group.exit.i21_crit_edge
  %12 = ptrtoint ptr %dir_name8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dir_name8, align 4
  %tobool.not.i2.i20 = icmp eq ptr %13, null
  br i1 %tobool.not.i2.i20, label %tomoyo_put_group.exit.i21.tomoyo_put_name_union.exit25_crit_edge, label %if.then.i5.i24

tomoyo_put_group.exit.i21.tomoyo_put_name_union.exit25_crit_edge: ; preds = %tomoyo_put_group.exit.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit25

if.then.i5.i24:                                   ; preds = %tomoyo_put_group.exit.i21
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i22 = getelementptr i8, ptr %13, i32 -4
  %call.i.i.i4.i23 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i22, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i22, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i22, ptr %users.i3.i22, i32 1, ptr elementtype(i32) %users.i3.i22) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit25

tomoyo_put_name_union.exit25:                     ; preds = %if.then.i5.i24, %tomoyo_put_group.exit.i21.tomoyo_put_name_union.exit25_crit_edge
  %fs_type9 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 3
  %group.i26 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %group.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group.i26, align 4
  %tobool.not.i.i27 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i27, label %tomoyo_put_name_union.exit25.tomoyo_put_group.exit.i32_crit_edge, label %if.then.i.i30

tomoyo_put_name_union.exit25.tomoyo_put_group.exit.i32_crit_edge: ; preds = %tomoyo_put_name_union.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_group.exit.i32

if.then.i.i30:                                    ; preds = %tomoyo_put_name_union.exit25
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i28 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %16, i32 0, i32 1
  %call.i.i.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i28, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i28, i32 1, i32 3, i32 1) #8
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i28, ptr %users.i.i28, i32 1, ptr elementtype(i32) %users.i.i28) #8, !srcloc !30
  br label %tomoyo_put_group.exit.i32

tomoyo_put_group.exit.i32:                        ; preds = %if.then.i.i30, %tomoyo_put_name_union.exit25.tomoyo_put_group.exit.i32_crit_edge
  %18 = ptrtoint ptr %fs_type9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_type9, align 4
  %tobool.not.i2.i31 = icmp eq ptr %19, null
  br i1 %tobool.not.i2.i31, label %tomoyo_put_group.exit.i32.tomoyo_put_name_union.exit36_crit_edge, label %if.then.i5.i35

tomoyo_put_group.exit.i32.tomoyo_put_name_union.exit36_crit_edge: ; preds = %tomoyo_put_group.exit.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_name_union.exit36

if.then.i5.i35:                                   ; preds = %tomoyo_put_group.exit.i32
  call void @__sanitizer_cov_trace_pc() #10
  %users.i3.i33 = getelementptr i8, ptr %19, i32 -4
  %call.i.i.i4.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i33, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i3.i33, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i33, ptr %users.i3.i33, i32 1, ptr elementtype(i32) %users.i3.i33) #8, !srcloc !30
  br label %tomoyo_put_name_union.exit36

tomoyo_put_name_union.exit36:                     ; preds = %if.then.i5.i35, %tomoyo_put_group.exit.i32.tomoyo_put_name_union.exit36_crit_edge
  %group.i37 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %e, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %group.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %group.i37, align 4
  %tobool.not.i.i38 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i38, label %tomoyo_put_name_union.exit36.tomoyo_put_number_union.exit_crit_edge, label %if.then.i.i41

tomoyo_put_name_union.exit36.tomoyo_put_number_union.exit_crit_edge: ; preds = %tomoyo_put_name_union.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_put_number_union.exit

if.then.i.i41:                                    ; preds = %tomoyo_put_name_union.exit36
  call void @__sanitizer_cov_trace_pc() #10
  %users.i.i39 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %22, i32 0, i32 1
  %call.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i39, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i39, i32 1, i32 3, i32 1) #8
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i39, ptr %users.i.i39, i32 1, ptr elementtype(i32) %users.i.i39) #8, !srcloc !30
  br label %tomoyo_put_number_union.exit

tomoyo_put_number_union.exit:                     ; preds = %if.then.i.i41, %tomoyo_put_name_union.exit36.tomoyo_put_number_union.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %e) #8
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_supervisor(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_from_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_print_ulong(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_name_union(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_path_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.tomoyo_path_acl, ptr %a, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %land.rhs.i, label %entry.tomoyo_same_name_union.exit_crit_edge

entry.tomoyo_same_name_union.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_same_name_union.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %group.i = getelementptr inbounds %struct.tomoyo_path_acl, ptr %a, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_path_acl, ptr %b, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %5, %7
  br label %tomoyo_same_name_union.exit

tomoyo_same_name_union.exit:                      ; preds = %land.rhs.i, %entry.tomoyo_same_name_union.exit_crit_edge
  %8 = phi i1 [ false, %entry.tomoyo_same_name_union.exit_crit_edge ], [ %cmp3.i, %land.rhs.i ]
  ret i1 %8
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_path_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %perm, align 2
  %perm6 = getelementptr inbounds %struct.tomoyo_path_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %perm6, align 2
  %neg = xor i16 %3, -1
  %and = and i16 %1, %neg
  %or27 = or i16 %3, %1
  %perm1.0 = select i1 %is_delete, i16 %and, i16 %or27
  store volatile i16 %perm1.0, ptr %perm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %perm1.0)
  %tobool21.not = icmp eq i16 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_path2_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %a, i32 0, i32 2
  %name14 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 4
  %2 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name14, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %tomoyo_same_name_union.exit, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit:                      ; preds = %entry
  %group.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %a, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %b, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %5, %7
  br i1 %cmp3.i, label %land.rhs, label %tomoyo_same_name_union.exit.land.end_crit_edge

tomoyo_same_name_union.exit.land.end_crit_edge:   ; preds = %tomoyo_same_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_same_name_union.exit
  %name2 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %a, i32 0, i32 3
  %name25 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %b, i32 0, i32 3
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name2, align 4
  %10 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name25, align 4
  %cmp.i9 = icmp eq ptr %9, %11
  br i1 %cmp.i9, label %land.rhs.i13, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs.i13:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %group.i10 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %a, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %group.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group.i10, align 4
  %group2.i11 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %b, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %group2.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group2.i11, align 4
  %cmp3.i12 = icmp eq ptr %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs.i13, %land.rhs.land.end_crit_edge, %tomoyo_same_name_union.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %tomoyo_same_name_union.exit.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp3.i12, %land.rhs.i13 ], [ false, %entry.land.end_crit_edge ]
  ret i1 %16
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_path2_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %perm, align 1
  %perm6 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm6, align 2
  %neg = xor i8 %3, -1
  %and = and i8 %1, %neg
  %or27 = or i8 %3, %1
  %perm1.0 = select i1 %is_delete, i8 %and, i8 %or27
  store volatile i8 %perm1.0, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %perm1.0)
  %tobool21.not = icmp eq i8 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_number_union(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_path_number_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %tomoyo_same_name_union.exit, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit:                      ; preds = %entry
  %group.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %5, %7
  br i1 %cmp3.i, label %land.rhs, label %tomoyo_same_name_union.exit.land.end_crit_edge

tomoyo_same_name_union.exit.land.end_crit_edge:   ; preds = %tomoyo_same_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_same_name_union.exit
  %number = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 3
  %number5 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 3
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %10 = ptrtoint ptr %number5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i9 = icmp eq i32 %9, %11
  br i1 %cmp.i9, label %land.lhs.true.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i:                                  ; preds = %land.rhs
  %arrayidx4.i = getelementptr %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.i = icmp eq i32 %13, %15
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %group.i10 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %group.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group.i10, align 4
  %group9.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %group9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group9.i, align 4
  %cmp10.i = icmp eq ptr %17, %19
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.land.end_crit_edge

land.lhs.true8.i.land.end_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %value_type.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %value_type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value_type.i, align 4
  %value_type13.i = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %value_type13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value_type13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp16.i = icmp eq i8 %21, %23
  br i1 %cmp16.i, label %land.rhs.i11, label %land.lhs.true11.i.land.end_crit_edge

land.lhs.true11.i.land.end_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs.i11:                                     ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 3, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx22.i = getelementptr %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 3, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp24.i = icmp eq i8 %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs.i11, %land.lhs.true11.i.land.end_crit_edge, %land.lhs.true8.i.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %tomoyo_same_name_union.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %28 = phi i1 [ false, %tomoyo_same_name_union.exit.land.end_crit_edge ], [ false, %land.lhs.true11.i.land.end_crit_edge ], [ false, %land.lhs.true8.i.land.end_crit_edge ], [ false, %land.lhs.true.i.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp24.i, %land.rhs.i11 ], [ false, %entry.land.end_crit_edge ]
  ret i1 %28
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_path_number_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %perm, align 1
  %perm6 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm6, align 2
  %neg = xor i8 %3, -1
  %and = and i8 %1, %neg
  %or27 = or i8 %3, %1
  %perm1.0 = select i1 %is_delete, i8 %and, i8 %or27
  store volatile i8 %perm1.0, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %perm1.0)
  %tobool21.not = icmp eq i8 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_mkdev_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %tomoyo_same_name_union.exit, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit:                      ; preds = %entry
  %group.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %5, %7
  br i1 %cmp3.i, label %land.lhs.true, label %tomoyo_same_name_union.exit.land.end_crit_edge

tomoyo_same_name_union.exit.land.end_crit_edge:   ; preds = %tomoyo_same_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %tomoyo_same_name_union.exit
  %mode = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 3
  %mode5 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %10 = ptrtoint ptr %mode5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i18 = icmp eq i32 %9, %11
  br i1 %cmp.i18, label %land.lhs.true.i, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %arrayidx4.i = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.i = icmp eq i32 %13, %15
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %group.i19 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %group.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group.i19, align 4
  %group9.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %group9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group9.i, align 4
  %cmp10.i = icmp eq ptr %17, %19
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.land.end_crit_edge

land.lhs.true8.i.land.end_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %value_type.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %value_type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value_type.i, align 4
  %value_type13.i = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %value_type13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value_type13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp16.i = icmp eq i8 %21, %23
  br i1 %cmp16.i, label %tomoyo_same_number_union.exit, label %land.lhs.true11.i.land.end_crit_edge

land.lhs.true11.i.land.end_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_number_union.exit:                    ; preds = %land.lhs.true11.i
  %arrayidx19.i = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 3, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx22.i = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 3, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp24.i = icmp eq i8 %25, %27
  br i1 %cmp24.i, label %land.lhs.true7, label %tomoyo_same_number_union.exit.land.end_crit_edge

tomoyo_same_number_union.exit.land.end_crit_edge: ; preds = %tomoyo_same_number_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true7:                                   ; preds = %tomoyo_same_number_union.exit
  %major = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 4
  %major8 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 4
  %28 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %major, align 4
  %30 = ptrtoint ptr %major8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %major8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i21 = icmp eq i32 %29, %31
  br i1 %cmp.i21, label %land.lhs.true.i25, label %land.lhs.true7.land.end_crit_edge

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i25:                                ; preds = %land.lhs.true7
  %arrayidx4.i22 = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx4.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i22, align 4
  %arrayidx6.i23 = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp7.i24 = icmp eq i32 %33, %35
  br i1 %cmp7.i24, label %land.lhs.true8.i29, label %land.lhs.true.i25.land.end_crit_edge

land.lhs.true.i25.land.end_crit_edge:             ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true8.i29:                               ; preds = %land.lhs.true.i25
  %group.i26 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %group.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %group.i26, align 4
  %group9.i27 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %group9.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %group9.i27, align 4
  %cmp10.i28 = icmp eq ptr %37, %39
  br i1 %cmp10.i28, label %land.lhs.true11.i33, label %land.lhs.true8.i29.land.end_crit_edge

land.lhs.true8.i29.land.end_crit_edge:            ; preds = %land.lhs.true8.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11.i33:                              ; preds = %land.lhs.true8.i29
  %value_type.i30 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %value_type.i30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %value_type.i30, align 4
  %value_type13.i31 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %value_type13.i31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %value_type13.i31, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp16.i32 = icmp eq i8 %41, %43
  br i1 %cmp16.i32, label %tomoyo_same_number_union.exit38, label %land.lhs.true11.i33.land.end_crit_edge

land.lhs.true11.i33.land.end_crit_edge:           ; preds = %land.lhs.true11.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_number_union.exit38:                  ; preds = %land.lhs.true11.i33
  %arrayidx19.i34 = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 4, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx19.i34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx19.i34, align 1
  %arrayidx22.i35 = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 4, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx22.i35 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx22.i35, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp24.i36 = icmp eq i8 %45, %47
  br i1 %cmp24.i36, label %land.rhs, label %tomoyo_same_number_union.exit38.land.end_crit_edge

tomoyo_same_number_union.exit38.land.end_crit_edge: ; preds = %tomoyo_same_number_union.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_same_number_union.exit38
  %minor = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 5
  %minor10 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 5
  %48 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %minor, align 4
  %50 = ptrtoint ptr %minor10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %minor10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i39 = icmp eq i32 %49, %51
  br i1 %cmp.i39, label %land.lhs.true.i43, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i43:                                ; preds = %land.rhs
  %arrayidx4.i40 = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 5, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx4.i40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx4.i40, align 4
  %arrayidx6.i41 = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 5, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx6.i41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx6.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp7.i42 = icmp eq i32 %53, %55
  br i1 %cmp7.i42, label %land.lhs.true8.i47, label %land.lhs.true.i43.land.end_crit_edge

land.lhs.true.i43.land.end_crit_edge:             ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true8.i47:                               ; preds = %land.lhs.true.i43
  %group.i44 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %group.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %group.i44, align 4
  %group9.i45 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %group9.i45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %group9.i45, align 4
  %cmp10.i46 = icmp eq ptr %57, %59
  br i1 %cmp10.i46, label %land.lhs.true11.i51, label %land.lhs.true8.i47.land.end_crit_edge

land.lhs.true8.i47.land.end_crit_edge:            ; preds = %land.lhs.true8.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11.i51:                              ; preds = %land.lhs.true8.i47
  %value_type.i48 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %value_type.i48 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %value_type.i48, align 4
  %value_type13.i49 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %value_type13.i49 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %value_type13.i49, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp16.i50 = icmp eq i8 %61, %63
  br i1 %cmp16.i50, label %land.rhs.i55, label %land.lhs.true11.i51.land.end_crit_edge

land.lhs.true11.i51.land.end_crit_edge:           ; preds = %land.lhs.true11.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs.i55:                                     ; preds = %land.lhs.true11.i51
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i52 = getelementptr %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 5, i32 2, i32 1
  %64 = ptrtoint ptr %arrayidx19.i52 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx19.i52, align 1
  %arrayidx22.i53 = getelementptr %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 5, i32 2, i32 1
  %66 = ptrtoint ptr %arrayidx22.i53 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx22.i53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp24.i54 = icmp eq i8 %65, %67
  br label %land.end

land.end:                                         ; preds = %land.rhs.i55, %land.lhs.true11.i51.land.end_crit_edge, %land.lhs.true8.i47.land.end_crit_edge, %land.lhs.true.i43.land.end_crit_edge, %land.rhs.land.end_crit_edge, %tomoyo_same_number_union.exit38.land.end_crit_edge, %land.lhs.true11.i33.land.end_crit_edge, %land.lhs.true8.i29.land.end_crit_edge, %land.lhs.true.i25.land.end_crit_edge, %land.lhs.true7.land.end_crit_edge, %tomoyo_same_number_union.exit.land.end_crit_edge, %land.lhs.true11.i.land.end_crit_edge, %land.lhs.true8.i.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %tomoyo_same_name_union.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %68 = phi i1 [ false, %tomoyo_same_number_union.exit38.land.end_crit_edge ], [ false, %tomoyo_same_number_union.exit.land.end_crit_edge ], [ false, %tomoyo_same_name_union.exit.land.end_crit_edge ], [ false, %land.lhs.true11.i51.land.end_crit_edge ], [ false, %land.lhs.true8.i47.land.end_crit_edge ], [ false, %land.lhs.true.i43.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp24.i54, %land.rhs.i55 ], [ false, %entry.land.end_crit_edge ], [ false, %land.lhs.true11.i.land.end_crit_edge ], [ false, %land.lhs.true8.i.land.end_crit_edge ], [ false, %land.lhs.true.i.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %land.lhs.true11.i33.land.end_crit_edge ], [ false, %land.lhs.true8.i29.land.end_crit_edge ], [ false, %land.lhs.true.i25.land.end_crit_edge ], [ false, %land.lhs.true7.land.end_crit_edge ]
  ret i1 %68
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_merge_mkdev_acl(ptr noundef %a, ptr nocapture noundef readonly %b, i1 noundef zeroext %is_delete) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perm = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %perm, align 1
  %perm6 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %perm6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %perm6, align 2
  %neg = xor i8 %3, -1
  %and = and i8 %1, %neg
  %or27 = or i8 %3, %1
  %perm1.0 = select i1 %is_delete, i8 %and, i8 %or27
  store volatile i8 %perm1.0, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %perm1.0)
  %tobool21.not = icmp eq i8 %perm1.0, 0
  ret i1 %tobool21.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_mount_acl(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 1
  %dev_name4 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_name, align 4
  %2 = ptrtoint ptr %dev_name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_name4, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %tomoyo_same_name_union.exit, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit:                      ; preds = %entry
  %group.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group.i, align 4
  %group2.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %group2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group2.i, align 4
  %cmp3.i = icmp eq ptr %5, %7
  br i1 %cmp3.i, label %land.lhs.true, label %tomoyo_same_name_union.exit.land.end_crit_edge

tomoyo_same_name_union.exit.land.end_crit_edge:   ; preds = %tomoyo_same_name_union.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %tomoyo_same_name_union.exit
  %dir_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 2
  %dir_name5 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %dir_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dir_name, align 4
  %10 = ptrtoint ptr %dir_name5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dir_name5, align 4
  %cmp.i18 = icmp eq ptr %9, %11
  br i1 %cmp.i18, label %tomoyo_same_name_union.exit23, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit23:                    ; preds = %land.lhs.true
  %group.i19 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %group.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group.i19, align 4
  %group2.i20 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %group2.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group2.i20, align 4
  %cmp3.i21 = icmp eq ptr %13, %15
  br i1 %cmp3.i21, label %land.lhs.true7, label %tomoyo_same_name_union.exit23.land.end_crit_edge

tomoyo_same_name_union.exit23.land.end_crit_edge: ; preds = %tomoyo_same_name_union.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true7:                                   ; preds = %tomoyo_same_name_union.exit23
  %fs_type = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 3
  %fs_type8 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 3
  %16 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_type, align 4
  %18 = ptrtoint ptr %fs_type8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_type8, align 4
  %cmp.i24 = icmp eq ptr %17, %19
  br i1 %cmp.i24, label %tomoyo_same_name_union.exit29, label %land.lhs.true7.land.end_crit_edge

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

tomoyo_same_name_union.exit29:                    ; preds = %land.lhs.true7
  %group.i25 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %group.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group.i25, align 4
  %group2.i26 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %group2.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group2.i26, align 4
  %cmp3.i27 = icmp eq ptr %21, %23
  br i1 %cmp3.i27, label %land.rhs, label %tomoyo_same_name_union.exit29.land.end_crit_edge

tomoyo_same_name_union.exit29.land.end_crit_edge: ; preds = %tomoyo_same_name_union.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %tomoyo_same_name_union.exit29
  %flags = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 4
  %flags10 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %26 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i30 = icmp eq i32 %25, %27
  br i1 %cmp.i30, label %land.lhs.true.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i:                                  ; preds = %land.rhs
  %arrayidx4.i = getelementptr %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp7.i = icmp eq i32 %29, %31
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %group.i31 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %group.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %group.i31, align 4
  %group9.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %group9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %group9.i, align 4
  %cmp10.i = icmp eq ptr %33, %35
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.land.end_crit_edge

land.lhs.true8.i.land.end_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %value_type.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %value_type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %value_type.i, align 4
  %value_type13.i = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %value_type13.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %value_type13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp16.i = icmp eq i8 %37, %39
  br i1 %cmp16.i, label %land.rhs.i32, label %land.lhs.true11.i.land.end_crit_edge

land.lhs.true11.i.land.end_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs.i32:                                     ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.tomoyo_mount_acl, ptr %a, i32 0, i32 4, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx22.i = getelementptr %struct.tomoyo_mount_acl, ptr %b, i32 0, i32 4, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp24.i = icmp eq i8 %41, %43
  br label %land.end

land.end:                                         ; preds = %land.rhs.i32, %land.lhs.true11.i.land.end_crit_edge, %land.lhs.true8.i.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %tomoyo_same_name_union.exit29.land.end_crit_edge, %land.lhs.true7.land.end_crit_edge, %tomoyo_same_name_union.exit23.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %tomoyo_same_name_union.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %44 = phi i1 [ false, %tomoyo_same_name_union.exit29.land.end_crit_edge ], [ false, %tomoyo_same_name_union.exit23.land.end_crit_edge ], [ false, %tomoyo_same_name_union.exit.land.end_crit_edge ], [ false, %land.lhs.true11.i.land.end_crit_edge ], [ false, %land.lhs.true8.i.land.end_crit_edge ], [ false, %land.lhs.true.i.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp24.i, %land.rhs.i32 ], [ false, %entry.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %land.lhs.true7.land.end_crit_edge ]
  ret i1 %44
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @tomoyo_pnnn2mac, !1, !"tomoyo_pnnn2mac", i1 false, i1 false}
!1 = !{!"../security/tomoyo/file.c", i32 31, i32 10}
!2 = !{ptr @tomoyo_pp2mac, !3, !"tomoyo_pp2mac", i1 false, i1 false}
!3 = !{!"../security/tomoyo/file.c", i32 39, i32 10}
!4 = !{ptr @tomoyo_pn2mac, !5, !"tomoyo_pn2mac", i1 false, i1 false}
!5 = !{!"../security/tomoyo/file.c", i32 49, i32 10}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/file.c", i32 756, i32 22}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/file.c", i32 168, i32 30}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/file.c", i32 137, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/file.c", i32 235, i32 30}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tomoyo_p2mac, !18, !"tomoyo_p2mac", i1 false, i1 false}
!18 = !{!"../security/tomoyo/file.c", i32 14, i32 17}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/tomoyo/file.c", i32 197, i32 30}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148753587, i64 2148753613, i64 2148753642, i64 2148753676, i64 2148753707, i64 2148753730}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 2000, i32 1}
