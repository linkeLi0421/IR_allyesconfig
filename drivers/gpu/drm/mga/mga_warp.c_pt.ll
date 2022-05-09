; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mga/mga_warp.c_pt.bc'
source_filename = "../drivers/gpu/drm/mga/mga_warp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.drm_mga_private = type { %struct.drm_mga_primary_buffer, ptr, ptr, ptr, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_mga_primary_buffer = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>

@__UNIQUE_ID_firmware250 = internal constant [33 x i8] c"mga.firmware=matrox/g200_warp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware251 = internal constant [33 x i8] c"mga.firmware=matrox/g400_warp.fw\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"matrox/g400_warp.fw\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"matrox/g200_warp.fw\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mga_warp\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mga: Failed to register microcode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mga: Failed to load microcode \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mga: Invalid microcode \22%s\22\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MGA ucode size = %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"microcode too large! (%u > %lu)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" pcbase = 0x%08lx  vcbase = %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WARP engine config failed! 0x%x != 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 77, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 62, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 66, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 73, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 75, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 81, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 96, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 101, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 103, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 3 }
@___asan_gen_.44 = private constant [34 x i8] c"../drivers/gpu/drm/mga/mga_warp.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 161, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 76, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_firmware250, ptr @__UNIQUE_ID_firmware251, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_warp_install_microcode(ptr nocapture noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  %lfw.i = alloca ptr, align 4
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %warp = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 32
  %0 = ptrtoint ptr %warp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %warp, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %chipset = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 6
  %6 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chipset, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge116
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge116:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge116
  %firmware_name.0 = phi ptr [ @.str.1, %sw.bb2 ], [ @.str, %entry.sw.epilog_crit_edge ], [ @.str, %entry.sw.epilog_crit_edge116 ]
  %n_pipes.0 = phi i32 [ 8, %sw.bb2 ], [ 16, %entry.sw.epilog_crit_edge ], [ 16, %entry.sw.epilog_crit_edge116 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %9 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 255, i32 48)
  %11 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fwnode.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %9, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %properties.i.i, align 8
  %17 = call ptr @memset(ptr %id3.i.i, i32 0, i32 20)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  %18 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %dev = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #5
  %19 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !41
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull %firmware_name.0, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %20 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %sub.i.i = add i32 %25, -6
  %arrayidx.i.i = getelementptr i8, ptr %23, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %23, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %23, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %26 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i.i, label %if.end7, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %29, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %firmware_name.0) #8
  %30 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %31) #5
  br label %if.then6

if.then6:                                         ; preds = %do.end.i, %if.end.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.if.then6_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #5
  call void @platform_device_unregister(ptr noundef %call.i.i) #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull %firmware_name.0) #5
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #5
  call void @platform_device_unregister(ptr noundef %call.i.i) #5
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %tobool8.not100 = icmp eq ptr %33, null
  br i1 %tobool8.not100, label %if.end7.if.then12_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %where.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %size.0102 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %rec.0101 = phi ptr [ %add.ptr.i.i, %for.body.for.body_crit_edge ], [ %33, %if.end7.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0101, i32 0, i32 1
  %34 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %len, align 1
  %conv = zext i16 %35 to i32
  %add = add nuw nsw i32 %conv, 255
  %and = and i32 %add, 130816
  %add9 = add i32 %and, %size.0102
  %inc = add i32 %where.0103, 1
  %add.i.i.i81 = add i16 %35, 6
  %conv.i.i = zext i16 %add.i.i.i81 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %rec.0101, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i82 = icmp eq i16 %37, 0
  %tobool8.not114 = icmp eq ptr %add.ptr.i.i, null
  %tobool8.not = select i1 %tobool.not.i82, i1 true, i1 %tobool8.not114
  br i1 %tobool8.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = add i32 %add9, 4095
  %phi.bo110 = and i32 %phi.bo, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n_pipes.0)
  %cmp.not = icmp eq i32 %inc, %n_pipes.0
  br i1 %cmp.not, label %if.end13, label %for.end.if.then12_crit_edge

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef nonnull %firmware_name.0) #5
  br label %out

if.end13:                                         ; preds = %for.end
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %phi.bo110) #5
  %38 = ptrtoint ptr %warp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %warp, align 4
  %size17 = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.bo110, i32 %41)
  %cmp18 = icmp ugt i32 %phi.bo110, %41
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %phi.bo110, i32 noundef %41) #5
  br label %out

if.end23:                                         ; preds = %if.end13
  %warp_pipe_phys = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 5
  %42 = call ptr @memset(ptr %warp_pipe_phys, i32 0, i32 64)
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %tobool26.not105 = icmp eq ptr %44, null
  br i1 %tobool26.not105, label %if.end23.out_crit_edge, label %if.end23.for.body27_crit_edge

