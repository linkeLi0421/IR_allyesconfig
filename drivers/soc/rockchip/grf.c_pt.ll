; ModuleID = '/llk/IR_all_yes/drivers/soc/rockchip/grf.c_pt.bc'
source_filename = "../drivers/soc/rockchip/grf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rockchip_grf_info = type { ptr, i32 }
%struct.rockchip_grf_value = type { ptr, i32, i32 }

@__initcall__kmod_grf__171_175_rockchip_grf_init2 = internal global ptr @rockchip_grf_init, section ".initcall2.init", align 4
@rockchip_grf_dt_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_grf }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@rockchip_grf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: missing grf data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_grf_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soc/rockchip/grf.c\00", [37 x i8] zeroinitializer }, align 32
@rockchip_grf_init._entry_ptr = internal global ptr @rockchip_grf_init._entry, section ".printk_index", align 4
@rockchip_grf_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: could not get grf syscon\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_grf_init._entry_ptr.5 = internal global ptr @rockchip_grf_init._entry.3, section ".printk_index", align 4
@rockchip_grf_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: adjusting %s in %#6x to %#10x\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_grf_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: write to %#6x failed with %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_grf_init._entry_ptr.10 = internal global ptr @rockchip_grf_init._entry.8, section ".printk_index", align 4
@rk3036_grf = internal constant %struct.rockchip_grf_info { ptr @rk3036_defaults, i32 1 }, section ".init.rodata", align 4
@rk3128_grf = internal constant %struct.rockchip_grf_info { ptr @rk3128_defaults, i32 1 }, section ".init.rodata", align 4
@rk3228_grf = internal constant %struct.rockchip_grf_info { ptr @rk3228_defaults, i32 1 }, section ".init.rodata", align 4
@rk3288_grf = internal constant %struct.rockchip_grf_info { ptr @rk3288_defaults, i32 2 }, section ".init.rodata", align 4
@rk3328_grf = internal constant %struct.rockchip_grf_info { ptr @rk3328_defaults, i32 1 }, section ".init.rodata", align 4
@rk3368_grf = internal constant %struct.rockchip_grf_info { ptr @rk3368_defaults, i32 1 }, section ".init.rodata", align 4
@rk3399_grf = internal constant %struct.rockchip_grf_info { ptr @rk3399_defaults, i32 1 }, section ".init.rodata", align 4
@rk3036_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 320, i32 134217728 }], section ".init.rodata", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jtag switching\00", [17 x i8] zeroinitializer }, align 32
@rk3128_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 320, i32 16777216 }], section ".init.rodata", align 4
@rk3228_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 1048, i32 16777216 }], section ".init.rodata", align 4
@rk3288_defaults = internal constant [2 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 580, i32 268435456 }, %struct.rockchip_grf_value { ptr @.str.12, i32 588, i32 65537 }], section ".init.rodata", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm select\00", [21 x i8] zeroinitializer }, align 32
@rk3328_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 1040, i32 268435456 }], section ".init.rodata", align 4
@rk3368_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 1084, i32 536870912 }], section ".init.rodata", align 4
@rk3399_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.11, i32 57884, i32 268435456 }], section ".init.rodata", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 150, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 158, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 165, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 169, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 35, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [30 x i8] c"../drivers/soc/rockchip/grf.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 70, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_grf__171_175_rockchip_grf_init2, ptr @rockchip_grf_init._entry, ptr @rockchip_grf_init._entry.3, ptr @rockchip_grf_init._entry.8, ptr @rockchip_grf_init._entry_ptr, ptr @rockchip_grf_init._entry_ptr.10, ptr @rockchip_grf_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_grf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_grf_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_grf_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_grf_init() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #4
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !63
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_grf_dt_match, ptr noundef nonnull %match) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end5

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call7 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %call) #4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %num_values = getelementptr inbounds %struct.rockchip_grf_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp59 = icmp sgt i32 %6, 0
  br i1 %cmp59, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %if.end39.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_grf_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_grf_init, %if.then23)) #4
          to label %do.end27 [label %if.then23], !srcloc !64

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.rockchip_grf_value, ptr %9, i32 %i.060
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %reg = getelementptr %struct.rockchip_grf_value, ptr %9, i32 %i.060, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %val24 = getelementptr %struct.rockchip_grf_value, ptr %9, i32 %i.060, i32 2
  %14 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val24, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_grf_init.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %13, i32 noundef %15) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %for.body
  %reg28 = getelementptr %struct.rockchip_grf_value, ptr %9, i32 %i.060, i32 1
  %16 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg28, align 4
  %val29 = getelementptr %struct.rockchip_grf_value, ptr %9, i32 %i.060, i32 2
  %18 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val29, align 4
  %call30 = call i32 @regmap_write(ptr noundef %call7, i32 noundef %17, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %do.end27.if.end39_crit_edge

do.end27.if.end39_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

do.end35:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg28, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %call30) #7
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %do.end27.if.end39_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %22 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_values, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %if.end39.for.body_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %do.end12, %for.cond.preheader.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end12 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_grf__171_175_rockchip_grf_init2, !1, !"__initcall__kmod_grf__171_175_rockchip_grf_init2", i1 false, i1 false}
!1 = !{!"../drivers/soc/rockchip/grf.c", i32 175, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/rockchip/grf.c", i32 150, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rockchip_grf_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rockchip_grf_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/rockchip/grf.c", i32 158, i32 3}
!10 = !{ptr @rockchip_grf_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rockchip_grf_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/rockchip/grf.c", i32 165, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rockchip_grf_init.__UNIQUE_ID_ddebug170, !13, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/rockchip/grf.c", i32 169, i32 4}
!18 = !{ptr @rockchip_grf_init._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rockchip_grf_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @rockchip_grf_dt_match, !21, !"rockchip_grf_dt_match", i1 false, i1 false}
!21 = !{!"../drivers/soc/rockchip/grf.c", i32 111, i32 34}
!22 = !{ptr @rk3036_grf, !23, !"rk3036_grf", i1 false, i1 false}
!23 = !{!"../drivers/soc/rockchip/grf.c", i32 38, i32 39}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/rockchip/grf.c", i32 35, i32 4}
!26 = !{ptr @rk3036_defaults, !27, !"rk3036_defaults", i1 false, i1 false}
!27 = !{!"../drivers/soc/rockchip/grf.c", i32 30, i32 40}
!28 = !{ptr @rk3128_grf, !29, !"rk3128_grf", i1 false, i1 false}
!29 = !{!"../drivers/soc/rockchip/grf.c", i32 49, i32 39}
!30 = !{ptr @rk3128_defaults, !31, !"rk3128_defaults", i1 false, i1 false}
!31 = !{!"../drivers/soc/rockchip/grf.c", i32 45, i32 40}
!32 = !{ptr @rk3228_grf, !33, !"rk3228_grf", i1 false, i1 false}
!33 = !{!"../drivers/soc/rockchip/grf.c", i32 60, i32 39}
!34 = !{ptr @rk3228_defaults, !35, !"rk3228_defaults", i1 false, i1 false}
!35 = !{!"../drivers/soc/rockchip/grf.c", i32 56, i32 40}
!36 = !{ptr @rk3288_grf, !37, !"rk3288_grf", i1 false, i1 false}
!37 = !{!"../drivers/soc/rockchip/grf.c", i32 73, i32 39}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/rockchip/grf.c", i32 70, i32 4}
!40 = !{ptr @rk3288_defaults, !41, !"rk3288_defaults", i1 false, i1 false}
!41 = !{!"../drivers/soc/rockchip/grf.c", i32 68, i32 40}
!42 = !{ptr @rk3328_grf, !43, !"rk3328_grf", i1 false, i1 false}
!43 = !{!"../drivers/soc/rockchip/grf.c", i32 84, i32 39}
!44 = !{ptr @rk3328_defaults, !45, !"rk3328_defaults", i1 false, i1 false}
!45 = !{!"../drivers/soc/rockchip/grf.c", i32 80, i32 40}
!46 = !{ptr @rk3368_grf, !47, !"rk3368_grf", i1 false, i1 false}
!47 = !{!"../drivers/soc/rockchip/grf.c", i32 95, i32 39}
!48 = !{ptr @rk3368_defaults, !49, !"rk3368_defaults", i1 false, i1 false}
!49 = !{!"../drivers/soc/rockchip/grf.c", i32 91, i32 40}
!50 = !{ptr @rk3399_grf, !51, !"rk3399_grf", i1 false, i1 false}
!51 = !{!"../drivers/soc/rockchip/grf.c", i32 106, i32 39}
!52 = !{ptr @rk3399_defaults, !53, !"rk3399_defaults", i1 false, i1 false}
!53 = !{!"../drivers/soc/rockchip/grf.c", i32 102, i32 40}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2148309285, i64 2148309290, i64 2148309303, i64 2148309347, i64 2148309381, i64 2148309402}
