; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_image = type { i32, i32, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

@nvkm_bios = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_bios_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_bios_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: BMP version %x.%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_bios_new\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_bios_new._entry_ptr = internal global ptr @nvkm_bios_new._entry, section ".printk_index", align 4
@nvkm_bios_new._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: BIT signature found\0A\00", [39 x i8] zeroinitializer }, align 32
@nvkm_bios_new._entry_ptr.9 = internal global ptr @nvkm_bios_new._entry.7, section ".printk_index", align 4
@nvkm_bios_new._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: version %02x.%02x.%02x.%02x.%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_bios_new._entry_ptr.12 = internal global ptr @nvkm_bios_new._entry.10, section ".printk_index", align 4
@nvbios_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 42, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: OOB %d %08x %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvbios_addr\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvbios_addr._entry_ptr = internal global ptr @nvbios_addr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"nvkm_bios\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 138, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 176, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 184, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 201, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 42, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @nvbios_addr._entry, ptr @nvbios_addr._entry_ptr, ptr @nvkm_bios_new._entry, ptr @nvkm_bios_new._entry.10, ptr @nvkm_bios_new._entry.7, ptr @nvkm_bios_new._entry_ptr, ptr @nvkm_bios_new._entry_ptr.12, ptr @nvkm_bios_new._entry_ptr.9, ptr @nvkm_bios, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bios to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bios_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bios_new._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bios_new._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %image0_size.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 3
  %0 = ptrtoint ptr %image0_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image0_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.i = icmp ult i32 %1, %addr
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %imaged_addr.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %2 = ptrtoint ptr %imaged_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imaged_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %addr, %1
  %add.i = add i32 %sub.i, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %land.lhs.true.i.if.end.i_crit_edge ], [ %add.i, %if.then.i ], [ %addr, %entry.if.end.i_crit_edge ]
  %add3.i = add i32 %addr.addr.0, 1
  %size4.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %5)
  %cmp5.i = icmp ugt i32 %add3.i, %5
  br i1 %cmp5.i, label %do.body.i, label %if.then, !prof !37

do.body.i:                                        ; preds = %if.end.i
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %6 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 1, i32 noundef %addr, i32 noundef %addr.addr.0) #13
  br label %return

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %addr.addr.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.then, %do.end.i, %do.body.i.return_crit_edge
  %retval.0 = phi i8 [ %15, %if.then ], [ 0, %do.body.i.return_crit_edge ], [ 0, %do.end.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %image0_size.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 3
  %0 = ptrtoint ptr %image0_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image0_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.i = icmp ult i32 %1, %addr
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %imaged_addr.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %2 = ptrtoint ptr %imaged_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imaged_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %addr, %1
  %add.i = add i32 %sub.i, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %land.lhs.true.i.if.end.i_crit_edge ], [ %add.i, %if.then.i ], [ %addr, %entry.if.end.i_crit_edge ]
  %add3.i = add i32 %addr.addr.0, 2
  %size4.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %5)
  %cmp5.i = icmp ugt i32 %add3.i, %5
  br i1 %cmp5.i, label %do.body.i, label %if.then, !prof !37

do.body.i:                                        ; preds = %if.end.i
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %6 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 2, i32 noundef %addr, i32 noundef %addr.addr.0) #13
  br label %return

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %addr.addr.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  br label %return

return:                                           ; preds = %if.then, %do.end.i, %do.body.i.return_crit_edge
  %retval.0 = phi i16 [ %16, %if.then ], [ 0, %do.body.i.return_crit_edge ], [ 0, %do.end.i ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %image0_size.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 3
  %0 = ptrtoint ptr %image0_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image0_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.i = icmp ult i32 %1, %addr
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %imaged_addr.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %2 = ptrtoint ptr %imaged_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imaged_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %addr, %1
  %add.i = add i32 %sub.i, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %land.lhs.true.i.if.end.i_crit_edge ], [ %add.i, %if.then.i ], [ %addr, %entry.if.end.i_crit_edge ]
  %add3.i = add i32 %addr.addr.0, 4
  %size4.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %5)
  %cmp5.i = icmp ugt i32 %add3.i, %5
  br i1 %cmp5.i, label %do.body.i, label %if.then, !prof !37

do.body.i:                                        ; preds = %if.end.i
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %6 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 4, i32 noundef %addr, i32 noundef %addr.addr.0) #13
  br label %return

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %addr.addr.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  br label %return

return:                                           ; preds = %if.then, %do.end.i, %do.body.i.return_crit_edge
  %retval.0 = phi i32 [ %16, %if.then ], [ 0, %do.body.i.return_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_checksum(ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not4 = icmp eq i32 %size, 0
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %sum.07 = phi i8 [ %add, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %size.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %data.addr.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %dec = add i32 %size.addr.06, -1
  %incdec.ptr = getelementptr i8, ptr %data.addr.05, i32 1
  %0 = ptrtoint ptr %data.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.05, align 1
  %add = add i8 %1, %sum.07
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %sum.0.lcssa = phi i8 [ 0, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  ret i8 %sum.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_findstr(ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef readonly %str, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %size, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not30 = icmp slt i32 %sub, 0
  br i1 %cmp.not30, label %entry.cleanup_crit_edge, label %for.cond1.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp227 = icmp sgt i32 %len, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc13.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.031 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc14, %for.inc13.for.cond1.preheader_crit_edge ]
  br i1 %cmp227, label %for.cond1.preheader.for.body3_crit_edge, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %j.028 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %add = add i32 %j.028, %i.031
  %arrayidx = getelementptr i8, ptr %data, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr i8, ptr %str, i32 %j.028
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp6.not = icmp eq i8 %1, %3
  br i1 %cmp6.not, label %for.inc, label %for.body3.for.end_crit_edge

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %j.028, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.if.then10_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.inc.if.then10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %j.028, %for.body3.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %len)
  %cmp8 = icmp eq i32 %j.0.lcssa, %len
  br i1 %cmp8, label %for.end.if.then10_crit_edge, label %for.inc13

for.end.if.then10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %for.end.if.then10_crit_edge, %for.inc.if.then10_crit_edge
  %conv11 = trunc i32 %i.031 to i16
  br label %cleanup

for.inc13:                                        ; preds = %for.end
  %inc14 = add i32 %i.031, 1
  %cmp.not = icmp sgt i32 %inc14, %sub
  br i1 %cmp.not, label %for.inc13.cleanup_crit_edge, label %for.inc13.for.cond1.preheader_crit_edge

for.inc13.for.cond1.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.inc13.cleanup_crit_edge:                      ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc13.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv11, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc13.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_memcmp(ptr noundef %bios, i32 noundef %addr, ptr nocapture noundef readonly %str, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %image0_size.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 3
  %imaged_addr.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %size4.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %debug.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %name.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %nvbios_rd08.exit.while.cond_crit_edge, %entry
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %inc, %nvbios_rd08.exit.while.cond_crit_edge ]
  %str.addr.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %nvbios_rd08.exit.while.cond_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %nvbios_rd08.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool.not = icmp eq i32 %len.addr.0, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.addr.0, -1
  %inc = add i32 %addr.addr.0, 1
  %0 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.addr.0, i32 %1)
  %cmp.i.i = icmp ugt i32 %addr.addr.0, %1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.body.if.end.i.i_crit_edge

while.body.if.end.i.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %2 = ptrtoint ptr %imaged_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imaged_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %addr.addr.0, %1
  %add.i.i = add i32 %sub.i.i, %3
  %.pre = add i32 %add.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.if.end.i.i_crit_edge
  %add3.i.i.pre-phi = phi i32 [ %.pre, %if.then.i.i ], [ %inc, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %inc, %while.body.if.end.i.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %addr.addr.0, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %addr.addr.0, %while.body.if.end.i.i_crit_edge ]
  %4 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.pre-phi, i32 %5)
  %cmp5.i.i = icmp ugt i32 %add3.i.i.pre-phi, %5
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.then.i, !prof !37

do.body.i.i:                                      ; preds = %if.end.i.i
  %6 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i.i, label %do.body.i.i.nvbios_rd08.exit_crit_edge, label %do.end.i.i

do.body.i.i.nvbios_rd08.exit_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef %name.i.i, i32 noundef 1, i32 noundef %addr.addr.0, i32 noundef %addr.addr.0.i) #13
  br label %nvbios_rd08.exit

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 %addr.addr.0.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  br label %nvbios_rd08.exit

