; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }

@mxm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: BIT 'x' table not present\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxm_table\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxm_table._entry_ptr = internal global ptr @mxm_table._entry, section ".printk_index", align 4
@mxm_table._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: BIT 'x' table %d/%d unknown\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@mxm_table._entry_ptr.8 = internal global ptr @mxm_table._entry.5, section ".printk_index", align 4
@mxm_sor_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 94, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unknown sor map v%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxm_sor_map\00", [20 x i8] zeroinitializer }, align 32
@mxm_sor_map._entry_ptr = internal global ptr @mxm_sor_map._entry, section ".printk_index", align 4
@g92_sor_map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\12\22\1121\111\111\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@g94_sor_map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\14$\1141\111\111\12\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@g98_sor_map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\14\12\11\001\111\111\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@mxm_sor_map._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 107, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: missing sor map\0A\00", [43 x i8] zeroinitializer }, align 32
@mxm_sor_map._entry_ptr.13 = internal global ptr @mxm_sor_map._entry.11, section ".printk_index", align 4
@mxm_ddc_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 131, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unknown ddc map v%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxm_ddc_map\00", [20 x i8] zeroinitializer }, align 32
@mxm_ddc_map._entry_ptr = internal global ptr @mxm_ddc_map._entry, section ".printk_index", align 4
@g84_sor_map = internal constant { <{ [8 x i8], [8 x i8] }>, [16 x i8] } { <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\00\12\22\1121\111", [8 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 35, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 42, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 94, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"g92_sor_map\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 59, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"g94_sor_map\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 64, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"g98_sor_map\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 69, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 107, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 131, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"g84_sor_map\00", align 1
@___asan_gen_.78 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 54, i32 11 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mxm_ddc_map._entry, ptr @mxm_ddc_map._entry_ptr, ptr @mxm_sor_map._entry, ptr @mxm_sor_map._entry.11, ptr @mxm_sor_map._entry_ptr, ptr @mxm_sor_map._entry_ptr.13, ptr @mxm_table._entry, ptr @mxm_table._entry.5, ptr @mxm_table._entry_ptr, ptr @mxm_table._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @g92_sor_map, ptr @g94_sor_map, ptr @g98_sor_map, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @g84_sor_map], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_table._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_sor_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g92_sor_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g94_sor_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sor_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_sor_map._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxm_ddc_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_sor_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mxm_table(ptr noundef %bios, ptr nocapture noundef %ver, ptr nocapture noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  %x = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %x) #5
  %0 = getelementptr inbounds %struct.bit_entry, ptr %x, i32 0, i32 3
  %1 = call ptr @memset(ptr %x, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 120, ptr noundef nonnull %x) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.bit_entry, ptr %x, i32 0, i32 2
  %9 = getelementptr inbounds %struct.bit_entry, ptr %x, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ver, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %8, align 2
  %conv = trunc i16 %14 to i8
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %hdr, align 1
  %16 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp8.not = icmp ne i8 %16, 1
  %conv.mask = and i16 %14, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.mask)
  %cmp11 = icmp ult i16 %conv.mask, 3
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp11
  br i1 %or.cond, label %do.body14, label %if.end32

do.body14:                                        ; preds = %if.end6
  %debug16 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %17 = ptrtoint ptr %debug16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp17 = icmp ugt i32 %18, 1
  br i1 %cmp17, label %do.end22, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end22:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %device23 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %19 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device23, align 4
  %dev24 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev24, align 8
  %name25 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %conv27 = zext i8 %16 to i32
  %conv28 = zext i16 %conv.mask to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef %name25, i32 noundef %conv27, i32 noundef %conv28) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %0, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end22, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %24, %if.end32 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end22 ], [ 0, %do.body14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %x) #5
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mxm_sor_map(ptr noundef %bios, i8 noundef zeroext %conn) local_unnamed_addr #0 align 64 {
entry:
  %x.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %x.i) #5
  %0 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 3
  %1 = call ptr @memset(ptr %x.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 120, ptr noundef nonnull %x.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp ugt i32 %3, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.mxm_table.exit.thread_crit_edge

do.body.i.mxm_table.exit.thread_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxm_table.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name.i) #8
  br label %mxm_table.exit.thread

if.end6.i:                                        ; preds = %entry
  %8 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp8.not.i = icmp ne i8 %11, 1
  %conv.mask.i = and i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.mask.i)
  %cmp11.i = icmp ult i16 %conv.mask.i, 3
  %or.cond.i = select i1 %cmp8.not.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %do.body14.i, label %mxm_table.exit

do.body14.i:                                      ; preds = %if.end6.i
  %debug16.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %14 = ptrtoint ptr %debug16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp17.i = icmp ugt i32 %15, 1
  br i1 %cmp17.i, label %do.end22.i, label %do.body14.i.mxm_table.exit.thread_crit_edge

do.body14.i.mxm_table.exit.thread_crit_edge:      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxm_table.exit.thread

