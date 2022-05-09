; ModuleID = '/llk/IR_all_yes/drivers/vfio/platform/reset/vfio_platform_amdxgbe.c_pt.bc'
source_filename = "../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__UNIQUE_ID_alias275 = internal constant [60 x i8] c"vfio_platform_amdxgbe.alias=vfio-reset:amd,xgbe-seattle-v1a\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amd,xgbe-seattle-v1a\00", [43 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfio_platform_amdxgbe__276_112_vfio_platform_amdxgbe_reset_module_init6 = internal global ptr @vfio_platform_amdxgbe_reset_module_init, section ".initcall6.init", align 4
@__exitcall_vfio_platform_amdxgbe_reset_module_exit = internal global ptr @vfio_platform_amdxgbe_reset_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version277 = internal constant [34 x i8] c"vfio_platform_amdxgbe.version=0.1\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vfio_platform_amdxgbe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_file278 = internal constant [77 x i8] c"vfio_platform_amdxgbe.file=drivers/vfio/platform/reset/vfio-platform-amdxgbe\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [37 x i8] c"vfio_platform_amdxgbe.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [64 x i8] c"vfio_platform_amdxgbe.author=Eric Auger <eric.auger@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description281 = internal constant [82 x i8] c"vfio_platform_amdxgbe.description=Reset support for AMD xgbe vfio platform device\00", section ".modinfo", align 1
@vfio_platform_amdxgbe_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 82, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: XGBE PHY reset timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vfio_platform_amdxgbe_reset\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/vfio/platform/reset/vfio_platform_amdxgbe.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_platform_amdxgbe_reset._entry_ptr = internal global ptr @vfio_platform_amdxgbe_reset._entry, section ".printk_index", align 4
@vfio_platform_amdxgbe_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 107, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: MAC SW reset failed\0A\00", [39 x i8] zeroinitializer }, align 32
@vfio_platform_amdxgbe_reset._entry_ptr.11 = internal global ptr @vfio_platform_amdxgbe_reset._entry.9, section ".printk_index", align 4
@vfio_platform_amdxgbe_reset_module_init.vfio_platform_amdxgbe_reset_node = internal global { %struct.vfio_platform_reset_node, [44 x i8] } { %struct.vfio_platform_reset_node { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @vfio_platform_amdxgbe_reset }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 114, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 81, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 107, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [33 x i8] c"vfio_platform_amdxgbe_reset_node\00", align 1
@___asan_gen_.49 = private constant [55 x i8] c"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 112, i32 1 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__UNIQUE_ID_version277, ptr @__exitcall_vfio_platform_amdxgbe_reset_module_exit, ptr @__initcall__kmod_vfio_platform_amdxgbe__276_112_vfio_platform_amdxgbe_reset_module_init6, ptr @__modver_attr, ptr @vfio_platform_amdxgbe_reset._entry, ptr @vfio_platform_amdxgbe_reset._entry.9, ptr @vfio_platform_amdxgbe_reset._entry_ptr, ptr @vfio_platform_amdxgbe_reset._entry_ptr.11, ptr @vfio_platform_amdxgbe_reset_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @vfio_platform_amdxgbe_reset_module_init.vfio_platform_amdxgbe_reset_node], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_amdxgbe_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_amdxgbe_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_amdxgbe_reset_module_init.vfio_platform_amdxgbe_reset_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_platform_amdxgbe_reset_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfio_platform_unregister_reset(ptr noundef nonnull @.str, ptr noundef nonnull @vfio_platform_amdxgbe_reset) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_platform_unregister_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_amdxgbe_reset(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions, align 4
  %arrayidx2 = getelementptr %struct.vfio_platform_region, ptr %1, i32 1
  %ioaddr = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

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
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ioaddr8 = getelementptr %struct.vfio_platform_region, ptr %1, i32 1, i32 4
  %9 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr8, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then10:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx2, align 8
  %conv12 = trunc i64 %12 to i32
  %size13 = getelementptr %struct.vfio_platform_region, ptr %1, i32 1, i32 1
  %13 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size13, align 8
  %call14 = tail call ptr @ioremap(i32 noundef %conv12, i32 noundef %14) #4
  %15 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call14, ptr %ioaddr8, align 4
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.then10.cleanup_crit_edge, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.then10.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  %16 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 196608) #4, !srcloc !41
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %19 = or i32 %18, 8388608
  %20 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i95 = getelementptr i8, ptr %21, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 196608) #4, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !41
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end20
  %count.0 = phi i32 [ 50, %if.end20 ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 20) #4
  %22 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i96 = getelementptr i8, ptr %23, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 196608) #4, !srcloc !41
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %25 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool27.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool26.not, label %do.end.if.end34_crit_edge, label %do.end33

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 9
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end.if.end34_crit_edge
  %28 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i97 = getelementptr i8, ptr %29, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 458752) #4, !srcloc !41
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %31 = and i32 %30, -1048577
  %32 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i98 = getelementptr i8, ptr %33, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 458752) #4, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !41
  %34 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i99 = getelementptr i8, ptr %35, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 -2147024896) #4, !srcloc !41
  %add.ptr3.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #4, !srcloc !41
  %36 = ptrtoint ptr %ioaddr8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr8, align 4
  %add.ptr.i100 = getelementptr i8, ptr %37, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 -2147024896) #4, !srcloc !41
  %add.ptr3.i101 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i101, i32 0) #4, !srcloc !41
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 12288
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %41 = or i32 %40, 16777216
  %42 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr, align 4
  %add.ptr45 = getelementptr i8, ptr %43, i32 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %41) #4, !srcloc !41
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #4
  br label %land.rhs48

