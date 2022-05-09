; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-imx-gpt.c_pt.bc'
source_filename = "../drivers/clocksource/timer-imx-gpt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_gpt_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.imx_timer = type { i32, ptr, i32, ptr, ptr, ptr, [104 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-gpt.0\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@__of_table_imx1_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx21_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx27_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx31_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx25_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx50_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx50-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx51_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx53_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6q_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6dl_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6dl-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6sl_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6sx_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imx1_gpt_data = internal constant { %struct.imx_gpt_data, [32 x i8] } { %struct.imx_gpt_data { i32 20, i32 16, i32 8, ptr @imx1_gpt_setup_tctl, ptr @imx1_gpt_irq_enable, ptr @imx1_gpt_irq_disable, ptr @imx1_gpt_irq_acknowledge, ptr @mx1_2_set_next_event }, [32 x i8] zeroinitializer }, align 32
@imx21_gpt_data = internal constant { %struct.imx_gpt_data, [32 x i8] } { %struct.imx_gpt_data { i32 20, i32 16, i32 8, ptr @imx1_gpt_setup_tctl, ptr @imx1_gpt_irq_enable, ptr @imx1_gpt_irq_disable, ptr @imx21_gpt_irq_acknowledge, ptr @mx1_2_set_next_event }, [32 x i8] zeroinitializer }, align 32
@imx31_gpt_data = internal constant { %struct.imx_gpt_data, [32 x i8] } { %struct.imx_gpt_data { i32 8, i32 36, i32 16, ptr @imx31_gpt_setup_tctl, ptr @imx31_gpt_irq_enable, ptr @imx31_gpt_irq_disable, ptr @imx31_gpt_irq_acknowledge, ptr @v2_set_next_event }, [32 x i8] zeroinitializer }, align 32
@imx6dl_gpt_data = internal constant { %struct.imx_gpt_data, [32 x i8] } { %struct.imx_gpt_data { i32 8, i32 36, i32 16, ptr @imx6dl_gpt_setup_tctl, ptr @imx31_gpt_irq_enable, ptr @imx31_gpt_irq_disable, ptr @imx31_gpt_irq_acknowledge, ptr @v2_set_next_event }, [32 x i8] zeroinitializer }, align 32
@_mxc_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013i.MX timer: unable to get clk\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_mxc_timer_init\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/timer-imx-gpt.c\00", [60 x i8] zeroinitializer }, align 32
@_mxc_timer_init._entry_ptr = internal global ptr @_mxc_timer_init._entry, section ".printk_index", align 4
@imx_delay_timer = internal global { %struct.delay_timer, [24 x i8] } zeroinitializer, align 32
@sched_clock_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxc_timer1\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i.MX Timer Tick\00", [16 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@mxc_timer_init_dt.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_per\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6dl\00", [21 x i8] zeroinitializer }, align 32
@switch.table._mxc_timer_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @imx1_gpt_data, ptr @imx21_gpt_data, ptr @imx31_gpt_data, ptr @imx6dl_gpt_data], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 430, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 430, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 431, i32 44 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"imx1_gpt_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 331, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"imx21_gpt_data\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 342, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"imx31_gpt_data\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 353, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"imx6dl_gpt_data\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 364, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 397, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"imx_delay_timer\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 144, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"sched_clock_reg\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 136, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 166, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 289, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"mxc_timer_init_dt.initialized\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 467, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [39 x i8] c"../drivers/clocksource/timer-imx-gpt.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 502, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [29 x i8] c"switch.table._mxc_timer_init\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__of_table_imx1_timer, ptr @__of_table_imx21_timer, ptr @__of_table_imx25_timer, ptr @__of_table_imx27_timer, ptr @__of_table_imx31_timer, ptr @__of_table_imx50_timer, ptr @__of_table_imx51_timer, ptr @__of_table_imx53_timer, ptr @__of_table_imx6dl_timer, ptr @__of_table_imx6q_timer, ptr @__of_table_imx6sl_timer, ptr @__of_table_imx6sx_timer, ptr @_mxc_timer_init._entry, ptr @_mxc_timer_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @imx1_gpt_data, ptr @imx21_gpt_data, ptr @imx31_gpt_data, ptr @imx6dl_gpt_data, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx_delay_timer, ptr @sched_clock_reg, ptr @.str.6, ptr @.str.7, ptr @mxc_timer_init_dt.initialized, ptr @.str.8, ptr @.str.9, ptr @switch.table._mxc_timer_init], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx1_gpt_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx21_gpt_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx31_gpt_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6dl_gpt_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mxc_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clock_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_timer_init_dt.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._mxc_timer_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_timer_init(i32 noundef %pbase, i32 noundef %irq, i32 noundef %type) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !67

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-imx-gpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #6, !srcloc !68
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %clk_per, align 4
  %call11 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  %clk_ipg = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %clk_ipg, align 16
  %call12 = tail call ptr @ioremap(i32 noundef %pbase, i32 noundef 4096) #6
  %base = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %base, align 4
  %tobool15.not = icmp eq ptr %call12, null
  br i1 %tobool15.not, label %do.body25, label %do.end33, !prof !67