nvbios_rd08.exit:                                 ; preds = %if.then.i, %do.end.i.i, %do.body.i.i.nvbios_rd08.exit_crit_edge
  %retval.0.i = phi i8 [ %15, %if.then.i ], [ 0, %do.body.i.i.nvbios_rd08.exit_crit_edge ], [ 0, %do.end.i.i ]
  %incdec.ptr = getelementptr i8, ptr %str.addr.0, i32 1
  %16 = ptrtoint ptr %str.addr.0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %str.addr.0, align 1
  %cmp.not = icmp eq i8 %retval.0.i, %17
  br i1 %cmp.not, label %nvbios_rd08.exit.while.cond_crit_edge, label %if.then

nvbios_rd08.exit.while.cond_crit_edge:            ; preds = %nvbios_rd08.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then:                                          ; preds = %nvbios_rd08.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i8 %17 to i32
  %conv = zext i8 %retval.0.i to i32
  %sub = sub nsw i32 %conv, %conv1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_extend(ptr nocapture noundef %bios, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %length)
  %cmp = icmp ult i32 %1, %length
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %length, i32 noundef 3264) #14
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %data, align 4
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = call ptr @memcpy(ptr %call9.i, ptr %3, i32 %7)
  store i32 %length, ptr %size, align 4
  tail call void @kfree(ptr noundef %3) #10
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry.return_crit_edge
  %retval.1 = phi i32 [ 1, %if.end ], [ -12, %if.then2 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_bios_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pbios) local_unnamed_addr #0 align 64 {
entry:
  %image = alloca %struct.nvbios_image, align 4
  %bit_i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %image) #10
  %0 = call ptr @memset(ptr %image, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_i) #10
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_i, i32 0, i32 3
  %3 = call ptr @memset(ptr %bit_i, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 84) #15
  %5 = ptrtoint ptr %pbios to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pbios, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_bios, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #10
  %call1 = tail call i32 @nvbios_shadow(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call zeroext i1 @nvbios_image(ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef nonnull %image) #10
  br i1 %call5, label %if.then6, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %size = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %image0_size = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %image0_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %image0_size, align 4
  %type9 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then6
  %idx.0 = phi i32 [ 1, %if.then6 ], [ %inc7, %while.body.while.cond_crit_edge ]
  %call8 = call zeroext i1 @nvbios_image(ptr noundef nonnull %call7.i.i, i32 noundef %idx.0, ptr noundef nonnull %image) #10
  br i1 %call8, label %while.body, label %while.cond.if.end13_crit_edge

while.cond.if.end13_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

while.body:                                       ; preds = %while.cond
  %inc7 = add i32 %idx.0, 1
  %9 = ptrtoint ptr %type9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type9, align 4
  %cmp = icmp eq i8 %10, -32
  br i1 %cmp, label %if.then11, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %image, align 4
  %imaged_addr = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %imaged_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %imaged_addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %while.cond.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  %size14 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size14, align 4
  %sub.i = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not30.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.not30.i, label %if.end13.nvbios_findstr.exit.thread_crit_edge, label %if.end13.for.cond1.preheader.i_crit_edge

if.end13.for.cond1.preheader.i_crit_edge:         ; preds = %if.end13
  br label %for.cond1.preheader.i

if.end13.nvbios_findstr.exit.thread_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_findstr.exit.thread

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %if.end13.for.cond1.preheader.i_crit_edge
  %i.031.i = phi i32 [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end13.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %15, i32 %i.031.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp6.not.i = icmp eq i8 %19, -1
  br i1 %cmp6.not.i, label %for.inc.i, label %for.cond1.preheader.i.for.inc13.i_crit_edge

for.cond1.preheader.i.for.inc13.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc.i:                                        ; preds = %for.cond1.preheader.i
  %add.i.1 = add i32 %i.031.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %15, i32 %add.i.1
  %20 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %21)
  %cmp6.not.i.1 = icmp eq i8 %21, 127
  br i1 %cmp6.not.i.1, label %for.inc.i.1, label %for.inc.i.for.inc13.i_crit_edge

for.inc.i.for.inc13.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %add.i.2 = add i32 %i.031.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %15, i32 %add.i.2
  %22 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %23)
  %cmp6.not.i.2 = icmp eq i8 %23, 78
  br i1 %cmp6.not.i.2, label %for.inc.i.2, label %for.inc.i.1.for.inc13.i_crit_edge

for.inc.i.1.for.inc13.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %add.i.3 = add i32 %i.031.i, 3
  %arrayidx.i.3 = getelementptr i8, ptr %15, i32 %add.i.3
  %24 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %25)
  %cmp6.not.i.3 = icmp eq i8 %25, 86
  br i1 %cmp6.not.i.3, label %for.inc.i.3, label %for.inc.i.2.for.inc13.i_crit_edge

for.inc.i.2.for.inc13.i_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %add.i.4 = add i32 %i.031.i, 4
  %arrayidx.i.4 = getelementptr i8, ptr %15, i32 %add.i.4
  %26 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp6.not.i.4 = icmp eq i8 %27, 0
  br i1 %cmp6.not.i.4, label %nvbios_findstr.exit, label %for.inc.i.3.for.inc13.i_crit_edge

for.inc.i.3.for.inc13.i_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.inc.i.3.for.inc13.i_crit_edge, %for.inc.i.2.for.inc13.i_crit_edge, %for.inc.i.1.for.inc13.i_crit_edge, %for.inc.i.for.inc13.i_crit_edge, %for.cond1.preheader.i.for.inc13.i_crit_edge
  %inc14.i = add i32 %i.031.i, 1
  %cmp.not.i = icmp sgt i32 %inc14.i, %sub.i
  br i1 %cmp.not.i, label %for.inc13.i.nvbios_findstr.exit.thread_crit_edge, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i

for.inc13.i.nvbios_findstr.exit.thread_crit_edge: ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_findstr.exit.thread

nvbios_findstr.exit.thread:                       ; preds = %for.inc13.i.nvbios_findstr.exit.thread_crit_edge, %if.end13.nvbios_findstr.exit.thread_crit_edge
  %bmp_offset430 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %bmp_offset430 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bmp_offset430, align 4
  br label %if.end33

nvbios_findstr.exit:                              ; preds = %for.inc.i.3
  %conv11.i = trunc i32 %i.031.i to i16
  %conv16 = and i32 %i.031.i, 65535
  %bmp_offset = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv16, ptr %bmp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11.i)
  %tobool18.not = icmp eq i16 %conv11.i, 0
  br i1 %tobool18.not, label %nvbios_findstr.exit.if.end33_crit_edge, label %do.body

