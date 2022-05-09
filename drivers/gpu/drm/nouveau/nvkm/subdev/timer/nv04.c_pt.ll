; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv04_timer_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: time low        : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_timer_time\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_timer_time._entry_ptr = internal global ptr @nv04_timer_time._entry, section ".printk_index", align 4
@nv04_timer_time._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: time high       : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv04_timer_time._entry_ptr.7 = internal global ptr @nv04_timer_time._entry.5, section ".printk_index", align 4
@nv04_timer_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 85, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_timer_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv04_timer_intr._entry_ptr = internal global ptr @nv04_timer_intr._entry, section ".printk_index", align 4
@nv04_timer = internal constant { %struct.nvkm_timer_func, [40 x i8] } { %struct.nvkm_timer_func { ptr @nv04_timer_init, ptr @nv04_timer_intr, ptr @nv04_timer_read, ptr @nv04_timer_time, ptr @nv04_timer_alarm_init, ptr @nv04_timer_alarm_fini }, [40 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 109, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unknown input clock freq\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv04_timer_init\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry_ptr = internal global ptr @nv04_timer_init._entry, section ".printk_index", align 4
@nv04_timer_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: input frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry_ptr.16 = internal global ptr @nv04_timer_init._entry.14, section ".printk_index", align 4
@nv04_timer_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: numerator       : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry_ptr.19 = internal global ptr @nv04_timer_init._entry.17, section ".printk_index", align 4
@nv04_timer_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: denominator     : %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry_ptr.22 = internal global ptr @nv04_timer_init._entry.20, section ".printk_index", align 4
@nv04_timer_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: timer frequency : %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@nv04_timer_init._entry_ptr.25 = internal global ptr @nv04_timer_init._entry.23, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 35, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 85, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"nv04_timer\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 138, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 109, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 128, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 129, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 130, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 131, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @nv04_timer_init._entry, ptr @nv04_timer_init._entry.14, ptr @nv04_timer_init._entry.17, ptr @nv04_timer_init._entry.20, ptr @nv04_timer_init._entry.23, ptr @nv04_timer_init._entry_ptr, ptr @nv04_timer_init._entry_ptr.16, ptr @nv04_timer_init._entry_ptr.19, ptr @nv04_timer_init._entry_ptr.22, ptr @nv04_timer_init._entry_ptr.25, ptr @nv04_timer_intr._entry, ptr @nv04_timer_intr._entry_ptr, ptr @nv04_timer_time._entry, ptr @nv04_timer_time._entry.5, ptr @nv04_timer_time._entry_ptr, ptr @nv04_timer_time._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nv04_timer, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_time._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_timer_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_timer_time(ptr noundef %tmr, i64 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %shr = lshr i64 %time, 32
  %conv = trunc i64 %shr to i32
  %conv4 = trunc i64 %time to i32
  %debug = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %if.end, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv4) #6
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp13 = icmp ugt i32 %.pr, 3
  br i1 %cmp13, label %do.end18, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %conv) #6
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 37904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #3, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 37888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %conv4) #3, !srcloc !52
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nv04_timer_read(ptr nocapture noundef readonly %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37904
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 37888
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 37904
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  %cmp.not = icmp eq i32 %4, %10
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i32 %4 to i64
  %shl = shl nuw i64 %conv, 32
  %conv12 = zext i32 %7 to i64
  %or = or i64 %shl, %conv12
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_timer_alarm_fini(ptr nocapture noundef readonly %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_timer_alarm_init(ptr nocapture noundef readonly %tmr, i32 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %time) #3, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 37184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1) #3, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv04_timer_intr(ptr noundef %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 37120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1) #3, !srcloc !52
  tail call void @nvkm_timer_alarm_trigger(ptr noundef %tmr) #3
  %and5 = and i32 %4, -2
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %stat.0 = phi i32 [ %and5, %do.body ], [ %4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0)
  %tobool6.not = icmp eq i32 %stat.0, 0
  br i1 %tobool6.not, label %if.end.if.end22_crit_edge, label %do.body8

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

do.body8:                                         ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.body8.if.end14_crit_edge, label %do.end12

do.body8.if.end14_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

do.end12:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %stat.0) #6
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %do.body8.if.end14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 37120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %stat.0) #3, !srcloc !52
  br label %if.end22

if.end22:                                         ; preds = %if.end14, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_timer_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_timer_new_(ptr noundef nonnull @nv04_timer, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ptmr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_timer_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_timer_init(ptr noundef %tmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 37376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 37392
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  %d.0 = select i1 %or.cond, i32 1, i32 %7
  %n.0 = select i1 %or.cond, i32 1, i32 %4
  %debug = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %do.end, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %name) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  %rem162 = urem i32 %n.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem162)
  %cmp18163 = icmp eq i32 %rem162, 0
  %rem19164 = urem i32 %d.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19164)
  %cmp20165 = icmp eq i32 %rem19164, 0
  %or.cond151166 = select i1 %cmp18163, i1 %cmp20165, i1 false
  br i1 %or.cond151166, label %if.end17.while.body_crit_edge, label %if.end17.while.cond22.preheader_crit_edge

