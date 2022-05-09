; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/aspeed/pinctrl-aspeed.c_pt.bc'
source_filename = "../drivers/pinctrl/aspeed/pinctrl-aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aspeed_pinctrl_data = type { ptr, ptr, i32, ptr, i32, %struct.aspeed_pinmux_data, ptr, i32 }
%struct.aspeed_pinmux_data = type { ptr, [3 x ptr], ptr, ptr, i32, ptr, i32 }
%struct.aspeed_pin_group = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.aspeed_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.aspeed_pin_desc = type { ptr, ptr }
%struct.aspeed_sig_expr = type { ptr, ptr, i32, ptr }
%struct.aspeed_pinmux_ops = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_pin_config = type { i32, [2 x i32], i32, i32 }
%struct.aspeed_pin_config_map = type { i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_aspeed\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_pinmux_set_mux\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pinctrl/aspeed/pinctrl-aspeed.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Muxing pin %s for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@aspeed_pinmux_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014No function %s found on pin %s (%d). Found signal(s) %s for function(s) %s\0A\00", [50 x i8] zeroinitializer }, align 32
@aspeed_pinmux_set_mux._entry_ptr = internal global ptr @aspeed_pinmux_set_mux._entry, section ".printk_index", align 4
@aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Muxed pin %s as %s for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_gpio_request_enable.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aspeed_gpio_request_enable\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Muxing pin %s for GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014No GPIO signal type found on pin %s (%d). Found: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_gpio_request_enable._entry_ptr = internal global ptr @aspeed_gpio_request_enable._entry, section ".printk_index", align 4
@aspeed_gpio_request_enable.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 0, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Muxed pin %s as GPIO\0A\00", [42 x i8] zeroinitializer }, align 32
@aspeed_gpio_request_enable.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.11, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Muxed pin %s as %s\0A\00", [44 x i8] zeroinitializer }, align 32
@aspeed_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 451, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No parent for syscon pincontroller\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aspeed_pinctrl_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_pinctrl_probe._entry_ptr = internal global ptr @aspeed_pinctrl_probe._entry, section ".printk_index", align 4
@aspeed_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 457, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No regmap for syscon pincontroller parent\0A\00", [53 x i8] zeroinitializer }, align 32
@aspeed_pinctrl_probe._entry_ptr.18 = internal global ptr @aspeed_pinctrl_probe._entry.16, section ".printk_index", align 4
@aspeed_pinctrl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.3, i32 466, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@aspeed_pinctrl_probe._entry_ptr.21 = internal global ptr @aspeed_pinctrl_probe._entry.19, section ".printk_index", align 4
@aspeed_pin_config_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_pin_config_set\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Set SCU%02X[0x%08X]=0x%X for param %d(=%d) on pin %d\0A\00", [38 x i8] zeroinitializer }, align 32
@aspeed_pin_config_group_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_pin_config_group_set\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Fetching pins for group selector %d\0A\00", [55 x i8] zeroinitializer }, align 32
@aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aspeed_sig_expr_disable\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling signal %s for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_sig_expr_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling signal %s for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPI\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 43, i32 16 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 239, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 267, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 280, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 393, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 410, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 425, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 437, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 451, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 457, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 466, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 606, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 644, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 97, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 185, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 79, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [43 x i8] c"../drivers/pinctrl/aspeed/pinctrl-aspeed.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 358, i32 32 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @aspeed_gpio_request_enable._entry, ptr @aspeed_gpio_request_enable._entry_ptr, ptr @aspeed_pinctrl_probe._entry, ptr @aspeed_pinctrl_probe._entry.16, ptr @aspeed_pinctrl_probe._entry.19, ptr @aspeed_pinctrl_probe._entry_ptr, ptr @aspeed_pinctrl_probe._entry_ptr.18, ptr @aspeed_pinctrl_probe._entry_ptr.21, ptr @aspeed_pinmux_set_mux._entry, ptr @aspeed_pinmux_set_mux._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pinmux_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pinctrl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_get_groups_count(ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %ngroups = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aspeed_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %npins6 = getelementptr %struct.aspeed_pin_group, ptr %5, i32 %group, i32 2
  %6 = ptrtoint ptr %npins6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins6, align 4
  %8 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %npins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aspeed_pinctrl_pin_dbg_show(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_get_fn_count(ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nfunctions = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aspeed_pinmux_get_fn_name(ptr noundef %pctldev, i32 noundef %function) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.aspeed_pin_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_get_fn_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.aspeed_pin_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.aspeed_pin_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pinmux = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5
  %groups = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %functions = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx2 = getelementptr %struct.aspeed_pin_function, ptr %3, i32 %function
  %npins = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %group, i32 2
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp161.not = icmp eq i32 %5, 0
  br i1 %cmp161.not, label %entry.cleanup71_crit_edge, label %for.body.lr.ph

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

for.body.lr.ph:                                   ; preds = %entry
  %pins = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %group, i32 1
  %pins4 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 1
  %ops.i.i.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx3 = getelementptr i32, ptr %7, i32 %i.0162
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %pins4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins4, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %9, i32 2
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pinmux_set_mux, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !73

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.4, ptr noundef %15, ptr noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %do.end.cleanup71_crit_edge, label %if.end13

do.end.cleanup71_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.end13:                                         ; preds = %do.end
  %prios14 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prios14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prios14, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.end13.for.inc_crit_edge, label %while.cond.preheader

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool18.not151 = icmp eq ptr %21, null
  br i1 %tobool18.not151, label %while.cond.preheader.if.then30_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.then30_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %22 = phi ptr [ %44, %if.end28.while.body_crit_edge ], [ %21, %while.cond.preheader.while.body_crit_edge ]
  %prios.0152 = phi ptr [ %incdec.ptr, %if.end28.while.body_crit_edge ], [ %19, %while.cond.preheader.while.body_crit_edge ]
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %tobool.not4.i = icmp eq ptr %26, null
  br i1 %tobool.not4.i, label %while.body.if.end28_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %exprs.addr.05.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %while.cond.i.while.body.i110_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.i.while.body.i110_crit_edge:           ; preds = %while.cond.i
  br label %while.body.i110

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %29 = phi ptr [ %28, %while.cond.i.while.body.i_crit_edge ], [ %26, %while.body.while.body.i_crit_edge ]
  %exprs.addr.05.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ %22, %while.body.while.body.i_crit_edge ]
  %function.i = getelementptr inbounds %struct.aspeed_sig_expr, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %function.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %31, ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end41, label %while.cond.i

while.body.i110:                                  ; preds = %aspeed_sig_expr_disable.exit.i.while.body.i110_crit_edge, %while.cond.i.while.body.i110_crit_edge
  %32 = phi ptr [ %42, %aspeed_sig_expr_disable.exit.i.while.body.i110_crit_edge ], [ %26, %while.cond.i.while.body.i110_crit_edge ]
  %exprs.addr.08.i = phi ptr [ %incdec.ptr.i111, %aspeed_sig_expr_disable.exit.i.while.body.i110_crit_edge ], [ %22, %while.cond.i.while.body.i110_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pinmux_set_mux, %do.end.i.i)) #8
          to label %if.then.i.i [label %do.end.i.i], !srcloc !73

if.then.i.i:                                      ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %function.i.i = getelementptr inbounds %struct.aspeed_sig_expr, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %function.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.27, ptr noundef %34, ptr noundef %36) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i110
  %call4.i.i = tail call i32 @aspeed_sig_expr_eval(ptr noundef %pinmux, ptr noundef nonnull %32, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.cleanup71_crit_edge, label %if.end6.i.i

do.end.i.i.cleanup71_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.end6.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool7.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge, label %if.then8.i.i

if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aspeed_sig_expr_disable.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i.i, align 4
  %set.i.i.i = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set.i.i.i, align 4
  %call.i.i.i = tail call i32 %40(ptr noundef %pinmux, ptr noundef nonnull %32, i1 noundef zeroext false) #8
  br label %aspeed_sig_expr_disable.exit.i

aspeed_sig_expr_disable.exit.i:                   ; preds = %if.then8.i.i, %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.then8.i.i ], [ 0, %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge ]
  %incdec.ptr.i111 = getelementptr ptr, ptr %exprs.addr.08.i, i32 1
  %41 = ptrtoint ptr %incdec.ptr.i111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %incdec.ptr.i111, align 4
  %tobool1.not.i = icmp ne ptr %42, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool1.not.i, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %aspeed_sig_expr_disable.exit.i.while.body.i110_crit_edge, label %aspeed_disable_sig.exit