nvbios_findstr.exit.if.end33_crit_edge:           ; preds = %nvbios_findstr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body:                                          ; preds = %nvbios_findstr.exit
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp21 = icmp ugt i32 %31, 3
  br i1 %cmp21, label %do.end, label %do.body.if.end33_crit_edge

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %device25 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device25, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %call26 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %call7.i.i)
  %36 = lshr i16 %call26, 8
  %37 = zext i16 %36 to i32
  %call28 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %call7.i.i)
  %38 = and i16 %call28, 255
  %and = zext i16 %38 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %37, i32 noundef %and) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end, %do.body.if.end33_crit_edge, %nvbios_findstr.exit.if.end33_crit_edge, %nvbios_findstr.exit.thread
  %bmp_offset432 = phi ptr [ %bmp_offset430, %nvbios_findstr.exit.thread ], [ %bmp_offset, %do.body.if.end33_crit_edge ], [ %bmp_offset, %do.end ], [ %bmp_offset, %nvbios_findstr.exit.if.end33_crit_edge ]
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %41 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size14, align 4
  %sub.i203 = add i32 %42, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i203)
  %cmp.not30.i204 = icmp slt i32 %sub.i203, 0
  br i1 %cmp.not30.i204, label %if.end33.nvbios_findstr.exit225.thread_crit_edge, label %if.end33.for.cond1.preheader.i207_crit_edge

if.end33.for.cond1.preheader.i207_crit_edge:      ; preds = %if.end33
  br label %for.cond1.preheader.i207

if.end33.nvbios_findstr.exit225.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_findstr.exit225.thread

for.cond1.preheader.i207:                         ; preds = %for.inc13.i223.for.cond1.preheader.i207_crit_edge, %if.end33.for.cond1.preheader.i207_crit_edge
  %i.031.i206 = phi i32 [ %inc14.i221, %for.inc13.i223.for.cond1.preheader.i207_crit_edge ], [ 0, %if.end33.for.cond1.preheader.i207_crit_edge ]
  %arrayidx.i210 = getelementptr i8, ptr %40, i32 %i.031.i206
  %43 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i210, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp6.not.i212 = icmp eq i8 %44, -1
  br i1 %cmp6.not.i212, label %for.inc.i216, label %for.cond1.preheader.i207.for.inc13.i223_crit_edge

for.cond1.preheader.i207.for.inc13.i223_crit_edge: ; preds = %for.cond1.preheader.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i223

for.inc.i216:                                     ; preds = %for.cond1.preheader.i207
  %add.i209.1 = add i32 %i.031.i206, 1
  %arrayidx.i210.1 = getelementptr i8, ptr %40, i32 %add.i209.1
  %45 = ptrtoint ptr %arrayidx.i210.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i210.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %46)
  %cmp6.not.i212.1 = icmp eq i8 %46, -72
  br i1 %cmp6.not.i212.1, label %for.inc.i216.1, label %for.inc.i216.for.inc13.i223_crit_edge

for.inc.i216.for.inc13.i223_crit_edge:            ; preds = %for.inc.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i223

for.inc.i216.1:                                   ; preds = %for.inc.i216
  %add.i209.2 = add i32 %i.031.i206, 2
  %arrayidx.i210.2 = getelementptr i8, ptr %40, i32 %add.i209.2
  %47 = ptrtoint ptr %arrayidx.i210.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i210.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %48)
  %cmp6.not.i212.2 = icmp eq i8 %48, 66
  br i1 %cmp6.not.i212.2, label %for.inc.i216.2, label %for.inc.i216.1.for.inc13.i223_crit_edge

for.inc.i216.1.for.inc13.i223_crit_edge:          ; preds = %for.inc.i216.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i223

for.inc.i216.2:                                   ; preds = %for.inc.i216.1
  %add.i209.3 = add i32 %i.031.i206, 3
  %arrayidx.i210.3 = getelementptr i8, ptr %40, i32 %add.i209.3
  %49 = ptrtoint ptr %arrayidx.i210.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i210.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %50)
  %cmp6.not.i212.3 = icmp eq i8 %50, 73
  br i1 %cmp6.not.i212.3, label %for.inc.i216.3, label %for.inc.i216.2.for.inc13.i223_crit_edge

for.inc.i216.2.for.inc13.i223_crit_edge:          ; preds = %for.inc.i216.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i223

for.inc.i216.3:                                   ; preds = %for.inc.i216.2
  %add.i209.4 = add i32 %i.031.i206, 4
  %arrayidx.i210.4 = getelementptr i8, ptr %40, i32 %add.i209.4
  %51 = ptrtoint ptr %arrayidx.i210.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i210.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %52)
  %cmp6.not.i212.4 = icmp eq i8 %52, 84
  br i1 %cmp6.not.i212.4, label %nvbios_findstr.exit225, label %for.inc.i216.3.for.inc13.i223_crit_edge

for.inc.i216.3.for.inc13.i223_crit_edge:          ; preds = %for.inc.i216.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc13.i223

for.inc13.i223:                                   ; preds = %for.inc.i216.3.for.inc13.i223_crit_edge, %for.inc.i216.2.for.inc13.i223_crit_edge, %for.inc.i216.1.for.inc13.i223_crit_edge, %for.inc.i216.for.inc13.i223_crit_edge, %for.cond1.preheader.i207.for.inc13.i223_crit_edge
  %inc14.i221 = add i32 %i.031.i206, 1
  %cmp.not.i222 = icmp sgt i32 %inc14.i221, %sub.i203
  br i1 %cmp.not.i222, label %for.inc13.i223.nvbios_findstr.exit225.thread_crit_edge, label %for.inc13.i223.for.cond1.preheader.i207_crit_edge

for.inc13.i223.for.cond1.preheader.i207_crit_edge: ; preds = %for.inc13.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i207

for.inc13.i223.nvbios_findstr.exit225.thread_crit_edge: ; preds = %for.inc13.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_findstr.exit225.thread

nvbios_findstr.exit225.thread:                    ; preds = %for.inc13.i223.nvbios_findstr.exit225.thread_crit_edge, %if.end33.nvbios_findstr.exit225.thread_crit_edge
  %bit_offset435 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %bit_offset435 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bit_offset435, align 8
  br label %if.end58

nvbios_findstr.exit225:                           ; preds = %for.inc.i216.3
  %conv11.i219 = trunc i32 %i.031.i206 to i16
  %conv37 = and i32 %i.031.i206, 65535
  %bit_offset = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %bit_offset to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv37, ptr %bit_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11.i219)
  %tobool39.not = icmp eq i16 %conv11.i219, 0
  br i1 %tobool39.not, label %nvbios_findstr.exit225.if.end58_crit_edge, label %do.body41

nvbios_findstr.exit225.if.end58_crit_edge:        ; preds = %nvbios_findstr.exit225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body41:                                        ; preds = %nvbios_findstr.exit225
  %debug44 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %debug44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp45 = icmp ugt i32 %56, 3
  br i1 %cmp45, label %do.end50, label %do.body41.if.end58_crit_edge

do.body41.if.end58_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end50:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %device51 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %device51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device51, align 4
  %dev52 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev52, align 8
  %name53 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.8, ptr noundef %name53) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end50, %do.body41.if.end58_crit_edge, %nvbios_findstr.exit225.if.end58_crit_edge, %nvbios_findstr.exit225.thread
  %call59 = call i32 @bit_entry(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 105, ptr noundef nonnull %bit_i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.end58.if.else_crit_edge

if.end58.if.else_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end58
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %62)
  %cmp62 = icmp ugt i16 %62, 3
  br i1 %cmp62, label %if.then64, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then64:                                        ; preds = %land.lhs.true
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %2, align 2
  %conv65 = zext i16 %64 to i32
  %add = add nuw nsw i32 %conv65, 3
  %image0_size.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %66)
  %cmp.i.i = icmp ugt i32 %add, %66
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then64.if.end.i.i_crit_edge

if.then64.if.end.i.i_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then64
  %imaged_addr.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %imaged_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %imaged_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %add, %66
  %add.i.i = add i32 %sub.i.i, %68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then64.if.end.i.i_crit_edge
  %addr.addr.0.i = phi i32 [ %add, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %add.i.i, %if.then.i.i ], [ %add, %if.then64.if.end.i.i_crit_edge ]
  %add3.i.i = add i32 %addr.addr.0.i, 1
  %69 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %70)
  %cmp5.i.i = icmp ugt i32 %add3.i.i, %70
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.then.i, !prof !37

