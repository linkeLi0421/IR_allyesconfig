; ModuleID = '/llk/IR_all_yes/drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c_pt.bc'
source_filename = "../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vfio_platform_reset_node = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.vfio_platform_device = type { %struct.vfio_device, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8 }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vfio_platform_region = type { i64, i32, i32, i32, ptr }

@__UNIQUE_ID_alias232 = internal constant [64 x i8] c"vfio_platform_bcmflexrm.alias=vfio-reset:brcm,iproc-flexrm-mbox\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm,iproc-flexrm-mbox\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfio_platform_bcmflexrm__233_101_vfio_platform_bcmflexrm_reset_module_init6 = internal global ptr @vfio_platform_bcmflexrm_reset_module_init, section ".initcall6.init", align 4
@__exitcall_vfio_platform_bcmflexrm_reset_module_exit = internal global ptr @vfio_platform_bcmflexrm_reset_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file234 = internal constant [81 x i8] c"vfio_platform_bcmflexrm.file=drivers/vfio/platform/reset/vfio_platform_bcmflexrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [39 x i8] c"vfio_platform_bcmflexrm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [68 x i8] c"vfio_platform_bcmflexrm.author=Anup Patel <anup.patel@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [91 x i8] c"vfio_platform_bcmflexrm.description=Reset support for Broadcom FlexRM VFIO platform device\00", section ".modinfo", align 1
@vfio_platform_bcmflexrm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FlexRM ring%d shutdown error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vfio_platform_bcmflexrm_reset\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_platform_bcmflexrm_reset._entry_ptr = internal global ptr @vfio_platform_bcmflexrm_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vfio_platform_bcmflexrm_reset_module_init.vfio_platform_bcmflexrm_reset_node = internal global { %struct.vfio_platform_reset_node, [44 x i8] } { %struct.vfio_platform_reset_node { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @vfio_platform_bcmflexrm_reset }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 88, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [35 x i8] c"vfio_platform_bcmflexrm_reset_node\00", align 1
@___asan_gen_.28 = private constant [57 x i8] c"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 100, i32 1 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_vfio_platform_bcmflexrm_reset_module_exit, ptr @__initcall__kmod_vfio_platform_bcmflexrm__233_101_vfio_platform_bcmflexrm_reset_module_init6, ptr @vfio_platform_bcmflexrm_reset._entry, ptr @vfio_platform_bcmflexrm_reset._entry_ptr, ptr @vfio_platform_bcmflexrm_reset_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vfio_platform_bcmflexrm_reset_module_init.vfio_platform_bcmflexrm_reset_node], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_bcmflexrm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_bcmflexrm_reset_module_init.vfio_platform_bcmflexrm_reset_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_platform_bcmflexrm_reset_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfio_platform_unregister_reset(ptr noundef nonnull @.str, ptr noundef nonnull @vfio_platform_bcmflexrm_reset) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_platform_unregister_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_bcmflexrm_reset(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions, align 4
  %ioaddr = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv = trunc i64 %5 to i32
  %size = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv, i32 noundef %7) #4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ioaddr, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %size8 = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size8, align 8
  %add.ptr44 = getelementptr i8, ptr %10, i32 %12
  %cmp45 = icmp ult ptr %10, %add.ptr44
  br i1 %cmp45, label %for.body.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.049 = phi ptr [ %10, %for.body.lr.ph ], [ %add.ptr20, %for.inc.for.body_crit_edge ]
  %ring_num.048 = phi i32 [ 0, %for.body.lr.ph ], [ %ring_num.1, %for.inc.for.body_crit_edge ]
  %ret.046 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ring.049) #4, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 825241718, i32 %13)
  %cmp12 = icmp eq i32 %13, 825241718
  br i1 %cmp12, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %ring.049, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #4, !srcloc !31
  %add.ptr2.i = getelementptr i8, ptr %ring.049, i32 56
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then14
  %timeout.0.i = phi i32 [ 1000, %if.then14 ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !30
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end6.i:                                        ; preds = %do.body.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !31
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.end16.i.do.body8.i_crit_edge, %if.end6.i
  %timeout.2.i = phi i32 [ 1000, %if.end6.i ], [ %dec18.i, %if.end16.i.do.body8.i_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !30
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.i = icmp eq i32 %18, 0
  br i1 %tobool14.not.i, label %do.body8.i.if.end18_crit_edge, label %if.end16.i

do.body8.i.if.end18_crit_edge:                    ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end16.i:                                       ; preds = %do.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  %dec18.i = add nsw i32 %timeout.2.i, -1
  %tobool19.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.do.end_crit_edge, label %if.end16.i.do.body8.i_crit_edge

if.end16.i.do.body8.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body8.i

if.end16.i.do.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end16.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %ring_num.048, i32 noundef -110) #7
  %or = or i32 %ret.046, -110
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body8.i.if.end18_crit_edge
  %ret.1 = phi i32 [ %or, %do.end ], [ %ret.046, %do.body8.i.if.end18_crit_edge ]
  %inc = add i32 %ring_num.048, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end18 ], [ %ret.046, %for.body.for.inc_crit_edge ]
  %ring_num.1 = phi i32 [ %inc, %if.end18 ], [ %ring_num.048, %for.body.for.inc_crit_edge ]
  %add.ptr20 = getelementptr i8, ptr %ring.049, i32 65536
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %24 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size8, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %cmp = icmp ult ptr %add.ptr20, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %ret.2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_bcmflexrm_reset_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__vfio_platform_register_reset(ptr noundef nonnull @vfio_platform_bcmflexrm_reset_module_init.vfio_platform_bcmflexrm_reset_node) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vfio_platform_register_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_alias232, !1, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!1 = !{!"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c", i32 100, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_vfio_platform_bcmflexrm__233_101_vfio_platform_bcmflexrm_reset_module_init6, !1, !"__initcall__kmod_vfio_platform_bcmflexrm__233_101_vfio_platform_bcmflexrm_reset_module_init6", i1 false, i1 false}
!4 = !{ptr @__exitcall_vfio_platform_bcmflexrm_reset_module_exit, !1, !"__exitcall_vfio_platform_bcmflexrm_reset_module_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c", i32 103, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author236, !9, !"__UNIQUE_ID_author236", i1 false, i1 false}
!9 = !{!"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c", i32 104, i32 1}
!10 = !{ptr @__UNIQUE_ID_description237, !11, !"__UNIQUE_ID_description237", i1 false, i1 false}
!11 = !{!"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c", i32 105, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/vfio/platform/reset/vfio_platform_bcmflexrm.c", i32 88, i32 5}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vfio_platform_bcmflexrm_reset._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @vfio_platform_bcmflexrm_reset._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vfio_platform_bcmflexrm_reset_module_init.vfio_platform_bcmflexrm_reset_node, !1, !"vfio_platform_bcmflexrm_reset_node", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 4779520}
!31 = !{i64 4779102}
