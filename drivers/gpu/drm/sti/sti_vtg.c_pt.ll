; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_vtg.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_vtg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_vtg_regs_offs = type { i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sti_vtg = type { ptr, [4 x %struct.sti_vtg_sync_params], i32, i32, %struct.raw_notifier_head, ptr }
%struct.sti_vtg_sync_params = type { i32, i32, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti-vtg\00", [24 x i8] zeroinitializer }, align 32
@vtg_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,vtg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_vtg_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vtg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vtg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author246 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@vtg_regs_offs = internal constant { [4 x %struct.sti_vtg_regs_offs], [48 x i8] } { [4 x %struct.sti_vtg_regs_offs] [%struct.sti_vtg_regs_offs { i32 192, i32 196, i32 200, i32 204, i32 208 }, %struct.sti_vtg_regs_offs { i32 224, i32 228, i32 232, i32 236, i32 240 }, %struct.sti_vtg_regs_offs { i32 256, i32 260, i32 264, i32 268, i32 272 }, %struct.sti_vtg_regs_offs { i32 288, i32 292, i32 296, i32 300, i32 304 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get memory resource failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get VTG interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register VTG interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@vtg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016[drm] %s %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vtg_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/sti/sti_vtg.c\00", [34 x i8] zeroinitializer }, align 32
@vtg_probe._entry_ptr = internal global ptr @vtg_probe._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 433, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"vtg_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 425, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"sti_vtg_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 431, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"vtg_regs_offs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 96, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 393, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 398, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 404, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 414, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [33 x i8] c"../drivers/gpu/drm/sti/sti_vtg.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 420, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @vtg_probe._entry, ptr @vtg_probe._entry_ptr, ptr @.str, ptr @vtg_of_match, ptr @sti_vtg_driver, ptr @vtg_regs_offs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtg_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_vtg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtg_regs_offs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_vtg_find(ptr noundef %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %np) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sti_vtg_set_config(ptr noundef %vtg, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_params = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %0 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %3 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vtg, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %5 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vtotal.i, align 4
  %conv4.i = zext i16 %6 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #5
  %8 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vtg, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #5, !srcloc !39
  %10 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vtg, align 4
  %mode30.sroa.3.0.mode.sroa_idx.i.i = getelementptr inbounds i8, ptr %mode, i32 6
  %12 = ptrtoint ptr %mode30.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %mode30.sroa.3.0.copyload.i.i = load i16, ptr %mode30.sroa.3.0.mode.sroa_idx.i.i, align 1
  %13 = ptrtoint ptr %htotal.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %mode30.sroa.453.0.copyload.i.i = load i16, ptr %htotal.i, align 1
  %conv.i.i.i = zext i16 %mode30.sroa.453.0.copyload.i.i to i32
  %conv1.i.i.i = zext i16 %mode30.sroa.3.0.copyload.i.i to i32
  %add.i.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  %mode31.sroa.3.0.mode.sroa_idx.i.i = getelementptr inbounds i8, ptr %mode, i32 16
  %14 = ptrtoint ptr %mode31.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %mode31.sroa.3.0.copyload.i.i = load i16, ptr %mode31.sroa.3.0.mode.sroa_idx.i.i, align 1
  %15 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %mode31.sroa.454.0.copyload.i.i = load i16, ptr %vtotal.i, align 1
  %mode31.sroa.555.0.mode.sroa_idx.i.i = getelementptr inbounds i8, ptr %mode, i32 24
  %16 = ptrtoint ptr %mode31.sroa.555.0.mode.sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %mode31.sroa.555.0.copyload.i.i = load i32, ptr %mode31.sroa.555.0.mode.sroa_idx.i.i, align 1
  %conv.i32.i.i = zext i16 %mode31.sroa.454.0.copyload.i.i to i32
  %conv1.i33.i.i = zext i16 %mode31.sroa.3.0.copyload.i.i to i32
  %sub.i.i.i = sub nsw i32 1, %conv1.i33.i.i
  %add.i34.i.i = add nsw i32 %sub.i.i.i, %conv.i32.i.i
  %and.i.i.i = lshr i32 %mode31.sroa.555.0.copyload.i.i, 4
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  %spec.select.i.i.i = shl nsw i32 %add.i34.i.i, %and.lobit.i.i.i
  %hdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %17 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = xor i32 %conv1.i.i.i, -1
  %sub.i40.i.i = add nsw i32 %conv.i.i.i, %sub.i.i
  %add.i41.i.i = add nsw i32 %sub.i40.i.i, %conv.i.i
  %vdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %19 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vdisplay.i.i, align 2
  %conv3.i.i = zext i16 %20 to i32
  %sub4.i.i = add nuw nsw i32 %conv3.i.i, 65535
  %add2.i.i.i = add i32 %sub4.i.i, %spec.select.i.i.i
  %shl.i.i = shl i32 %spec.select.i.i.i, 16
  %or.i.i = or i32 %shl.i.i, %add.i.i.i
  %shl6.i.i = shl i32 %add2.i.i.i, 16
  %or7.i.i = or i32 %shl6.i.i, %add.i41.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #5
  %add.ptr11.i.i = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %22) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %add.ptr15.i.i = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %21) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %add.ptr19.i.i = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 %22) #5, !srcloc !39
  %23 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal.i, align 2
  %conv.i1.i = zext i16 %24 to i32
  %hsync_end.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %25 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hsync_end.i.i, align 4
  %conv1.i.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %mode30.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mode30.sroa.3.0.mode.sroa_idx.i.i, align 2
  %conv2.i.i = zext i16 %28 to i32
  %sub.i2.i = sub nsw i32 %conv1.i.i, %conv2.i.i
  %add3.i.i = add nsw i32 %sub.i2.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %24)
  %cmp6.not.i.i = icmp ugt i16 %24, 5
  %conv.i1.op.i = sub nuw nsw i32 5, %conv.i1.i
  %spec.select.i.i = select i1 %cmp6.not.i.i, i32 5, i32 %conv.i1.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %sub.i2.i)
  %cmp11.i.i = icmp slt i32 %sub.i2.i, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %conv.i1.i)
  %cmp16.not.i.i = icmp slt i32 %add3.i.i, %conv.i1.i
  %sub19.i.i = select i1 %cmp16.not.i.i, i32 0, i32 %conv.i1.i
  %29 = sub nsw i32 0, %sub19.i.i
  %stop.0.p.i.i = select i1 %cmp11.i.i, i32 %conv.i1.i, i32 %29
  %stop.0.i.i = add nsw i32 %stop.0.p.i.i, %add3.i.i
  %shl.i3.i = shl i32 %stop.0.i.i, 16
  %or.i4.i = or i32 %shl.i3.i, %spec.select.i.i
  %30 = ptrtoint ptr %sync_params to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i4.i, ptr %sync_params, align 4
  %vsync_end.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %31 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vsync_end.i.i, align 2
  %conv25.i.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %mode31.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mode31.sroa.3.0.mode.sroa_idx.i.i, align 4
  %conv26.i.i = zext i16 %34 to i32
  %sub27.i.i = add nuw nsw i32 %conv25.i.i, 1
  %add28.i.i = sub nsw i32 %sub27.i.i, %conv26.i.i
  %shl39.i.i = shl i32 %add28.i.i, 16
  %or40.i.i = or i32 %shl39.i.i, 1
  %vsync_line_top.i.i = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %vsync_line_top.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or40.i.i, ptr %vsync_line_top.i.i, align 4
  %vsync_off_top.i.i = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %vsync_off_top.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 327685, ptr %vsync_off_top.i.i, align 4
  %vsync_line_bot.i.i = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %vsync_line_bot.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or40.i.i, ptr %vsync_line_bot.i.i, align 4
  %vsync_off_bot.i.i = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %vsync_off_bot.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 327685, ptr %vsync_off_bot.i.i, align 4
  %arrayidx8.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %htotal.i, align 2
  %conv.i6.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hsync_end.i.i, align 4
  %conv1.i8.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %mode30.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mode30.sroa.3.0.mode.sroa_idx.i.i, align 2
  %conv2.i10.i = zext i16 %44 to i32
  %sub.i11.i = sub nsw i32 %conv1.i8.i, %conv2.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i11.i)
  %cmp11.i15.i = icmp slt i32 %sub.i11.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i11.i, i32 %conv.i6.i)
  %cmp16.not.i16.i = icmp slt i32 %sub.i11.i, %conv.i6.i
  %sub19.i17.i = select i1 %cmp16.not.i16.i, i32 0, i32 %conv.i6.i
  %45 = sub nsw i32 0, %sub19.i17.i
  %stop.0.p.i18.i = select i1 %cmp11.i15.i, i32 %conv.i6.i, i32 %45
  %stop.0.i19.i = add nsw i32 %stop.0.p.i18.i, %sub.i11.i
  %shl.i20.i = shl i32 %stop.0.i19.i, 16
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl.i20.i, ptr %arrayidx8.i, align 4
  %47 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vsync_end.i.i, align 2
  %conv25.i23.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %mode31.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mode31.sroa.3.0.mode.sroa_idx.i.i, align 4
  %conv26.i25.i = zext i16 %50 to i32
  %sub27.i26.i = add nuw nsw i32 %conv25.i23.i, 1
  %add28.i27.i = sub nsw i32 %sub27.i26.i, %conv26.i25.i
  %shl39.i28.i = shl i32 %add28.i27.i, 16
  %or40.i29.i = or i32 %shl39.i28.i, 1
  %vsync_line_top.i30.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 1, i32 1
  %51 = ptrtoint ptr %vsync_line_top.i30.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or40.i29.i, ptr %vsync_line_top.i30.i, align 4
  %vsync_off_top.i32.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 1, i32 3
  %52 = ptrtoint ptr %vsync_off_top.i32.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %vsync_off_top.i32.i, align 4
  %vsync_line_bot.i33.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 1, i32 2
  %53 = ptrtoint ptr %vsync_line_bot.i33.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or40.i29.i, ptr %vsync_line_bot.i33.i, align 4
  %vsync_off_bot.i34.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 1, i32 4
  %54 = ptrtoint ptr %vsync_off_bot.i34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %vsync_off_bot.i34.i, align 4
  %arrayidx9.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %htotal.i, align 2
  %conv.i36.i = zext i16 %56 to i32
  %57 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hsync_end.i.i, align 4
  %conv1.i38.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %mode30.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mode30.sroa.3.0.mode.sroa_idx.i.i, align 2
  %conv2.i40.i = zext i16 %60 to i32
  %sub.i41.i = sub nsw i32 %conv1.i38.i, %conv2.i40.i
  %add3.i42.i = add nsw i32 %sub.i41.i, -9
  %add5.i43.i = add nsw i32 %conv.i36.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.i41.i)
  %cmp11.i44.i = icmp slt i32 %sub.i41.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i42.i, i32 %conv.i36.i)
  %cmp16.not.i45.i = icmp slt i32 %add3.i42.i, %conv.i36.i
  %sub19.i46.i = select i1 %cmp16.not.i45.i, i32 0, i32 %conv.i36.i
  %61 = sub nsw i32 0, %sub19.i46.i
  %stop.0.p.i47.i = select i1 %cmp11.i44.i, i32 %conv.i36.i, i32 %61
  %stop.0.i48.i = add nsw i32 %stop.0.p.i47.i, %add3.i42.i
  %shl.i49.i = shl i32 %stop.0.i48.i, 16
  %or.i50.i = or i32 %shl.i49.i, %add5.i43.i
  %62 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i50.i, ptr %arrayidx9.i, align 4
  %63 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vtotal.i, align 4
  %conv30.i.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vsync_end.i.i, align 2
  %conv32.i.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %mode31.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mode31.sroa.3.0.mode.sroa_idx.i.i, align 4
  %conv34.i.i = zext i16 %68 to i32
  %sub35.i.i = sub nsw i32 %conv32.i.i, %conv34.i.i
  %shl39.i51.i = shl i32 %sub35.i.i, 16
  %or40.i52.i = or i32 %shl39.i51.i, %conv30.i.i
  %vsync_line_top.i53.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 2, i32 1
  %69 = ptrtoint ptr %vsync_line_top.i53.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or40.i52.i, ptr %vsync_line_top.i53.i, align 4
  %shl41.i.i = shl i32 %add5.i43.i, 16
  %or42.i54.i = or i32 %shl41.i.i, %add5.i43.i
  %vsync_off_top.i55.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 2, i32 3
  %70 = ptrtoint ptr %vsync_off_top.i55.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or42.i54.i, ptr %vsync_off_top.i55.i, align 4
  %vsync_line_bot.i56.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 2, i32 2
  %71 = ptrtoint ptr %vsync_line_bot.i56.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or40.i52.i, ptr %vsync_line_bot.i56.i, align 4
  %vsync_off_bot.i57.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 2, i32 4
  %72 = ptrtoint ptr %vsync_off_bot.i57.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or42.i54.i, ptr %vsync_off_bot.i57.i, align 4
  %arrayidx10.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %htotal.i, align 2
  %conv.i59.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hsync_end.i.i, align 4
  %conv1.i61.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %mode30.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mode30.sroa.3.0.mode.sroa_idx.i.i, align 2
  %conv2.i63.i = zext i16 %78 to i32
  %sub.i64.i = sub nsw i32 %conv1.i61.i, %conv2.i63.i
  %add3.i65.i = add nsw i32 %sub.i64.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %74)
  %cmp6.not.i67.i = icmp ugt i16 %74, 7
  %conv.i59.op.i = sub nuw nsw i32 7, %conv.i59.i
  %spec.select.i69.i = select i1 %cmp6.not.i67.i, i32 7, i32 %conv.i59.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %sub.i64.i)
  %cmp11.i70.i = icmp slt i32 %sub.i64.i, -7
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i65.i, i32 %conv.i59.i)
  %cmp16.not.i71.i = icmp slt i32 %add3.i65.i, %conv.i59.i
  %sub19.i72.i = select i1 %cmp16.not.i71.i, i32 0, i32 %conv.i59.i
  %79 = sub nsw i32 0, %sub19.i72.i
  %stop.0.p.i73.i = select i1 %cmp11.i70.i, i32 %conv.i59.i, i32 %79
  %stop.0.i74.i = add nsw i32 %stop.0.p.i73.i, %add3.i65.i
  %shl.i75.i = shl i32 %stop.0.i74.i, 16
  %or.i76.i = or i32 %shl.i75.i, %spec.select.i69.i
  %80 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i76.i, ptr %arrayidx10.i, align 4
  %81 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vsync_end.i.i, align 2
  %conv25.i78.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %mode31.sroa.3.0.mode.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %mode31.sroa.3.0.mode.sroa_idx.i.i, align 4
  %conv26.i80.i = zext i16 %84 to i32
  %sub27.i81.i = add nuw nsw i32 %conv25.i78.i, 1
  %add28.i82.i = sub nsw i32 %sub27.i81.i, %conv26.i80.i
  %shl39.i83.i = shl i32 %add28.i82.i, 16
  %or40.i84.i = or i32 %shl39.i83.i, 1
  %vsync_line_top.i85.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 3, i32 1
  %85 = ptrtoint ptr %vsync_line_top.i85.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or40.i84.i, ptr %vsync_line_top.i85.i, align 4
  %vsync_off_top.i88.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 3, i32 3
  %86 = ptrtoint ptr %vsync_off_top.i88.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 458759, ptr %vsync_off_top.i88.i, align 4
  %vsync_line_bot.i89.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 3, i32 2
  %87 = ptrtoint ptr %vsync_line_bot.i89.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or40.i84.i, ptr %vsync_line_bot.i89.i, align 4
  %vsync_off_bot.i90.i = getelementptr %struct.sti_vtg, ptr %vtg, i32 0, i32 1, i32 3, i32 4
  %88 = ptrtoint ptr %vsync_off_bot.i90.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 458759, ptr %vsync_off_bot.i90.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %entry
  %i.091.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body12.i.do.body12.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %arrayidx15.i = getelementptr %struct.sti_vtg_sync_params, ptr %sync_params, i32 %i.091.i
  %89 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx15.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %92 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vtg, align 4
  %arrayidx17.i = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %i.091.i
  %94 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %93, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %91) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %vsync_line_top.i = getelementptr %struct.sti_vtg_sync_params, ptr %sync_params, i32 %i.091.i, i32 1
  %96 = ptrtoint ptr %vsync_line_top.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vsync_line_top.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  %99 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vtg, align 4
  %top_v_vd.i = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %i.091.i, i32 1
  %101 = ptrtoint ptr %top_v_vd.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %top_v_vd.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %100, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %98) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %vsync_line_bot.i = getelementptr %struct.sti_vtg_sync_params, ptr %sync_params, i32 %i.091.i, i32 2
  %103 = ptrtoint ptr %vsync_line_bot.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vsync_line_bot.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #5
  %106 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vtg, align 4
  %bot_v_vd.i = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %i.091.i, i32 2
  %108 = ptrtoint ptr %bot_v_vd.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bot_v_vd.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %107, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %105) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %vsync_off_top.i = getelementptr %struct.sti_vtg_sync_params, ptr %sync_params, i32 %i.091.i, i32 3
  %110 = ptrtoint ptr %vsync_off_top.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vsync_off_top.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  %113 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vtg, align 4
  %top_v_hd.i = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %i.091.i, i32 3
  %115 = ptrtoint ptr %top_v_hd.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %top_v_hd.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %114, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %112) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %vsync_off_bot.i = getelementptr %struct.sti_vtg_sync_params, ptr %sync_params, i32 %i.091.i, i32 4
  %117 = ptrtoint ptr %vsync_off_bot.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vsync_off_bot.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  %120 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vtg, align 4
  %bot_v_hd.i = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %i.091.i, i32 4
  %122 = ptrtoint ptr %bot_v_hd.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bot_v_hd.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %121, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %119) #5, !srcloc !39
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %vtg_set_mode.exit, label %do.body12.i.do.body12.i_crit_edge

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12.i