do.body25:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-imx-gpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #6, !srcloc !69
  unreachable

do.end33:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %call7.i.i, align 128
  %irq35 = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %irq, ptr %irq35, align 8
  %call36 = tail call fastcc i32 @_mxc_timer_init(ptr noundef nonnull %call7.i.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mxc_timer_init(ptr noundef %imxtm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imxtm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imxtm, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table._mxc_timer_init, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %gpt6 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 5
  %4 = ptrtoint ptr %gpt6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch.load, ptr %gpt6, align 4
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 3
  %5 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_per, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %7 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_per, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %clk_ipg = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 4
  %10 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_ipg, align 16
  %cmp.i40 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end.i:                                         ; preds = %if.then11
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i, %if.end.i.if.end14_crit_edge, %if.then11.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %12 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_per, align 4
  %call.i41 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i45, label %if.end14.clk_prepare_enable.exit47_crit_edge

if.end14.clk_prepare_enable.exit47_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit47

if.end.i45:                                       ; preds = %if.end14
  %call1.i43 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool2.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool2.not.i44, label %if.end.i45.clk_prepare_enable.exit47_crit_edge, label %if.then3.i46

if.end.i45.clk_prepare_enable.exit47_crit_edge:   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit47

if.then3.i46:                                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %clk_prepare_enable.exit47

clk_prepare_enable.exit47:                        ; preds = %if.then3.i46, %if.end.i45.clk_prepare_enable.exit47_crit_edge, %if.end14.clk_prepare_enable.exit47_crit_edge
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !70
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #6, !srcloc !70
  %gpt19 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 5
  %18 = ptrtoint ptr %gpt19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpt19, align 4
  %gpt_setup_tctl = getelementptr inbounds %struct.imx_gpt_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %gpt_setup_tctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpt_setup_tctl, align 4
  tail call void %21(ptr noundef %imxtm) #6
  %call20 = tail call fastcc i32 @mxc_clocksource_init(ptr noundef %imxtm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %clk_prepare_enable.exit47.cleanup_crit_edge

clk_prepare_enable.exit47.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %clk_prepare_enable.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call fastcc i32 @mxc_clockevent_init(ptr noundef %imxtm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %clk_prepare_enable.exit47.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %call23, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ %call20, %clk_prepare_enable.exit47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx1_timer_init_dt(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %np, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx21_timer_init_dt(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %np, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx31_timer_init_dt(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %call1 = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %np, i32 noundef %spec.select) #10
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6dl_timer_init_dt(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %np, i32 noundef 3) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_clocksource_init(ptr nocapture noundef readonly %imxtm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 3
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %gpt = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 5
  %4 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpt, align 4
  %reg_tcn = getelementptr inbounds %struct.imx_gpt_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_tcn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_tcn, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  store ptr @imx_read_current_timer, ptr @imx_delay_timer, align 4
  store i32 %call, ptr getelementptr inbounds (%struct.delay_timer, ptr @imx_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @imx_delay_timer) #6
  store ptr %add.ptr, ptr @sched_clock_reg, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @mxc_read_sched_clock, i32 noundef 32, i32 noundef %call) #6
  %call1 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.6, i32 noundef %call, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_clockevent_init(ptr noundef %imxtm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ced1 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7
  %name = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 21
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.6, ptr %name, align 4
  %features = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 9
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 34, ptr %features, align 4
  %set_state_shutdown = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 14
  %2 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mxc_shutdown, ptr %set_state_shutdown, align 8
  %set_state_oneshot = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 12
  %3 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mxc_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 15
  %4 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mxc_shutdown, ptr %tick_resume, align 4
  %gpt = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 5
  %5 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpt, align 4
  %set_next_event = getelementptr inbounds %struct.imx_gpt_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %set_next_event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_next_event, align 4
  %set_next_event2 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %set_next_event2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %set_next_event2, align 4
  %rating = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 22
  %10 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 200, ptr %rating, align 8
  %cpumask = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 25
  %11 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %irq = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 2
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  %irq3 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 7, i32 23
  %14 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq3, align 4
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 3
  %15 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_per, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %16) #6
  tail call void @clockevents_config_and_register(ptr noundef %ced1, i32 noundef %call4, i32 noundef 255, i32 noundef -2) #6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @mxc_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.7, ptr noundef %ced1) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx1_gpt_setup_tctl(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50397184) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_enable(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !71
  %3 = or i32 %2, 268435456
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_disable(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !71
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_acknowledge(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx1_2_set_next_event(i32 noundef %evt, ptr nocapture noundef readonly %ced) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %ced, i32 -124
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add = add i32 %3, %evt
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !70
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !71
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %cond = select i1 %cmp, i32 -62, i32 0
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx21_gpt_irq_acknowledge(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx31_gpt_setup_tctl(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 3
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call)
  %cmp = icmp eq i32 %call, 3000000
  %. = select i1 %cmp, i32 841, i32 649
  %2 = tail call i32 @llvm.bswap.i32(i32 %.)
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_enable(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_disable(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_acknowledge(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v2_set_next_event(i32 noundef %evt, ptr nocapture noundef readonly %ced) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %ced, i32 -124
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add = add i32 %3, %evt
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %evt)
  %cmp = icmp ult i32 %evt, 2147483647
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !71
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  %phi.sel = select i1 %cmp9, i32 -62, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %11 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx6dl_gpt_setup_tctl(ptr nocapture noundef readonly %imxtm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 3
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call)
  %cmp = icmp eq i32 %call, 3000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 7340032) #6, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tctl_val.0 = phi i32 [ 1865, %if.then ], [ 649, %entry.if.end_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %tctl_val.0)
  %base3 = getelementptr inbounds %struct.imx_timer, ptr %imxtm, i32 0, i32 1
  %5 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_read_current_timer() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sched_clock_reg, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mxc_read_sched_clock() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @sched_clock_reg, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #6, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_shutdown(ptr noundef %ced) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %gpt = getelementptr i8, ptr %ced, i32 -108
  %0 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpt, align 4
  %gpt_irq_disable = getelementptr inbounds %struct.imx_gpt_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpt_irq_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpt_irq_disable, align 4
  tail call void %3(ptr noundef %add.ptr.i) #6
  %base = getelementptr i8, ptr %ced, i32 -124
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpt, align 4
  %reg_tcn = getelementptr inbounds %struct.imx_gpt_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reg_tcn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_tcn, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %sub = add i32 %11, -3
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpt, align 4
  %reg_tcmp = getelementptr inbounds %struct.imx_gpt_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %reg_tcmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_tcmp, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #6, !srcloc !70
  %19 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpt, align 4
  %gpt_irq_acknowledge = getelementptr inbounds %struct.imx_gpt_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %gpt_irq_acknowledge to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpt_irq_acknowledge, align 4
  tail call void %22(ptr noundef %add.ptr.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_set_oneshot(ptr noundef %ced) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %gpt = getelementptr i8, ptr %ced, i32 -108
  %0 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpt, align 4
  %gpt_irq_disable = getelementptr inbounds %struct.imx_gpt_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpt_irq_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpt_irq_disable, align 4
  tail call void %3(ptr noundef %add.ptr.i) #6
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %4 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr i8, ptr %ced, i32 -124
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpt, align 4
  %reg_tcn = getelementptr inbounds %struct.imx_gpt_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %reg_tcn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_tcn, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sub = add i32 %13, -3
  %14 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpt, align 4
  %reg_tcmp = getelementptr inbounds %struct.imx_gpt_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %reg_tcmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_tcmp, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #6, !srcloc !70
  %21 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpt, align 4
  %gpt_irq_acknowledge = getelementptr inbounds %struct.imx_gpt_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %gpt_irq_acknowledge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpt_irq_acknowledge, align 4
  tail call void %24(ptr noundef %add.ptr.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpt, align 4
  %gpt_irq_enable = getelementptr inbounds %struct.imx_gpt_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %gpt_irq_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpt_irq_enable, align 4
  tail call void %28(ptr noundef %add.ptr.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 -128
  %base = getelementptr i8, ptr %dev_id, i32 -124
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %gpt = getelementptr i8, ptr %dev_id, i32 -108
  %2 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %7 = ptrtoint ptr %gpt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpt, align 4
  %gpt_irq_acknowledge = getelementptr inbounds %struct.imx_gpt_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %gpt_irq_acknowledge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpt_irq_acknowledge, align 4
  tail call void %10(ptr noundef %add.ptr.i) #6
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 128
  tail call void %12(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxc_timer_init_dt(ptr noundef %np, i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @mxc_timer_init_dt.initialized, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %base, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call9, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp = icmp slt i32 %call9, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.2) #6
  %clk_ipg = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %clk_ipg, align 16
  %call14 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.8) #6
  %clk_per = getelementptr inbounds %struct.imx_timer, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk_per, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.1) #6
  %5 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %clk_per, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %call7.i.i, align 128
  %call22 = tail call fastcc i32 @_mxc_timer_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mxc_timer_init_dt.initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 430, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 430, i32 44}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 431, i32 44}
!6 = !{ptr @__of_table_imx1_timer, !7, !"__of_table_imx1_timer", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 513, i32 1}
!8 = !{ptr @__of_table_imx21_timer, !9, !"__of_table_imx21_timer", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 514, i32 1}
!10 = !{ptr @__of_table_imx27_timer, !11, !"__of_table_imx27_timer", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 515, i32 1}
!12 = !{ptr @__of_table_imx31_timer, !13, !"__of_table_imx31_timer", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 516, i32 1}
!14 = !{ptr @__of_table_imx25_timer, !15, !"__of_table_imx25_timer", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 517, i32 1}
!16 = !{ptr @__of_table_imx50_timer, !17, !"__of_table_imx50_timer", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 518, i32 1}
!18 = !{ptr @__of_table_imx51_timer, !19, !"__of_table_imx51_timer", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 519, i32 1}
!20 = !{ptr @__of_table_imx53_timer, !21, !"__of_table_imx53_timer", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 520, i32 1}
!22 = !{ptr @__of_table_imx6q_timer, !23, !"__of_table_imx6q_timer", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 521, i32 1}
!24 = !{ptr @__of_table_imx6dl_timer, !25, !"__of_table_imx6dl_timer", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 522, i32 1}
!26 = !{ptr @__of_table_imx6sl_timer, !27, !"__of_table_imx6sl_timer", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 523, i32 1}
!28 = !{ptr @__of_table_imx6sx_timer, !29, !"__of_table_imx6sx_timer", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 524, i32 1}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 397, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @_mxc_timer_init._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @_mxc_timer_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @imx1_gpt_data, !37, !"imx1_gpt_data", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 331, i32 34}
!38 = !{ptr @imx21_gpt_data, !39, !"imx21_gpt_data", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 342, i32 34}
!40 = !{ptr @imx31_gpt_data, !41, !"imx31_gpt_data", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 353, i32 34}
!42 = !{ptr @imx6dl_gpt_data, !43, !"imx6dl_gpt_data", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 364, i32 34}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 166, i32 36}
!46 = !{ptr @imx_delay_timer, !47, !"imx_delay_timer", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 144, i32 27}
!48 = !{ptr @sched_clock_reg, !49, !"sched_clock_reg", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 136, i32 22}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 289, i32 34}
!52 = distinct !{null, !53, !"initialized", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 445, i32 13}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 467, i32 42}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clocksource/timer-imx-gpt.c", i32 502, i32 31}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2152819644, i64 2152820144, i64 2152819681, i64 2152819737, i64 2152819771, i64 2152819795, i64 2152819836, i64 2152819857, i64 2152819885, i64 2152819919}
!69 = !{i64 2152821291, i64 2152821791, i64 2152821328, i64 2152821384, i64 2152821418, i64 2152821442, i64 2152821483, i64 2152821504, i64 2152821532, i64 2152821566}
!70 = !{i64 4209816}
!71 = !{i64 4210234}