aspeed_sig_expr_disable.exit.i.while.body.i110_crit_edge: ; preds = %aspeed_sig_expr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i110

aspeed_disable_sig.exit:                          ; preds = %aspeed_sig_expr_disable.exit.i
  br i1 %tobool2.not.i, label %aspeed_disable_sig.exit.if.end28_crit_edge, label %aspeed_disable_sig.exit.cleanup71_crit_edge

aspeed_disable_sig.exit.cleanup71_crit_edge:      ; preds = %aspeed_disable_sig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

aspeed_disable_sig.exit.if.end28_crit_edge:       ; preds = %aspeed_disable_sig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %aspeed_disable_sig.exit.if.end28_crit_edge, %while.body.if.end28_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %prios.0152, i32 1
  %43 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr, align 4
  %tobool18.not = icmp eq ptr %44, null
  br i1 %tobool18.not, label %if.end28.if.then30_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %while.cond.preheader.if.then30_crit_edge
  %prios14.le208 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %13, i32 0, i32 1
  %45 = ptrtoint ptr %prios14.le208 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prios14.le208, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool.not55.i.i = icmp eq ptr %48, null
  br i1 %tobool.not55.i.i, label %if.then30.if.then17.i.i_crit_edge, label %if.then30.while.cond2.preheader.i.i_crit_edge

if.then30.while.cond2.preheader.i.i_crit_edge:    ; preds = %if.then30
  br label %while.cond2.preheader.i.i

if.then30.if.then17.i.i_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i

while.cond2.preheader.i.i:                        ; preds = %while.end.i.i.while.cond2.preheader.i.i_crit_edge, %if.then30.while.cond2.preheader.i.i_crit_edge
  %49 = phi ptr [ %60, %while.end.i.i.while.cond2.preheader.i.i_crit_edge ], [ %48, %if.then30.while.cond2.preheader.i.i_crit_edge ]
  %prios.058.i.i = phi ptr [ %incdec.ptr15.i.i, %while.end.i.i.while.cond2.preheader.i.i_crit_edge ], [ %46, %if.then30.while.cond2.preheader.i.i_crit_edge ]
  %len.057.i.i = phi i32 [ %len.1.lcssa.i.i, %while.end.i.i.while.cond2.preheader.i.i_crit_edge ], [ 0, %if.then30.while.cond2.preheader.i.i_crit_edge ]
  %found.056.i.i = phi ptr [ %found.1.lcssa.i.i, %while.end.i.i.while.cond2.preheader.i.i_crit_edge ], [ null, %if.then30.while.cond2.preheader.i.i_crit_edge ]
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool3.not50.i.i = icmp eq ptr %51, null
  br i1 %tobool3.not50.i.i, label %while.cond2.preheader.i.i.while.end.i.i_crit_edge, label %while.cond2.preheader.i.i.while.body4.i.i_crit_edge

while.cond2.preheader.i.i.while.body4.i.i_crit_edge: ; preds = %while.cond2.preheader.i.i
  br label %while.body4.i.i

