; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/falcon/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_falcon_load_imem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: writing with secure tag on a non-secure falcon!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_falcon_load_imem\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/base.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_falcon_load_imem._entry_ptr = internal global ptr @nvkm_falcon_load_imem._entry, section ".printk_index", align 4
@nvkm_falcon_bind_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 68, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Context binding not supported on this falcon!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvkm_falcon_bind_context\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_falcon_bind_context._entry_ptr = internal global ptr @nvkm_falcon_bind_context._entry, section ".printk_index", align 4
@nvkm_falcon_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 179, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: released %s falcon\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_falcon_put\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_falcon_put._entry_ptr = internal global ptr @nvkm_falcon_put._entry, section ".printk_index", align 4
@nvkm_falcon_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 193, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s falcon already acquired by %s!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_falcon_get\00", [16 x i8] zeroinitializer }, align 32
@nvkm_falcon_get._entry_ptr = internal global ptr @nvkm_falcon_get._entry, section ".printk_index", align 4
@nvkm_falcon_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 198, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: acquired %s falcon\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_falcon_get._entry_ptr.15 = internal global ptr @nvkm_falcon_get._entry.13, section ".printk_index", align 4
@nvkm_falcon_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&falcon->mutex\00", [17 x i8] zeroinitializer }, align 32
@nvkm_falcon_ctor.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&falcon->dmem_mutex\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 32, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 67, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 179, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 192, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 198, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 220, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 221, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @nvkm_falcon_bind_context._entry, ptr @nvkm_falcon_bind_context._entry_ptr, ptr @nvkm_falcon_get._entry, ptr @nvkm_falcon_get._entry.13, ptr @nvkm_falcon_get._entry_ptr, ptr @nvkm_falcon_get._entry_ptr.15, ptr @nvkm_falcon_load_imem._entry, ptr @nvkm_falcon_load_imem._entry_ptr, ptr @nvkm_falcon_put._entry, ptr @nvkm_falcon_put._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @nvkm_falcon_ctor.__key, ptr @.str.16, ptr @nvkm_falcon_ctor.__key.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_load_imem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_bind_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_falcon_ctor.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_load_imem(ptr noundef %falcon, ptr noundef %data, i32 noundef %start, i32 noundef %size, i16 noundef zeroext %tag, i8 noundef zeroext %port, i1 noundef zeroext %secure) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %secure, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %secret = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 9
  %0 = ptrtoint ptr %secret to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %secret, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

do.body:                                          ; preds = %land.lhs.true
  %user = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 7
  %2 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %return

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %10 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %falcon, align 4
  %load_imem = getelementptr inbounds %struct.nvkm_falcon_func, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %load_imem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %load_imem, align 4
  tail call void %13(ptr noundef %falcon, ptr noundef %data, i32 noundef %start, i32 noundef %size, i16 noundef zeroext %tag, i8 noundef zeroext %port, i1 noundef zeroext %secure) #4
  br label %return