do.body.i.i:                                      ; preds = %if.end.i.i
  %debug.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %debug.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp10.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp10.not.i.i, label %do.body.i.i.nvbios_rd08.exit_crit_edge, label %do.end.i.i

do.body.i.i.nvbios_rd08.exit_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.13, ptr noundef %name.i.i, i32 noundef 1, i32 noundef %add, i32 noundef %addr.addr.0.i) #13
  br label %nvbios_rd08.exit

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 8
  %arrayidx.i226 = getelementptr i8, ptr %78, i32 %addr.addr.0.i
  %79 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i226, align 1
  br label %nvbios_rd08.exit

nvbios_rd08.exit:                                 ; preds = %if.then.i, %do.end.i.i, %do.body.i.i.nvbios_rd08.exit_crit_edge
  %retval.0.i227 = phi i8 [ %80, %if.then.i ], [ 0, %do.body.i.i.nvbios_rd08.exit_crit_edge ], [ 0, %do.end.i.i ]
  %version = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7
  %81 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %retval.0.i227, ptr %version, align 4
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %2, align 2
  %conv68 = zext i16 %83 to i32
  %add69 = add nuw nsw i32 %conv68, 2
  %84 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %85)
  %cmp.i.i229 = icmp ugt i32 %add69, %85
  br i1 %cmp.i.i229, label %land.lhs.true.i.i232, label %nvbios_rd08.exit.if.end.i.i240_crit_edge

nvbios_rd08.exit.if.end.i.i240_crit_edge:         ; preds = %nvbios_rd08.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i240

land.lhs.true.i.i232:                             ; preds = %nvbios_rd08.exit
  %imaged_addr.i.i230 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %imaged_addr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %imaged_addr.i.i230, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i231 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i231, label %land.lhs.true.i.i232.if.end.i.i240_crit_edge, label %if.then.i.i235

land.lhs.true.i.i232.if.end.i.i240_crit_edge:     ; preds = %land.lhs.true.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i240

if.then.i.i235:                                   ; preds = %land.lhs.true.i.i232
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i233 = sub i32 %add69, %85
  %add.i.i234 = add i32 %sub.i.i233, %87
  br label %if.end.i.i240

if.end.i.i240:                                    ; preds = %if.then.i.i235, %land.lhs.true.i.i232.if.end.i.i240_crit_edge, %nvbios_rd08.exit.if.end.i.i240_crit_edge
  %addr.addr.0.i236 = phi i32 [ %add69, %land.lhs.true.i.i232.if.end.i.i240_crit_edge ], [ %add.i.i234, %if.then.i.i235 ], [ %add69, %nvbios_rd08.exit.if.end.i.i240_crit_edge ]
  %add3.i.i237 = add i32 %addr.addr.0.i236, 1
  %88 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i237, i32 %89)
  %cmp5.i.i239 = icmp ugt i32 %add3.i.i237, %89
  br i1 %cmp5.i.i239, label %do.body.i.i243, label %if.then.i250, !prof !37

do.body.i.i243:                                   ; preds = %if.end.i.i240
  %debug.i.i241 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %debug.i.i241 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug.i.i241, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp10.not.i.i242 = icmp eq i32 %91, 0
  br i1 %cmp10.not.i.i242, label %do.body.i.i243.nvbios_rd08.exit252_crit_edge, label %do.end.i.i247

do.body.i.i243.nvbios_rd08.exit252_crit_edge:     ; preds = %do.body.i.i243
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit252

do.end.i.i247:                                    ; preds = %do.body.i.i243
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i244 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %device.i.i244 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device.i.i244, align 4
  %dev.i.i245 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dev.i.i245 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i.i245, align 8
  %name.i.i246 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.13, ptr noundef %name.i.i246, i32 noundef 1, i32 noundef %add69, i32 noundef %addr.addr.0.i236) #13
  br label %nvbios_rd08.exit252

if.then.i250:                                     ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 8
  %arrayidx.i249 = getelementptr i8, ptr %97, i32 %addr.addr.0.i236
  %98 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i249, align 1
  br label %nvbios_rd08.exit252

nvbios_rd08.exit252:                              ; preds = %if.then.i250, %do.end.i.i247, %do.body.i.i243.nvbios_rd08.exit252_crit_edge
  %retval.0.i251 = phi i8 [ %99, %if.then.i250 ], [ 0, %do.body.i.i243.nvbios_rd08.exit252_crit_edge ], [ 0, %do.end.i.i247 ]
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %100 = ptrtoint ptr %chip to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %retval.0.i251, ptr %chip, align 1
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %2, align 2
  %conv73 = zext i16 %102 to i32
  %add74 = add nuw nsw i32 %conv73, 1
  %103 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv73)
  %cmp.i.i254.not = icmp ugt i32 %104, %conv73
  br i1 %cmp.i.i254.not, label %nvbios_rd08.exit252.if.end.i.i265_crit_edge, label %land.lhs.true.i.i257

nvbios_rd08.exit252.if.end.i.i265_crit_edge:      ; preds = %nvbios_rd08.exit252
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i265

land.lhs.true.i.i257:                             ; preds = %nvbios_rd08.exit252
  %imaged_addr.i.i255 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %imaged_addr.i.i255 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %imaged_addr.i.i255, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i.i256 = icmp eq i32 %106, 0
  br i1 %tobool.not.i.i256, label %land.lhs.true.i.i257.if.end.i.i265_crit_edge, label %if.then.i.i260

land.lhs.true.i.i257.if.end.i.i265_crit_edge:     ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i265

if.then.i.i260:                                   ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i258 = sub i32 %add74, %104
  %add.i.i259 = add i32 %sub.i.i258, %106
  br label %if.end.i.i265

if.end.i.i265:                                    ; preds = %if.then.i.i260, %land.lhs.true.i.i257.if.end.i.i265_crit_edge, %nvbios_rd08.exit252.if.end.i.i265_crit_edge
  %addr.addr.0.i261 = phi i32 [ %add74, %land.lhs.true.i.i257.if.end.i.i265_crit_edge ], [ %add.i.i259, %if.then.i.i260 ], [ %add74, %nvbios_rd08.exit252.if.end.i.i265_crit_edge ]
  %add3.i.i262 = add i32 %addr.addr.0.i261, 1
  %107 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i262, i32 %108)
  %cmp5.i.i264 = icmp ugt i32 %add3.i.i262, %108
  br i1 %cmp5.i.i264, label %do.body.i.i268, label %if.then.i275, !prof !37

do.body.i.i268:                                   ; preds = %if.end.i.i265
  %debug.i.i266 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %109 = ptrtoint ptr %debug.i.i266 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug.i.i266, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp10.not.i.i267 = icmp eq i32 %110, 0
  br i1 %cmp10.not.i.i267, label %do.body.i.i268.nvbios_rd08.exit277_crit_edge, label %do.end.i.i272

do.body.i.i268.nvbios_rd08.exit277_crit_edge:     ; preds = %do.body.i.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit277

do.end.i.i272:                                    ; preds = %do.body.i.i268
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i269 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %device.i.i269 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i.i269, align 4
  %dev.i.i270 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %dev.i.i270 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i270, align 8
  %name.i.i271 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.13, ptr noundef %name.i.i271, i32 noundef 1, i32 noundef %add74, i32 noundef %addr.addr.0.i261) #13
  br label %nvbios_rd08.exit277

if.then.i275:                                     ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 8
  %arrayidx.i274 = getelementptr i8, ptr %116, i32 %addr.addr.0.i261
  %117 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i274, align 1
  br label %nvbios_rd08.exit277

