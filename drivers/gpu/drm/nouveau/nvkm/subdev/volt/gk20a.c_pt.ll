; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cvb_coef = type { i32, i32, i32, i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.140 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.102], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.102 = type { i32, i8 }
%struct.gk20a_volt = type { %struct.nvkm_volt, ptr }

@gk20a_volt = internal constant { %struct.nvkm_volt_func, [36 x i8] } { %struct.nvkm_volt_func { ptr null, ptr null, ptr null, ptr @gk20a_volt_vid_get, ptr @gk20a_volt_vid_set, ptr @gk20a_volt_set_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@gk20a_volt_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: the default voltage is %duV\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gk20a_volt_ctor\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk20a_volt_ctor._entry_ptr = internal global ptr @gk20a_volt_ctor._entry, section ".printk_index", align 4
@gk20a_volt_ctor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %2d: vid=%d, uv=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@gk20a_volt_ctor._entry_ptr.7 = internal global ptr @gk20a_volt_ctor._entry.5, section ".printk_index", align 4
@gk20a_cvb_coef = internal constant { [15 x %struct.cvb_coef], [88 x i8] } { [15 x %struct.cvb_coef] [%struct.cvb_coef { i32 1209886, i32 -36468, i32 515, i32 417, i32 -13123, i32 203 }, %struct.cvb_coef { i32 1130804, i32 -27659, i32 296, i32 298, i32 -10834, i32 221 }, %struct.cvb_coef { i32 1162871, i32 -27110, i32 247, i32 238, i32 -10681, i32 268 }, %struct.cvb_coef { i32 1220458, i32 -28654, i32 247, i32 179, i32 -10376, i32 298 }, %struct.cvb_coef { i32 1280953, i32 -30204, i32 247, i32 119, i32 -9766, i32 304 }, %struct.cvb_coef { i32 1344547, i32 -31777, i32 247, i32 119, i32 -8545, i32 292 }, %struct.cvb_coef { i32 1420168, i32 -34227, i32 269, i32 60, i32 -7172, i32 256 }, %struct.cvb_coef { i32 1490757, i32 -35955, i32 274, i32 60, i32 -5188, i32 197 }, %struct.cvb_coef { i32 1599112, i32 -42583, i32 398, i32 0, i32 -1831, i32 119 }, %struct.cvb_coef { i32 1366986, i32 -16459, i32 -274, i32 0, i32 -3204, i32 72 }, %struct.cvb_coef { i32 1391884, i32 -17078, i32 -274, i32 -60, i32 -1526, i32 30 }, %struct.cvb_coef { i32 1415522, i32 -17497, i32 -274, i32 -60, i32 -458, i32 0 }, %struct.cvb_coef { i32 1464061, i32 -18331, i32 -274, i32 -119, i32 1831, i32 -72 }, %struct.cvb_coef { i32 1524225, i32 -20064, i32 -254, i32 -119, i32 4272, i32 -155 }, %struct.cvb_coef { i32 1608418, i32 -21643, i32 -269, i32 0, i32 763, i32 -48 }], [88 x i8] zeroinitializer }, align 32
@gk20a_volt_vid_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set voltage as %duv\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gk20a_volt_vid_set\00", [45 x i8] zeroinitializer }, align 32
@gk20a_volt_vid_set._entry_ptr = internal global ptr @gk20a_volt_vid_set._entry, section ".printk_index", align 4
@gk20a_volt_set_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: prev=%d, target=%d, condition=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gk20a_volt_set_id\00", [46 x i8] zeroinitializer }, align 32
@gk20a_volt_set_id._entry_ptr = internal global ptr @gk20a_volt_set_id._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"gk20a_volt\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 140, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 157, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 167, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"gk20a_cvb_coef\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 29, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 113, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 126, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @gk20a_volt_ctor._entry, ptr @gk20a_volt_ctor._entry.5, ptr @gk20a_volt_ctor._entry_ptr, ptr @gk20a_volt_ctor._entry_ptr.7, ptr @gk20a_volt_set_id._entry, ptr @gk20a_volt_set_id._entry_ptr, ptr @gk20a_volt_vid_set._entry, ptr @gk20a_volt_vid_set._entry_ptr, ptr @gk20a_volt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @gk20a_cvb_coef, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_volt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_volt_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_volt_ctor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_cvb_coef to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_volt_vid_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_volt_set_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_volt_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef readonly %coefs, i32 noundef %nb_coefs, i32 noundef %vmin, ptr noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %tegra = getelementptr inbounds %struct.nvkm_device_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tegra, align 4
  %call = tail call ptr %3(ptr noundef %device) #5
  tail call void @nvkm_volt_ctor(ptr noundef nonnull @gk20a_volt, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %volt) #5
  %vdd = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 8
  %call1 = tail call i32 @regulator_get_voltage(ptr noundef %5) #5
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device4 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device4, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd, align 8
  %vdd8 = getelementptr inbounds %struct.gk20a_volt, ptr %volt, i32 0, i32 1
  %14 = ptrtoint ptr %vdd8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %vdd8, align 4
  %conv = trunc i32 %nb_coefs to i8
  %vid_nr = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %15 = ptrtoint ptr %vid_nr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %vid_nr, align 1
  %conv1280 = and i32 %nb_coefs, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1280)
  %cmp1381.not = icmp eq i32 %conv1280, 0
  br i1 %cmp1381.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %gpu_speedo = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 10
  %device37 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %name39 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end50.for.body_crit_edge ]
  %conv15 = trunc i32 %i.082 to i8
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.082
  %vid17 = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.082, i32 1
  %16 = ptrtoint ptr %vid17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %vid17, align 4
  %arrayidx18 = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082
  %17 = ptrtoint ptr %gpu_speedo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpu_speedo, align 8
  %c2.i.i.i = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082, i32 2
  %19 = ptrtoint ptr %c2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c2.i.i.i, align 4
  %mul.i.i.i = mul i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %mul.i.i.i, 0
  %cond.in.v.i.i.i = select i1 %cmp.i.i.i, i32 50, i32 -50
  %cond.in.i.i.i = add i32 %cond.in.v.i.i.i, %mul.i.i.i
  %cond.i.i.i = sdiv i32 %cond.in.i.i.i, 100
  %c1.i.i.i = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082, i32 1
  %21 = ptrtoint ptr %c1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c1.i.i.i, align 4
  %add9.i.i.i = add i32 %cond.i.i.i, %22
  %mul10.i.i.i = mul i32 %add9.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul10.i.i.i)
  %cmp13.i.i.i = icmp sgt i32 %mul10.i.i.i, 0
  %cond28.in.v.i.i.i = select i1 %cmp13.i.i.i, i32 50, i32 -50
  %cond28.in.i.i.i = add i32 %cond28.in.v.i.i.i, %mul10.i.i.i
  %cond28.i.i.i = sdiv i32 %cond28.in.i.i.i, 100
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18, align 4
  %c3.i.i = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082, i32 3
  %25 = ptrtoint ptr %c3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c3.i.i, align 4
  %mul.i.i = mul i32 %26, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.i.i = icmp sgt i32 %mul.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 50, i32 -50
  %cond.in.i.i = add i32 %cond.in.v.i.i, %mul.i.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 100
  %c4.i.i = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082, i32 4
  %27 = ptrtoint ptr %c4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c4.i.i, align 4
  %add8.i.i = add i32 %cond.i.i, %28
  %c5.i.i = getelementptr %struct.cvb_coef, ptr %coefs, i32 %i.082, i32 5
  %29 = ptrtoint ptr %c5.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c5.i.i, align 4
  %mul10.i.i = mul i32 %30, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul10.i.i)
  %cmp13.i.i = icmp sgt i32 %mul10.i.i, 0
  %cond28.in.v.i.i = select i1 %cmp13.i.i, i32 5, i32 -5
  %cond28.in.i.i = add i32 %cond28.in.v.i.i, %mul10.i.i
  %cond28.i.i = sdiv i32 %cond28.in.i.i, 10
  %add29.i.i = add i32 %add8.i.i, %cond28.i.i
  %mul31.i.i = mul i32 %add29.i.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul31.i.i)
  %cmp34.i.i = icmp sgt i32 %mul31.i.i, 0
  %cond49.in.v.i.i = select i1 %cmp34.i.i, i32 5, i32 -5
  %cond49.in.i.i = add i32 %cond49.in.v.i.i, %mul31.i.i
  %cond49.i.i = sdiv i32 %cond49.in.i.i, 10
  %add29.i.i.i = add i32 %24, 999
  %add50.i.i = add i32 %add29.i.i.i, %cond28.i.i.i
  %sub.i = add i32 %add50.i.i, %cond49.i.i
  %31 = srem i32 %sub.i, 1000
  %mul.i = sub i32 %sub.i, %31
  %32 = tail call i32 @llvm.smax.i32(i32 %mul.i, i32 %vmin)
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp31 = icmp ugt i32 %35, 3
  br i1 %cmp31, label %do.end36, label %for.body.if.end50_crit_edge

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device37, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.6, ptr noundef %name39, i32 noundef %i.082, i32 noundef %i.082, i32 noundef %32) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end36, %for.body.if.end50_crit_edge
  %inc = add nuw nsw i32 %i.082, 1
  %40 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vid_nr, align 1
  %conv12 = zext i8 %41 to i32
  %cmp13 = icmp ult i32 %inc, %conv12
  br i1 %cmp13, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_volt_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_volt_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pvolt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2128) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pvolt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pvolt, align 4
  %call1 = tail call i32 @gk20a_volt_ctor(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gk20a_cvb_coef, i32 noundef 15, i32 noundef 0, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_volt_vid_get(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.gk20a_volt, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_get_voltage(ptr noundef %1) #5
  %vid_nr = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 3
  %2 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid_nr, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call)
  %cmp5.not = icmp ult i32 %5, %call
  br i1 %cmp5.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %i.015, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_volt_vid_set(ptr noundef %base, i8 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = zext i8 %vid to i32
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 4
  %idxprom = zext i8 %vid to i32
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %idxprom10.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %idxprom, %do.end ]
  %vdd = getelementptr inbounds %struct.gk20a_volt, ptr %base, i32 0, i32 1
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd, align 4
  %arrayidx11 = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom10.pre-phi
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %call = tail call i32 @regulator_set_voltage(ptr noundef %9, i32 noundef %11, i32 noundef 1200000) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_volt_set_id(ptr noundef %base, i8 noundef zeroext %id, i32 noundef %condition) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.gk20a_volt, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_get_voltage(ptr noundef %1) #5
  %idxprom = zext i8 %id to i32
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %call, i32 noundef %3, i32 noundef %condition) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %tobool.not = icmp eq i32 %condition, 0
  br i1 %tobool.not, label %if.end.if.then13_crit_edge, label %lor.lhs.false

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %cmp7 = icmp slt i32 %condition, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call)
  %cmp8 = icmp slt i32 %3, %call
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false9

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %cmp10 = icmp sgt i32 %condition, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call)
  %cmp12 = icmp sgt i32 %3, %call
  %or.cond36 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond36, label %lor.lhs.false9.if.then13_crit_edge, label %lor.lhs.false9.if.end21_crit_edge