if.end23.for.body27_crit_edge:                    ; preds = %if.end23
  br label %for.body27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %if.end23.for.body27_crit_edge
  %vcbase.0109 = phi ptr [ %add.ptr, %for.body27.for.body27_crit_edge ], [ %3, %if.end23.for.body27_crit_edge ]
  %where.1108 = phi i32 [ %inc36, %for.body27.for.body27_crit_edge ], [ 0, %if.end23.for.body27_crit_edge ]
  %rec.1107 = phi ptr [ %add.ptr.i.i88, %for.body27.for.body27_crit_edge ], [ %44, %if.end23.for.body27_crit_edge ]
  %pcbase.0106 = phi i32 [ %add35, %for.body27.for.body27_crit_edge ], [ %5, %if.end23.for.body27_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %pcbase.0106, ptr noundef %vcbase.0109) #5
  %arrayidx = getelementptr %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 5, i32 %where.1108
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %pcbase.0106, ptr %arrayidx, align 4
  %len29 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.1107, i32 0, i32 1
  %46 = ptrtoint ptr %len29 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %len29, align 1
  %conv30 = zext i16 %47 to i32
  %add31 = add nuw nsw i32 %conv30, 255
  %and32 = and i32 %add31, 130816
  %data33 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.1107, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %vcbase.0109, ptr %data33, i32 %conv30)
  %add35 = add i32 %and32, %pcbase.0106
  %add.ptr = getelementptr i8, ptr %vcbase.0109, i32 %and32
  %inc36 = add i32 %where.1108, 1
  %49 = load i16, ptr %len29, align 1
  %add.i.i.i84 = add i16 %49, 6
  %conv.i.i85 = zext i16 %add.i.i.i84 to i32
  %add.i.i86 = add nuw nsw i32 %conv.i.i85, 3
  %and.i.i87 = and i32 %add.i.i86, 131068
  %add.ptr.i.i88 = getelementptr i8, ptr %rec.1107, i32 %and.i.i87
  %len.i89 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i88, i32 0, i32 1
  %50 = ptrtoint ptr %len.i89 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %len.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i90 = icmp eq i16 %51, 0
  %tobool26.not115 = icmp eq ptr %add.ptr.i.i88, null
  %tobool26.not = select i1 %tobool.not.i90, i1 true, i1 %tobool26.not115
  br i1 %tobool26.not, label %for.body27.out_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27

for.body27.out_crit_edge:                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.body27.out_crit_edge, %if.end23.out_crit_edge, %if.then20, %if.then12
  %rc.0 = phi i32 [ -22, %if.then12 ], [ -12, %if.then20 ], [ 0, %if.end23.out_crit_edge ], [ 0, %for.body27.out_crit_edge ]
  call void @release_firmware(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then ], [ %retval.0.i.ph, %if.then6 ], [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_warp_init(ptr nocapture noundef readonly %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chipset = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 6
  %0 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chipset, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.do.body_crit_edge
    i32 4, label %entry.do.body_crit_edge58
    i32 1, label %do.body20
  ]

entry.do.body_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 7640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %handle5 = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle5, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 7624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 917504) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %handle11 = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handle11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle11, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 7628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 119013376) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %handle17 = getelementptr inbounds %struct.drm_local_map, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %handle17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle17, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 7636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 24) #5, !srcloc !43
  br label %do.body38

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %mmio23 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %19 = ptrtoint ptr %mmio23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio23, align 4
  %handle24 = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle24, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 7616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %mmio23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio23, align 4
  %handle30 = getelementptr inbounds %struct.drm_local_map, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %handle30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle30, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 7624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 102105088) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %mmio23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio23, align 4
  %handle36 = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle36, align 4
  %add.ptr37 = getelementptr i8, ptr %30, i32 7628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 117440512) #5, !srcloc !43
  br label %do.body38

do.body38:                                        ; preds = %do.body20, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %mmio41 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %31 = ptrtoint ptr %mmio41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio41, align 4
  %handle42 = getelementptr inbounds %struct.drm_local_map, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handle42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle42, align 4
  %add.ptr43 = getelementptr i8, ptr %34, i32 7792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 184549376) #5, !srcloc !43
  %35 = ptrtoint ptr %mmio41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio41, align 4
  %handle45 = getelementptr inbounds %struct.drm_local_map, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %handle45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle45, align 4
  %add.ptr46 = getelementptr i8, ptr %38, i32 7792
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %39)
  %cmp.not = icmp eq i32 %39, 50331648
  br i1 %cmp.not, label %do.body38.cleanup_crit_edge, label %if.then

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %40, i32 noundef 3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_firmware250, !1, !"__UNIQUE_ID_firmware250", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware251, !3, !"__UNIQUE_ID_firmware251", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 41, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 62, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 66, i32 19}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 73, i32 41}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 75, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 81, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 96, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 101, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 103, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 117, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/mga/mga_warp.c", i32 161, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @request_ihex_firmware._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @request_ihex_firmware._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 2155114753}
!43 = !{i64 5024175}
!44 = !{i64 2155115323}
!45 = !{i64 2155115899}
!46 = !{i64 2155116475}
!47 = !{i64 2155117058}
!48 = !{i64 2155117620}
!49 = !{i64 2155118166}
!50 = !{i64 2155118793}
!51 = !{i64 5024593}
!52 = !{i64 2155119797}