while.cond2.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body4.i.i:                                  ; preds = %cleanup.i.i.while.body4.i.i_crit_edge, %while.cond2.preheader.i.i.while.body4.i.i_crit_edge
  %52 = phi ptr [ %58, %cleanup.i.i.while.body4.i.i_crit_edge ], [ %51, %while.cond2.preheader.i.i.while.body4.i.i_crit_edge ]
  %funcs.053.i.i = phi ptr [ %incdec.ptr.i.i, %cleanup.i.i.while.body4.i.i_crit_edge ], [ %49, %while.cond2.preheader.i.i.while.body4.i.i_crit_edge ]
  %len.152.i.i = phi i32 [ %add6.i.i, %cleanup.i.i.while.body4.i.i_crit_edge ], [ %len.057.i.i, %while.cond2.preheader.i.i.while.body4.i.i_crit_edge ]
  %found.151.i.i = phi ptr [ %call8.i.i, %cleanup.i.i.while.body4.i.i_crit_edge ], [ %found.056.i.i, %while.cond2.preheader.i.i.while.body4.i.i_crit_edge ]
  %function.i.i113 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %function.i.i113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %function.i.i113, align 4
  %call5.i.i = tail call i32 @strlen(ptr noundef %54) #11
  %add.i.i = add i32 %len.152.i.i, 2
  %add6.i.i = add i32 %add.i.i, %call5.i.i
  %add7.i.i = add i32 %add6.i.i, 1
  %call8.i.i = tail call noalias ptr @krealloc(ptr noundef %found.151.i.i, i32 noundef %add7.i.i, i32 noundef 3264) #12
  %tobool9.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not.i.i, label %cleanup.thread.i.i, label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %while.body4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %found.151.i.i) #8
  br label %get_defined_functions.exit

cleanup.i.i:                                      ; preds = %while.body4.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call8.i.i, i32 %len.152.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call11.i.i = tail call ptr @strcat(ptr noundef nonnull %call8.i.i, ptr noundef %54) #8
  %strlen.i.i = tail call i32 @strlen(ptr nonnull %call8.i.i) #11
  %endptr.i.i = getelementptr i8, ptr %call8.i.i, i32 %strlen.i.i
  %56 = call ptr @memcpy(ptr %endptr.i.i, ptr @.str.28, i32 3)
  %incdec.ptr.i.i = getelementptr ptr, ptr %funcs.053.i.i, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %58, null
  br i1 %tobool3.not.i.i, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.while.body4.i.i_crit_edge

cleanup.i.i.while.body4.i.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %while.cond2.preheader.i.i.while.end.i.i_crit_edge
  %found.1.lcssa.i.i = phi ptr [ %found.056.i.i, %while.cond2.preheader.i.i.while.end.i.i_crit_edge ], [ %call8.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %len.1.lcssa.i.i = phi i32 [ %len.057.i.i, %while.cond2.preheader.i.i.while.end.i.i_crit_edge ], [ %add6.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %incdec.ptr15.i.i = getelementptr ptr, ptr %prios.058.i.i, i32 1
  %59 = ptrtoint ptr %incdec.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %incdec.ptr15.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %while.end16.i.i, label %while.end.i.i.while.cond2.preheader.i.i_crit_edge

while.end.i.i.while.cond2.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond2.preheader.i.i

while.end16.i.i:                                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.1.lcssa.i.i)
  %cmp.i.i114 = icmp ult i32 %len.1.lcssa.i.i, 2
  br i1 %cmp.i.i114, label %while.end16.i.i.if.then17.i.i_crit_edge, label %if.end18.i.i

while.end16.i.i.if.then17.i.i_crit_edge:          ; preds = %while.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %while.end16.i.i.if.then17.i.i_crit_edge, %if.then30.if.then17.i.i_crit_edge
  %found.0.lcssa67.i.i = phi ptr [ %found.1.lcssa.i.i, %while.end16.i.i.if.then17.i.i_crit_edge ], [ null, %if.then30.if.then17.i.i_crit_edge ]
  tail call void @kfree(ptr noundef %found.0.lcssa67.i.i) #8
  br label %get_defined_functions.exit

if.end18.i.i:                                     ; preds = %while.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %len.1.lcssa.i.i, -2
  %arrayidx19.i.i = getelementptr i8, ptr %found.1.lcssa.i.i, i32 %sub.i.i
  %61 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx19.i.i, align 1
  br label %get_defined_functions.exit

get_defined_functions.exit:                       ; preds = %if.end18.i.i, %if.then17.i.i, %cleanup.thread.i.i
  %retval.3.i.i = phi ptr [ null, %if.then17.i.i ], [ %found.1.lcssa.i.i, %if.end18.i.i ], [ null, %cleanup.thread.i.i ]
  %call33 = tail call fastcc ptr @get_defined_signals(ptr noundef nonnull %13)
  %62 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx2, align 4
  %64 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %13, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %63, ptr noundef %65, i32 noundef %9, ptr noundef %call33, ptr noundef %retval.3.i.i) #13
  tail call void @kfree(ptr noundef %call33) #8
  tail call void @kfree(ptr noundef %retval.3.i.i) #8
  br label %cleanup71

if.end41:                                         ; preds = %while.body.i
  %function.i.le = getelementptr inbounds %struct.aspeed_sig_expr, ptr %29, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pinmux_set_mux, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !73

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %29, align 4
  %68 = ptrtoint ptr %function.i.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %function.i.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.30, ptr noundef %67, ptr noundef %69) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end41
  %call4.i = tail call i32 @aspeed_sig_expr_eval(ptr noundef %pinmux, ptr noundef nonnull %29, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i116 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i116, label %do.end.i.cleanup71_crit_edge, label %if.end6.i

do.end.i.cleanup71_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

if.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool7.not.i, label %aspeed_sig_expr_enable.exit, label %if.end6.i.do.body47_crit_edge

if.end6.i.do.body47_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

aspeed_sig_expr_enable.exit:                      ; preds = %if.end6.i
  %70 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i.i, align 4
  %set.i.i = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %set.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set.i.i, align 4
  %call.i.i = tail call i32 %73(ptr noundef %pinmux, ptr noundef nonnull %29, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool44.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool44.not, label %aspeed_sig_expr_enable.exit.do.body47_crit_edge, label %aspeed_sig_expr_enable.exit.cleanup71_crit_edge

aspeed_sig_expr_enable.exit.cleanup71_crit_edge:  ; preds = %aspeed_sig_expr_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

aspeed_sig_expr_enable.exit.do.body47_crit_edge:  ; preds = %aspeed_sig_expr_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body47:                                        ; preds = %aspeed_sig_expr_enable.exit.do.body47_crit_edge, %if.end6.i.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pinmux_set_mux, %for.inc)) #8
          to label %if.then61 [label %for.inc], !srcloc !73

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %13, align 4
  %76 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %29, align 4
  %78 = ptrtoint ptr %function.i.le to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %function.i.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.6, ptr noundef %75, ptr noundef %77, ptr noundef %79) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %do.body47, %if.end13.for.inc_crit_edge
  %inc = add nuw i32 %i.0162, 1
  %80 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %81
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup71_crit_edge

