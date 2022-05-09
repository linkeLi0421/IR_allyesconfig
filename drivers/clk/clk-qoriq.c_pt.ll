; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-qoriq.c_pt.bc'
source_filename = "../drivers/clk/clk-qoriq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clockgen = type { ptr, ptr, %struct.clockgen_chipinfo, ptr, ptr, [6 x %struct.clockgen_pll], [8 x ptr], [5 x ptr], [2 x ptr], ptr }
%struct.clockgen_chipinfo = type { ptr, ptr, [2 x ptr], [5 x ptr], ptr, [9 x i32], i32, i32 }
%struct.clockgen_pll = type { [32 x %struct.clockgen_pll_div] }
%struct.clockgen_pll_div = type { ptr, [32 x i8] }
%struct.clockgen_muxinfo = type { [16 x %struct.clockgen_sourceinfo] }
%struct.clockgen_sourceinfo = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ccsr_guts = type { i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, i32, [4 x i8], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], i32, [12 x i8], i32, [60 x i8], [16 x i32], [228 x i8], i32, i32, [984 x i8], i32, [504 x i8], i32, [252 x i8], i32, [4 x i8], i32, [8 x i8], i32, [520 x i8], i32, i32, i32, [724 x i8], i32, [12 x i8], i32, [12 x i8], i32, i32, [220 x i8], i32, i32, [32 x i8], i32, [16 x i8], i32, i32 }
%struct.mux_hwclock = type { %struct.clk_hw, ptr, ptr, ptr, [16 x i8], [16 x i8], i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }

@__initcall__kmod_clk_qoriq__185_1580_clockgen_cpufreq_init6 = internal global ptr @clockgen_cpufreq_init, section ".initcall6.init", align 4
@__of_table_qoriq_clockgen_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-clockgen-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-clockgen-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_b4420 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4420-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_b4860 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4860-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1012a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1021a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1028a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1043a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1046a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls1088a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_ls2080a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_lx2160a = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p2041 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p2041-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p3041 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p3041-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p4080 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p4080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p5020 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p5020-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_p5040 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p5040-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t1023 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1023-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t1040 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1040-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t2080 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t2080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_clockgen_t4240 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t4240-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clockgen_init }, section "__clk_of_table", align 4
@__of_table_qoriq_sysclk_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-sysclk-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysclk_init }, section "__clk_of_table", align 4
@__of_table_qoriq_sysclk_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-sysclk-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sysclk_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_pll_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-pll-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_pll_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-pll-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_mux_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-mux-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_mux_init }, section "__clk_of_table", align 4
@__of_table_qoriq_core_mux_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-core-mux-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_mux_init }, section "__clk_of_table", align 4
@__of_table_qoriq_pltfrm_pll_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-platform-pll-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pltfrm_pll_init }, section "__clk_of_table", align 4
@__of_table_qoriq_pltfrm_pll_2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-platform-pll-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pltfrm_pll_init }, section "__clk_of_table", align 4
@add_cpufreq_dev = internal unnamed_addr global i8 0, section ".init.data", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qoriq-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@clockgen_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013clk_qoriq: Couldn't register qoriq-cpufreq err=%ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clockgen_cpufreq_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-qoriq.c\00", [40 x i8] zeroinitializer }, align 32
@clockgen_cpufreq_init._entry_ptr = internal global ptr @clockgen_cpufreq_init._entry, section ".printk_index", align 4
@clockgen = internal global { %struct.clockgen, [1788 x i8] } zeroinitializer, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,ls1021a\00", [20 x i8] zeroinitializer }, align 32
@_clockgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013clk_qoriq: %s(): %pOFn: of_iomap() failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_clockgen_init\00", [17 x i8] zeroinitializer }, align 32
@_clockgen_init._entry_ptr = internal global ptr @_clockgen_init._entry, section ".printk_index", align 4
@chipinfo = internal constant { [20 x %struct.clockgen_chipinfo], [432 x i8] } { [20 x %struct.clockgen_chipinfo] [%struct.clockgen_chipinfo { ptr @.str.19, ptr @.str.20, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t2080_hwa1, ptr null, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 1, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.21, ptr @.str.20, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t2080_hwa1, ptr null, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 1, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.7, ptr null, [2 x ptr] [ptr @ls1021a_cmux, ptr null], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.22, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @ls1028a_hwa1, ptr @ls1028a_hwa2, ptr @ls1028a_hwa3, ptr @ls1028a_hwa4, ptr null], ptr null, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.23, ptr null, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] [ptr @ls1043a_hwa1, ptr @ls1043a_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.24, ptr null, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] [ptr @ls1046a_hwa1, ptr @ls1046a_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.25, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @ls1088a_hwa1, ptr @ls1088a_hwa2, ptr null, ptr null, ptr null], ptr null, [9 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.26, ptr null, [2 x ptr] [ptr @ls1012a_cmux, ptr null], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.27, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 55, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.28, ptr null, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb], [5 x ptr] zeroinitializer, ptr null, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 -1], i32 55, i32 12 }, %struct.clockgen_chipinfo { ptr @.str.29, ptr @.str.30, [2 x ptr] [ptr @p2041_cmux_grp1, ptr @p2041_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p2041_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.31, ptr @.str.30, [2 x ptr] [ptr @p2041_cmux_grp1, ptr @p2041_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p2041_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.32, ptr @.str.30, [2 x ptr] [ptr @p4080_cmux_grp1, ptr @p4080_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p4080_init_periph, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 -1], i32 31, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.33, ptr @.str.30, [2 x ptr] [ptr @p5020_cmux_grp1, ptr @p5020_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p5020_init_periph, [9 x i32] [i32 0, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.34, ptr @.str.35, [2 x ptr] [ptr @p5040_cmux_grp1, ptr @p5040_cmux_grp2], [5 x ptr] zeroinitializer, ptr @p5040_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 15, i32 0 }, %struct.clockgen_chipinfo { ptr @.str.36, ptr @.str.37, [2 x ptr] [ptr @t1023_cmux, ptr null], [5 x ptr] [ptr @t1023_hwa1, ptr @t1023_hwa2, ptr null, ptr null, ptr null], ptr @t1023_init_periph, [9 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 3, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.38, ptr @.str.39, [2 x ptr] [ptr @t1040_cmux, ptr null], [5 x ptr] zeroinitializer, ptr @t1040_init_periph, [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.40, ptr @.str.41, [2 x ptr] [ptr @clockgen2_cmux_cga12, ptr null], [5 x ptr] [ptr @t2080_hwa1, ptr @t2080_hwa2, ptr null, ptr null, ptr null], ptr @t2080_init_periph, [9 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 7, i32 2 }, %struct.clockgen_chipinfo { ptr @.str.42, ptr @.str.43, [2 x ptr] [ptr @clockgen2_cmux_cga, ptr @clockgen2_cmux_cgb], [5 x ptr] [ptr @t4240_hwa1, ptr null, ptr null, ptr @t4240_hwa4, ptr @t4240_hwa5], ptr @t4240_init_periph, [9 x i32] [i32 0, i32 0, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0], i32 63, i32 2 }, %struct.clockgen_chipinfo zeroinitializer], [432 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1021a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@_clockgen_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.3, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013clk_qoriq: %s: unknown clockgen node %pOF\0A\00", [51 x i8] zeroinitializer }, align 32
@_clockgen_init._entry_ptr.10 = internal global ptr @_clockgen_init._entry.8, section ".printk_index", align 4
@_clockgen_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.3, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013clk_qoriq: %s: Couldn't map %pOF regs\0A\00", [55 x i8] zeroinitializer }, align 32
@_clockgen_init._entry_ptr.13 = internal global ptr @_clockgen_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cg-sysclk\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cg-coreclk\00", [21 x i8] zeroinitializer }, align 32
@_clockgen_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.3, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013clk_qoriq: %s: Couldn't register clk provider for node %pOFn: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@_clockgen_init._entry_ptr.18 = internal global ptr @_clockgen_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,b4420-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,b4860-device-config\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,b4860-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1028a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1043a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1046a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1088a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls1012a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ls2080a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,lx2160a-clockgen\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,p2041-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl,qoriq-device-config-1.0\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,p3041-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,p4080-clockgen\00", [45 x i8] zeroinitializer }, align 32
@p4080_cmux_grp1 = internal constant { %struct.clockgen_muxinfo, [32 x i8] } { %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 3, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@p4080_cmux_grp2 = internal constant { %struct.clockgen_muxinfo, [32 x i8] } { %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,p5020-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,p5040-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,p5040-device-config\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,t1023-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,t1023-device-config\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,t1040-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,t1040-device-config\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,t2080-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,t2080-device-config\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,t4240-clockgen\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl,t4240-device-config\00", [40 x i8] zeroinitializer }, align 32
@clockgen2_cmux_cga = internal constant { %struct.clockgen_muxinfo, [32 x i8] } { %struct.clockgen_muxinfo { [16 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 3, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@clockgen2_cmux_cga12 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@clockgen2_cmux_cgb = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 4, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 3 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t2080_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1021a_cmux = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, [13 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1028a_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1028a_hwa2 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1028a_hwa3 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1028a_hwa4 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t1040_cmux = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1043a_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1043a_hwa2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, [12 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1046a_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1046a_hwa2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1088a_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1088a_hwa2 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@ls1012a_cmux = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [13 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [13 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p2041_cmux_grp1 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, [11 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p2041_cmux_grp2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p5020_cmux_grp1 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [11 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 0 }, [11 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p5020_cmux_grp2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p5040_cmux_grp1 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 3, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@p5040_cmux_grp2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [10 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 3, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 3, i32 1, i32 1 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, [10 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t1023_cmux = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [14 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [14 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [14 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [14 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t1023_hwa1 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [12 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, [12 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t1023_hwa2 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t2080_hwa2 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t4240_hwa1 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo { i32 1, i32 0, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 1, i32 3 }, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 2, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t4240_hwa4 = internal constant { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> } { <{ %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, %struct.clockgen_sourceinfo, [9 x %struct.clockgen_sourceinfo] }> <{ %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, [9 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@t4240_hwa5 = internal constant { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> }, [32 x i8] } { { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> } { <{ [8 x %struct.clockgen_sourceinfo], [8 x %struct.clockgen_sourceinfo] }> <{ [8 x %struct.clockgen_sourceinfo] [%struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo zeroinitializer, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 2 }, %struct.clockgen_sourceinfo { i32 1, i32 5, i32 3 }, %struct.clockgen_sourceinfo { i32 1, i32 0, i32 0 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 1 }, %struct.clockgen_sourceinfo { i32 1, i32 4, i32 2 }], [8 x %struct.clockgen_sourceinfo] zeroinitializer }> }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@create_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013clk_qoriq: %s: No input sysclk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"create_sysclk\00", [18 x i8] zeroinitializer }, align 32
@create_sysclk._entry_ptr = internal global ptr @create_sysclk._entry, section ".printk_index", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@input_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013clk_qoriq: %s: Couldn't register %s: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"input_clock\00", [20 x i8] zeroinitializer }, align 32
@input_clock._entry_ptr = internal global ptr @input_clock._entry, section ".printk_index", align 4
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"coreclk\00", [24 x i8] zeroinitializer }, align 32
@create_one_pll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index %d\0A\00", [22 x i8] zeroinitializer }, align 32
@create_one_pll.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_qoriq\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_one_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): pll %p disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clk_qoriq: %s(): pll %p disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cg-pll%d-div%d\00", [17 x i8] zeroinitializer }, align 32
@create_one_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.82, ptr @.str.3, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013clk_qoriq: %s: %s: register failed %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@create_one_pll._entry_ptr = internal global ptr @create_one_pll._entry, section ".printk_index", align 4
@create_one_pll._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.82, ptr @.str.3, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013clk_qoriq: %s: %s: register to lookup table failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@create_one_pll._entry_ptr.89 = internal global ptr @create_one_pll._entry.87, section ".printk_index", align 4
@create_muxes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cmux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_set_parent, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cg-cmux%d\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@create_mux_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.91, ptr @.str.3, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"create_mux_common\00", [46 x i8] zeroinitializer }, align 32
@create_mux_common._entry_ptr = internal global ptr @create_mux_common._entry, section ".printk_index", align 4
@mux_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013clk_qoriq: %s: mux at %p has bad clksel\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mux_get_parent\00", [17 x i8] zeroinitializer }, align 32
@mux_get_parent._entry_ptr = internal global ptr @mux_get_parent._entry, section ".printk_index", align 4
@hwaccel_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cg-hwaccel%d\00", [19 x i8] zeroinitializer }, align 32
@clockgen_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013clk_qoriq: %s: insufficient phandle args\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clockgen_clk_get\00", [47 x i8] zeroinitializer }, align 32
@clockgen_clk_get._entry_ptr = internal global ptr @clockgen_clk_get._entry, section ".printk_index", align 4
@clockgen_clk_get._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013clk_qoriq: %s: Bad phandle args %u %u\0A\00", [55 x i8] zeroinitializer }, align 32
@clockgen_clk_get._entry_ptr.99 = internal global ptr @clockgen_clk_get._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@legacy_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.101, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"legacy_pll_init\00", [16 x i8] zeroinitializer }, align 32
@legacy_pll_init._entry_ptr = internal global ptr @legacy_pll_init._entry, section ".printk_index", align 4
@core_mux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.102, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_mux_init\00", [18 x i8] zeroinitializer }, align 32
@core_mux_init._entry_ptr = internal global ptr @core_mux_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1572, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1575, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"clockgen\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 99, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1496, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1502, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"chipinfo\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 554, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1510, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1515, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1528, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1539, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1540, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1549, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 556, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 557, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 574, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 603, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 619, i32 13 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 635, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 651, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 666, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 676, i32 13 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 689, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 702, i32 13 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 703, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 715, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 728, i32 13 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"p4080_cmux_grp1\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 172, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"p4080_cmux_grp2\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 182, i32 38 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 742, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 755, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 756, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 768, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 769, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 784, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 785, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 798, i32 13 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 799, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 815, i32 13 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 816, i32 18 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"clockgen2_cmux_cga\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 209, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"clockgen2_cmux_cga12\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 225, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"clockgen2_cmux_cgb\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 237, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant [11 x i8] c"t2080_hwa1\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 405, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant [13 x i8] c"ls1021a_cmux\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 249, i32 38 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"ls1028a_hwa1\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 257, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"ls1028a_hwa2\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 270, i32 38 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"ls1028a_hwa3\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 283, i32 38 }
@___asan_gen_.269 = private unnamed_addr constant [13 x i8] c"ls1028a_hwa4\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 296, i32 38 }
@___asan_gen_.272 = private unnamed_addr constant [11 x i8] c"t1040_cmux\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 199, i32 38 }
@___asan_gen_.275 = private unnamed_addr constant [13 x i8] c"ls1043a_hwa1\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 309, i32 38 }
@___asan_gen_.278 = private unnamed_addr constant [13 x i8] c"ls1043a_hwa2\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 322, i32 38 }
@___asan_gen_.281 = private unnamed_addr constant [13 x i8] c"ls1046a_hwa1\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 331, i32 38 }
@___asan_gen_.284 = private unnamed_addr constant [13 x i8] c"ls1046a_hwa2\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 344, i32 38 }
@___asan_gen_.287 = private unnamed_addr constant [13 x i8] c"ls1088a_hwa1\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 356, i32 38 }
@___asan_gen_.290 = private unnamed_addr constant [13 x i8] c"ls1088a_hwa2\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 369, i32 38 }
@___asan_gen_.293 = private unnamed_addr constant [13 x i8] c"ls1012a_cmux\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 382, i32 38 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"p2041_cmux_grp1\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 122, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"p2041_cmux_grp2\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 130, i32 38 }
@___asan_gen_.302 = private unnamed_addr constant [16 x i8] c"p5020_cmux_grp1\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 138, i32 38 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"p5020_cmux_grp2\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 146, i32 38 }
@___asan_gen_.308 = private unnamed_addr constant [16 x i8] c"p5040_cmux_grp1\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 154, i32 38 }
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"p5040_cmux_grp2\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 163, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant [11 x i8] c"t1023_cmux\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 192, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant [11 x i8] c"t1023_hwa1\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 390, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant [11 x i8] c"t1023_hwa2\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 399, i32 38 }
@___asan_gen_.323 = private unnamed_addr constant [11 x i8] c"t2080_hwa2\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 418, i32 38 }
@___asan_gen_.326 = private unnamed_addr constant [11 x i8] c"t4240_hwa1\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 431, i32 38 }
@___asan_gen_.329 = private unnamed_addr constant [11 x i8] c"t4240_hwa4\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 444, i32 38 }
@___asan_gen_.332 = private unnamed_addr constant [11 x i8] c"t4240_hwa5\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 454, i32 38 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1151, i32 34 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1166, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1098, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1113, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1174, i32 34 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1240, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1255, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1277, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1282, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1290, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant [9 x i8] c"cmux_ops\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 880, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1014, i32 18 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 960, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 873, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [12 x i8] c"hwaccel_ops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 889, i32 29 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1029, i32 6 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1388, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1438, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1314, i32 40 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1341, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [27 x i8] c"../drivers/clk/clk-qoriq.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1087, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__initcall__kmod_clk_qoriq__185_1580_clockgen_cpufreq_init6, ptr @__of_table_qoriq_clockgen_1, ptr @__of_table_qoriq_clockgen_2, ptr @__of_table_qoriq_clockgen_b4420, ptr @__of_table_qoriq_clockgen_b4860, ptr @__of_table_qoriq_clockgen_ls1012a, ptr @__of_table_qoriq_clockgen_ls1021a, ptr @__of_table_qoriq_clockgen_ls1028a, ptr @__of_table_qoriq_clockgen_ls1043a, ptr @__of_table_qoriq_clockgen_ls1046a, ptr @__of_table_qoriq_clockgen_ls1088a, ptr @__of_table_qoriq_clockgen_ls2080a, ptr @__of_table_qoriq_clockgen_lx2160a, ptr @__of_table_qoriq_clockgen_p2041, ptr @__of_table_qoriq_clockgen_p3041, ptr @__of_table_qoriq_clockgen_p4080, ptr @__of_table_qoriq_clockgen_p5020, ptr @__of_table_qoriq_clockgen_p5040, ptr @__of_table_qoriq_clockgen_t1023, ptr @__of_table_qoriq_clockgen_t1040, ptr @__of_table_qoriq_clockgen_t2080, ptr @__of_table_qoriq_clockgen_t4240, ptr @__of_table_qoriq_core_mux_1, ptr @__of_table_qoriq_core_mux_2, ptr @__of_table_qoriq_core_pll_1, ptr @__of_table_qoriq_core_pll_2, ptr @__of_table_qoriq_pltfrm_pll_1, ptr @__of_table_qoriq_pltfrm_pll_2, ptr @__of_table_qoriq_sysclk_1, ptr @__of_table_qoriq_sysclk_2, ptr @_clockgen_init._entry, ptr @_clockgen_init._entry.11, ptr @_clockgen_init._entry.16, ptr @_clockgen_init._entry.8, ptr @_clockgen_init._entry_ptr, ptr @_clockgen_init._entry_ptr.10, ptr @_clockgen_init._entry_ptr.13, ptr @_clockgen_init._entry_ptr.18, ptr @clockgen_clk_get._entry, ptr @clockgen_clk_get._entry.97, ptr @clockgen_clk_get._entry_ptr, ptr @clockgen_clk_get._entry_ptr.99, ptr @clockgen_cpufreq_init._entry, ptr @clockgen_cpufreq_init._entry_ptr, ptr @core_mux_init._entry, ptr @core_mux_init._entry_ptr, ptr @create_mux_common._entry, ptr @create_mux_common._entry_ptr, ptr @create_one_pll._entry, ptr @create_one_pll._entry.87, ptr @create_one_pll._entry_ptr, ptr @create_one_pll._entry_ptr.89, ptr @create_sysclk._entry, ptr @create_sysclk._entry_ptr, ptr @input_clock._entry, ptr @input_clock._entry_ptr, ptr @legacy_pll_init._entry, ptr @legacy_pll_init._entry_ptr, ptr @mux_get_parent._entry, ptr @mux_get_parent._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clockgen, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @chipinfo, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @p4080_cmux_grp1, ptr @p4080_cmux_grp2, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @clockgen2_cmux_cga, ptr @clockgen2_cmux_cga12, ptr @clockgen2_cmux_cgb, ptr @t2080_hwa1, ptr @ls1021a_cmux, ptr @ls1028a_hwa1, ptr @ls1028a_hwa2, ptr @ls1028a_hwa3, ptr @ls1028a_hwa4, ptr @t1040_cmux, ptr @ls1043a_hwa1, ptr @ls1043a_hwa2, ptr @ls1046a_hwa1, ptr @ls1046a_hwa2, ptr @ls1088a_hwa1, ptr @ls1088a_hwa2, ptr @ls1012a_cmux, ptr @p2041_cmux_grp1, ptr @p2041_cmux_grp2, ptr @p5020_cmux_grp1, ptr @p5020_cmux_grp2, ptr @p5040_cmux_grp1, ptr @p5040_cmux_grp2, ptr @t1023_cmux, ptr @t1023_hwa1, ptr @t1023_hwa2, ptr @t2080_hwa2, ptr @t4240_hwa1, ptr @t4240_hwa4, ptr @t4240_hwa5, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @cmux_ops, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @hwaccel_ops, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen to i32), i32 7076, i32 8864, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_clockgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipinfo to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_clockgen_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_clockgen_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_clockgen_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p4080_cmux_grp1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p4080_cmux_grp2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen2_cmux_cga to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen2_cmux_cga12 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen2_cmux_cgb to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t2080_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1021a_cmux to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_hwa3 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_hwa4 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1040_cmux to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1043a_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1043a_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1046a_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1046a_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1088a_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1088a_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1012a_cmux to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2041_cmux_grp1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2041_cmux_grp2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p5020_cmux_grp1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p5020_cmux_grp2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p5040_cmux_grp1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p5040_cmux_grp2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1023_cmux to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1023_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1023_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t2080_hwa2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4240_hwa1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4240_hwa4 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4240_hwa5 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_one_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_one_pll._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_mux_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwaccel_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockgen_clk_get._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_mux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clockgen_cpufreq_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @add_cpufreq_dev, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
  %1 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 48)
  %3 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fwnode.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %properties.i.i, align 8
  %9 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call.i.i to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clockgen_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_clockgen_init(ptr noundef %np, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sysclk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @legacy_init_clockgen(ptr noundef %node) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 3), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @core_pll_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #10
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  %and = and i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %and)
  %cmp = icmp eq i32 %and, 3072
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @legacy_pll_init(ptr noundef %np, i32 noundef 0) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = lshr i32 %2, 5
  %shr = and i32 %and3, 7
  %add = add nuw nsw i32 %shr, 1
  call fastcc void @legacy_pll_init(ptr noundef %np, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @core_mux_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #10
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  tail call fastcc void @legacy_init_clockgen(ptr noundef %np) #14
  %call = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  %and = lshr i32 %2, 5
  %shr = and i32 %and, 7
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 6, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.102, ptr noundef %np, i32 noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pltfrm_pll_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @legacy_pll_init(ptr noundef %np, i32 noundef 0) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_clockgen_init(ptr noundef %np, i1 noundef zeroext %legacy) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clockgen, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %np, ptr @clockgen, align 4
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #10
  store ptr %call, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %1 = load ptr, ptr @of_root, align 4
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6thread-pre-split, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @ioremap(i32 noundef 32378880, i32 noundef 4096) #10
  store ptr %call5, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %if.end6

if.end6thread-pre-split:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %.pr = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %if.then4
  %2 = phi ptr [ %.pr, %if.end6thread-pre-split ], [ %call5, %if.then4 ]
  %3 = xor i1 %tobool3.not, true
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %do.end, label %if.end6.for.body.preheader_crit_edge

if.end6.for.body.preheader_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end6.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  %is_old_ls1021a.0.off093 = phi i1 [ %3, %if.end6.for.body.preheader_crit_edge ], [ false, %if.end.for.body.preheader_crit_edge ]
  br label %for.body

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %np) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.088 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [20 x %struct.clockgen_chipinfo], ptr @chipinfo, i32 0, i32 %i.088
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end14:                                         ; preds = %for.body
  br i1 %is_old_ls1021a.0.off093, label %land.lhs.true16, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true16:                                  ; preds = %if.end14
  %call19 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(21) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.end30_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true16.if.end30_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %if.end14.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.end27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end27:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef %np) #13
  %6 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  tail call void @iounmap(ptr noundef %6) #10
  store ptr null, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true16.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %7 = call ptr @memcpy(ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2), ptr %arrayidx, i32 84)
  %8 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 1), align 4
  %tobool32.not = icmp eq ptr %8, null
  br i1 %tobool32.not, label %if.end30.if.end47_crit_edge, label %if.then33

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then33:                                        ; preds = %if.end30
  %call34 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull %8) #10
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then33.if.end47_crit_edge, label %if.then36

if.then33.if.end47_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then36:                                        ; preds = %if.then33
  %call37 = tail call ptr @of_iomap(ptr noundef nonnull %call34, i32 noundef 0) #10
  store ptr %call37, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 9), align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.then36.if.end45_crit_edge

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef nonnull %call34) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.then36.if.end45_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call34) #10
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.then33.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %call51 = tail call fastcc ptr @create_sysclk() #14
  store ptr %call51, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 3), align 4
  %call52 = tail call fastcc ptr @create_coreclk() #14
  store ptr %call52, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 4), align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end47
  %i.01.i = phi i32 [ 0, %if.end47 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call fastcc void @create_one_pll(i32 noundef %i.01.i) #13
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %create_plls.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

create_plls.exit:                                 ; preds = %for.body.i
  tail call fastcc void @create_muxes() #14
  %9 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 4), align 4
  %tobool53.not = icmp eq ptr %9, null
  br i1 %tobool53.not, label %create_plls.exit.if.end55_crit_edge, label %if.then54

create_plls.exit.if.end55_crit_edge:              ; preds = %create_plls.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %create_plls.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef nonnull @clockgen) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %create_plls.exit.if.end55_crit_edge
  %call56 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @clockgen_clk_get, ptr noundef nonnull @clockgen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end64_crit_edge, label %do.end61

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef %np, i32 noundef %call56) #13
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end55.if.end64_crit_edge
  %lnot = xor i1 %legacy, true
  %frombool66 = zext i1 %lnot to i8
  store i8 %frombool66, ptr @add_cpufreq_dev, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end27, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_sysclk() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clockgen, align 4
  %call = tail call fastcc ptr @sysclk_from_fixed(ptr noundef %0) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @input_clock_by_name(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.73) #14
  %cmp.i1 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc ptr @input_clock_by_index() #14
  %cmp.i2 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = load ptr, ptr @clockgen, align 4
  %call10 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.73) #10
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.do.end_crit_edge, label %if.then11

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then11:                                        ; preds = %if.end9
  %call12 = tail call fastcc ptr @sysclk_from_fixed(ptr noundef nonnull %call10) #14
  %cmp.i3 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %if.then11.do.end_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.do.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.then11.do.end_crit_edge, %if.end9.do.end_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_coreclk() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @input_clock_by_name(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.79) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge, !prof !296

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1184, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %do.end ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_muxes() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 5, i32 %i.02
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %for.body.for.body45.preheader_crit_edge, label %if.end

for.body.for.body45.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5 = icmp ugt i32 %1, 1
  br i1 %cmp5, label %land.end, label %if.end41

land.end:                                         ; preds = %if.end
  %.b1 = load i1, ptr @create_muxes.__already_done, align 1
  br i1 %.b1, label %land.end.for.inc_crit_edge, label %if.then11, !prof !297

land.end.for.inc_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @create_muxes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1041, i32 noundef 9, ptr noundef null) #10
  br label %for.inc

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc ptr @create_one_cmux(i32 noundef %i.02) #14
  %arrayidx42 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 6, i32 %i.02
  %2 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx42, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %if.then11, %land.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.body45.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.body45.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.inc.for.body45.preheader_crit_edge, %for.body.for.body45.preheader_crit_edge
  br label %for.body45

for.body45:                                       ; preds = %for.inc54.for.body45_crit_edge, %for.body45.preheader
  %i.14 = phi i32 [ %inc55, %for.inc54.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %arrayidx47 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 3, i32 %i.14
  %3 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %4, null
  br i1 %tobool48.not, label %for.body45.for.inc54_crit_edge, label %if.end50

for.body45.for.inc54_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

if.end50:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc ptr @create_one_hwaccel(i32 noundef %i.14) #14
  %arrayidx53 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 7, i32 %i.14
  %5 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call51, ptr %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %if.end50, %for.body45.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.14, 1
  %exitcond6.not = icmp eq i32 %inc55, 5
  br i1 %exitcond6.not, label %for.end56, label %for.inc54.for.body45_crit_edge

for.inc54.for.body45_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.end56:                                        ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clockgen_clk_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.do.end42_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb12
    i32 3, label %sw.bb17
    i32 4, label %sw.bb22
    i32 5, label %sw.bb30
  ]

if.end.do.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end6, label %sw.bb.do.end42_crit_edge

sw.bb.do.end42_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %sysclk = getelementptr inbounds %struct.clockgen, ptr %data, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp8 = icmp ugt i32 %5, 7
  br i1 %cmp8, label %sw.bb7.do.end42_crit_edge, label %if.end10

sw.bb7.do.end42_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11 = getelementptr %struct.clockgen, ptr %data, i32 0, i32 6, i32 %5
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp13 = icmp ugt i32 %5, 4
  br i1 %cmp13, label %sw.bb12.do.end42_crit_edge, label %if.end15

sw.bb12.do.end42_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end15:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16 = getelementptr %struct.clockgen, ptr %data, i32 0, i32 7, i32 %5
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp18 = icmp ugt i32 %5, 1
  br i1 %cmp18, label %sw.bb17.do.end42_crit_edge, label %if.end20

sw.bb17.do.end42_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end20:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21 = getelementptr %struct.clockgen, ptr %data, i32 0, i32 8, i32 %5
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp25 = icmp ugt i32 %5, 31
  br i1 %cmp25, label %sw.bb22.do.end42_crit_edge, label %if.end27

sw.bb22.do.end42_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end27:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %pll23 = getelementptr inbounds %struct.clockgen, ptr %data, i32 0, i32 5
  %arrayidx28 = getelementptr [32 x %struct.clockgen_pll_div], ptr %pll23, i32 0, i32 %5
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.not = icmp eq i32 %5, 0
  br i1 %cmp31.not, label %if.end33, label %sw.bb30.do.end42_crit_edge

sw.bb30.do.end42_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.end33:                                         ; preds = %sw.bb30
  %coreclk = getelementptr inbounds %struct.clockgen, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coreclk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end33.if.then37_crit_edge, label %if.end33.sw.epilog_crit_edge

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

sw.epilog.sink.split:                             ; preds = %if.end27, %if.end20, %if.end15, %if.end10, %if.end6
  %arrayidx28.sink = phi ptr [ %arrayidx28, %if.end27 ], [ %arrayidx21, %if.end20 ], [ %arrayidx16, %if.end15 ], [ %arrayidx11, %if.end10 ], [ %sysclk, %if.end6 ]
  %9 = ptrtoint ptr %arrayidx28.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx28.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end33.sw.epilog_crit_edge
  %clk.0 = phi ptr [ %8, %if.end33.sw.epilog_crit_edge ], [ %10, %sw.epilog.sink.split ]
  %tobool.not = icmp eq ptr %clk.0, null
  br i1 %tobool.not, label %sw.epilog.if.then37_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.if.then37_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %sw.epilog.if.then37_crit_edge, %if.end33.if.then37_crit_edge
  br label %cleanup

do.end42:                                         ; preds = %sw.bb30.do.end42_crit_edge, %sw.bb22.do.end42_crit_edge, %sw.bb17.do.end42_crit_edge, %sw.bb12.do.end42_crit_edge, %sw.bb7.do.end42_crit_edge, %sw.bb.do.end42_crit_edge, %if.end.do.end42_crit_edge
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef %3, i32 noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then37, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end42 ], [ inttoptr (i32 -2 to ptr), %if.then37 ], [ %clk.0, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t2080_init_periph(ptr nocapture noundef %cg) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwaccel = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 7
  %0 = ptrtoint ptr %hwaccel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwaccel, align 4
  %fman = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %2 = ptrtoint ptr %fman to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fman, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p2041_init_periph(ptr nocapture noundef %cg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %guts = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 9
  %0 = ptrtoint ptr %guts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %guts, align 4
  %arrayidx = getelementptr %struct.ccsr_guts, ptr %1, i32 0, i32 38, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx7 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 2, i32 0, i32 1
  %.sink.in = select i1 %tobool.not, ptr %arrayidx7, ptr %arrayidx2
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.sink = load ptr, ptr %.sink.in, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %4, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p4080_init_periph(ptr nocapture noundef %cg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %guts = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 9
  %0 = ptrtoint ptr %guts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %guts, align 4
  %arrayidx = getelementptr %struct.ccsr_guts, ptr %1, i32 0, i32 38, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx7 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 3, i32 0, i32 1
  %.sink.in = select i1 %tobool.not, ptr %arrayidx7, ptr %arrayidx2
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.sink = load ptr, ptr %.sink.in, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %4, align 4
  %and11 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %arrayidx25 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx17 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 3, i32 0, i32 1
  %.sink39.in = select i1 %tobool12.not, ptr %arrayidx25, ptr %arrayidx17
  %6 = ptrtoint ptr %.sink39.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink39 = load ptr, ptr %.sink39.in, align 4
  %7 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %.sink39, ptr %7, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p5020_init_periph(ptr nocapture noundef %cg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %guts = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 9
  %0 = ptrtoint ptr %guts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %guts, align 4
  %arrayidx = getelementptr %struct.ccsr_guts, ptr %1, i32 0, i32 38, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  %and1 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3
  %arrayidx4 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 2
  %arrayidx6 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx4, i32 0, i32 %spec.select
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then3
  %.sink.in = phi ptr [ %arrayidx11, %if.else ], [ %arrayidx6, %if.then3 ]
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.sink = load ptr, ptr %.sink.in, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %4, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p5040_init_periph(ptr nocapture noundef %cg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %guts = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 9
  %0 = ptrtoint ptr %guts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %guts, align 4
  %arrayidx = getelementptr %struct.ccsr_guts, ptr %1, i32 0, i32 38, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3
  %and1 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %arrayidx11 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx4 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 3
  %arrayidx6 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx4, i32 0, i32 %spec.select
  %.sink.in = select i1 %tobool2.not, ptr %arrayidx11, ptr %arrayidx6
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.sink = load ptr, ptr %.sink.in, align 4
  %4 = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %4, align 4
  %and16 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %arrayidx30 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 0, i32 0, i32 1
  %arrayidx20 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 5, i32 3
  %arrayidx22 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx20, i32 0, i32 %spec.select
  %.sink46.in = select i1 %tobool17.not, ptr %arrayidx30, ptr %arrayidx22
  %6 = ptrtoint ptr %.sink46.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink46 = load ptr, ptr %.sink46.in, align 4
  %7 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %.sink46, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t1023_init_periph(ptr nocapture noundef %cg) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %fman = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %2 = ptrtoint ptr %fman to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fman, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t1040_init_periph(ptr nocapture noundef %cg) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 5
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %fman = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %2 = ptrtoint ptr %fman to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fman, align 4
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t4240_init_periph(ptr nocapture noundef %cg) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %fman = getelementptr inbounds %struct.clockgen, ptr %cg, i32 0, i32 8
  %2 = ptrtoint ptr %fman to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %fman, align 4
  %arrayidx3 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.clockgen, ptr %cg, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx5, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sysclk_from_fixed(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #10
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !303
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.76, ptr noundef nonnull %rate, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rate, align 4
  %call2 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #10
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @input_clock_by_name(ptr noundef %name, ptr noundef %dtname) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clockgen, align 4
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %dtname) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc ptr @input_clock(ptr noundef %name, ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @input_clock_by_index() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clockgen, align 4
  %call = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc ptr @input_clock(ptr noundef nonnull @.str.14, ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @input_clock(ptr noundef %name, ptr noundef %clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_name(ptr noundef %clk) #10
  %call1 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef %call, i32 noundef 0, i32 noundef 1, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call1 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef %name, i32 noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_one_pll(i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %idx
  %0 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 6), align 4
  %shl = shl nuw i32 1, %idx
  %and = and i32 %0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup152_crit_edge, label %if.end

entry.cleanup152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup152

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 4), align 4
  %tobool2.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  %or.cond = or i1 %cmp.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3.cleanup152_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3.cleanup152_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup152

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %input.0 = phi ptr [ @.str.14, %if.end.if.end7_crit_edge ], [ @.str.15, %if.then3.if.end7_crit_edge ]
  %2 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %and9 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  %3 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %idx, label %land.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb15
    i32 4, label %sw.bb18
    i32 5, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %4, i32 393344
  br label %if.end68

sw.bb12:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 128
  br label %if.end68

sw.bb15:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 160
  br label %if.end68

sw.bb18:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 65664
  br label %if.end68

sw.bb21:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %8 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %add.ptr23 = getelementptr i8, ptr %8, i32 65696
  br label %if.end68

land.end:                                         ; preds = %if.then11
  %.b1 = load i1, ptr @create_one_pll.__already_done, align 1
  br i1 %.b1, label %land.end.cleanup152_crit_edge, label %if.then29, !prof !297

land.end.cleanup152_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup152

if.then29:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @create_one_pll.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1240, i32 noundef 9, ptr noundef nonnull @.str.80, i32 noundef %idx) #10
  br label %cleanup152

if.else:                                          ; preds = %if.end7
  %9 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  br i1 %cmp.not, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr62 = getelementptr i8, ptr %9, i32 3072
  br label %if.end68

if.else63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr65 = getelementptr i8, ptr %9, i32 2048
  %sub = shl i32 %idx, 5
  %mul = add i32 %sub, -32
  %add.ptr66 = getelementptr i8, ptr %add.ptr65, i32 %mul
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then60, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb
  %reg.0 = phi ptr [ %add.ptr23, %sw.bb21 ], [ %add.ptr20, %sw.bb18 ], [ %add.ptr17, %sw.bb15 ], [ %add.ptr14, %sw.bb12 ], [ %add.ptr, %sw.bb ], [ %add.ptr62, %if.then60 ], [ %add.ptr66, %if.else63 ]
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  br label %cg_in.exit

if.else.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  br label %cg_in.exit

cg_in.exit:                                       ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %11, %if.then.i ], [ %10, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.0.i)
  %tobool71.not = icmp sgt i32 %val.0.i, -1
  br i1 %tobool71.not, label %if.end87, label %do.body73

do.body73:                                        ; preds = %cg_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_one_pll.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_one_pll, %if.then83)) #10
          to label %cleanup152 [label %if.then83], !srcloc !306

if.then83:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_one_pll.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, ptr noundef %reg.0) #10
  br label %cleanup152

if.end87:                                         ; preds = %cg_in.exit
  %12 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %and90 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %and94 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %or.cond2 = or i1 %cmp.not, %tobool95.not
  %13 = select i1 %tobool91.not, i1 %or.cond2, i1 false
  %.sink = select i1 %13, i32 63, i32 255
  %and101 = lshr i32 %val.0.i, 1
  %shr102 = and i32 %and101, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp105.not = icmp ne i32 %idx, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end87
  %i.09 = phi i32 [ 0, %if.end87 ], [ %add, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.09)
  %cmp107 = icmp ugt i32 %i.09, 3
  %or.cond3 = and i1 %cmp105.not, %cmp107
  br i1 %or.cond3, label %for.body.cleanup152_crit_edge, label %if.end109

for.body.cleanup152_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup152

if.end109:                                        ; preds = %for.body
  %name = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 %i.09, i32 1
  %add = add nuw nsw i32 %i.09, 1
  %call111 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.85, i32 noundef %idx, i32 noundef %add)
  %call117 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %name, ptr noundef nonnull %input.0, i32 noundef 0, i32 noundef %shr102, i32 noundef %add) #10
  %cmp.i4 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %do.end122, label %if.end130

do.end122:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call117 to i32
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %14) #13
  br label %for.inc

if.end130:                                        ; preds = %if.end109
  %arrayidx110 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 %i.09
  %15 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call117, ptr %arrayidx110, align 4
  %call138 = tail call i32 @clk_register_clkdev(ptr noundef %call117, ptr noundef %name, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 0
  br i1 %cmp139.not, label %if.end130.for.inc_crit_edge, label %do.end143

if.end130.for.inc_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end143:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %call138) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end143, %if.end130.for.inc_crit_edge, %do.end122
  %exitcond.not = icmp eq i32 %add, 32
  br i1 %exitcond.not, label %for.inc.cleanup152_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup152_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup152

cleanup152:                                       ; preds = %for.inc.cleanup152_crit_edge, %for.body.cleanup152_crit_edge, %if.then83, %do.body73, %if.then29, %land.end.cleanup152_crit_edge, %if.then3.cleanup152_crit_edge, %entry.cleanup152_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_one_cmux(i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %2 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %.sink.idx = select i1 %tobool1.not, i32 0, i32 458752
  %.sink = getelementptr i8, ptr %2, i32 %.sink.idx
  %mul5 = shl i32 %idx, 5
  %add.ptr6 = getelementptr i8, ptr %.sink, i32 %mul5
  %3 = getelementptr inbounds %struct.mux_hwclock, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr6, ptr %3, align 4
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 5, i32 %idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 2, i32 %6
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx11, align 4
  %info12 = getelementptr inbounds %struct.mux_hwclock, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %info12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %info12, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  br label %cg_in.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  br label %cg_in.exit

cg_in.exit:                                       ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %11, %if.then.i ], [ %10, %if.else.i ]
  %and15 = lshr i32 %val.0.i, 27
  %shr = and i32 %and15, 15
  %12 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info12, align 8
  %arrayidx.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %13, i32 0, i32 %shr
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and.i2 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %cg_in.exit.if.then18_crit_edge, label %get_pll_div.exit

cg_in.exit.if.then18_crit_edge:                   ; preds = %cg_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

get_pll_div.exit:                                 ; preds = %cg_in.exit
  %pll4.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %13, i32 0, i32 %shr, i32 1
  %16 = ptrtoint ptr %pll4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll4.i, align 4
  %div8.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %13, i32 0, i32 %shr, i32 2
  %18 = ptrtoint ptr %div8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div8.i, align 4
  %arrayidx10.i = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %17
  %arrayidx12.i = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx10.i, i32 0, i32 %19
  %tobool17.not = icmp eq ptr %arrayidx12.i, null
  br i1 %tobool17.not, label %get_pll_div.exit.if.then18_crit_edge, label %if.end19

get_pll_div.exit.if.then18_crit_edge:             ; preds = %get_pll_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %get_pll_div.exit.if.then18_crit_edge, %cg_in.exit.if.then18_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end19:                                         ; preds = %get_pll_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12.i, align 4
  %call20 = tail call i32 @clk_get_rate(ptr noundef %21) #10
  %conv = zext i32 %call20 to i64
  %div109 = shl nuw nsw i64 %conv, 2
  %22 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div109, i64 3689348814741910323) #17, !srcloc !307
  %23 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div109, i64 %22) #17, !srcloc !308
  %24 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 5), align 4
  %call216 = tail call i32 @clk_get_rate(ptr noundef %24) #10
  %25 = load i32, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 7), align 4
  %and219 = and i32 %25, 1
  %26 = xor i32 %and219, 1
  %min_rate.0 = lshr i32 %call216, %26
  %conv226 = trunc i64 %23 to i32
  %call227 = tail call fastcc ptr @create_mux_common(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cmux_ops, i32 noundef %min_rate.0, i32 noundef %call20, i32 noundef %conv226, ptr noundef nonnull @.str.90, i32 noundef %idx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call227, %if.end19 ], [ null, %if.then18 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_one_hwaccel(i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr getelementptr inbounds (%struct.clockgen, ptr @clockgen, i32 0, i32 1), align 4
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 16
  %reg = getelementptr inbounds %struct.mux_hwclock, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr1, ptr %reg, align 4
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 2, i32 3, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %info2 = getelementptr inbounds %struct.mux_hwclock, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %info2, align 8
  %call3 = tail call fastcc ptr @create_mux_common(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @hwaccel_ops, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @.str.94, i32 noundef %idx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_mux_common(ptr noundef %hwc, ptr noundef %ops, i32 noundef %min_rate, i32 noundef %max_rate, i32 noundef %pct80_rate, ptr nocapture noundef readonly %fmt, i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_names = alloca [16 x ptr], align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = call ptr @memset(ptr %init, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %parent_names) #10
  %1 = call ptr @memset(ptr %parent_names, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #10
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef %fmt, i32 noundef %idx)
  %info.i = getelementptr inbounds %struct.mux_hwclock, ptr %hwc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %j.07 = phi i32 [ 0, %entry ], [ %j.1, %cleanup.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc22, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mux_hwclock, ptr %hwc, i32 0, i32 5, i32 %i.05
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %5, i32 0, i32 %i.05
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %get_pll_div.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

get_pll_div.exit:                                 ; preds = %for.body
  %pll4.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %5, i32 0, i32 %i.05, i32 1
  %8 = ptrtoint ptr %pll4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll4.i, align 4
  %div8.i = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %5, i32 0, i32 %i.05, i32 2
  %10 = ptrtoint ptr %div8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div8.i, align 4
  %arrayidx10.i = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %9
  %arrayidx12.i = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx10.i, i32 0, i32 %11
  %tobool.not = icmp eq ptr %arrayidx12.i, null
  br i1 %tobool.not, label %get_pll_div.exit.cleanup_crit_edge, label %if.end

get_pll_div.exit.cleanup_crit_edge:               ; preds = %get_pll_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %get_pll_div.exit
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.i, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %13) #10
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info.i, align 4
  %arrayidx4 = getelementptr [16 x %struct.clockgen_sourceinfo], ptr %15, i32 0, i32 %i.05
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %pct80_rate)
  %cmp6 = icmp ugt i32 %call3, %pct80_rate
  %or.cond = select i1 %tobool5.not, i1 %cmp6, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %min_rate)
  %cmp9 = icmp ult i32 %call3, %min_rate
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %max_rate)
  %cmp12 = icmp ugt i32 %call3, %max_rate
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp12
  br i1 %or.cond2, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name15 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx10.i, i32 0, i32 %11, i32 1
  %arrayidx17 = getelementptr [16 x ptr], ptr %parent_names, i32 0, i32 %j.07
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name15, ptr %arrayidx17, align 4
  %conv = trunc i32 %i.05 to i8
  %arrayidx18 = getelementptr %struct.mux_hwclock, ptr %hwc, i32 0, i32 4, i32 %j.07
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx18, align 1
  %conv19 = trunc i32 %j.07 to i8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv19, ptr %arrayidx, align 1
  %inc = add i32 %j.07, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %get_pll_div.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %j.1 = phi i32 [ %inc, %if.end14 ], [ %j.07, %get_pll_div.exit.cleanup_crit_edge ], [ %j.07, %if.end.cleanup_crit_edge ], [ %j.07, %for.body.cleanup_crit_edge ]
  %inc22 = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc22, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  %21 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name, ptr %init, align 4
  %ops25 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %22 = ptrtoint ptr %ops25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ops, ptr %ops25, align 4
  %parent_names27 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %23 = ptrtoint ptr %parent_names27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %parent_names, ptr %parent_names27, align 4
  %num_parents = getelementptr inbounds %struct.mux_hwclock, ptr %hwc, i32 0, i32 6
  %24 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %j.1, ptr %num_parents, align 4
  %conv28 = trunc i32 %j.1 to i8
  %num_parents29 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %25 = ptrtoint ptr %num_parents29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %num_parents29, align 4
  %flags30 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %26 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags30, align 4
  %init31 = getelementptr inbounds %struct.clk_hw, ptr %hwc, i32 0, i32 2
  %27 = ptrtoint ptr %init31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %init, ptr %init31, align 4
  %cg32 = getelementptr inbounds %struct.mux_hwclock, ptr %hwc, i32 0, i32 1
  %28 = ptrtoint ptr %cg32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @clockgen, ptr %cg32, align 4
  %call34 = call ptr @clk_register(ptr noundef null, ptr noundef %hwc) #10
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.end.cleanup41_crit_edge

for.end.cleanup41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call34 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.91, ptr noundef nonnull %name, i32 noundef %29) #13
  call void @kfree(ptr noundef %hwc) #10
  br label %cleanup41

