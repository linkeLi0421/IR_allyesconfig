; ModuleID = '/llk/IR_all_yes/sound/core/vmaster.c_pt.bc'
source_filename = "../sound/core/vmaster.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+_snd_ctl_add_follower\22, \22a\22\09"
module asm "\09.weak\09__crc__snd_ctl_add_follower\09\09\09\09"
module asm "\09.long\09__crc__snd_ctl_add_follower\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_ctl_add_follower:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_ctl_add_follower\22\09\09\09\09\09"
module asm "__kstrtabns__snd_ctl_add_follower:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ctl_make_virtual_master\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ctl_make_virtual_master\09\09\09\09"
module asm "\09.long\09__crc_snd_ctl_make_virtual_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_make_virtual_master:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_make_virtual_master\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_make_virtual_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_ctl_add_vmaster_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ctl_add_vmaster_hook\09\09\09\09"
module asm "\09.long\09__crc_snd_ctl_add_vmaster_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_add_vmaster_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_add_vmaster_hook\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_add_vmaster_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_ctl_sync_vmaster\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ctl_sync_vmaster\09\09\09\09"
module asm "\09.long\09__crc_snd_ctl_sync_vmaster\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_sync_vmaster:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_sync_vmaster\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_sync_vmaster:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_ctl_apply_vmaster_followers\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ctl_apply_vmaster_followers\09\09\09\09"
module asm "\09.long\09__crc_snd_ctl_apply_vmaster_followers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_apply_vmaster_followers:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_apply_vmaster_followers\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_apply_vmaster_followers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.7, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.7 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.link_follower = type { %struct.list_head, ptr, %struct.link_ctl_info, [2 x i32], i32, ptr, %struct.snd_kcontrol }
%struct.link_ctl_info = type { i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.2, [128 x i8] }
%union.anon.2 = type { %union.anon.4 }
%union.anon.4 = type { [64 x i64] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.53, i32 }
%union.anon.53 = type { ptr }
%struct.link_master = type { %struct.list_head, %struct.link_ctl_info, i32, [4 x i32], ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon, [64 x i8] }
%union.anon = type { %struct.anon.1, [40 x i8] }
%struct.anon.1 = type { i32, i32, [64 x i8], i64, i32 }

@__kstrtab__snd_ctl_add_follower = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_ctl_add_follower = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_ctl_add_follower = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_ctl_add_follower to i32), ptr @__kstrtab__snd_ctl_add_follower, ptr @__kstrtabns__snd_ctl_add_follower }, section "___ksymtab+_snd_ctl_add_follower", align 4
@__kstrtab_snd_ctl_make_virtual_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_make_virtual_master = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_make_virtual_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_make_virtual_master to i32), ptr @__kstrtab_snd_ctl_make_virtual_master, ptr @__kstrtabns_snd_ctl_make_virtual_master }, section "___ksymtab+snd_ctl_make_virtual_master", align 4
@__kstrtab_snd_ctl_add_vmaster_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_add_vmaster_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_add_vmaster_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_add_vmaster_hook to i32), ptr @__kstrtab_snd_ctl_add_vmaster_hook, ptr @__kstrtabns_snd_ctl_add_vmaster_hook }, section "___ksymtab_gpl+snd_ctl_add_vmaster_hook", align 4
@__kstrtab_snd_ctl_sync_vmaster = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_sync_vmaster = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_sync_vmaster = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_sync_vmaster to i32), ptr @__kstrtab_snd_ctl_sync_vmaster, ptr @__kstrtabns_snd_ctl_sync_vmaster }, section "___ksymtab_gpl+snd_ctl_sync_vmaster", align 4
@__kstrtab_snd_ctl_apply_vmaster_followers = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_apply_vmaster_followers = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_apply_vmaster_followers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_apply_vmaster_followers to i32), ptr @__kstrtab_snd_ctl_apply_vmaster_followers, ptr @__kstrtabns_snd_ctl_apply_vmaster_followers }, section "___ksymtab_gpl+snd_ctl_apply_vmaster_followers", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@follower_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ALSA: vmaster: invalid follower element\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"follower_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/core/vmaster.c\00", [43 x i8] zeroinitializer }, align 32
@follower_init._entry_ptr = internal global ptr @follower_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [24 x i8] c"../sound/core/vmaster.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 103, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab__snd_ctl_add_follower, ptr @__ksymtab_snd_ctl_add_vmaster_hook, ptr @__ksymtab_snd_ctl_apply_vmaster_followers, ptr @__ksymtab_snd_ctl_make_virtual_master, ptr @__ksymtab_snd_ctl_sync_vmaster, ptr @follower_init._entry, ptr @follower_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @follower_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_snd_ctl_add_follower(ptr nocapture noundef readonly %master, ptr noundef %follower, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 8) #8
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 148) #8
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %kctl = getelementptr inbounds %struct.link_follower, ptr %call9.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %kctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %follower, ptr %kctl, align 8
  %follower2 = getelementptr inbounds %struct.link_follower, ptr %call9.i.i, i32 0, i32 6
  %8 = call ptr @memcpy(ptr %follower2, ptr %follower, i32 104)
  %vd = getelementptr inbounds %struct.link_follower, ptr %call9.i.i, i32 1
  %vd4 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 10
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %mul = shl i32 %10, 3
  %11 = call ptr @memcpy(ptr %vd, ptr %vd4, i32 %mul)
  %master7 = getelementptr inbounds %struct.link_follower, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %master7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %master7, align 8
  %flags8 = getelementptr inbounds %struct.link_follower, ptr %call9.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags8, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 3
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @follower_info, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 4
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @follower_get, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 5
  %16 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @follower_put, ptr %put, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %access, align 4
  %and = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tlv = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 6
  %19 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @follower_tlv_cmd, ptr %tlv, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %private_data13 = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 8
  %20 = ptrtoint ptr %private_data13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %private_data13, align 4
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %follower, i32 0, i32 9
  %21 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @follower_free, ptr %private_free, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %23, ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i34, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i34:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call9.i.i, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i34, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end.i.i34 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @follower_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6
  %info = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %call = tail call i32 %3(ptr noundef %follower1, ptr noundef %uinfo) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @follower_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.follower_get_val.exit_crit_edge, label %for.cond.preheader.i