for.inc.cleanup71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup71

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup71:                                        ; preds = %for.inc.cleanup71_crit_edge, %aspeed_sig_expr_enable.exit.cleanup71_crit_edge, %do.end.i.cleanup71_crit_edge, %get_defined_functions.exit, %aspeed_disable_sig.exit.cleanup71_crit_edge, %do.end.i.i.cleanup71_crit_edge, %do.end.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.2 = phi i32 [ -6, %get_defined_functions.exit ], [ 0, %entry.cleanup71_crit_edge ], [ %call4.i.i, %do.end.i.i.cleanup71_crit_edge ], [ %retval.0.i.i, %aspeed_disable_sig.exit.cleanup71_crit_edge ], [ 0, %for.inc.cleanup71_crit_edge ], [ -22, %do.end.cleanup71_crit_edge ], [ %call.i.i, %aspeed_sig_expr_enable.exit.cleanup71_crit_edge ], [ %call4.i, %do.end.i.cleanup71_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_defined_signals(ptr nocapture noundef readonly %pdesc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prios1.i = getelementptr inbounds %struct.aspeed_pin_desc, ptr %pdesc, i32 0, i32 1
  %0 = ptrtoint ptr %prios1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prios1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not55.i = icmp eq ptr %3, null
  br i1 %tobool.not55.i, label %entry.if.then17.i_crit_edge, label %entry.while.cond2.preheader.i_crit_edge

entry.while.cond2.preheader.i_crit_edge:          ; preds = %entry
  br label %while.cond2.preheader.i

entry.if.then17.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

while.cond2.preheader.i:                          ; preds = %while.end.i.while.cond2.preheader.i_crit_edge, %entry.while.cond2.preheader.i_crit_edge
  %4 = phi ptr [ %15, %while.end.i.while.cond2.preheader.i_crit_edge ], [ %3, %entry.while.cond2.preheader.i_crit_edge ]
  %prios.058.i = phi ptr [ %incdec.ptr15.i, %while.end.i.while.cond2.preheader.i_crit_edge ], [ %1, %entry.while.cond2.preheader.i_crit_edge ]
  %len.057.i = phi i32 [ %len.1.lcssa.i, %while.end.i.while.cond2.preheader.i_crit_edge ], [ 0, %entry.while.cond2.preheader.i_crit_edge ]
  %found.056.i = phi ptr [ %found.1.lcssa.i, %while.end.i.while.cond2.preheader.i_crit_edge ], [ null, %entry.while.cond2.preheader.i_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool3.not50.i = icmp eq ptr %6, null
  br i1 %tobool3.not50.i, label %while.cond2.preheader.i.while.end.i_crit_edge, label %while.cond2.preheader.i.while.body4.i_crit_edge

while.cond2.preheader.i.while.body4.i_crit_edge:  ; preds = %while.cond2.preheader.i
  br label %while.body4.i

while.cond2.preheader.i.while.end.i_crit_edge:    ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body4.i:                                    ; preds = %cleanup.i.while.body4.i_crit_edge, %while.cond2.preheader.i.while.body4.i_crit_edge
  %7 = phi ptr [ %13, %cleanup.i.while.body4.i_crit_edge ], [ %6, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %funcs.053.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body4.i_crit_edge ], [ %4, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %len.152.i = phi i32 [ %add6.i, %cleanup.i.while.body4.i_crit_edge ], [ %len.057.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %found.151.i = phi ptr [ %call8.i, %cleanup.i.while.body4.i_crit_edge ], [ %found.056.i, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5.i = tail call i32 @strlen(ptr noundef %9) #11
  %add.i = add i32 %len.152.i, 2
  %add6.i = add i32 %add.i, %call5.i
  %add7.i = add i32 %add6.i, 1
  %call8.i = tail call noalias ptr @krealloc(ptr noundef %found.151.i, i32 noundef %add7.i, i32 noundef 3264) #12
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %found.151.i) #8
  br label %get_defined_attribute.exit

cleanup.i:                                        ; preds = %while.body4.i
  %arrayidx.i = getelementptr i8, ptr %call8.i, i32 %len.152.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 1
  %call11.i = tail call ptr @strcat(ptr noundef nonnull %call8.i, ptr noundef %9) #8
  %strlen.i = tail call i32 @strlen(ptr nonnull %call8.i) #11
  %endptr.i = getelementptr i8, ptr %call8.i, i32 %strlen.i
  %11 = call ptr @memcpy(ptr %endptr.i, ptr @.str.28, i32 3)
  %incdec.ptr.i = getelementptr ptr, ptr %funcs.053.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body4.i_crit_edge

cleanup.i.while.body4.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.cond2.preheader.i.while.end.i_crit_edge
  %found.1.lcssa.i = phi ptr [ %found.056.i, %while.cond2.preheader.i.while.end.i_crit_edge ], [ %call8.i, %cleanup.i.while.end.i_crit_edge ]
  %len.1.lcssa.i = phi i32 [ %len.057.i, %while.cond2.preheader.i.while.end.i_crit_edge ], [ %add6.i, %cleanup.i.while.end.i_crit_edge ]
  %incdec.ptr15.i = getelementptr ptr, ptr %prios.058.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr15.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %while.end16.i, label %while.end.i.while.cond2.preheader.i_crit_edge

while.end.i.while.cond2.preheader.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond2.preheader.i

while.end16.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.1.lcssa.i)
  %cmp.i = icmp ult i32 %len.1.lcssa.i, 2
  br i1 %cmp.i, label %while.end16.i.if.then17.i_crit_edge, label %if.end18.i

while.end16.i.if.then17.i_crit_edge:              ; preds = %while.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.then17.i:                                      ; preds = %while.end16.i.if.then17.i_crit_edge, %entry.if.then17.i_crit_edge
  %found.0.lcssa67.i = phi ptr [ %found.1.lcssa.i, %while.end16.i.if.then17.i_crit_edge ], [ null, %entry.if.then17.i_crit_edge ]
  tail call void @kfree(ptr noundef %found.0.lcssa67.i) #8
  br label %get_defined_attribute.exit

if.end18.i:                                       ; preds = %while.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %len.1.lcssa.i, -2
  %arrayidx19.i = getelementptr i8, ptr %found.1.lcssa.i, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx19.i, align 1
  br label %get_defined_attribute.exit

get_defined_attribute.exit:                       ; preds = %if.end18.i, %if.then17.i, %cleanup.thread.i
  %retval.3.i = phi ptr [ null, %if.then17.i ], [ %found.1.lcssa.i, %if.end18.i ], [ null, %cleanup.thread.i ]
  ret ptr %retval.3.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %pins = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %prios1 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prios1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prios1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_gpio_request_enable, %do.end)) #8
          to label %if.then10 [label %do.end], !srcloc !73

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.8, ptr noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool12.not142 = icmp eq ptr %9, null
  br i1 %tobool12.not142, label %do.end.if.then21.critedge_crit_edge, label %while.cond.preheader.i.lr.ph

do.end.if.then21.critedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.critedge

while.cond.preheader.i.lr.ph:                     ; preds = %do.end
  %pinmux = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5
  %ops.i.i.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 5, i32 2
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end19.while.cond.preheader.i_crit_edge, %while.cond.preheader.i.lr.ph
  %10 = phi ptr [ %9, %while.cond.preheader.i.lr.ph ], [ %33, %if.end19.while.cond.preheader.i_crit_edge ]
  %prios.0143 = phi ptr [ %5, %while.cond.preheader.i.lr.ph ], [ %incdec.ptr, %if.end19.while.cond.preheader.i_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool1.not7.i = icmp eq ptr %12, null
  br i1 %tobool1.not7.i, label %while.cond.preheader.i.if.end19_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end19_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %13 = phi ptr [ %19, %if.end3.i.while.body.i_crit_edge ], [ %12, %while.cond.preheader.i.while.body.i_crit_edge ]
  %exprs.addr.08.i = phi ptr [ %incdec.ptr.i, %if.end3.i.while.body.i_crit_edge ], [ %10, %while.cond.preheader.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.i = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.31, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %aspeed_expr_is_gpio.exit.i, label %while.body.i.if.end3.i_crit_edge

while.body.i.if.end3.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

aspeed_expr_is_gpio.exit.i:                       ; preds = %while.body.i
  %function.i.i = getelementptr inbounds %struct.aspeed_sig_expr, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %function.i.i, align 4
  %call2.i.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end29, label %aspeed_expr_is_gpio.exit.i.if.end3.i_crit_edge

aspeed_expr_is_gpio.exit.i.if.end3.i_crit_edge:   ; preds = %aspeed_expr_is_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %aspeed_expr_is_gpio.exit.i.if.end3.i_crit_edge, %while.body.i.if.end3.i_crit_edge
  %incdec.ptr.i = getelementptr ptr, ptr %exprs.addr.08.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %while.cond.preheader.i112, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.preheader.i112:                        ; preds = %if.end3.i
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %10, align 4
  %tobool1.not7.not.i = icmp eq ptr %.pr, null
  br i1 %tobool1.not7.not.i, label %while.cond.preheader.i112.if.end19_crit_edge, label %while.cond.preheader.i112.while.body.i114_crit_edge

while.cond.preheader.i112.while.body.i114_crit_edge: ; preds = %while.cond.preheader.i112
  br label %while.body.i114

while.cond.preheader.i112.if.end19_crit_edge:     ; preds = %while.cond.preheader.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

while.body.i114:                                  ; preds = %aspeed_sig_expr_disable.exit.i.while.body.i114_crit_edge, %while.cond.preheader.i112.while.body.i114_crit_edge
  %21 = phi ptr [ %31, %aspeed_sig_expr_disable.exit.i.while.body.i114_crit_edge ], [ %.pr, %while.cond.preheader.i112.while.body.i114_crit_edge ]
  %exprs.addr.08.i113 = phi ptr [ %incdec.ptr.i116, %aspeed_sig_expr_disable.exit.i.while.body.i114_crit_edge ], [ %10, %while.cond.preheader.i112.while.body.i114_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_gpio_request_enable, %do.end.i.i)) #8
          to label %if.then.i.i [label %do.end.i.i], !srcloc !73

if.then.i.i:                                      ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %function.i.i115 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %function.i.i115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %function.i.i115, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.27, ptr noundef %23, ptr noundef %25) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i114
  %call4.i.i = tail call i32 @aspeed_sig_expr_eval(ptr noundef %pinmux, ptr noundef nonnull %21, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.cleanup_crit_edge, label %if.end6.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool7.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge, label %if.then8.i.i

if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aspeed_sig_expr_disable.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %set.i.i.i = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set.i.i.i, align 4
  %call.i.i.i = tail call i32 %29(ptr noundef %pinmux, ptr noundef nonnull %21, i1 noundef zeroext false) #8
  br label %aspeed_sig_expr_disable.exit.i

aspeed_sig_expr_disable.exit.i:                   ; preds = %if.then8.i.i, %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.then8.i.i ], [ 0, %if.end6.i.i.aspeed_sig_expr_disable.exit.i_crit_edge ]
  %incdec.ptr.i116 = getelementptr ptr, ptr %exprs.addr.08.i113, i32 1
  %30 = ptrtoint ptr %incdec.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %incdec.ptr.i116, align 4
  %tobool1.not.i117 = icmp ne ptr %31, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not.i = icmp eq i32 %retval.0.i.i, 0
  %or.cond.i = select i1 %tobool1.not.i117, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %aspeed_sig_expr_disable.exit.i.while.body.i114_crit_edge, label %aspeed_disable_sig.exit

aspeed_sig_expr_disable.exit.i.while.body.i114_crit_edge: ; preds = %aspeed_sig_expr_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i114

aspeed_disable_sig.exit:                          ; preds = %aspeed_sig_expr_disable.exit.i
  br i1 %tobool2.not.i, label %aspeed_disable_sig.exit.if.end19_crit_edge, label %aspeed_disable_sig.exit.cleanup_crit_edge

aspeed_disable_sig.exit.cleanup_crit_edge:        ; preds = %aspeed_disable_sig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

aspeed_disable_sig.exit.if.end19_crit_edge:       ; preds = %aspeed_disable_sig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %aspeed_disable_sig.exit.if.end19_crit_edge, %while.cond.preheader.i112.if.end19_crit_edge, %while.cond.preheader.i.if.end19_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %prios.0143, i32 1
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %if.end19.if.then21.critedge_crit_edge, label %if.end19.while.cond.preheader.i_crit_edge

if.end19.while.cond.preheader.i_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

if.end19.if.then21.critedge_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.critedge

if.then21.critedge:                               ; preds = %if.end19.if.then21.critedge_crit_edge, %do.end.if.then21.critedge_crit_edge
  %call22 = tail call fastcc ptr @get_defined_signals(ptr noundef nonnull %3)
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %35, i32 noundef %offset, ptr noundef %call22) #13
  tail call void @kfree(ptr noundef %call22) #8
  br label %cleanup

if.end29:                                         ; preds = %aspeed_expr_is_gpio.exit.i
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %10, align 4
  %tobool30.not = icmp eq ptr %37, null
  br i1 %tobool30.not, label %do.body32, label %if.end51

do.body32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_gpio_request_enable, %cleanup)) #8
          to label %if.then46 [label %cleanup], !srcloc !73

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.10, ptr noundef %39) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_gpio_request_enable, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !73

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %function.i = getelementptr inbounds %struct.aspeed_sig_expr, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %function.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.30, ptr noundef %41, ptr noundef %43) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end51
  %call4.i = tail call i32 @aspeed_sig_expr_eval(ptr noundef %pinmux, ptr noundef nonnull %37, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i.cleanup_crit_edge, label %if.end6.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool7.not.i, label %aspeed_sig_expr_enable.exit, label %if.end6.i.do.body57_crit_edge

if.end6.i.do.body57_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

aspeed_sig_expr_enable.exit:                      ; preds = %if.end6.i
  %44 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i.i, align 4
  %set.i.i = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %set.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set.i.i, align 4
  %call.i.i119 = tail call i32 %47(ptr noundef %pinmux, ptr noundef nonnull %37, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %tobool54.not = icmp eq i32 %call.i.i119, 0
  br i1 %tobool54.not, label %aspeed_sig_expr_enable.exit.do.body57_crit_edge, label %aspeed_sig_expr_enable.exit.cleanup_crit_edge

aspeed_sig_expr_enable.exit.cleanup_crit_edge:    ; preds = %aspeed_sig_expr_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

aspeed_sig_expr_enable.exit.do.body57_crit_edge:  ; preds = %aspeed_sig_expr_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.body57:                                        ; preds = %aspeed_sig_expr_enable.exit.do.body57_crit_edge, %if.end6.i.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_gpio_request_enable, %cleanup)) #8
          to label %if.then71 [label %cleanup], !srcloc !73

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.11, ptr noundef %49, ptr noundef %51) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body57, %aspeed_sig_expr_enable.exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then46, %do.body32, %if.then21.critedge, %aspeed_disable_sig.exit.cleanup_crit_edge, %do.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then21.critedge ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ], [ %call.i.i119, %aspeed_sig_expr_enable.exit.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %do.body32 ], [ %call4.i, %do.end.i.cleanup_crit_edge ], [ 0, %do.body57 ], [ %call4.i.i, %do.end.i.i.cleanup_crit_edge ], [ %retval.0.i.i, %aspeed_disable_sig.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_probe(ptr noundef %pdev, ptr noundef %pdesc, ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %pdata, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %maps = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %pdata, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %maps, align 4
  %call15 = tail call ptr @pinctrl_register(ptr noundef %pdesc, ptr noundef %dev, ptr noundef %pdata) #8
  %cmp.i38 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  %9 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdata, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end8, %do.end
  %retval.0 = phi i32 [ %7, %do.end8 ], [ %9, %do.end20 ], [ 0, %if.end23 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_get(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef %config) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !74
  %call1 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %nconfigs.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %nconfigs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nconfigs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14.not.i = icmp eq i32 %4, 0
  br i1 %cmp14.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %configs.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %configs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aspeed_pin_config, ptr %6, i32 %i.015.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and.i)
  %cmp2.i = icmp eq i32 %8, %and.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i.i = getelementptr %struct.aspeed_pin_config, ptr %6, i32 %i.015.i, i32 1
  %9 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pins.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %offset)
  %cmp.not.i.i = icmp ugt i32 %10, %offset
  br i1 %cmp.not.i.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %pin_in_config_range.exit.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

pin_in_config_range.exit.i:                       ; preds = %land.lhs.true.i
  %arrayidx2.i.i = getelementptr %struct.aspeed_pin_config, ptr %6, i32 %i.015.i, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %offset)
  %cmp3.i.not.i = icmp ult i32 %12, %offset
  br i1 %cmp3.i.not.i, label %pin_in_config_range.exit.i.for.inc.i_crit_edge, label %find_pinconf_config.exit