nvbios_rd08.exit277:                              ; preds = %if.then.i275, %do.end.i.i272, %do.body.i.i268.nvbios_rd08.exit277_crit_edge
  %retval.0.i276 = phi i8 [ %118, %if.then.i275 ], [ 0, %do.body.i.i268.nvbios_rd08.exit277_crit_edge ], [ 0, %do.end.i.i272 ]
  %minor = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 2
  %119 = ptrtoint ptr %minor to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %retval.0.i276, ptr %minor, align 2
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %2, align 2
  %conv78 = zext i16 %121 to i32
  %122 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %conv78)
  %cmp.i.i279 = icmp ult i32 %123, %conv78
  br i1 %cmp.i.i279, label %land.lhs.true.i.i282, label %nvbios_rd08.exit277.if.end.i.i290_crit_edge

nvbios_rd08.exit277.if.end.i.i290_crit_edge:      ; preds = %nvbios_rd08.exit277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i290

land.lhs.true.i.i282:                             ; preds = %nvbios_rd08.exit277
  %imaged_addr.i.i280 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %124 = ptrtoint ptr %imaged_addr.i.i280 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %imaged_addr.i.i280, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i.i281 = icmp eq i32 %125, 0
  br i1 %tobool.not.i.i281, label %land.lhs.true.i.i282.if.end.i.i290_crit_edge, label %if.then.i.i285

land.lhs.true.i.i282.if.end.i.i290_crit_edge:     ; preds = %land.lhs.true.i.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i290

if.then.i.i285:                                   ; preds = %land.lhs.true.i.i282
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i283 = sub i32 %conv78, %123
  %add.i.i284 = add i32 %sub.i.i283, %125
  br label %if.end.i.i290

if.end.i.i290:                                    ; preds = %if.then.i.i285, %land.lhs.true.i.i282.if.end.i.i290_crit_edge, %nvbios_rd08.exit277.if.end.i.i290_crit_edge
  %addr.addr.0.i286 = phi i32 [ %conv78, %land.lhs.true.i.i282.if.end.i.i290_crit_edge ], [ %add.i.i284, %if.then.i.i285 ], [ %conv78, %nvbios_rd08.exit277.if.end.i.i290_crit_edge ]
  %add3.i.i287 = add i32 %addr.addr.0.i286, 1
  %126 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i287, i32 %127)
  %cmp5.i.i289 = icmp ugt i32 %add3.i.i287, %127
  br i1 %cmp5.i.i289, label %do.body.i.i293, label %if.then.i300, !prof !37

do.body.i.i293:                                   ; preds = %if.end.i.i290
  %debug.i.i291 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %128 = ptrtoint ptr %debug.i.i291 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %debug.i.i291, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp10.not.i.i292 = icmp eq i32 %129, 0
  br i1 %cmp10.not.i.i292, label %do.body.i.i293.nvbios_rd08.exit302_crit_edge, label %do.end.i.i297

do.body.i.i293.nvbios_rd08.exit302_crit_edge:     ; preds = %do.body.i.i293
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit302

do.end.i.i297:                                    ; preds = %do.body.i.i293
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i294 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %device.i.i294 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device.i.i294, align 4
  %dev.i.i295 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %dev.i.i295 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i.i295, align 8
  %name.i.i296 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.13, ptr noundef %name.i.i296, i32 noundef 1, i32 noundef %conv78, i32 noundef %addr.addr.0.i286) #13
  br label %nvbios_rd08.exit302

if.then.i300:                                     ; preds = %if.end.i.i290
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data, align 8
  %arrayidx.i299 = getelementptr i8, ptr %135, i32 %addr.addr.0.i286
  %136 = ptrtoint ptr %arrayidx.i299 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i299, align 1
  br label %nvbios_rd08.exit302

nvbios_rd08.exit302:                              ; preds = %if.then.i300, %do.end.i.i297, %do.body.i.i293.nvbios_rd08.exit302_crit_edge
  %retval.0.i301 = phi i8 [ %137, %if.then.i300 ], [ 0, %do.body.i.i293.nvbios_rd08.exit302_crit_edge ], [ 0, %do.end.i.i297 ]
  %micro = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 3
  %138 = ptrtoint ptr %micro to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %retval.0.i301, ptr %micro, align 1
  %139 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %2, align 2
  %conv83 = zext i16 %140 to i32
  %add84 = add nuw nsw i32 %conv83, 4
  %141 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %142)
  %cmp.i.i304 = icmp ugt i32 %add84, %142
  br i1 %cmp.i.i304, label %land.lhs.true.i.i307, label %nvbios_rd08.exit302.if.end.i.i315_crit_edge

nvbios_rd08.exit302.if.end.i.i315_crit_edge:      ; preds = %nvbios_rd08.exit302
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i315

land.lhs.true.i.i307:                             ; preds = %nvbios_rd08.exit302
  %imaged_addr.i.i305 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %143 = ptrtoint ptr %imaged_addr.i.i305 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %imaged_addr.i.i305, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i306 = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i306, label %land.lhs.true.i.i307.if.end.i.i315_crit_edge, label %if.then.i.i310

land.lhs.true.i.i307.if.end.i.i315_crit_edge:     ; preds = %land.lhs.true.i.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i315

if.then.i.i310:                                   ; preds = %land.lhs.true.i.i307
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i308 = sub i32 %add84, %142
  %add.i.i309 = add i32 %sub.i.i308, %144
  br label %if.end.i.i315

if.end.i.i315:                                    ; preds = %if.then.i.i310, %land.lhs.true.i.i307.if.end.i.i315_crit_edge, %nvbios_rd08.exit302.if.end.i.i315_crit_edge
  %addr.addr.0.i311 = phi i32 [ %add84, %land.lhs.true.i.i307.if.end.i.i315_crit_edge ], [ %add.i.i309, %if.then.i.i310 ], [ %add84, %nvbios_rd08.exit302.if.end.i.i315_crit_edge ]
  %add3.i.i312 = add i32 %addr.addr.0.i311, 1
  %145 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i312, i32 %146)
  %cmp5.i.i314 = icmp ugt i32 %add3.i.i312, %146
  br i1 %cmp5.i.i314, label %do.body.i.i318, label %if.then.i325, !prof !37

do.body.i.i318:                                   ; preds = %if.end.i.i315
  %debug.i.i316 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %147 = ptrtoint ptr %debug.i.i316 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %debug.i.i316, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp10.not.i.i317 = icmp eq i32 %148, 0
  br i1 %cmp10.not.i.i317, label %do.body.i.i318.nvbios_rd08.exit327_crit_edge, label %do.end.i.i322

do.body.i.i318.nvbios_rd08.exit327_crit_edge:     ; preds = %do.body.i.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit327

do.end.i.i322:                                    ; preds = %do.body.i.i318
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i319 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %device.i.i319 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device.i.i319, align 4
  %dev.i.i320 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %dev.i.i320 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i.i320, align 8
  %name.i.i321 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.13, ptr noundef %name.i.i321, i32 noundef 1, i32 noundef %add84, i32 noundef %addr.addr.0.i311) #13
  br label %nvbios_rd08.exit327

if.then.i325:                                     ; preds = %if.end.i.i315
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data, align 8
  %arrayidx.i324 = getelementptr i8, ptr %154, i32 %addr.addr.0.i311
  %155 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i324, align 1
  br label %nvbios_rd08.exit327

nvbios_rd08.exit327:                              ; preds = %if.then.i325, %do.end.i.i322, %do.body.i.i318.nvbios_rd08.exit327_crit_edge
  %retval.0.i326 = phi i8 [ %156, %if.then.i325 ], [ 0, %do.body.i.i318.nvbios_rd08.exit327_crit_edge ], [ 0, %do.end.i.i322 ]
  %patch = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %157 = ptrtoint ptr %patch to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %retval.0.i326, ptr %patch, align 8
  br label %do.body112

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end58.if.else_crit_edge
  %call87 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call87)
  %tobool88.not = icmp eq i16 %call87, 0
  br i1 %tobool88.not, label %if.else.do.body112_crit_edge, label %if.then89