entry.follower_get_val.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.cond.preheader.i:                             ; preds = %entry
  %count.i = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp110.i = icmp sgt i32 %3, 0
  br i1 %cmp110.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.follower_get_val.exit_crit_edge

for.cond.preheader.i.follower_get_val.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.link_follower, ptr %1, i32 0, i32 3, i32 %ch.011.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [128 x i32], ptr %value.i, i32 0, i32 %ch.011.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx2.i, align 4
  %inc.i = add nuw nsw i32 %ch.011.i, 1
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  %cmp1.i = icmp slt i32 %inc.i, %8
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.follower_get_val.exit_crit_edge

for.body.i.follower_get_val.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

follower_get_val.exit:                            ; preds = %for.body.i.follower_get_val.exit_crit_edge, %for.cond.preheader.i.follower_get_val.exit_crit_edge, %entry.follower_get_val.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.follower_get_val.exit_crit_edge ], [ 0, %for.cond.preheader.i.follower_get_val.exit_crit_edge ], [ 0, %for.body.i.follower_get_val.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @follower_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @follower_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp133 = icmp sgt i32 %3, 0
  br i1 %cmp133, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %changed.035 = phi i32 [ 0, %for.body.lr.ph ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %ch.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.link_follower, ptr %1, i32 0, i32 3, i32 %ch.034
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %ch.034
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then4 ], [ %changed.035, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %ch.034, 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %cmp1 = icmp slt i32 %inc, %10
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool.not = icmp eq i32 %changed.1, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @follower_put_val(ptr noundef %1, ptr noundef %ucontrol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %call12. = select i1 %cmp13, i32 %call12, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call12., %if.end11 ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @follower_tlv_cmd(ptr nocapture noundef readonly %kcontrol, i32 noundef %op_flag, i32 noundef %size, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6
  %tlv2 = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %tlv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tlv2, align 4
  %call = tail call i32 %3(ptr noundef %follower1, i32 noundef %op_flag, i32 noundef %size, ptr noundef %tlv) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @follower_free(ptr nocapture noundef readonly %kcontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %follower1 = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 6
  tail call void %3(ptr noundef %follower1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %master = getelementptr inbounds %struct.link_follower, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %list_del.exit, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_ctl_make_virtual_master(ptr noundef %name, ptr noundef readonly %tlv) #0 align 64 {
entry:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #8
  %0 = getelementptr inbounds i8, ptr %knew, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %knew, align 4
  %name1 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name1, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 7
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @master_info, ptr %info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %call2 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef nonnull %call7.i.i) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %info6 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %info6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @master_info, ptr %info6, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 0, i32 4
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @master_get, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 0, i32 5
  %10 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @master_put, ptr %put, align 4
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 0, i32 9
  %11 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @master_free, ptr %private_free, align 4
  %tobool7.not = icmp eq ptr %tlv, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %tlv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlv, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then8.cleanup_crit_edge [
    i32 1, label %if.then8.if.then12_crit_edge
    i32 4, label %if.then8.if.then12_crit_edge38
    i32 5, label %if.then8.if.then12_crit_edge39
  ]

if.then8.if.then12_crit_edge39:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then8.if.then12_crit_edge38:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.then8.if.then12_crit_edge, %if.then8.if.then12_crit_edge38, %if.then8.if.then12_crit_edge39
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access, align 4
  %or = or i32 %16, 16
  store i32 %or, ptr %access, align 4
  %tlv14 = getelementptr inbounds %struct.link_master, ptr %call7.i.i, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %tlv14, ptr %tlv, i32 16)
  %tlv17 = getelementptr inbounds %struct.snd_kcontrol, ptr %call2, i32 0, i32 6
  %18 = ptrtoint ptr %tlv17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tlv14, ptr %tlv17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call2, %if.then12 ], [ %call2, %if.then8.cleanup_crit_edge ], [ %call2, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end4.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end_crit_edge, label %if.then11.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info.i, align 4
  %type1 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %17 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %type1, align 8
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 4
  %count3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %20 = ptrtoint ptr %count3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count3, align 8
  %min_val = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %min_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %value, align 8
  %max_val = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %max_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_val, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end4.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end_crit_edge, label %if.then11.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %val = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end4.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end_crit_edge, label %if.then11.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %val = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp1 = icmp eq i32 %18, %16
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @sync_followers(ptr noundef %1, i32 noundef %16, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %hook = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hook, align 4
  %tobool8.not = icmp eq ptr %20, null
  %brmerge = select i1 %tobool8.not, i1 true, i1 %tobool.not.i
  br i1 %brmerge, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %hook_private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hook_private_data, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  tail call void %20(ptr noundef %22, i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %if.then10 ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @master_free(ptr nocapture noundef readonly %kcontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not32 = icmp eq ptr %3, %1
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %follower.033 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %follower.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %follower.033, align 4
  %kctl = getelementptr inbounds %struct.link_follower, ptr %follower.033, i32 0, i32 5
  %5 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kctl, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %olist.sroa.0.0.copyload = load ptr, ptr %6, align 4
  %olist.sroa.5.0.list7.sroa_idx = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %olist.sroa.5.0.list7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %olist.sroa.5.0.copyload = load ptr, ptr %olist.sroa.5.0.list7.sroa_idx, align 4
  %follower8 = getelementptr inbounds %struct.link_follower, ptr %follower.033, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %6, ptr %follower8, i32 104)
  %vd = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 10
  %vd10 = getelementptr inbounds %struct.link_follower, ptr %follower.033, i32 1
  %count = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %mul = shl i32 %11, 3
  %12 = call ptr @memcpy(ptr %vd, ptr %vd10, i32 %mul)
  store ptr %olist.sroa.0.0.copyload, ptr %6, align 4
  store ptr %olist.sroa.5.0.copyload, ptr %olist.sroa.5.0.list7.sroa_idx, align 4
  tail call void @kfree(ptr noundef %follower.033) #8
  %cmp.not = icmp eq ptr %n.0, %1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_ctl_add_vmaster_hook(ptr nocapture noundef readonly %kcontrol, ptr noundef %hook, ptr noundef %private_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data1 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data1, align 4
  %hook2 = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hook2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hook, ptr %hook2, align 4
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %hook_private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private_data, ptr %hook_private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ctl_sync_vmaster(ptr noundef readonly %kcontrol, i1 noundef zeroext %hook_only) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kcontrol, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  br i1 %hook_only, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup19_crit_edge, label %for.body.i

if.end.i.cleanup19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup19_crit_edge, label %if.end4.i

for.body.i.cleanup19_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then11.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i, %if.end4.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %val = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %call8 = tail call fastcc i32 @sync_followers(ptr noundef %1, i32 noundef %16, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %cleanup.if.end12_crit_edge, label %cleanup.cleanup19_crit_edge

cleanup.cleanup19_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %first_init.1.off0 = phi i1 [ false, %if.end.if.end12_crit_edge ], [ %tobool.not.i, %cleanup.if.end12_crit_edge ]
  %hook = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hook, align 4
  %tobool13.not = icmp eq ptr %18, null
  %brmerge = select i1 %tobool13.not, i1 true, i1 %first_init.1.off0
  br i1 %brmerge, label %if.end12.cleanup19_crit_edge, label %if.then15

if.end12.cleanup19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %hook_private_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hook_private_data, align 4
  %val17 = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val17, align 4
  tail call void %18(ptr noundef %20, i32 noundef %22) #8
  br label %cleanup19

cleanup19:                                        ; preds = %if.then15, %if.end12.cleanup19_crit_edge, %cleanup.cleanup19_crit_edge, %for.body.i.cleanup19_crit_edge, %if.end.i.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sync_followers(ptr noundef %master, i32 noundef %old_val, i32 noundef %new_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 712) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %follower.024 = load ptr, ptr %master, align 4
  %cmp.not25 = icmp eq ptr %follower.024, %master
  br i1 %cmp.not25, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %val = getelementptr inbounds %struct.link_master, ptr %master, i32 0, i32 2
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %follower_get_val.exit.for.body_crit_edge, %for.body.lr.ph
  %follower.026 = phi ptr [ %follower.024, %for.body.lr.ph ], [ %follower.0, %follower_get_val.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %old_val, ptr %val, align 4
  %id3 = getelementptr inbounds %struct.link_follower, ptr %follower.026, i32 0, i32 6, i32 1
  %3 = call ptr @memcpy(ptr %call7.i, ptr %id3, i32 64)
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %follower.026) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.follower_get_val.exit_crit_edge, label %for.cond.preheader.i

for.body.follower_get_val.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.cond.preheader.i:                             ; preds = %for.body
  %count.i = getelementptr inbounds %struct.link_follower, ptr %follower.026, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp110.i = icmp sgt i32 %5, 0
  br i1 %cmp110.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.follower_get_val.exit_crit_edge

for.cond.preheader.i.follower_get_val.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ch.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.link_follower, ptr %follower.026, i32 0, i32 3, i32 %ch.011.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [128 x i32], ptr %value.i, i32 0, i32 %ch.011.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2.i, align 4
  %inc.i = add nuw nsw i32 %ch.011.i, 1
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  %cmp1.i = icmp slt i32 %inc.i, %10
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.follower_get_val.exit_crit_edge

for.body.i.follower_get_val.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %follower_get_val.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

follower_get_val.exit:                            ; preds = %for.body.i.follower_get_val.exit_crit_edge, %for.cond.preheader.i.follower_get_val.exit_crit_edge, %for.body.follower_get_val.exit_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_val, ptr %val, align 4
  %call6 = tail call fastcc i32 @follower_put_val(ptr noundef %follower.026, ptr noundef nonnull %call7.i)
  %12 = ptrtoint ptr %follower.026 to i32
  call void @__asan_load4_noabort(i32 %12)
  %follower.0 = load ptr, ptr %follower.026, align 4
  %cmp.not = icmp eq ptr %follower.0, %master
  br i1 %cmp.not, label %follower_get_val.exit.for.end_crit_edge, label %follower_get_val.exit.for.body_crit_edge

follower_get_val.exit.for.body_crit_edge:         ; preds = %follower_get_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

follower_get_val.exit.for.end_crit_edge:          ; preds = %follower_get_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %follower_get_val.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_apply_vmaster_followers(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %func, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end4.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.for.cond.preheader_crit_edge, label %if.then11.i

if.end4.i.for.cond.preheader_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then11.i, %if.end4.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %follower.0.in = phi ptr [ %follower.0, %for.body.for.cond_crit_edge ], [ %1, %for.cond.preheader ]
  %15 = ptrtoint ptr %follower.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %follower.0 = load ptr, ptr %follower.0.in, align 4
  %cmp2.not = icmp eq ptr %follower.0, %1
  br i1 %cmp2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %kctl3 = getelementptr inbounds %struct.link_follower, ptr %follower.0, i32 0, i32 5
  %16 = ptrtoint ptr %kctl3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kctl3, align 4
  %follower4 = getelementptr inbounds %struct.link_follower, ptr %follower.0, i32 0, i32 6
  %call5 = tail call i32 %func(ptr noundef %17, ptr noundef %follower4, ptr noundef %arg) #8
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.i.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @follower_init(ptr noundef %follower) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2
  %count = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 712) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %follower1.i = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6
  %id2.i = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 1
  %5 = call ptr @memcpy(ptr %call7.i.i.i, ptr %id2.i, i32 64)
  %get.i = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get.i, align 4
  %call5.i = tail call i32 %7(ptr noundef %follower1.i, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end.i.error.i_crit_edge, label %for.cond.preheader.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp826.i = icmp sgt i32 %9, 0
  br i1 %cmp826.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.error.i_crit_edge

for.cond.preheader.i.error.i_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [128 x i32], ptr %value.i, i32 0, i32 %ch.027.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %arrayidx9.i = getelementptr %struct.link_follower, ptr %follower, i32 0, i32 3, i32 %ch.027.i
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %ch.027.i, 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %cmp8.i = icmp slt i32 %inc.i, %14
  br i1 %cmp8.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.error.i_crit_edge

for.body.i.error.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

error.i:                                          ; preds = %for.body.i.error.i_crit_edge, %for.cond.preheader.i.error.i_crit_edge, %if.end.i.error.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %15 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 272) #12
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %follower8 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6
  %id9 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 1
  %17 = call ptr @memcpy(ptr %call7.i, ptr %id9, i32 64)
  %info11 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info11, align 4
  %call13 = tail call i32 %19(ptr noundef %follower8, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 8
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %info, align 4
  %count18 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i, i32 0, i32 3
  %23 = ptrtoint ptr %count18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count18, align 8
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp23 = icmp slt i32 %24, 3
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or.cond = select i1 %cmp23, i1 %switch, i1 false
  br i1 %or.cond, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end15
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 8
  %min_val = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %min_val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %min_val, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max, align 4
  %max_val = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %max_val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_val, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 712) #12
  %tobool.not.i62 = icmp eq ptr %call7.i.i.i61, null
  br i1 %tobool.not.i62, label %if.end32.cleanup_crit_edge, label %if.end.i68

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i68:                                       ; preds = %if.end32
  %33 = call ptr @memcpy(ptr %call7.i.i.i61, ptr %id9, i32 64)
  %get.i65 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %get.i65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get.i65, align 4
  %call5.i66 = tail call i32 %35(ptr noundef %follower8, ptr noundef nonnull %call7.i.i.i61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i66)
  %cmp.i67 = icmp slt i32 %call5.i66, 0
  br i1 %cmp.i67, label %if.end.i68.error.i80_crit_edge, label %for.cond.preheader.i71

if.end.i68.error.i80_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i80

for.cond.preheader.i71:                           ; preds = %if.end.i68
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp826.i70 = icmp sgt i32 %37, 0
  br i1 %cmp826.i70, label %for.body.lr.ph.i73, label %for.cond.preheader.i71.error.i80_crit_edge

for.cond.preheader.i71.error.i80_crit_edge:       ; preds = %for.cond.preheader.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i80

for.body.lr.ph.i73:                               ; preds = %for.cond.preheader.i71
  %value.i72 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i.i61, i32 0, i32 2
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %for.body.lr.ph.i73
  %ch.027.i74 = phi i32 [ 0, %for.body.lr.ph.i73 ], [ %inc.i77, %for.body.i79.for.body.i79_crit_edge ]
  %arrayidx.i75 = getelementptr [128 x i32], ptr %value.i72, i32 0, i32 %ch.027.i74
  %38 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i75, align 4
  %arrayidx9.i76 = getelementptr %struct.link_follower, ptr %follower, i32 0, i32 3, i32 %ch.027.i74
  %40 = ptrtoint ptr %arrayidx9.i76 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx9.i76, align 4
  %inc.i77 = add nuw nsw i32 %ch.027.i74, 1
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  %cmp8.i78 = icmp slt i32 %inc.i77, %42
  br i1 %cmp8.i78, label %for.body.i79.for.body.i79_crit_edge, label %for.body.i79.error.i80_crit_edge

for.body.i79.error.i80_crit_edge:                 ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i80

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i79

error.i80:                                        ; preds = %for.body.i79.error.i80_crit_edge, %for.cond.preheader.i71.error.i80_crit_edge, %if.end.i68.error.i80_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i61) #8
  %43 = tail call i32 @llvm.smin.i32(i32 %call5.i66, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %error.i80, %if.end32.cleanup_crit_edge, %do.end, %if.then14, %if.end3.cleanup_crit_edge, %error.i, %if.then2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then14 ], [ -22, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %15, %error.i ], [ -12, %if.then2.cleanup_crit_edge ], [ %43, %error.i80 ], [ -12, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @follower_put_val(ptr noundef %follower, ptr noundef %ucontrol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %info.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %1
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i32 @follower_init(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end4.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  %info6.i = getelementptr inbounds %struct.link_follower, ptr %5, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %info.i, ptr %info6.i, i32 16)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count.i, align 4
  %max_val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %max_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_val.i, align 4
  %val.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val.i, align 4
  %hook.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hook.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end_crit_edge, label %if.then11.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %hook_private_data.i = getelementptr inbounds %struct.link_master, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hook_private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hook_private_data.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %info = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %16, label %if.end.sw.epilog_crit_edge [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond6.preheader
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond6.preheader:                              ; preds = %if.end
  %count8 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp969 = icmp sgt i32 %19, 0
  br i1 %cmp969, label %for.body10.lr.ph, label %for.cond6.preheader.sw.epilog_crit_edge

for.cond6.preheader.sw.epilog_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body10.lr.ph:                                 ; preds = %for.cond6.preheader
  %value11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %min_val = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 2
  %max_val23 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 3
  br label %for.body10

for.cond.preheader:                               ; preds = %if.end
  %count = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp271 = icmp sgt i32 %21, 0
  br i1 %cmp271, label %for.body.lr.ph, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ch.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master, align 4
  %val = getelementptr inbounds %struct.link_master, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool = icmp ne i32 %25, 0
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %ch.072
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %and = and i32 %27, %lnot.ext
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %ch.072, 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %cmp2 = icmp slt i32 %inc, %29
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body10:                                       ; preds = %if.end29.for.body10_crit_edge, %for.body10.lr.ph
  %ch.170 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc33, %if.end29.for.body10_crit_edge ]
  %arrayidx12 = getelementptr [128 x i32], ptr %value11, i32 0, i32 %ch.170
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master, align 4
  %val14 = getelementptr inbounds %struct.link_master, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val14, align 4
  %max_val = getelementptr inbounds %struct.link_master, ptr %33, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %max_val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_val, align 4
  %sub = sub i32 %35, %37
  %add = add i32 %sub, %31
  %38 = ptrtoint ptr %min_val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %min_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %39)
  %cmp18 = icmp slt i32 %add, %39
  br i1 %cmp18, label %for.body10.if.end29_crit_edge, label %if.else

for.body10.if.end29_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else:                                          ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %max_val23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_val23, align 4
  %42 = tail call i32 @llvm.smin.i32(i32 %add, i32 %41)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %for.body10.if.end29_crit_edge
  %vol.0 = phi i32 [ %39, %for.body10.if.end29_crit_edge ], [ %42, %if.else ]
  %43 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %vol.0, ptr %arrayidx12, align 4
  %inc33 = add nuw nsw i32 %ch.170, 1
  %44 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count8, align 4
  %cmp9 = icmp slt i32 %inc33, %45
  br i1 %cmp9, label %if.end29.for.body10_crit_edge, label %if.end29.sw.epilog_crit_edge

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end29.for.body10_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

sw.epilog:                                        ; preds = %if.end29.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond6.preheader.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %follower35 = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6
  %put = getelementptr inbounds %struct.link_follower, ptr %follower, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %put, align 4
  %call37 = tail call i32 %47(ptr noundef %follower35, ptr noundef %ucontrol) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %sw.epilog ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab__snd_ctl_add_follower, !1, !"__ksymtab__snd_ctl_add_follower", i1 false, i1 false}
!1 = !{!"../sound/core/vmaster.c", i32 281, i32 1}
!2 = !{ptr @__ksymtab_snd_ctl_make_virtual_master, !3, !"__ksymtab_snd_ctl_make_virtual_master", i1 false, i1 false}
!3 = !{!"../sound/core/vmaster.c", i32 434, i32 1}
!4 = !{ptr @__ksymtab_snd_ctl_add_vmaster_hook, !5, !"__ksymtab_snd_ctl_add_vmaster_hook", i1 false, i1 false}
!5 = !{!"../sound/core/vmaster.c", i32 456, i32 1}
!6 = !{ptr @__ksymtab_snd_ctl_sync_vmaster, !7, !"__ksymtab_snd_ctl_sync_vmaster", i1 false, i1 false}
!7 = !{!"../sound/core/vmaster.c", i32 488, i32 1}
!8 = !{ptr @__ksymtab_snd_ctl_apply_vmaster_followers, !9, !"__ksymtab_snd_ctl_apply_vmaster_followers", i1 false, i1 false}
!9 = !{!"../sound/core/vmaster.c", i32 521, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/core/vmaster.c", i32 103, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @follower_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @follower_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