cleanup41:                                        ; preds = %do.end, %for.end.cleanup41_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call34, %for.end.cleanup41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %parent_names) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %idx to i32
  %num_parents = getelementptr inbounds %struct.mux_hwclock, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mux_hwclock, ptr %hw, i32 0, i32 4, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %cg = getelementptr inbounds %struct.mux_hwclock, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %cg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cg, align 4
  %shl = shl i32 %conv2, 27
  %and = and i32 %shl, 2013265920
  %reg = getelementptr inbounds %struct.mux_hwclock, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %flags.i = getelementptr inbounds %struct.clockgen, ptr %5, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = lshr exact i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %10) #10, !srcloc !309
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %and) #10, !srcloc !309
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mux_get_parent(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cg = getelementptr inbounds %struct.mux_hwclock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg, align 4
  %reg = getelementptr inbounds %struct.mux_hwclock, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %flags.i = getelementptr inbounds %struct.clockgen, ptr %1, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  br label %cg_in.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  br label %cg_in.exit

cg_in.exit:                                       ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %7, %if.then.i ], [ %6, %if.else.i ]
  %and = lshr i32 %val.0.i, 27
  %shr = and i32 %and, 15
  %arrayidx = getelementptr %struct.mux_hwclock, ptr %hw, i32 0, i32 5, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp slt i8 %9, 0
  br i1 %cmp, label %do.end, label %cg_in.exit.cleanup_crit_edge