pin_in_config_range.exit.i.for.inc.i_crit_edge:   ; preds = %pin_in_config_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %pin_in_config_range.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

find_pinconf_config.exit:                         ; preds = %pin_in_config_range.exit.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_pinconf_config.exit.cleanup_crit_edge, label %if.end

find_pinconf_config.exit.cleanup_crit_edge:       ; preds = %find_pinconf_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %find_pinconf_config.exit
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call1, align 4
  %reg = getelementptr %struct.aspeed_pin_config, ptr %6, i32 %i.015.i, i32 2
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %mask = getelementptr %struct.aspeed_pin_config, ptr %6, i32 %i.015.i, i32 3
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %and = and i32 %20, %18
  %21 = call i32 @llvm.cttz.i32(i32 %20, i1 false) #8, !range !75
  %shr = lshr i32 %and, %21
  %nconfmaps.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call1, i32 0, i32 7
  %22 = ptrtoint ptr %nconfmaps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nconfmaps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp25.not.i = icmp eq i32 %23, 0
  br i1 %cmp25.not.i, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph.i49

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i49:                               ; preds = %if.end5
  %confmaps.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call1, i32 0, i32 6
  %24 = ptrtoint ptr %confmaps.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %confmaps.i, align 4
  br label %for.body.i53