if.end17.while.cond22.preheader_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

while.cond22.preheader:                           ; preds = %while.body.while.cond22.preheader_crit_edge, %if.end17.while.cond22.preheader_crit_edge
  %d.2.lcssa = phi i32 [ %d.0, %if.end17.while.cond22.preheader_crit_edge ], [ %div21, %while.body.while.cond22.preheader_crit_edge ]
  %n.2.lcssa = phi i32 [ %n.0, %if.end17.while.cond22.preheader_crit_edge ], [ %div, %while.body.while.cond22.preheader_crit_edge ]
  %rem23170 = and i32 %n.2.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23170)
  %cmp24171 = icmp eq i32 %rem23170, 0
  %rem26172 = and i32 %d.2.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26172)
  %cmp27173 = icmp eq i32 %rem26172, 0
  %or.cond152174 = select i1 %cmp24171, i1 %cmp27173, i1 false
  br i1 %or.cond152174, label %while.cond22.preheader.while.body29_crit_edge, label %while.cond22.preheader.while.cond33.preheader_crit_edge

while.cond22.preheader.while.cond33.preheader_crit_edge: ; preds = %while.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond33.preheader

while.cond22.preheader.while.body29_crit_edge:    ; preds = %while.cond22.preheader
  br label %while.body29

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end17.while.body_crit_edge
  %n.2168 = phi i32 [ %div, %while.body.while.body_crit_edge ], [ %n.0, %if.end17.while.body_crit_edge ]
  %d.2167 = phi i32 [ %div21, %while.body.while.body_crit_edge ], [ %d.0, %if.end17.while.body_crit_edge ]
  %div = udiv i32 %n.2168, 5
  %div21 = udiv i32 %d.2167, 5
  %rem = urem i32 %div, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp18 = icmp eq i32 %rem, 0
  %rem19 = urem i32 %div21, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19)
  %cmp20 = icmp eq i32 %rem19, 0
  %or.cond151 = select i1 %cmp18, i1 %cmp20, i1 false
  br i1 %or.cond151, label %while.body.while.body_crit_edge, label %while.body.while.cond22.preheader_crit_edge

while.body.while.cond22.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond22.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.cond33.preheader:                           ; preds = %while.body29.while.cond33.preheader_crit_edge, %while.cond22.preheader.while.cond33.preheader_crit_edge
  %d.3.lcssa = phi i32 [ %d.2.lcssa, %while.cond22.preheader.while.cond33.preheader_crit_edge ], [ %div31150, %while.body29.while.cond33.preheader_crit_edge ]
  %n.3.lcssa = phi i32 [ %n.2.lcssa, %while.cond22.preheader.while.cond33.preheader_crit_edge ], [ %div30149, %while.body29.while.cond33.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %n.3.lcssa)
  %cmp34179 = icmp ugt i32 %n.3.lcssa, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %d.3.lcssa)
  %cmp35180 = icmp ugt i32 %d.3.lcssa, 65535
  %or.cond153181 = select i1 %cmp34179, i1 true, i1 %cmp35180
  br i1 %or.cond153181, label %while.cond33.preheader.while.body36_crit_edge, label %while.cond33.preheader.do.body39_crit_edge

while.cond33.preheader.do.body39_crit_edge:       ; preds = %while.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

while.cond33.preheader.while.body36_crit_edge:    ; preds = %while.cond33.preheader
  br label %while.body36

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.cond22.preheader.while.body29_crit_edge
  %n.3176 = phi i32 [ %div30149, %while.body29.while.body29_crit_edge ], [ %n.2.lcssa, %while.cond22.preheader.while.body29_crit_edge ]
  %d.3175 = phi i32 [ %div31150, %while.body29.while.body29_crit_edge ], [ %d.2.lcssa, %while.cond22.preheader.while.body29_crit_edge ]
  %div30149 = lshr i32 %n.3176, 1
  %div31150 = lshr i32 %d.3175, 1
  %14 = and i32 %n.3176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  %15 = and i32 %d.3175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp27 = icmp eq i32 %15, 0
  %or.cond152 = select i1 %cmp24, i1 %cmp27, i1 false
  br i1 %or.cond152, label %while.body29.while.body29_crit_edge, label %while.body29.while.cond33.preheader_crit_edge

while.body29.while.cond33.preheader_crit_edge:    ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond33.preheader

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body29