cg_in.exit.cleanup_crit_edge:                     ; preds = %cg_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %cg_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef %11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cg_in.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.end ], [ %9, %cg_in.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @legacy_init_clockgen(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clockgen, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @of_get_parent(ptr noundef %np) #10
  tail call fastcc void @_clockgen_init(ptr noundef %call, i1 noundef zeroext true) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @legacy_pll_init(ptr noundef %np, i32 noundef %idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @legacy_init_clockgen(ptr noundef %np) #14
  %arrayidx = getelementptr %struct.clockgen, ptr @clockgen, i32 0, i32 5, i32 %idx
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.100, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8) #16
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.err_clks_crit_edge, label %if.end5

if.end.err_clks_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clks

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i.i, align 8
  %arrayidx10 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx10, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx14 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx26, align 4
  %arrayidx30 = getelementptr [32 x %struct.clockgen_pll_div], ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then6
  %.sink = phi ptr [ %8, %if.then6 ], [ %10, %if.else ]
  %14 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %14, align 4
  %16 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink, ptr %16, align 8
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %call7.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %clk_num, align 4
  %call34 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.101, ptr noundef %np, i32 noundef %call34) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %err_clks

err_clks:                                         ; preds = %do.end39, %if.end.err_clks_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clks, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !220, !222, !224, !225, !226, !227, !229, !231, !232, !234, !235, !236, !237, !238, !240, !242, !243, !244, !246, !247, !248, !250, !252, !254, !255, !256, !258, !260, !261, !262, !263, !265, !267, !269, !270, !271, !272, !274, !275, !276, !278, !280, !281, !282, !284, !285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__initcall__kmod_clk_qoriq__185_1580_clockgen_cpufreq_init6, !1, !"__initcall__kmod_clk_qoriq__185_1580_clockgen_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-qoriq.c", i32 1580, i32 1}
!2 = !{ptr @__of_table_qoriq_clockgen_1, !3, !"__of_table_qoriq_clockgen_1", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-qoriq.c", i32 1582, i32 1}
!4 = !{ptr @__of_table_qoriq_clockgen_2, !5, !"__of_table_qoriq_clockgen_2", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-qoriq.c", i32 1583, i32 1}
!6 = !{ptr @__of_table_qoriq_clockgen_b4420, !7, !"__of_table_qoriq_clockgen_b4420", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-qoriq.c", i32 1584, i32 1}
!8 = !{ptr @__of_table_qoriq_clockgen_b4860, !9, !"__of_table_qoriq_clockgen_b4860", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-qoriq.c", i32 1585, i32 1}
!10 = !{ptr @__of_table_qoriq_clockgen_ls1012a, !11, !"__of_table_qoriq_clockgen_ls1012a", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-qoriq.c", i32 1586, i32 1}
!12 = !{ptr @__of_table_qoriq_clockgen_ls1021a, !13, !"__of_table_qoriq_clockgen_ls1021a", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-qoriq.c", i32 1587, i32 1}
!14 = !{ptr @__of_table_qoriq_clockgen_ls1028a, !15, !"__of_table_qoriq_clockgen_ls1028a", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-qoriq.c", i32 1588, i32 1}
!16 = !{ptr @__of_table_qoriq_clockgen_ls1043a, !17, !"__of_table_qoriq_clockgen_ls1043a", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-qoriq.c", i32 1589, i32 1}
!18 = !{ptr @__of_table_qoriq_clockgen_ls1046a, !19, !"__of_table_qoriq_clockgen_ls1046a", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-qoriq.c", i32 1590, i32 1}
!20 = !{ptr @__of_table_qoriq_clockgen_ls1088a, !21, !"__of_table_qoriq_clockgen_ls1088a", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-qoriq.c", i32 1591, i32 1}
!22 = !{ptr @__of_table_qoriq_clockgen_ls2080a, !23, !"__of_table_qoriq_clockgen_ls2080a", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-qoriq.c", i32 1592, i32 1}
!24 = !{ptr @__of_table_qoriq_clockgen_lx2160a, !25, !"__of_table_qoriq_clockgen_lx2160a", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-qoriq.c", i32 1593, i32 1}
!26 = !{ptr @__of_table_qoriq_clockgen_p2041, !27, !"__of_table_qoriq_clockgen_p2041", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-qoriq.c", i32 1594, i32 1}
!28 = !{ptr @__of_table_qoriq_clockgen_p3041, !29, !"__of_table_qoriq_clockgen_p3041", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-qoriq.c", i32 1595, i32 1}
!30 = !{ptr @__of_table_qoriq_clockgen_p4080, !31, !"__of_table_qoriq_clockgen_p4080", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-qoriq.c", i32 1596, i32 1}
!32 = !{ptr @__of_table_qoriq_clockgen_p5020, !33, !"__of_table_qoriq_clockgen_p5020", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-qoriq.c", i32 1597, i32 1}
!34 = !{ptr @__of_table_qoriq_clockgen_p5040, !35, !"__of_table_qoriq_clockgen_p5040", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-qoriq.c", i32 1598, i32 1}
!36 = !{ptr @__of_table_qoriq_clockgen_t1023, !37, !"__of_table_qoriq_clockgen_t1023", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-qoriq.c", i32 1599, i32 1}
!38 = !{ptr @__of_table_qoriq_clockgen_t1040, !39, !"__of_table_qoriq_clockgen_t1040", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-qoriq.c", i32 1600, i32 1}
!40 = !{ptr @__of_table_qoriq_clockgen_t2080, !41, !"__of_table_qoriq_clockgen_t2080", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-qoriq.c", i32 1601, i32 1}
!42 = !{ptr @__of_table_qoriq_clockgen_t4240, !43, !"__of_table_qoriq_clockgen_t4240", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-qoriq.c", i32 1602, i32 1}
!44 = !{ptr @__of_table_qoriq_sysclk_1, !45, !"__of_table_qoriq_sysclk_1", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-qoriq.c", i32 1605, i32 1}
!46 = !{ptr @__of_table_qoriq_sysclk_2, !47, !"__of_table_qoriq_sysclk_2", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-qoriq.c", i32 1606, i32 1}
!48 = !{ptr @__of_table_qoriq_core_pll_1, !49, !"__of_table_qoriq_core_pll_1", i1 false, i1 false}
!49 = !{!"../drivers/clk/clk-qoriq.c", i32 1607, i32 1}
!50 = !{ptr @__of_table_qoriq_core_pll_2, !51, !"__of_table_qoriq_core_pll_2", i1 false, i1 false}
!51 = !{!"../drivers/clk/clk-qoriq.c", i32 1608, i32 1}
!52 = !{ptr @__of_table_qoriq_core_mux_1, !53, !"__of_table_qoriq_core_mux_1", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-qoriq.c", i32 1609, i32 1}
!54 = !{ptr @__of_table_qoriq_core_mux_2, !55, !"__of_table_qoriq_core_mux_2", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-qoriq.c", i32 1610, i32 1}
!56 = !{ptr @__of_table_qoriq_pltfrm_pll_1, !57, !"__of_table_qoriq_pltfrm_pll_1", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-qoriq.c", i32 1611, i32 1}
!58 = !{ptr @__of_table_qoriq_pltfrm_pll_2, !59, !"__of_table_qoriq_pltfrm_pll_2", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-qoriq.c", i32 1612, i32 1}
!60 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-qoriq.c", i32 1572, i32 42}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/clk-qoriq.c", i32 1575, i32 4}
!64 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @clockgen_cpufreq_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @clockgen_cpufreq_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @add_cpufreq_dev, !69, !"add_cpufreq_dev", i1 false, i1 false}
!69 = !{!"../drivers/clk/clk-qoriq.c", i32 100, i32 13}
!70 = !{ptr @.str.4, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-qoriq.c", i32 1496, i32 39}
!72 = !{ptr @.str.5, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-qoriq.c", i32 1502, i32 3}
!74 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @_clockgen_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @_clockgen_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-qoriq.c", i32 1510, i32 35}
!79 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/clk-qoriq.c", i32 1515, i32 3}
!81 = !{ptr @_clockgen_init._entry.8, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @_clockgen_init._entry_ptr.10, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.12, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/clk-qoriq.c", i32 1528, i32 5}
!85 = !{ptr @_clockgen_init._entry.11, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @_clockgen_init._entry_ptr.13, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-qoriq.c", i32 1539, i32 34}
!89 = !{ptr @.str.15, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-qoriq.c", i32 1540, i32 36}
!91 = !{ptr @.str.17, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/clk-qoriq.c", i32 1549, i32 3}
!93 = !{ptr @_clockgen_init._entry.16, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @_clockgen_init._entry_ptr.18, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @clockgen, !96, !"clockgen", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-qoriq.c", i32 99, i32 24}
!97 = !{ptr @.str.19, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/clk-qoriq.c", i32 556, i32 13}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-qoriq.c", i32 557, i32 18}
!101 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-qoriq.c", i32 574, i32 13}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/clk-qoriq.c", i32 603, i32 13}
!105 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-qoriq.c", i32 619, i32 13}
!107 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-qoriq.c", i32 635, i32 13}
!109 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/clk-qoriq.c", i32 651, i32 13}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-qoriq.c", i32 666, i32 13}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-qoriq.c", i32 676, i32 13}
!115 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-qoriq.c", i32 689, i32 13}
!117 = !{ptr @.str.29, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-qoriq.c", i32 702, i32 13}
!119 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/clk-qoriq.c", i32 703, i32 18}
!121 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/clk-qoriq.c", i32 715, i32 13}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-qoriq.c", i32 728, i32 13}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-qoriq.c", i32 742, i32 13}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-qoriq.c", i32 755, i32 13}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-qoriq.c", i32 756, i32 18}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-qoriq.c", i32 768, i32 13}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-qoriq.c", i32 769, i32 18}
!135 = !{ptr @.str.38, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-qoriq.c", i32 784, i32 13}
!137 = !{ptr @.str.39, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-qoriq.c", i32 785, i32 18}
!139 = !{ptr @.str.40, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-qoriq.c", i32 798, i32 13}
!141 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/clk-qoriq.c", i32 799, i32 18}
!143 = !{ptr @.str.42, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/clk-qoriq.c", i32 815, i32 13}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/clk-qoriq.c", i32 816, i32 18}
!147 = !{ptr @chipinfo, !148, !"chipinfo", i1 false, i1 false}
!148 = !{!"../drivers/clk/clk-qoriq.c", i32 554, i32 39}
!149 = !{ptr @clockgen2_cmux_cga12, !150, !"clockgen2_cmux_cga12", i1 false, i1 false}
!150 = !{!"../drivers/clk/clk-qoriq.c", i32 225, i32 38}
!151 = !{ptr @clockgen2_cmux_cgb, !152, !"clockgen2_cmux_cgb", i1 false, i1 false}
!152 = !{!"../drivers/clk/clk-qoriq.c", i32 237, i32 38}
!153 = !{ptr @t2080_hwa1, !154, !"t2080_hwa1", i1 false, i1 false}
!154 = !{!"../drivers/clk/clk-qoriq.c", i32 405, i32 38}
!155 = !{ptr @ls1021a_cmux, !156, !"ls1021a_cmux", i1 false, i1 false}
!156 = !{!"../drivers/clk/clk-qoriq.c", i32 249, i32 38}
!157 = !{ptr @ls1028a_hwa1, !158, !"ls1028a_hwa1", i1 false, i1 false}
!158 = !{!"../drivers/clk/clk-qoriq.c", i32 257, i32 38}
!159 = !{ptr @ls1028a_hwa2, !160, !"ls1028a_hwa2", i1 false, i1 false}
!160 = !{!"../drivers/clk/clk-qoriq.c", i32 270, i32 38}
!161 = !{ptr @ls1028a_hwa3, !162, !"ls1028a_hwa3", i1 false, i1 false}
!162 = !{!"../drivers/clk/clk-qoriq.c", i32 283, i32 38}
!163 = !{ptr @ls1028a_hwa4, !164, !"ls1028a_hwa4", i1 false, i1 false}
!164 = !{!"../drivers/clk/clk-qoriq.c", i32 296, i32 38}
!165 = !{ptr @t1040_cmux, !166, !"t1040_cmux", i1 false, i1 false}
!166 = !{!"../drivers/clk/clk-qoriq.c", i32 199, i32 38}
!167 = !{ptr @ls1043a_hwa1, !168, !"ls1043a_hwa1", i1 false, i1 false}
!168 = !{!"../drivers/clk/clk-qoriq.c", i32 309, i32 38}
!169 = !{ptr @ls1043a_hwa2, !170, !"ls1043a_hwa2", i1 false, i1 false}
!170 = !{!"../drivers/clk/clk-qoriq.c", i32 322, i32 38}
!171 = !{ptr @ls1046a_hwa1, !172, !"ls1046a_hwa1", i1 false, i1 false}
!172 = !{!"../drivers/clk/clk-qoriq.c", i32 331, i32 38}
!173 = !{ptr @ls1046a_hwa2, !174, !"ls1046a_hwa2", i1 false, i1 false}
!174 = !{!"../drivers/clk/clk-qoriq.c", i32 344, i32 38}
!175 = !{ptr @ls1088a_hwa1, !176, !"ls1088a_hwa1", i1 false, i1 false}
!176 = !{!"../drivers/clk/clk-qoriq.c", i32 356, i32 38}
!177 = !{ptr @ls1088a_hwa2, !178, !"ls1088a_hwa2", i1 false, i1 false}
!178 = !{!"../drivers/clk/clk-qoriq.c", i32 369, i32 38}
!179 = !{ptr @ls1012a_cmux, !180, !"ls1012a_cmux", i1 false, i1 false}
!180 = !{!"../drivers/clk/clk-qoriq.c", i32 382, i32 38}
!181 = !{ptr @p2041_cmux_grp1, !182, !"p2041_cmux_grp1", i1 false, i1 false}
!182 = !{!"../drivers/clk/clk-qoriq.c", i32 122, i32 38}
!183 = !{ptr @p2041_cmux_grp2, !184, !"p2041_cmux_grp2", i1 false, i1 false}
!184 = !{!"../drivers/clk/clk-qoriq.c", i32 130, i32 38}
!185 = !{ptr @p4080_cmux_grp1, !186, !"p4080_cmux_grp1", i1 false, i1 false}
!186 = !{!"../drivers/clk/clk-qoriq.c", i32 172, i32 38}
!187 = !{ptr @p4080_cmux_grp2, !188, !"p4080_cmux_grp2", i1 false, i1 false}
!188 = !{!"../drivers/clk/clk-qoriq.c", i32 182, i32 38}
!189 = !{ptr @p5020_cmux_grp1, !190, !"p5020_cmux_grp1", i1 false, i1 false}
!190 = !{!"../drivers/clk/clk-qoriq.c", i32 138, i32 38}
!191 = !{ptr @p5020_cmux_grp2, !192, !"p5020_cmux_grp2", i1 false, i1 false}
!192 = !{!"../drivers/clk/clk-qoriq.c", i32 146, i32 38}
!193 = !{ptr @p5040_cmux_grp1, !194, !"p5040_cmux_grp1", i1 false, i1 false}
!194 = !{!"../drivers/clk/clk-qoriq.c", i32 154, i32 38}
!195 = !{ptr @p5040_cmux_grp2, !196, !"p5040_cmux_grp2", i1 false, i1 false}
!196 = !{!"../drivers/clk/clk-qoriq.c", i32 163, i32 38}
!197 = !{ptr @t1023_cmux, !198, !"t1023_cmux", i1 false, i1 false}
!198 = !{!"../drivers/clk/clk-qoriq.c", i32 192, i32 38}
!199 = !{ptr @t1023_hwa1, !200, !"t1023_hwa1", i1 false, i1 false}
!200 = !{!"../drivers/clk/clk-qoriq.c", i32 390, i32 38}
!201 = !{ptr @t1023_hwa2, !202, !"t1023_hwa2", i1 false, i1 false}
!202 = !{!"../drivers/clk/clk-qoriq.c", i32 399, i32 38}
!203 = !{ptr @t2080_hwa2, !204, !"t2080_hwa2", i1 false, i1 false}
!204 = !{!"../drivers/clk/clk-qoriq.c", i32 418, i32 38}
!205 = !{ptr @clockgen2_cmux_cga, !206, !"clockgen2_cmux_cga", i1 false, i1 false}
!206 = !{!"../drivers/clk/clk-qoriq.c", i32 209, i32 38}
!207 = !{ptr @t4240_hwa1, !208, !"t4240_hwa1", i1 false, i1 false}
!208 = !{!"../drivers/clk/clk-qoriq.c", i32 431, i32 38}
!209 = !{ptr @t4240_hwa4, !210, !"t4240_hwa4", i1 false, i1 false}
!210 = !{!"../drivers/clk/clk-qoriq.c", i32 444, i32 38}
!211 = !{ptr @t4240_hwa5, !212, !"t4240_hwa5", i1 false, i1 false}
!212 = !{!"../drivers/clk/clk-qoriq.c", i32 454, i32 38}
!213 = !{ptr @.str.73, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/clk-qoriq.c", i32 1151, i32 34}
!215 = !{ptr @.str.74, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/clk-qoriq.c", i32 1166, i32 2}
!217 = !{ptr @.str.75, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @create_sysclk._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @create_sysclk._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.76, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/clk-qoriq.c", i32 1098, i32 33}
!222 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/clk-qoriq.c", i32 1113, i32 3}
!224 = !{ptr @.str.78, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @input_clock._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @input_clock._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/clk-qoriq.c", i32 1174, i32 34}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../drivers/clk/clk-qoriq.c", i32 1240, i32 4}
!231 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.81, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/clk-qoriq.c", i32 1255, i32 3}
!234 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.83, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @create_one_pll.__UNIQUE_ID_ddebug183, !233, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!237 = !{ptr @.str.84, !233, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.85, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/clk-qoriq.c", i32 1277, i32 5}
!240 = !{ptr @.str.86, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/clk-qoriq.c", i32 1282, i32 4}
!242 = !{ptr @create_one_pll._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @create_one_pll._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.88, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/clk-qoriq.c", i32 1290, i32 4}
!246 = !{ptr @create_one_pll._entry.87, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @create_one_pll._entry_ptr.89, !245, !"_entry_ptr", i1 false, i1 false}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../drivers/clk/clk-qoriq.c", i32 1041, i32 4}
!250 = !{ptr @.str.90, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/clk-qoriq.c", i32 1014, i32 18}
!252 = !{ptr @.str.91, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/clk-qoriq.c", i32 960, i32 3}
!254 = !{ptr @create_mux_common._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @create_mux_common._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @cmux_ops, !257, !"cmux_ops", i1 false, i1 false}
!257 = !{!"../drivers/clk/clk-qoriq.c", i32 880, i32 29}
!258 = !{ptr @.str.92, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/clk-qoriq.c", i32 873, i32 3}
!260 = !{ptr @.str.93, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @mux_get_parent._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @mux_get_parent._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.94, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/clk-qoriq.c", i32 1029, i32 6}
!265 = !{ptr @hwaccel_ops, !266, !"hwaccel_ops", i1 false, i1 false}
!266 = !{!"../drivers/clk/clk-qoriq.c", i32 889, i32 29}
!267 = !{ptr @.str.95, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/clk-qoriq.c", i32 1388, i32 3}
!269 = !{ptr @.str.96, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @clockgen_clk_get._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @clockgen_clk_get._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.98, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/clk-qoriq.c", i32 1438, i32 2}
!274 = !{ptr @clockgen_clk_get._entry.97, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @clockgen_clk_get._entry_ptr.99, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.100, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/clk-qoriq.c", i32 1314, i32 40}
!278 = !{ptr @.str.101, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/clk-qoriq.c", i32 1341, i32 3}
!280 = !{ptr @legacy_pll_init._entry, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @legacy_pll_init._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.102, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/clk-qoriq.c", i32 1087, i32 3}
!284 = !{ptr @core_mux_init._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @core_mux_init._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i8 0, i8 2}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{!"branch_weights", i32 2000, i32 1}
!298 = !{i64 5029600}
!299 = !{i64 2153037676}
!300 = !{i64 2153038191}
!301 = !{i64 2153038727}
!302 = !{i64 2153039255}
!303 = !{!"auto-init"}
!304 = !{i64 2152562459}
!305 = !{i64 2153036240}
!306 = !{i64 2148758626, i64 2148758631, i64 2148758644, i64 2148758688, i64 2148758722, i64 2148758743}
!307 = !{i64 1181684, i64 1181711}
!308 = !{i64 1182024, i64 1182051, i64 1182085, i64 1182106}
!309 = !{i64 5029182}