lor.lhs.false9.if.end21_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %lor.lhs.false.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %vid19 = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %vid19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vid19, align 4
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ugt i32 %13, 3
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = zext i8 %11 to i32
  br label %gk20a_volt_vid_set.exit

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_volt, ptr %base, i32 0, i32 1, i32 4
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %19) #8
  br label %gk20a_volt_vid_set.exit

gk20a_volt_vid_set.exit:                          ; preds = %do.end.i, %entry.if.end_crit_edge.i
  %idxprom10.pre-phi.i = phi i32 [ %.pre.i, %entry.if.end_crit_edge.i ], [ %idxprom.i, %do.end.i ]
  %20 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdd, align 4
  %arrayidx11.i = getelementptr %struct.nvkm_volt, ptr %base, i32 0, i32 4, i32 %idxprom10.pre-phi.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  %call.i = tail call i32 @regulator_set_voltage(ptr noundef %21, i32 noundef %23, i32 noundef 1200000) #5
  br label %if.end21

if.end21:                                         ; preds = %gk20a_volt_vid_set.exit, %lor.lhs.false9.if.end21_crit_edge
  %ret.0 = phi i32 [ %call.i, %gk20a_volt_vid_set.exit ], [ 0, %lor.lhs.false9.if.end21_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 157, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gk20a_volt_ctor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gk20a_volt_ctor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 167, i32 3}
!10 = !{ptr @gk20a_volt_ctor._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gk20a_volt_ctor._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @gk20a_volt, !13, !"gk20a_volt", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 140, i32 1}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 113, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gk20a_volt_vid_set._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @gk20a_volt_vid_set._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 126, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gk20a_volt_set_id._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gk20a_volt_set_id._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"v_scale", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 83, i32 19}
!26 = !{ptr @gk20a_cvb_coef, !27, !"gk20a_cvb_coef", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c", i32 29, i32 30}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
