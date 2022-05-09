; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/dce110/hw_factory_dce110.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_factory_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hpd_registers = type { %struct.gpio_registers, i32, i32 }
%struct.gpio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hpd_sh_mask = type { i32, i32, i32, i32 }
%struct.ddc_registers = type { %struct.gpio_registers, i32, i32, i32 }
%struct.ddc_sh_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_factory = type { [8 x i32], ptr }
%struct.hw_hpd = type { %struct.hw_gpio, ptr, ptr, ptr }
%struct.hw_gpio = type { %struct.hw_gpio_pin, %struct.anon, i8, ptr }
%struct.hw_gpio_pin = type { ptr, i32, i32, i32, i8, ptr }
%struct.anon = type { i32, i32, i32, i32 }
%struct.hw_ddc = type { %struct.hw_gpio, ptr, ptr, ptr }

@funcs = internal constant { %struct.hw_factory_funcs, [60 x i8] } { %struct.hw_factory_funcs { ptr @dal_hw_ddc_init, ptr null, ptr @dal_hw_hpd_init, ptr @dal_hw_hpd_get_pin, ptr @dal_hw_ddc_get_pin, ptr null, ptr @define_hpd_registers, ptr @define_ddc_registers, ptr null }, [60 x i8] zeroinitializer }, align 32
@hpd_regs = internal constant { [6 x %struct.hpd_registers], [80 x i8] } { [6 x %struct.hpd_registers] [%struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 1, i32 0, i32 18573, i32 1, i32 0, i32 18574, i32 1, i32 0, i32 18575, i32 1, i32 0 }, i32 6296, i32 6300 }, %struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 256, i32 8, i32 18573, i32 256, i32 8, i32 18574, i32 256, i32 8, i32 18575, i32 256, i32 8 }, i32 6304, i32 6308 }, %struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 65536, i32 16, i32 18573, i32 65536, i32 16, i32 18574, i32 65536, i32 16, i32 18575, i32 65536, i32 16 }, i32 6312, i32 6316 }, %struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 1048576, i32 20, i32 18573, i32 16777216, i32 24, i32 18574, i32 1048576, i32 20, i32 18575, i32 16777216, i32 24 }, i32 6320, i32 6324 }, %struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 16777216, i32 24, i32 18573, i32 67108864, i32 26, i32 18574, i32 16777216, i32 24, i32 18575, i32 67108864, i32 26 }, i32 6328, i32 6332 }, %struct.hpd_registers { %struct.gpio_registers { i32 18572, i32 268435456, i32 28, i32 18573, i32 268435456, i32 28, i32 18574, i32 268435456, i32 28, i32 18575, i32 268435456, i32 28 }, i32 6336, i32 6340 }], [80 x i8] zeroinitializer }, align 32
@hpd_shift = internal constant { %struct.hpd_sh_mask, [16 x i8] } { %struct.hpd_sh_mask { i32 4, i32 1, i32 0, i32 20 }, [16 x i8] zeroinitializer }, align 32
@hpd_mask = internal constant { %struct.hpd_sh_mask, [16 x i8] } { %struct.hpd_sh_mask { i32 16, i32 2, i32 255, i32 267386880 }, [16 x i8] zeroinitializer }, align 32
@ddc_data_regs = internal constant { [8 x %struct.ddc_registers], [96 x i8] } { [8 x %struct.ddc_registers] [%struct.ddc_registers { %struct.gpio_registers { i32 18536, i32 256, i32 8, i32 18537, i32 256, i32 8, i32 18538, i32 256, i32 8, i32 18539, i32 256, i32 8 }, i32 5855, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18540, i32 256, i32 8, i32 18541, i32 256, i32 8, i32 18542, i32 256, i32 8, i32 18543, i32 256, i32 8 }, i32 5857, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18544, i32 256, i32 8, i32 18545, i32 256, i32 8, i32 18546, i32 256, i32 8, i32 18547, i32 256, i32 8 }, i32 5859, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18548, i32 256, i32 8, i32 18549, i32 256, i32 8, i32 18550, i32 256, i32 8, i32 18551, i32 256, i32 8 }, i32 5861, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18552, i32 256, i32 8, i32 18553, i32 256, i32 8, i32 18554, i32 256, i32 8, i32 18555, i32 256, i32 8 }, i32 5863, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18556, i32 256, i32 8, i32 18557, i32 256, i32 8, i32 18558, i32 256, i32 8, i32 18559, i32 256, i32 8 }, i32 5865, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18560, i32 256, i32 8, i32 18561, i32 256, i32 8, i32 18562, i32 256, i32 8, i32 18563, i32 256, i32 8 }, i32 5873, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18584, i32 16, i32 4, i32 18585, i32 2, i32 1, i32 18586, i32 2, i32 1, i32 18587, i32 2, i32 1 }, i32 0, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@ddc_clk_regs = internal constant { [8 x %struct.ddc_registers], [96 x i8] } { [8 x %struct.ddc_registers] [%struct.ddc_registers { %struct.gpio_registers { i32 18536, i32 1, i32 0, i32 18537, i32 1, i32 0, i32 18538, i32 1, i32 0, i32 18539, i32 1, i32 0 }, i32 5855, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18540, i32 1, i32 0, i32 18541, i32 1, i32 0, i32 18542, i32 1, i32 0, i32 18543, i32 1, i32 0 }, i32 5857, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18544, i32 1, i32 0, i32 18545, i32 1, i32 0, i32 18546, i32 1, i32 0, i32 18547, i32 1, i32 0 }, i32 5859, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18548, i32 1, i32 0, i32 18549, i32 1, i32 0, i32 18550, i32 1, i32 0, i32 18551, i32 1, i32 0 }, i32 5861, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18552, i32 1, i32 0, i32 18553, i32 1, i32 0, i32 18554, i32 1, i32 0, i32 18555, i32 1, i32 0 }, i32 5863, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18556, i32 1, i32 0, i32 18557, i32 1, i32 0, i32 18558, i32 1, i32 0, i32 18559, i32 1, i32 0 }, i32 5865, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18560, i32 1, i32 0, i32 18561, i32 1, i32 0, i32 18562, i32 1, i32 0, i32 18563, i32 1, i32 0 }, i32 5873, i32 0, i32 0 }, %struct.ddc_registers { %struct.gpio_registers { i32 18584, i32 1, i32 0, i32 18585, i32 1, i32 0, i32 18586, i32 1, i32 0, i32 18587, i32 1, i32 0 }, i32 0, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c\00", [55 x i8] zeroinitializer }, align 32
@ddc_shift = internal constant { %struct.ddc_sh_mask, [56 x i8] } { %struct.ddc_sh_mask { i32 6, i32 4, i32 5, i32 12, i32 4, i32 16, i32 5, i32 1, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ddc_mask = internal constant { %struct.ddc_sh_mask, [56 x i8] } { %struct.ddc_sh_mask { i32 64, i32 16, i32 32, i32 4096, i32 16, i32 65536, i32 32, i32 2, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 147, i32 38 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"hpd_regs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 59, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"hpd_shift\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 68, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"hpd_mask\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 72, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ddc_data_regs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 82, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"ddc_clk_regs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 93, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 128, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"ddc_shift\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 104, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"ddc_mask\00", align 1
@___asan_gen_.26 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 108, i32 33 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @funcs, ptr @hpd_regs, ptr @hpd_shift, ptr @hpd_mask, ptr @ddc_data_regs, ptr @ddc_clk_regs, ptr @.str, ptr @ddc_shift, ptr @ddc_mask], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_shift to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_data_regs to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_clk_regs to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_shift to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddc_mask to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_hw_factory_dce110_init(ptr nocapture noundef writeonly %factory) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %factory to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %factory, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr %factory, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [8 x i32], ptr %factory, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr %factory, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [8 x i32], ptr %factory, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 31, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [8 x i32], ptr %factory, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr %factory, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr [8 x i32], ptr %factory, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %arrayidx14, align 4
  %funcs = getelementptr inbounds %struct.hw_factory, ptr %factory, i32 0, i32 1
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_ddc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_hpd_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_hw_hpd_get_pin(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_hw_ddc_get_pin(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @define_hpd_registers(ptr nocapture noundef writeonly %pin, i32 noundef %en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x %struct.hpd_registers], ptr @hpd_regs, i32 0, i32 %en
  %regs = getelementptr inbounds %struct.hw_hpd, ptr %pin, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %regs, align 4
  %shifts = getelementptr inbounds %struct.hw_hpd, ptr %pin, i32 0, i32 2
  %1 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hpd_shift, ptr %shifts, align 4
  %masks = getelementptr inbounds %struct.hw_hpd, ptr %pin, i32 0, i32 3
  %2 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hpd_mask, ptr %masks, align 4
  %regs5 = getelementptr inbounds %struct.hw_gpio, ptr %pin, i32 0, i32 3
  %3 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %regs5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @define_ddc_registers(ptr nocapture noundef %pin, i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.hw_gpio_pin, ptr %pin, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #3
  tail call void @kgdb_breakpoint() #3
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge
  %ddc_clk_regs.sink = phi ptr [ @ddc_clk_regs, %sw.bb6 ], [ @ddc_data_regs, %entry.sw.epilog_crit_edge ]
  %arrayidx7 = getelementptr [8 x %struct.ddc_registers], ptr %ddc_clk_regs.sink, i32 0, i32 %en
  %regs8 = getelementptr inbounds %struct.hw_ddc, ptr %pin, i32 0, i32 1
  %3 = ptrtoint ptr %regs8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx7, ptr %regs8, align 4
  %regs12 = getelementptr inbounds %struct.hw_gpio, ptr %pin, i32 0, i32 3
  %4 = ptrtoint ptr %regs12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx7, ptr %regs12, align 4
  %shifts = getelementptr inbounds %struct.hw_ddc, ptr %pin, i32 0, i32 2
  %5 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ddc_shift, ptr %shifts, align 4
  %masks = getelementptr inbounds %struct.hw_ddc, ptr %pin, i32 0, i32 3
  %6 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ddc_mask, ptr %masks, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @funcs, !1, !"funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 147, i32 38}
!2 = !{ptr @hpd_regs, !3, !"hpd_regs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 59, i32 35}
!4 = !{ptr @hpd_shift, !5, !"hpd_shift", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 68, i32 33}
!6 = !{ptr @hpd_mask, !7, !"hpd_mask", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 72, i32 33}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 128, i32 3}
!10 = !{ptr @ddc_data_regs, !11, !"ddc_data_regs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 82, i32 35}
!12 = !{ptr @ddc_clk_regs, !13, !"ddc_clk_regs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 93, i32 35}
!14 = !{ptr @ddc_shift, !15, !"ddc_shift", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 104, i32 33}
!16 = !{ptr @ddc_mask, !17, !"ddc_mask", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce110/hw_factory_dce110.c", i32 108, i32 33}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