return:                                           ; preds = %if.end6, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_load_dmem(ptr noundef %falcon, ptr noundef %data, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dmem_mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %dmem_mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %load_dmem = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %load_dmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %load_dmem, align 4
  tail call void %3(ptr noundef %falcon, ptr noundef %data, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port) #4
  tail call void @mutex_unlock(ptr noundef %dmem_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_read_dmem(ptr noundef %falcon, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dmem_mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %dmem_mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %read_dmem = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %read_dmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_dmem, align 4
  tail call void %3(ptr noundef %falcon, i32 noundef %start, i32 noundef %size, i8 noundef zeroext %port, ptr noundef %data) #4
  tail call void @mutex_unlock(ptr noundef %dmem_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_bind_context(ptr noundef %falcon, ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %bind_context = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bind_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bind_context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %user = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 7
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user, align 4
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %name) #7
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %falcon, ptr noundef %inst) #4
  br label %return

return:                                           ; preds = %if.end5, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_set_start_addr(ptr noundef %falcon, i32 noundef %start_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %set_start_addr = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %set_start_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_start_addr, align 4
  tail call void %3(ptr noundef %falcon, i32 noundef %start_addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_start(ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %start = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start, align 4
  tail call void %3(ptr noundef %falcon) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_enable(ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %type = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %inst = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inst, align 4
  tail call void @nvkm_mc_enable(ptr noundef %3, i32 noundef %5, i32 noundef %7) #4
  %8 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %falcon, align 4
  %enable = getelementptr inbounds %struct.nvkm_falcon_func, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable, align 4
  %call = tail call i32 %11(ptr noundef %falcon) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %type5 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type5, align 4
  %inst7 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %inst7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inst7, align 4
  tail call void @nvkm_mc_disable(ptr noundef %3, i32 noundef %15, i32 noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_disable(ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %type = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %inst = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inst, align 4
  %call = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %3, i32 noundef %5, i32 noundef %7) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %falcon, align 4
  %disable = getelementptr inbounds %struct.nvkm_falcon_func, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  tail call void %11(ptr noundef %falcon) #4
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %type5 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type5, align 4
  %inst7 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %inst7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inst7, align 4
  tail call void @nvkm_mc_disable(ptr noundef %3, i32 noundef %15, i32 noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_reset(ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %reset = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %4 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %type.i = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %inst.i = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst.i, align 4
  %call.i = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %7, i32 noundef %9, i32 noundef %11) #4
  br i1 %call.i, label %if.end.i, label %if.then.nvkm_falcon_disable.exit_crit_edge

if.then.nvkm_falcon_disable.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_falcon_disable.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %falcon, align 4
  %disable.i = getelementptr inbounds %struct.nvkm_falcon_func, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable.i, align 4
  tail call void %15(ptr noundef %falcon) #4
  %16 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner.i, align 4
  %type5.i = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type5.i, align 4
  %inst7.i = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %inst7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inst7.i, align 4
  tail call void @nvkm_mc_disable(ptr noundef %7, i32 noundef %19, i32 noundef %21) #4
  br label %nvkm_falcon_disable.exit

nvkm_falcon_disable.exit:                         ; preds = %if.end.i, %if.then.nvkm_falcon_disable.exit_crit_edge
  %22 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner.i, align 4
  %device1.i9 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device1.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device1.i9, align 4
  %type.i10 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %type.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i10, align 4
  %inst.i11 = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %inst.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inst.i11, align 4
  tail call void @nvkm_mc_enable(ptr noundef %25, i32 noundef %27, i32 noundef %29) #4
  %30 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %falcon, align 4
  %enable.i = getelementptr inbounds %struct.nvkm_falcon_func, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enable.i, align 4
  %call.i12 = tail call i32 %33(ptr noundef %falcon) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i, label %nvkm_falcon_disable.exit.return_crit_edge, label %if.then.i

nvkm_falcon_disable.exit.return_crit_edge:        ; preds = %nvkm_falcon_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i:                                        ; preds = %nvkm_falcon_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %owner.i, align 4
  %type5.i13 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %type5.i13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type5.i13, align 4
  %inst7.i14 = getelementptr inbounds %struct.nvkm_subdev, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %inst7.i14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inst7.i14, align 4
  tail call void @nvkm_mc_disable(ptr noundef %25, i32 noundef %37, i32 noundef %39) #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 %3(ptr noundef %falcon) #4
  br label %return

return:                                           ; preds = %if.end, %if.then.i, %nvkm_falcon_disable.exit.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %nvkm_falcon_disable.exit.return_crit_edge ], [ %call.i12, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef %falcon, i32 noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %wait_for_halt = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %wait_for_halt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_for_halt, align 4
  %call = tail call i32 %3(ptr noundef %falcon, i32 noundef %ms) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_clear_interrupt(ptr noundef %falcon, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %falcon, align 4
  %clear_interrupt = getelementptr inbounds %struct.nvkm_falcon_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %clear_interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clear_interrupt, align 4
  %call = tail call i32 %3(ptr noundef %falcon, i32 noundef %mask) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_put(ptr noundef %falcon, ptr noundef readnone %user) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %falcon, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !44

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %user4 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 7
  %0 = ptrtoint ptr %user4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user4, align 4
  %cmp = icmp eq ptr %1, %user
  br i1 %cmp, label %do.body, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp7 = icmp ugt i32 %3, 3
  br i1 %cmp7, label %do.end, label %do.body.if.end11_crit_edge

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 4
  %name10 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 2
  %8 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %9) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge
  %10 = ptrtoint ptr %user4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %user4, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %return

return:                                           ; preds = %if.end15, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_get(ptr noundef %falcon, ptr noundef %user) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %user1 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 7
  %0 = ptrtoint ptr %user1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user1, align 4
  %tobool.not = icmp eq ptr %1, null
  %debug14 = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 5
  %2 = ptrtoint ptr %debug14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug14, align 4
  br i1 %tobool.not, label %do.body12, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 4
  %name4 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 2
  %8 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name4, align 4
  %name6 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %9, ptr noundef %name6) #7
  br label %cleanup

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp15 = icmp ugt i32 %3, 3
  br i1 %cmp15, label %do.end19, label %do.body12.if.end25_crit_edge

do.body12.if.end25_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.end19:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %device20 = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 1
  %10 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device20, align 4
  %dev21 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev21, align 8
  %name22 = getelementptr inbounds %struct.nvkm_subdev, ptr %user, i32 0, i32 4
  %name24 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 2
  %14 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef %name22, ptr noundef %15) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.body12.if.end25_crit_edge
  %oneinit = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 6
  %16 = ptrtoint ptr %oneinit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %oneinit, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  %18 = ptrtoint ptr %falcon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %falcon, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then29.if.end29.i_crit_edge

if.then29.if.end29.i_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.then.i:                                        ; preds = %if.then29
  %owner.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %22 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i, align 4
  %type.i = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %inst.i = getelementptr inbounds %struct.nvkm_subdev, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inst.i, align 4
  %call.i = tail call i32 @nvkm_top_addr(ptr noundef %25, i32 noundef %27, i32 noundef %29) #4
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.then.i.if.end29.i_crit_edge, !prof !44

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 149, i32 noundef 9, ptr noundef null) #4
  br label %if.end30

if.end29.i:                                       ; preds = %if.then.i.if.end29.i_crit_edge, %if.then29.if.end29.i_crit_edge
  %owner.i.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %31 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %owner.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i.i, align 4
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i, align 4
  %add.i.i = add i32 %38, 300
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %add.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %40 = trunc i32 %39 to i8
  %conv.i = and i8 %40, 15
  %version.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 8
  %41 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i, ptr %version.i, align 4
  %42 = lshr i8 %40, 4
  %conv32.i = and i8 %42, 3
  %secret.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 9
  %43 = ptrtoint ptr %secret.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv32.i, ptr %secret.i, align 1
  %shr33.i = lshr i32 %39, 8
  %44 = trunc i32 %shr33.i to i8
  %conv35.i = and i8 %44, 15
  %code.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 13
  %ports.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 13, i32 3
  %45 = ptrtoint ptr %ports.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv35.i, ptr %ports.i, align 4
  %shr36.i = lshr i32 %39, 12
  %46 = trunc i32 %shr36.i to i8
  %conv38.i = and i8 %46, 15
  %data.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 14
  %ports39.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 14, i32 3
  %47 = ptrtoint ptr %ports39.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv38.i, ptr %ports39.i, align 4
  %48 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %owner.i.i, align 4
  %device.i82.i = getelementptr inbounds %struct.nvkm_subdev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %device.i82.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i82.i, align 4
  %pri.i83.i = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %pri.i83.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri.i83.i, align 4
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 4
  %add.i85.i = add i32 %55, 264
  %add.ptr.i86.i = getelementptr i8, ptr %53, i32 %add.i85.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %and41.i = shl i32 %56, 8
  %shl.i = and i32 %and41.i, 130816
  %57 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl.i, ptr %code.i, align 4
  %and43.i = lshr i32 %56, 1
  %shr44.i = and i32 %and43.i, 130816
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr44.i, ptr %data.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_falcon_func, ptr %19, i32 0, i32 4
  %59 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool47.not.i = icmp eq i32 %60, 0
  br i1 %tobool47.not.i, label %if.end29.i.if.end30_crit_edge, label %if.then48.i

if.end29.i.if.end30_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then48.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %owner.i.i, align 4
  %device.i88.i = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %device.i88.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device.i88.i, align 4
  %pri.i89.i = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %pri.i89.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i89.i, align 4
  %67 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.i, align 4
  %add.i91.i = add i32 %68, %60
  %add.ptr.i92.i = getelementptr i8, ptr %66, i32 %add.i91.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %debug54.i = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 10
  %70 = lshr i32 %69, 20
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %debug54.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %debug54.i, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then48.i, %if.end29.i.if.end30_crit_edge, %do.end.i, %if.end25.if.end30_crit_edge
  %ret.0 = phi i32 [ 0, %if.end25.if.end30_crit_edge ], [ -19, %do.end.i ], [ 0, %if.then48.i ], [ 0, %if.end29.i.if.end30_crit_edge ]
  %74 = ptrtoint ptr %user1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %user, ptr %user1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end30 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nvkm_falcon_dtor(ptr nocapture %falcon) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_ctor(ptr noundef %func, ptr noundef %subdev, ptr noundef %name, i32 noundef %addr, ptr noundef %falcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %falcon to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %falcon, align 4
  %owner = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %subdev, ptr %owner, align 4
  %name2 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 2
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name2, align 4
  %addr3 = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 3
  %3 = ptrtoint ptr %addr3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr, ptr %addr3, align 4
  %mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvkm_falcon_ctor.__key) #4
  %dmem_mutex = getelementptr inbounds %struct.nvkm_falcon, ptr %falcon, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %dmem_mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @nvkm_falcon_ctor.__key.17) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_del(ptr nocapture noundef %pfalcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfalcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfalcon, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %pfalcon to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pfalcon, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_falcon_load_imem._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_falcon_load_imem._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 67, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nvkm_falcon_bind_context._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_falcon_bind_context._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 179, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvkm_falcon_put._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_falcon_put._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 192, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvkm_falcon_get._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_falcon_get._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 198, i32 2}
!27 = !{ptr @nvkm_falcon_get._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_falcon_get._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nvkm_falcon_ctor.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 220, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nvkm_falcon_ctor.__key.17, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/falcon/base.c", i32 221, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i8 0, i8 2}
!46 = !{i64 5394464}
!47 = !{i64 2156230264}