for.cond.i:                                       ; preds = %for.body.i53
  %inc.i50 = add nuw i32 %i.026.i, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %23
  br i1 %exitcond.not.i51, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i53_crit_edge

for.cond.i.for.body.i53_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i53

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i53:                                     ; preds = %for.cond.i.for.body.i53_crit_edge, %for.body.lr.ph.i49
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %inc.i50, %for.cond.i.for.body.i53_crit_edge ]
  %arrayidx.i52 = getelementptr %struct.aspeed_pin_config_map, ptr %25, i32 %i.026.i
  %val.i = getelementptr %struct.aspeed_pin_config_map, ptr %25, i32 %i.026.i, i32 2
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %shr)
  %cmp7.i = icmp ne i32 %27, %shr
  %28 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and.i)
  %cmp11.i = icmp ne i32 %29, %and.i
  %brmerge.i = select i1 %cmp11.i, i1 true, i1 %cmp7.i
  br i1 %brmerge.i, label %for.cond.i, label %find_pinconf_map.exit

find_pinconf_map.exit:                            ; preds = %for.body.i53
  %tobool9.not = icmp eq ptr %arrayidx.i52, null
  br i1 %tobool9.not, label %find_pinconf_map.exit.cleanup_crit_edge, label %if.end11

find_pinconf_map.exit.cleanup_crit_edge:          ; preds = %find_pinconf_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %find_pinconf_map.exit
  %trunc = trunc i32 %1 to i8
  %30 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end11.if.end27_crit_edge [
    i8 9, label %if.then14
    i8 3, label %if.then18
  ]

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arg15 = getelementptr %struct.aspeed_pin_config_map, ptr %25, i32 %i.026.i, i32 1
  %31 = ptrtoint ptr %arg15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arg15, align 4
  br label %if.end24

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arg19 = getelementptr %struct.aspeed_pin_config_map, ptr %25, i32 %i.026.i, i32 1
  %33 = ptrtoint ptr %arg19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arg19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20 = icmp ne i32 %34, 0
  %lnot.ext = zext i1 %tobool20 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then14
  %arg.0 = phi i32 [ %32, %if.then14 ], [ %lnot.ext, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg.0)
  %tobool25.not = icmp eq i32 %arg.0, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end24.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %arg.060 = phi i32 [ %arg.0, %if.end24.if.end27_crit_edge ], [ 1, %if.end11.if.end27_crit_edge ]
  %shl.i = shl i32 %arg.060, 8
  %or.i = or i32 %shl.i, %and.i
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %find_pinconf_map.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_pinconf_config.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -524, %find_pinconf_config.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %find_pinconf_map.exit.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ], [ -524, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_set(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp103.not = icmp eq i32 %num_configs, 0
  br i1 %cmp103.not, label %entry.cleanup62_crit_edge, label %for.body.lr.ph

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

for.body.lr.ph:                                   ; preds = %entry
  %nconfigs.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 4
  %configs.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 3
  %nconfmaps.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 7
  %confmaps.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0104
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %shr.i = lshr i32 %1, 8
  %2 = ptrtoint ptr %nconfigs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nconfigs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %for.body.cleanup62_crit_edge, label %for.body.lr.ph.i

for.body.cleanup62_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

for.body.lr.ph.i:                                 ; preds = %for.body
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %configs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aspeed_pin_config, ptr %5, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i)
  %cmp2.i = icmp eq i32 %7, %and.i
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i.i = getelementptr %struct.aspeed_pin_config, ptr %5, i32 %i.015.i, i32 1
  %8 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %offset)
  %cmp.not.i.i = icmp ugt i32 %9, %offset
  br i1 %cmp.not.i.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %pin_in_config_range.exit.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