vtg_set_mode.exit:                                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vtg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vtg, align 4
  %add.ptr.i4 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vtg, align 4
  %add.ptr.i5 = getelementptr i8, ptr %129, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 -65536) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vtg, align 4
  %add.ptr4.i = getelementptr i8, ptr %131, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -65536) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vtg, align 4
  %add.ptr8.i = getelementptr i8, ptr %133, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 50331648) #5, !srcloc !39
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_vtg_get_line_number(ptr nocapture noundef readonly byval(%struct.drm_display_mode) align 4 %mode, i32 noundef %y) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %0 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vtotal, align 4
  %conv = zext i16 %1 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %2 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsync_start, align 4
  %conv1 = zext i16 %3 to i32
  %sub = add nuw nsw i32 %conv, 1
  %add = sub nsw i32 %sub, %conv1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 4
  %and.lobit = and i32 %and, 1
  %spec.select = shl nsw i32 %add, %and.lobit
  %add2 = add i32 %spec.select, %y
  ret i32 %add2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_vtg_get_pixel_number(ptr nocapture noundef readonly byval(%struct.drm_display_mode) align 4 %mode, i32 noundef %x) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %0 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal, align 2
  %conv = zext i16 %1 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %2 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsync_start, align 2
  %conv1 = zext i16 %3 to i32
  %sub = add i32 %conv, %x
  %add = sub i32 %sub, %conv1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_vtg_register_client(ptr noundef %vtg, ptr noundef %nb, ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 5
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %crtc, ptr %crtc1, align 4
  %notifier_list = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 4
  %call = tail call i32 @raw_notifier_chain_register(ptr noundef %notifier_list, ptr noundef %nb) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_vtg_unregister_client(ptr noundef %vtg, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier_list = getelementptr inbounds %struct.sti_vtg, ptr %vtg, i32 0, i32 4
  %call = tail call i32 @raw_notifier_chain_unregister(ptr noundef %notifier_list, ptr noundef %nb) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtg_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call7 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %1, i32 noundef %add.i) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.sti_vtg, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end11
  %notifier_list = getelementptr inbounds %struct.sti_vtg, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %notifier_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %notifier_list, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.body.dev_name.exit_crit_edge ]
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @vtg_irq, ptr noundef nonnull @vtg_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i51 = icmp eq ptr %15, null
  br i1 %tobool.not.i51, label %if.end.i52, label %if.end22.dev_name.exit54_crit_edge