do.end22.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %device23.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %16 = ptrtoint ptr %device23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device23.i, align 4
  %dev24.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24.i, align 8
  %name25.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %conv27.i = zext i8 %11 to i32
  %conv28.i = zext i16 %conv.mask.i to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %name25.i, i32 noundef %conv27.i, i32 noundef %conv28.i) #8
  br label %mxm_table.exit.thread

mxm_table.exit.thread:                            ; preds = %do.end22.i, %do.body14.i.mxm_table.exit.thread_crit_edge, %do.end.i, %do.body.i.mxm_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %x.i) #5
  br label %if.end48

mxm_table.exit:                                   ; preds = %if.end6.i
  %conv.i = trunc i16 %13 to i8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %x.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp ne i16 %21, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv.i)
  %cmp = icmp ugt i8 %conv.i, 5
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %mxm_table.exit.if.end48_crit_edge

mxm_table.exit.if.end48_crit_edge:                ; preds = %mxm_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then:                                          ; preds = %mxm_table.exit
  %conv = zext i16 %21 to i32
  %add = add nuw nsw i32 %conv, 4
  %call5 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call5)
  %tobool6.not = icmp eq i16 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end48_crit_edge, label %if.then7

if.then.if.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then7:                                         ; preds = %if.then
  %conv8 = zext i16 %call5 to i32
  %call9 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv8) #5
  %conv10 = zext i8 %call9 to i32
  %22 = and i8 %call9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %switch = icmp eq i8 %22, 16
  br i1 %switch, label %if.then16, label %do.body

if.then16:                                        ; preds = %if.then7
  %add19 = add nuw nsw i32 %conv8, 3
  %call20 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call20, i8 %conn)
  %cmp22 = icmp ugt i8 %call20, %conn
  br i1 %cmp22, label %if.then24, label %if.then16.cleanup109_crit_edge

if.then16.cleanup109_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup109

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %conv17 = zext i8 %conn to i16
  %add26 = add nuw nsw i32 %conv8, 1
  %call27 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add26) #5
  %conv28 = zext i8 %call27 to i16
  %add30 = add i16 %call5, %conv17
  %add34 = add i16 %add30, %conv28
  %conv36 = zext i16 %add34 to i32
  %call37 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv36) #5
  br label %cleanup109

do.body:                                          ; preds = %if.then7
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp39 = icmp ugt i32 %24, 1
  br i1 %cmp39, label %do.end, label %do.body.if.end48_crit_edge

do.body.if.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %28, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %conv10) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end, %do.body.if.end48_crit_edge, %if.then.if.end48_crit_edge, %mxm_table.exit.if.end48_crit_edge, %mxm_table.exit.thread
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip, align 1
  %31 = add i8 %30, 124
  %32 = call i8 @llvm.fshl.i8(i8 %31, i8 %31, i8 7)
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %do.body93 [
    i8 0, label %if.end48.if.then58_crit_edge
    i8 1, label %if.end48.if.then58_crit_edge148
    i8 7, label %if.then65
    i8 8, label %if.end48.if.then80_crit_edge
    i8 9, label %if.end48.if.then80_crit_edge149
    i8 10, label %if.then89
  ]

if.end48.if.then80_crit_edge149:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

if.end48.if.then80_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

if.end48.if.then58_crit_edge148:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.end48.if.then58_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.then58:                                        ; preds = %if.end48.if.then58_crit_edge, %if.end48.if.then58_crit_edge148
  %idxprom = zext i8 %conn to i32
  %arrayidx = getelementptr [16 x i8], ptr @g84_sor_map, i32 0, i32 %idxprom
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  br label %cleanup109

if.then65:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom66 = zext i8 %conn to i32
  %arrayidx67 = getelementptr [16 x i8], ptr @g92_sor_map, i32 0, i32 %idxprom66
  %36 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx67, align 1
  br label %cleanup109

if.then80:                                        ; preds = %if.end48.if.then80_crit_edge, %if.end48.if.then80_crit_edge149
  %idxprom81 = zext i8 %conn to i32
  %arrayidx82 = getelementptr [16 x i8], ptr @g94_sor_map, i32 0, i32 %idxprom81
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx82, align 1
  br label %cleanup109

if.then89:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom90 = zext i8 %conn to i32
  %arrayidx91 = getelementptr [16 x i8], ptr @g98_sor_map, i32 0, i32 %idxprom90
  %40 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx91, align 1
  br label %cleanup109

do.body93:                                        ; preds = %if.end48
  %debug95 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %42 = ptrtoint ptr %debug95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp96 = icmp ugt i32 %43, 1
  br i1 %cmp96, label %do.end101, label %do.body93.cleanup109_crit_edge

do.body93.cleanup109_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup109

do.end101:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  %device102 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %44 = ptrtoint ptr %device102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device102, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev103, align 8
  %name104 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef %name104) #8
  br label %cleanup109