if.else.do.body112_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body112

if.then89:                                        ; preds = %if.else
  %158 = ptrtoint ptr %bmp_offset432 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bmp_offset432, align 4
  %add91 = add i32 %159, 13
  %image0_size.i.i328 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %image0_size.i.i328 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %image0_size.i.i328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %161)
  %cmp.i.i329 = icmp ugt i32 %add91, %161
  br i1 %cmp.i.i329, label %land.lhs.true.i.i332, label %if.then89.if.end.i.i340_crit_edge

if.then89.if.end.i.i340_crit_edge:                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

land.lhs.true.i.i332:                             ; preds = %if.then89
  %imaged_addr.i.i330 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %162 = ptrtoint ptr %imaged_addr.i.i330 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %imaged_addr.i.i330, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i.i331 = icmp eq i32 %163, 0
  br i1 %tobool.not.i.i331, label %land.lhs.true.i.i332.if.end.i.i340_crit_edge, label %if.then.i.i335

land.lhs.true.i.i332.if.end.i.i340_crit_edge:     ; preds = %land.lhs.true.i.i332
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

if.then.i.i335:                                   ; preds = %land.lhs.true.i.i332
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i333 = sub i32 %add91, %161
  %add.i.i334 = add i32 %sub.i.i333, %163
  br label %if.end.i.i340

if.end.i.i340:                                    ; preds = %if.then.i.i335, %land.lhs.true.i.i332.if.end.i.i340_crit_edge, %if.then89.if.end.i.i340_crit_edge
  %addr.addr.0.i336 = phi i32 [ %add91, %land.lhs.true.i.i332.if.end.i.i340_crit_edge ], [ %add.i.i334, %if.then.i.i335 ], [ %add91, %if.then89.if.end.i.i340_crit_edge ]
  %add3.i.i337 = add i32 %addr.addr.0.i336, 1
  %164 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i337, i32 %165)
  %cmp5.i.i339 = icmp ugt i32 %add3.i.i337, %165
  br i1 %cmp5.i.i339, label %do.body.i.i343, label %if.then.i350, !prof !37

do.body.i.i343:                                   ; preds = %if.end.i.i340
  %debug.i.i341 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %166 = ptrtoint ptr %debug.i.i341 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %debug.i.i341, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp10.not.i.i342 = icmp eq i32 %167, 0
  br i1 %cmp10.not.i.i342, label %do.body.i.i343.nvbios_rd08.exit352_crit_edge, label %do.end.i.i347

do.body.i.i343.nvbios_rd08.exit352_crit_edge:     ; preds = %do.body.i.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit352

do.end.i.i347:                                    ; preds = %do.body.i.i343
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i344 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %device.i.i344 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %device.i.i344, align 4
  %dev.i.i345 = getelementptr inbounds %struct.nvkm_device, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %dev.i.i345 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i.i345, align 8
  %name.i.i346 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.13, ptr noundef %name.i.i346, i32 noundef 1, i32 noundef %add91, i32 noundef %addr.addr.0.i336) #13
  br label %nvbios_rd08.exit352

if.then.i350:                                     ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data, align 8
  %arrayidx.i349 = getelementptr i8, ptr %173, i32 %addr.addr.0.i336
  %174 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.i349, align 1
  br label %nvbios_rd08.exit352

nvbios_rd08.exit352:                              ; preds = %if.then.i350, %do.end.i.i347, %do.body.i.i343.nvbios_rd08.exit352_crit_edge
  %retval.0.i351 = phi i8 [ %175, %if.then.i350 ], [ 0, %do.body.i.i343.nvbios_rd08.exit352_crit_edge ], [ 0, %do.end.i.i347 ]
  %version93 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7
  %176 = ptrtoint ptr %version93 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %retval.0.i351, ptr %version93, align 4
  %177 = ptrtoint ptr %bmp_offset432 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %bmp_offset432, align 4
  %add96 = add i32 %178, 12
  %179 = ptrtoint ptr %image0_size.i.i328 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %image0_size.i.i328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %180)
  %cmp.i.i354 = icmp ugt i32 %add96, %180
  br i1 %cmp.i.i354, label %land.lhs.true.i.i357, label %nvbios_rd08.exit352.if.end.i.i365_crit_edge

nvbios_rd08.exit352.if.end.i.i365_crit_edge:      ; preds = %nvbios_rd08.exit352
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i365

land.lhs.true.i.i357:                             ; preds = %nvbios_rd08.exit352
  %imaged_addr.i.i355 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %181 = ptrtoint ptr %imaged_addr.i.i355 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %imaged_addr.i.i355, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i.i356 = icmp eq i32 %182, 0
  br i1 %tobool.not.i.i356, label %land.lhs.true.i.i357.if.end.i.i365_crit_edge, label %if.then.i.i360

land.lhs.true.i.i357.if.end.i.i365_crit_edge:     ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i365

if.then.i.i360:                                   ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i358 = sub i32 %add96, %180
  %add.i.i359 = add i32 %sub.i.i358, %182
  br label %if.end.i.i365

if.end.i.i365:                                    ; preds = %if.then.i.i360, %land.lhs.true.i.i357.if.end.i.i365_crit_edge, %nvbios_rd08.exit352.if.end.i.i365_crit_edge
  %addr.addr.0.i361 = phi i32 [ %add96, %land.lhs.true.i.i357.if.end.i.i365_crit_edge ], [ %add.i.i359, %if.then.i.i360 ], [ %add96, %nvbios_rd08.exit352.if.end.i.i365_crit_edge ]
  %add3.i.i362 = add i32 %addr.addr.0.i361, 1
  %183 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i362, i32 %184)
  %cmp5.i.i364 = icmp ugt i32 %add3.i.i362, %184
  br i1 %cmp5.i.i364, label %do.body.i.i368, label %if.then.i375, !prof !37

do.body.i.i368:                                   ; preds = %if.end.i.i365
  %debug.i.i366 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %185 = ptrtoint ptr %debug.i.i366 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %debug.i.i366, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp10.not.i.i367 = icmp eq i32 %186, 0
  br i1 %cmp10.not.i.i367, label %do.body.i.i368.nvbios_rd08.exit377_crit_edge, label %do.end.i.i372

do.body.i.i368.nvbios_rd08.exit377_crit_edge:     ; preds = %do.body.i.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit377

do.end.i.i372:                                    ; preds = %do.body.i.i368
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i369 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %187 = ptrtoint ptr %device.i.i369 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %device.i.i369, align 4
  %dev.i.i370 = getelementptr inbounds %struct.nvkm_device, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %dev.i.i370 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i.i370, align 8
  %name.i.i371 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.13, ptr noundef %name.i.i371, i32 noundef 1, i32 noundef %add96, i32 noundef %addr.addr.0.i361) #13
  br label %nvbios_rd08.exit377

if.then.i375:                                     ; preds = %if.end.i.i365
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %data, align 8
  %arrayidx.i374 = getelementptr i8, ptr %192, i32 %addr.addr.0.i361
  %193 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i374, align 1
  br label %nvbios_rd08.exit377