if.end22.dev_name.exit54_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit54

if.end.i52:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit54

dev_name.exit54:                                  ; preds = %if.end.i52, %if.end22.dev_name.exit54_crit_edge
  %retval.0.i53 = phi ptr [ %17, %if.end.i52 ], [ %15, %if.end22.dev_name.exit54_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i53) #8
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit54, %if.then21, %if.then14, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then14 ], [ %call19, %if.then21 ], [ 0, %dev_name.exit54 ], [ -12, %if.then10 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtg_irq(i32 noundef %irq, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !55
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %irq_status = getelementptr inbounds %struct.sti_vtg, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_status, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #5, !srcloc !39
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtg_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.sti_vtg, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_status, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %notifier_list = getelementptr inbounds %struct.sti_vtg, ptr %arg, i32 0, i32 4
  %crtc = getelementptr inbounds %struct.sti_vtg, ptr %arg, i32 0, i32 5
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %call = tail call i32 @raw_notifier_call_chain(ptr noundef %notifier_list, i32 noundef %cond, ptr noundef %3) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 433, i32 11}
!2 = !{ptr @sti_vtg_driver, !3, !"sti_vtg_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 431, i32 24}
!4 = !{ptr @__UNIQUE_ID_author246, !5, !"__UNIQUE_ID_author246", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 440, i32 1}
!6 = !{ptr @__UNIQUE_ID_description247, !7, !"__UNIQUE_ID_description247", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 441, i32 1}
!8 = !{ptr @__UNIQUE_ID_file248, !9, !"__UNIQUE_ID_file248", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 442, i32 1}
!10 = !{ptr @__UNIQUE_ID_license249, !9, !"__UNIQUE_ID_license249", i1 false, i1 false}
!11 = !{ptr @vtg_regs_offs, !12, !"vtg_regs_offs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 96, i32 39}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 393, i32 3}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 398, i32 3}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 404, i32 3}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 414, i32 3}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 420, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vtg_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vtg_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @vtg_of_match, !28, !"vtg_of_match", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_vtg.c", i32 425, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2154688148}
!39 = !{i64 4045536}
!40 = !{i64 2154688586}
!41 = !{i64 2154686296}
!42 = !{i64 2154686755}
!43 = !{i64 2154687215}
!44 = !{i64 2154687686}
!45 = !{i64 2154689064}
!46 = !{i64 2154689538}
!47 = !{i64 2154690043}
!48 = !{i64 2154690547}
!49 = !{i64 2154691048}
!50 = !{i64 2154691520}
!51 = !{i64 2154685891}
!52 = !{i64 2154691924}
!53 = !{i64 2154692334}
!54 = !{i64 2154692994}
!55 = !{i64 4045954}
!56 = !{i64 2154693936}
!57 = !{i64 2154694170}
!58 = !{i64 2154694879}