pin_in_config_range.exit.i:                       ; preds = %land.lhs.true.i
  %arrayidx2.i.i = getelementptr %struct.aspeed_pin_config, ptr %5, i32 %i.015.i, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offset)
  %cmp3.i.not.i = icmp ult i32 %11, %offset
  br i1 %cmp3.i.not.i, label %pin_in_config_range.exit.i.for.inc.i_crit_edge, label %find_pinconf_config.exit

pin_in_config_range.exit.i.for.inc.i_crit_edge:   ; preds = %pin_in_config_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %pin_in_config_range.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup62_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup62_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

find_pinconf_config.exit:                         ; preds = %pin_in_config_range.exit.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_pinconf_config.exit.cleanup62_crit_edge, label %if.end

find_pinconf_config.exit.cleanup62_crit_edge:     ; preds = %find_pinconf_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

if.end:                                           ; preds = %find_pinconf_config.exit
  %12 = ptrtoint ptr %nconfmaps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nconfmaps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.not.i = icmp eq i32 %13, 0
  br i1 %cmp25.not.i, label %if.end.do.end_crit_edge, label %for.body.lr.ph.i85

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i85:                               ; preds = %if.end
  %14 = ptrtoint ptr %confmaps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %confmaps.i, align 4
  br label %for.body.i89