nvbios_rd08.exit377:                              ; preds = %if.then.i375, %do.end.i.i372, %do.body.i.i368.nvbios_rd08.exit377_crit_edge
  %retval.0.i376 = phi i8 [ %194, %if.then.i375 ], [ 0, %do.body.i.i368.nvbios_rd08.exit377_crit_edge ], [ 0, %do.end.i.i372 ]
  %chip99 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %195 = ptrtoint ptr %chip99 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %retval.0.i376, ptr %chip99, align 1
  %196 = ptrtoint ptr %bmp_offset432 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %bmp_offset432, align 4
  %add101 = add i32 %197, 11
  %198 = ptrtoint ptr %image0_size.i.i328 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %image0_size.i.i328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %199)
  %cmp.i.i379 = icmp ugt i32 %add101, %199
  br i1 %cmp.i.i379, label %land.lhs.true.i.i382, label %nvbios_rd08.exit377.if.end.i.i390_crit_edge

nvbios_rd08.exit377.if.end.i.i390_crit_edge:      ; preds = %nvbios_rd08.exit377
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i390

land.lhs.true.i.i382:                             ; preds = %nvbios_rd08.exit377
  %imaged_addr.i.i380 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %200 = ptrtoint ptr %imaged_addr.i.i380 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %imaged_addr.i.i380, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i.i381 = icmp eq i32 %201, 0
  br i1 %tobool.not.i.i381, label %land.lhs.true.i.i382.if.end.i.i390_crit_edge, label %if.then.i.i385

land.lhs.true.i.i382.if.end.i.i390_crit_edge:     ; preds = %land.lhs.true.i.i382
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i390

if.then.i.i385:                                   ; preds = %land.lhs.true.i.i382
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i383 = sub i32 %add101, %199
  %add.i.i384 = add i32 %sub.i.i383, %201
  br label %if.end.i.i390

if.end.i.i390:                                    ; preds = %if.then.i.i385, %land.lhs.true.i.i382.if.end.i.i390_crit_edge, %nvbios_rd08.exit377.if.end.i.i390_crit_edge
  %addr.addr.0.i386 = phi i32 [ %add101, %land.lhs.true.i.i382.if.end.i.i390_crit_edge ], [ %add.i.i384, %if.then.i.i385 ], [ %add101, %nvbios_rd08.exit377.if.end.i.i390_crit_edge ]
  %add3.i.i387 = add i32 %addr.addr.0.i386, 1
  %202 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i387, i32 %203)
  %cmp5.i.i389 = icmp ugt i32 %add3.i.i387, %203
  br i1 %cmp5.i.i389, label %do.body.i.i393, label %if.then.i400, !prof !37

do.body.i.i393:                                   ; preds = %if.end.i.i390
  %debug.i.i391 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %204 = ptrtoint ptr %debug.i.i391 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %debug.i.i391, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp10.not.i.i392 = icmp eq i32 %205, 0
  br i1 %cmp10.not.i.i392, label %do.body.i.i393.nvbios_rd08.exit402_crit_edge, label %do.end.i.i397

do.body.i.i393.nvbios_rd08.exit402_crit_edge:     ; preds = %do.body.i.i393
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit402

do.end.i.i397:                                    ; preds = %do.body.i.i393
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i394 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %device.i.i394 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %device.i.i394, align 4
  %dev.i.i395 = getelementptr inbounds %struct.nvkm_device, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %dev.i.i395 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev.i.i395, align 8
  %name.i.i396 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.13, ptr noundef %name.i.i396, i32 noundef 1, i32 noundef %add101, i32 noundef %addr.addr.0.i386) #13
  br label %nvbios_rd08.exit402

if.then.i400:                                     ; preds = %if.end.i.i390
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data, align 8
  %arrayidx.i399 = getelementptr i8, ptr %211, i32 %addr.addr.0.i386
  %212 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i399, align 1
  br label %nvbios_rd08.exit402

nvbios_rd08.exit402:                              ; preds = %if.then.i400, %do.end.i.i397, %do.body.i.i393.nvbios_rd08.exit402_crit_edge
  %retval.0.i401 = phi i8 [ %213, %if.then.i400 ], [ 0, %do.body.i.i393.nvbios_rd08.exit402_crit_edge ], [ 0, %do.end.i.i397 ]
  %minor104 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 2
  %214 = ptrtoint ptr %minor104 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %retval.0.i401, ptr %minor104, align 2
  %215 = ptrtoint ptr %bmp_offset432 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bmp_offset432, align 4
  %add106 = add i32 %216, 10
  %217 = ptrtoint ptr %image0_size.i.i328 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %image0_size.i.i328, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add106, i32 %218)
  %cmp.i.i404 = icmp ugt i32 %add106, %218
  br i1 %cmp.i.i404, label %land.lhs.true.i.i407, label %nvbios_rd08.exit402.if.end.i.i415_crit_edge

nvbios_rd08.exit402.if.end.i.i415_crit_edge:      ; preds = %nvbios_rd08.exit402
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i415

land.lhs.true.i.i407:                             ; preds = %nvbios_rd08.exit402
  %imaged_addr.i.i405 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 4
  %219 = ptrtoint ptr %imaged_addr.i.i405 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %imaged_addr.i.i405, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i.i406 = icmp eq i32 %220, 0
  br i1 %tobool.not.i.i406, label %land.lhs.true.i.i407.if.end.i.i415_crit_edge, label %if.then.i.i410

land.lhs.true.i.i407.if.end.i.i415_crit_edge:     ; preds = %land.lhs.true.i.i407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i415

if.then.i.i410:                                   ; preds = %land.lhs.true.i.i407
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i408 = sub i32 %add106, %218
  %add.i.i409 = add i32 %sub.i.i408, %220
  br label %if.end.i.i415

if.end.i.i415:                                    ; preds = %if.then.i.i410, %land.lhs.true.i.i407.if.end.i.i415_crit_edge, %nvbios_rd08.exit402.if.end.i.i415_crit_edge
  %addr.addr.0.i411 = phi i32 [ %add106, %land.lhs.true.i.i407.if.end.i.i415_crit_edge ], [ %add.i.i409, %if.then.i.i410 ], [ %add106, %nvbios_rd08.exit402.if.end.i.i415_crit_edge ]
  %add3.i.i412 = add i32 %addr.addr.0.i411, 1
  %221 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i412, i32 %222)
  %cmp5.i.i414 = icmp ugt i32 %add3.i.i412, %222
  br i1 %cmp5.i.i414, label %do.body.i.i418, label %if.then.i425, !prof !37

do.body.i.i418:                                   ; preds = %if.end.i.i415
  %debug.i.i416 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %223 = ptrtoint ptr %debug.i.i416 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %debug.i.i416, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp10.not.i.i417 = icmp eq i32 %224, 0
  br i1 %cmp10.not.i.i417, label %do.body.i.i418.nvbios_rd08.exit427_crit_edge, label %do.end.i.i422

do.body.i.i418.nvbios_rd08.exit427_crit_edge:     ; preds = %do.body.i.i418
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit427

do.end.i.i422:                                    ; preds = %do.body.i.i418
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i419 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %225 = ptrtoint ptr %device.i.i419 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %device.i.i419, align 4
  %dev.i.i420 = getelementptr inbounds %struct.nvkm_device, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %dev.i.i420 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev.i.i420, align 8
  %name.i.i421 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.13, ptr noundef %name.i.i421, i32 noundef 1, i32 noundef %add106, i32 noundef %addr.addr.0.i411) #13
  br label %nvbios_rd08.exit427

if.then.i425:                                     ; preds = %if.end.i.i415
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %data, align 8
  %arrayidx.i424 = getelementptr i8, ptr %230, i32 %addr.addr.0.i411
  %231 = ptrtoint ptr %arrayidx.i424 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i424, align 1
  br label %nvbios_rd08.exit427

nvbios_rd08.exit427:                              ; preds = %if.then.i425, %do.end.i.i422, %do.body.i.i418.nvbios_rd08.exit427_crit_edge
  %retval.0.i426 = phi i8 [ %232, %if.then.i425 ], [ 0, %do.body.i.i418.nvbios_rd08.exit427_crit_edge ], [ 0, %do.end.i.i422 ]
  %micro109 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 3
  %233 = ptrtoint ptr %micro109 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %retval.0.i426, ptr %micro109, align 1
  br label %do.body112