cleanup109:                                       ; preds = %do.end101, %do.body93.cleanup109_crit_edge, %if.then89, %if.then80, %if.then65, %if.then58, %if.then24, %if.then16.cleanup109_crit_edge
  %retval.1 = phi i8 [ %35, %if.then58 ], [ %37, %if.then65 ], [ %39, %if.then80 ], [ %41, %if.then89 ], [ 0, %do.end101 ], [ 0, %do.body93.cleanup109_crit_edge ], [ %call37, %if.then24 ], [ 0, %if.then16.cleanup109_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mxm_ddc_map(ptr noundef %bios, i8 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %x.i = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %x.i) #5
  %0 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 3
  %1 = call ptr @memset(ptr %x.i, i32 255, i32 6)
  %call.i = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 120, ptr noundef nonnull %x.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp ugt i32 %3, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.mxm_table.exit.thread_crit_edge

do.body.i.mxm_table.exit.thread_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxm_table.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name.i) #8
  br label %mxm_table.exit.thread

if.end6.i:                                        ; preds = %entry
  %8 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.bit_entry, ptr %x.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp8.not.i = icmp ne i8 %11, 1
  %conv.mask.i = and i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.mask.i)
  %cmp11.i = icmp ult i16 %conv.mask.i, 3
  %or.cond.i = select i1 %cmp8.not.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %do.body14.i, label %mxm_table.exit

do.body14.i:                                      ; preds = %if.end6.i
  %debug16.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %14 = ptrtoint ptr %debug16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp17.i = icmp ugt i32 %15, 1
  br i1 %cmp17.i, label %do.end22.i, label %do.body14.i.mxm_table.exit.thread_crit_edge

do.body14.i.mxm_table.exit.thread_crit_edge:      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxm_table.exit.thread

do.end22.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %device23.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %16 = ptrtoint ptr %device23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device23.i, align 4
  %dev24.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24.i, align 8
  %name25.i = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %conv27.i = zext i8 %11 to i32
  %conv28.i = zext i16 %conv.mask.i to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %name25.i, i32 noundef %conv27.i, i32 noundef %conv28.i) #8
  br label %mxm_table.exit.thread

mxm_table.exit.thread:                            ; preds = %do.end22.i, %do.body14.i.mxm_table.exit.thread_crit_edge, %do.end.i, %do.body.i.mxm_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %x.i) #5
  br label %if.end45

mxm_table.exit:                                   ; preds = %if.end6.i
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %x.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp ne i16 %21, 0
  %22 = and i16 %13, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp = icmp ne i16 %22, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %mxm_table.exit.if.end45_crit_edge

mxm_table.exit.if.end45_crit_edge:                ; preds = %mxm_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then:                                          ; preds = %mxm_table.exit
  %conv = zext i16 %21 to i32
  %add = add nuw nsw i32 %conv, 6
  %call5 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call5)
  %tobool6.not = icmp eq i16 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end45_crit_edge, label %if.then7

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then7:                                         ; preds = %if.then
  %conv8 = zext i16 %call5 to i32
  %call9 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv8) #5
  %conv10 = zext i8 %call9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call9)
  %cmp11 = icmp eq i8 %call9, 16
  br i1 %cmp11, label %if.then13, label %do.body

if.then13:                                        ; preds = %if.then7
  %add16 = add nuw nsw i32 %conv8, 3
  %call17 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call17, i8 %port)
  %cmp19 = icmp ugt i8 %call17, %port
  br i1 %cmp19, label %if.then21, label %if.then13.cleanup49_crit_edge

if.then13.cleanup49_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i8 %port to i16
  %add23 = add nuw nsw i32 %conv8, 1
  %call24 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add23) #5
  %conv25 = zext i8 %call24 to i16
  %add27 = add i16 %call5, %conv14
  %add31 = add i16 %add27, %conv25
  %conv33 = zext i16 %add31 to i32
  %call34 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv33) #5
  br label %cleanup49

do.body:                                          ; preds = %if.then7
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp36 = icmp ugt i32 %24, 1
  br i1 %cmp36, label %do.end, label %do.body.if.end45_crit_edge

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %conv10) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end, %do.body.if.end45_crit_edge, %if.then.if.end45_crit_edge, %mxm_table.exit.if.end45_crit_edge, %mxm_table.exit.thread
  %shl = shl i8 %port, 4
  %or = or i8 %shl, %port
  br label %cleanup49

cleanup49:                                        ; preds = %if.end45, %if.then21, %if.then13.cleanup49_crit_edge
  %retval.1 = phi i8 [ %or, %if.end45 ], [ %call34, %if.then21 ], [ 0, %if.then13.cleanup49_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mxm_table._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mxm_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 42, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mxm_table._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mxm_table._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 94, i32 4}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mxm_sor_map._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mxm_sor_map._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 107, i32 2}
!20 = !{ptr @mxm_sor_map._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxm_sor_map._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 131, i32 4}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mxm_ddc_map._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mxm_ddc_map._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @g84_sor_map, !28, !"g84_sor_map", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 54, i32 11}
!29 = !{ptr @g92_sor_map, !30, !"g92_sor_map", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 59, i32 11}
!31 = !{ptr @g94_sor_map, !32, !"g94_sor_map", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 64, i32 11}
!33 = !{ptr @g98_sor_map, !34, !"g98_sor_map", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c", i32 69, i32 11}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