for.cond.i:                                       ; preds = %for.body.i89
  %inc.i86 = add nuw i32 %i.026.i, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, %13
  br i1 %exitcond.not.i87, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i89_crit_edge

for.cond.i.for.body.i89_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i89

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i89:                                     ; preds = %for.cond.i.for.body.i89_crit_edge, %for.body.lr.ph.i85
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i85 ], [ %inc.i86, %for.cond.i.for.body.i89_crit_edge ]
  %arrayidx.i88 = getelementptr %struct.aspeed_pin_config_map, ptr %15, i32 %i.026.i
  %arg.i = getelementptr %struct.aspeed_pin_config_map, ptr %15, i32 %i.026.i, i32 1
  %16 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp1.i = icmp ne i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %shr.i)
  %cmp3.i = icmp ne i32 %17, %shr.i
  %18 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i)
  %cmp11.i = icmp ne i32 %19, %and.i
  %match.0.off0.not.i = and i1 %cmp1.i, %cmp3.i
  %brmerge.i = select i1 %cmp11.i, i1 true, i1 %match.0.off0.not.i
  br i1 %brmerge.i, label %for.cond.i, label %find_pinconf_map.exit

find_pinconf_map.exit:                            ; preds = %for.body.i89
  %tobool6.not = icmp eq ptr %arrayidx.i88, null
  br i1 %tobool6.not, label %find_pinconf_map.exit.do.end_crit_edge, label %if.end31, !prof !76

find_pinconf_map.exit.do.end_crit_edge:           ; preds = %find_pinconf_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %find_pinconf_map.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 595, i32 noundef 9, ptr noundef null) #8
  br label %cleanup62

if.end31:                                         ; preds = %find_pinconf_map.exit
  %val32 = getelementptr %struct.aspeed_pin_config_map, ptr %15, i32 %i.026.i, i32 2
  %20 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val32, align 4
  %mask = getelementptr %struct.aspeed_pin_config, ptr %5, i32 %i.015.i, i32 3
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #8, !range !75
  %shl = shl i32 %21, %24
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %reg = getelementptr %struct.aspeed_pin_config, ptr %5, i32 %i.015.i, i32 2
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef %23, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36 = icmp slt i32 %call.i, 0
  br i1 %cmp36, label %if.end31.cleanup62_crit_edge, label %do.body40

if.end31.cleanup62_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

do.body40:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_pin_config_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pin_config_set, %for.inc)) #8
          to label %if.then52 [label %for.inc], !srcloc !73

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_pin_config_set.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %30, i32 noundef %32, i32 noundef %shl, i32 noundef %and.i, i32 noundef %shr.i, i32 noundef %offset) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %do.body40
  %inc = add nuw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

cleanup62:                                        ; preds = %for.inc.cleanup62_crit_edge, %if.end31.cleanup62_crit_edge, %do.end, %find_pinconf_config.exit.cleanup62_crit_edge, %for.inc.i.cleanup62_crit_edge, %for.body.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup62_crit_edge ], [ -524, %for.inc.i.cleanup62_crit_edge ], [ 0, %for.inc.cleanup62_crit_edge ], [ -524, %find_pinconf_config.exit.cleanup62_crit_edge ], [ %call.i, %if.end31.cleanup62_crit_edge ], [ -524, %for.body.cleanup62_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_group_get(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call.i, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups.i, align 4
  %npins6.i = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %selector, i32 2
  %2 = ptrtoint ptr %npins6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pins1.i = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call3 = tail call i32 @aspeed_pin_config_get(ptr noundef %pctldev, i32 noundef %7, ptr noundef %config)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_pin_config_group_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_pin_config_group_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_pin_config_group_set.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %selector) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups.i = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %call.i, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups.i, align 4
  %pins1.i = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1.i, align 4
  %npins6.i = getelementptr %struct.aspeed_pin_group, ptr %1, i32 %selector, i32 2
  %4 = ptrtoint ptr %npins6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp723.not = icmp eq i32 %5, 0
  br i1 %cmp723.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call8 = tail call i32 @aspeed_pin_config_set(ptr noundef %pctldev, i32 noundef %7, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aspeed_sig_expr_eval(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 43, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 239, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug225, !3, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 267, i32 4}
!10 = !{ptr @aspeed_pinmux_set_mux._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @aspeed_pinmux_set_mux._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 280, i32 3}
!14 = !{ptr @aspeed_pinmux_set_mux.__UNIQUE_ID_ddebug226, !13, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 393, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug227, !16, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 410, i32 3}
!21 = !{ptr @aspeed_gpio_request_enable._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aspeed_gpio_request_enable._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 425, i32 3}
!25 = !{ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug228, !24, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 437, i32 2}
!28 = !{ptr @aspeed_gpio_request_enable.__UNIQUE_ID_ddebug229, !27, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 451, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aspeed_pinctrl_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @aspeed_pinctrl_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 457, i32 3}
!38 = !{ptr @aspeed_pinctrl_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @aspeed_pinctrl_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 466, i32 3}
!42 = !{ptr @aspeed_pinctrl_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @aspeed_pinctrl_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 606, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @aspeed_pin_config_set.__UNIQUE_ID_ddebug230, !45, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 644, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @aspeed_pin_config_group_set.__UNIQUE_ID_ddebug231, !49, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 97, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @aspeed_sig_expr_disable.__UNIQUE_ID_ddebug224, !53, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 185, i32 18}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 79, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @aspeed_sig_expr_enable.__UNIQUE_ID_ddebug223, !59, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/aspeed/pinctrl-aspeed.c", i32 358, i32 32}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148317891, i64 2148317896, i64 2148317909, i64 2148317953, i64 2148317987, i64 2148318008}
!74 = !{!"auto-init"}
!75 = !{i32 0, i32 33}
!76 = !{!"branch_weights", i32 1, i32 2000}