while.body36:                                     ; preds = %while.body36.while.body36_crit_edge, %while.cond33.preheader.while.body36_crit_edge
  %n.4183 = phi i32 [ %shr, %while.body36.while.body36_crit_edge ], [ %n.3.lcssa, %while.cond33.preheader.while.body36_crit_edge ]
  %d.4182 = phi i32 [ %shr37, %while.body36.while.body36_crit_edge ], [ %d.3.lcssa, %while.cond33.preheader.while.body36_crit_edge ]
  %shr = lshr i32 %n.4183, 1
  %shr37 = lshr i32 %d.4182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %n.4183)
  %cmp34 = icmp ugt i32 %n.4183, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %d.4182)
  %cmp35 = icmp ugt i32 %d.4182, 131071
  %or.cond153 = select i1 %cmp34, i1 true, i1 %cmp35
  br i1 %or.cond153, label %while.body36.while.body36_crit_edge, label %while.body36.do.body39_crit_edge

while.body36.do.body39_crit_edge:                 ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

while.body36.while.body36_crit_edge:              ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body36

do.body39:                                        ; preds = %while.body36.do.body39_crit_edge, %while.cond33.preheader.do.body39_crit_edge
  %d.4.lcssa = phi i32 [ %d.3.lcssa, %while.cond33.preheader.do.body39_crit_edge ], [ %shr37, %while.body36.do.body39_crit_edge ]
  %n.4.lcssa = phi i32 [ %n.3.lcssa, %while.cond33.preheader.do.body39_crit_edge ], [ %shr, %while.body36.do.body39_crit_edge ]
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp42 = icmp ugt i32 %17, 3
  br i1 %cmp42, label %if.end51, label %do.body39.if.end97_crit_edge

do.body39.if.end97_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end51:                                         ; preds = %do.body39
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev48, align 8
  %name49 = getelementptr inbounds %struct.nvkm_timer, ptr %tmr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %name49, i32 noundef 0) #6
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp57 = icmp ugt i32 %.pr, 3
  br i1 %cmp57, label %if.end66, label %if.end51.if.end97_crit_edge

if.end51.if.end97_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end66:                                         ; preds = %if.end51
  %23 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device2, align 4
  %dev63 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.18, ptr noundef %name49, i32 noundef %n.4.lcssa) #6
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr155 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr155)
  %cmp72 = icmp ugt i32 %.pr155, 3
  br i1 %cmp72, label %if.end81, label %if.end66.if.end97_crit_edge

if.end66.if.end97_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

if.end81:                                         ; preds = %if.end66
  %28 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device2, align 4
  %dev78 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev78, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.21, ptr noundef %name49, i32 noundef %d.4.lcssa) #6
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr157.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr157.pr)
  %cmp87 = icmp ugt i32 %.pr157.pr, 3
  br i1 %cmp87, label %do.end91, label %if.end81.if.end97_crit_edge

if.end81.if.end97_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end97

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device2, align 4
  %dev93 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev93, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.24, ptr noundef %name49, i32 noundef 0) #6
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end81.if.end97_crit_edge, %if.end66.if.end97_crit_edge, %if.end51.if.end97_crit_edge, %do.body39.if.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr104 = getelementptr i8, ptr %38, i32 37376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %n.4.lcssa) #3, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void @arm_heavy_mb() #3
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr109 = getelementptr i8, ptr %40, i32 37392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %d.4.lcssa) #3, !srcloc !52
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv04_timer_time._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv04_timer_time._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 36, i32 2}
!10 = !{ptr @nv04_timer_time._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv04_timer_time._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 85, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nv04_timer_intr._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @nv04_timer_intr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nv04_timer, !19, !"nv04_timer", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 138, i32 1}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 109, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nv04_timer_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nv04_timer_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 128, i32 2}
!28 = !{ptr @nv04_timer_init._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nv04_timer_init._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 129, i32 2}
!32 = !{ptr @nv04_timer_init._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nv04_timer_init._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 130, i32 2}
!36 = !{ptr @nv04_timer_init._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nv04_timer_init._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv04.c", i32 131, i32 2}
!40 = !{ptr @nv04_timer_init._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nv04_timer_init._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2156228924}
!52 = !{i64 5387930}
!53 = !{i64 2156229322}
!54 = !{i64 5388348}
!55 = !{i64 2156229779}
!56 = !{i64 2156230173}
!57 = !{i64 2156230567}
!58 = !{i64 2156230918}
!59 = !{i64 2156231328}
!60 = !{i64 2156231744}
!61 = !{i64 2156232209}
!62 = !{i64 2156232560}
!63 = !{i64 2156235077}
!64 = !{i64 2156235536}
!65 = !{i64 2156235930}
!66 = !{i64 2156247600}
!67 = !{i64 2156247995}