land.rhs48:                                       ; preds = %while.body.land.rhs48_crit_edge, %if.end34
  %dec46102 = phi i32 [ 1999, %if.end34 ], [ %dec46, %while.body.land.rhs48_crit_edge ]
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 4
  %add.ptr50 = getelementptr i8, ptr %45, i32 12288
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool53.not = icmp eq i32 %47, 0
  br i1 %tobool53.not, label %land.rhs48.cleanup_crit_edge, label %while.body

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %land.rhs48
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #4
  %dec46 = add nsw i32 %dec46102, -1
  %tobool47.not = icmp eq i32 %dec46, 0
  br i1 %tobool47.not, label %do.end59.critedge, label %while.body.land.rhs48_crit_edge

while.body.land.rhs48_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs48

do.end59.critedge:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %device60 = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 9
  %48 = ptrtoint ptr %device60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device60, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end59.critedge, %land.rhs48.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then10.cleanup_crit_edge ], [ 0, %do.end59.critedge ], [ 0, %land.rhs48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_amdxgbe_reset_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__vfio_platform_register_reset(ptr noundef nonnull @vfio_platform_amdxgbe_reset_module_init.vfio_platform_amdxgbe_reset_node) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_alias275, !1, !"__UNIQUE_ID_alias275", i1 false, i1 false}
!1 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 112, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_vfio_platform_amdxgbe__276_112_vfio_platform_amdxgbe_reset_module_init6, !1, !"__initcall__kmod_vfio_platform_amdxgbe__276_112_vfio_platform_amdxgbe_reset_module_init6", i1 false, i1 false}
!4 = !{ptr @__exitcall_vfio_platform_amdxgbe_reset_module_exit, !1, !"__exitcall_vfio_platform_amdxgbe_reset_module_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version277, !6, !"__UNIQUE_ID_version277", i1 false, i1 false}
!6 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 114, i32 1}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file278, !12, !"__UNIQUE_ID_file278", i1 false, i1 false}
!12 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 115, i32 1}
!13 = !{ptr @__UNIQUE_ID_license279, !12, !"__UNIQUE_ID_license279", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author280, !15, !"__UNIQUE_ID_author280", i1 false, i1 false}
!15 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 116, i32 1}
!16 = !{ptr @__UNIQUE_ID_description281, !17, !"__UNIQUE_ID_description281", i1 false, i1 false}
!17 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 117, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 81, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vfio_platform_amdxgbe_reset._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @vfio_platform_amdxgbe_reset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/vfio/platform/reset/vfio_platform_amdxgbe.c", i32 107, i32 3}
!28 = !{ptr @vfio_platform_amdxgbe_reset._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vfio_platform_amdxgbe_reset._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @vfio_platform_amdxgbe_reset_module_init.vfio_platform_amdxgbe_reset_node, !1, !"vfio_platform_amdxgbe_reset_node", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2151579146}
!41 = !{i64 4037024}
!42 = !{i64 4037442}
!43 = !{i64 2151577791}