do.body112:                                       ; preds = %nvbios_rd08.exit427, %if.else.do.body112_crit_edge, %nvbios_rd08.exit327
  %debug115 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %234 = ptrtoint ptr %debug115 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %debug115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %235)
  %cmp116 = icmp ugt i32 %235, 2
  br i1 %cmp116, label %do.end121, label %do.body112.cleanup_crit_edge

do.body112.cleanup_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end121:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  %device122 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %236 = ptrtoint ptr %device122 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %device122, align 4
  %dev123 = getelementptr inbounds %struct.nvkm_device, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev123, align 8
  %name124 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %version126 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7
  %240 = ptrtoint ptr %version126 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %version126, align 4
  %conv128 = zext i8 %241 to i32
  %chip130 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %242 = ptrtoint ptr %chip130 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %chip130, align 1
  %conv131 = zext i8 %243 to i32
  %minor133 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 2
  %244 = ptrtoint ptr %minor133 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %minor133, align 2
  %conv134 = zext i8 %245 to i32
  %micro136 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 3
  %246 = ptrtoint ptr %micro136 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %micro136, align 1
  %conv137 = zext i8 %247 to i32
  %patch139 = getelementptr inbounds %struct.nvkm_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %248 = ptrtoint ptr %patch139 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %patch139, align 8
  %conv140 = zext i8 %249 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %239, ptr noundef nonnull @.str.11, ptr noundef %name124, i32 noundef %conv128, i32 noundef %conv131, i32 noundef %conv134, i32 noundef %conv137, i32 noundef %conv140) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %do.body112.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %do.end121 ], [ 0, %do.body112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %image) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_shadow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_image(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bmp_version(ptr noundef %bios) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %bmp_offset = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 5
  %0 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bmp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %add = add i32 %1, 5
  %image0_size.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 3
  %2 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp.i.i = icmp ugt i32 %add, %3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %imaged_addr.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %4 = ptrtoint ptr %imaged_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imaged_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %add, %3
  %add.i.i = add i32 %sub.i.i, %5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  %addr.addr.0.i = phi i32 [ %add, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %add.i.i, %if.then.i.i ], [ %add, %if.then.if.end.i.i_crit_edge ]
  %add3.i.i = add i32 %addr.addr.0.i, 1
  %size4.i.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %6 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %7)
  %cmp5.i.i = icmp ugt i32 %add3.i.i, %7
  br i1 %cmp5.i.i, label %do.body.i.i, label %if.then.i, !prof !37

do.body.i.i:                                      ; preds = %if.end.i.i
  %debug.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %8 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp10.not.i.i, label %do.body.i.i.nvbios_rd08.exit_crit_edge, label %do.end.i.i

do.body.i.i.nvbios_rd08.exit_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef %name.i.i, i32 noundef 1, i32 noundef %add, i32 noundef %addr.addr.0.i) #13
  br label %nvbios_rd08.exit

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 %addr.addr.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  br label %nvbios_rd08.exit

nvbios_rd08.exit:                                 ; preds = %if.then.i, %do.end.i.i, %do.body.i.i.nvbios_rd08.exit_crit_edge
  %retval.0.i = phi i8 [ %17, %if.then.i ], [ 0, %do.body.i.i.nvbios_rd08.exit_crit_edge ], [ 0, %do.end.i.i ]
  %conv = zext i8 %retval.0.i to i16
  %shl = shl nuw i16 %conv, 8
  %18 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bmp_offset, align 4
  %add3 = add i32 %19, 6
  %20 = ptrtoint ptr %image0_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image0_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %21)
  %cmp.i.i12 = icmp ugt i32 %add3, %21
  br i1 %cmp.i.i12, label %land.lhs.true.i.i15, label %nvbios_rd08.exit.if.end.i.i23_crit_edge

nvbios_rd08.exit.if.end.i.i23_crit_edge:          ; preds = %nvbios_rd08.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i23

land.lhs.true.i.i15:                              ; preds = %nvbios_rd08.exit
  %imaged_addr.i.i13 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 4
  %22 = ptrtoint ptr %imaged_addr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imaged_addr.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i14 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i14, label %land.lhs.true.i.i15.if.end.i.i23_crit_edge, label %if.then.i.i18

land.lhs.true.i.i15.if.end.i.i23_crit_edge:       ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i23

if.then.i.i18:                                    ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i16 = sub i32 %add3, %21
  %add.i.i17 = add i32 %sub.i.i16, %23
  br label %if.end.i.i23

if.end.i.i23:                                     ; preds = %if.then.i.i18, %land.lhs.true.i.i15.if.end.i.i23_crit_edge, %nvbios_rd08.exit.if.end.i.i23_crit_edge
  %addr.addr.0.i19 = phi i32 [ %add3, %land.lhs.true.i.i15.if.end.i.i23_crit_edge ], [ %add.i.i17, %if.then.i.i18 ], [ %add3, %nvbios_rd08.exit.if.end.i.i23_crit_edge ]
  %add3.i.i20 = add i32 %addr.addr.0.i19, 1
  %24 = ptrtoint ptr %size4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i20, i32 %25)
  %cmp5.i.i22 = icmp ugt i32 %add3.i.i20, %25
  br i1 %cmp5.i.i22, label %do.body.i.i26, label %if.then.i33, !prof !37

do.body.i.i26:                                    ; preds = %if.end.i.i23
  %debug.i.i24 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %26 = ptrtoint ptr %debug.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug.i.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.not.i.i25 = icmp eq i32 %27, 0
  br i1 %cmp10.not.i.i25, label %do.body.i.i26.nvbios_rd08.exit35_crit_edge, label %do.end.i.i30

do.body.i.i26.nvbios_rd08.exit35_crit_edge:       ; preds = %do.body.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvbios_rd08.exit35

do.end.i.i30:                                     ; preds = %do.body.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  %device.i.i27 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %28 = ptrtoint ptr %device.i.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i.i27, align 4
  %dev.i.i28 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i28, align 8
  %name.i.i29 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13, ptr noundef %name.i.i29, i32 noundef 1, i32 noundef %add3, i32 noundef %addr.addr.0.i19) #13
  br label %nvbios_rd08.exit35

if.then.i33:                                      ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  %data.i31 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %32 = ptrtoint ptr %data.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i31, align 4
  %arrayidx.i32 = getelementptr i8, ptr %33, i32 %addr.addr.0.i19
  %34 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i32, align 1
  br label %nvbios_rd08.exit35

nvbios_rd08.exit35:                               ; preds = %if.then.i33, %do.end.i.i30, %do.body.i.i26.nvbios_rd08.exit35_crit_edge
  %retval.0.i34 = phi i8 [ %35, %if.then.i33 ], [ 0, %do.body.i.i26.nvbios_rd08.exit35_crit_edge ], [ 0, %do.end.i.i30 ]
  %conv5 = zext i8 %retval.0.i34 to i16
  %or = or i16 %shl, %conv5
  br label %return

return:                                           ; preds = %nvbios_rd08.exit35, %entry.return_crit_edge
  %retval.0 = phi i16 [ %or, %nvbios_rd08.exit35 ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_bios_dtor(ptr noundef readonly returned %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvkm_bios, ptr %subdev, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret ptr %subdev
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 174, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 176, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_bios_new._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_bios_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 182, i32 8}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 184, i32 3}
!14 = !{ptr @nvkm_bios_new._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvkm_bios_new._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 201, i32 2}
!18 = !{ptr @nvkm_bios_new._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvkm_bios_new._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 42, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvbios_addr._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvbios_addr._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nvkm_bios, !27, !"nvkm_bios", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c", i32 138, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
